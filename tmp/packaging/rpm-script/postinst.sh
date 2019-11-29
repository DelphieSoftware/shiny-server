#!/bin/sh

# errors shouldn't cause script to exit
set +e

ln -f -s "/usr/local/shiny-server/bin/shiny-server" /usr/bin/shiny-server
# See if "shiny" user exists
if id -u shiny >/dev/null 2>&1;
then
   echo User "shiny" already exists. Ensuring proper permissions on /home/shiny/.
   mkdir -p /home/shiny
   chown shiny:shiny /home/shiny
else
   echo Creating group "shiny"
   groupadd shiny

   echo Creating user "shiny"
   useradd -r -m shiny -g shiny -s /bin/sh
fi

if [ ! -d "/srv/shiny-server" ];
then
   mkdir -p /srv/shiny-server
   # And seed with initial apps and index.html
   ln -s /usr/local/shiny-server/samples/welcome.html /srv/shiny-server/index.html
   ln -s /usr/local/shiny-server/samples/sample-apps /srv/shiny-server/sample-apps
fi

mkdir -p /etc/shiny-server
if [ ! -f "/etc/shiny-server/shiny-server.conf" ];
then
   cp /usr/local/shiny-server/config/default.config /etc/shiny-server/shiny-server.conf
fi

mkdir -p /var/log/shiny-server

# Place the logrotate script, if applicable
if test -d /etc/logrotate.d
then
   cp /usr/local/shiny-server/config/logrotate /etc/logrotate.d/shiny-server
fi

# Log dir must be writable by "shiny" user
chown shiny:shiny /var/log/shiny-server

mkdir -p /var/lib/shiny-server


# Do not remove!
%posttrans
#!/bin/sh

# errors shouldn't cause script to exit
set +e

# add upstart profile, or init.d/systemd script and start the server
if test -d /etc/init/
then
   # remove any previously existing init.d based scheme
   service shiny-server stop 2>/dev/null
   rm -f /etc/init.d/shiny-server

   cp /usr/local/shiny-server/config/upstart/shiny-server.conf /etc/init/
   initctl reload-configuration
   initctl stop shiny-server 2>/dev/null
   sleep 1
   initctl start shiny-server
elif [ -d /etc/systemd/system ]
then
   # SLES 12 upgrades from pre-1.5.7 will be running shiny-server using SysV init scripts.
   # Make sure that the process is stopped before we proceed. Really this should be in the
   # postrm scripts too, but too late in this release to add that.
   if [ -f /var/run/shiny-server.pid ]
   then
      pkill -F /var/run/shiny-server.pid
      /usr/bin/env sleep 5
   fi

   cp /usr/local/shiny-server/config/systemd/shiny-server.service /etc/systemd/system/shiny-server.service
   systemctl enable shiny-server
   systemctl restart shiny-server
else
   if test -e /etc/SuSE-release
   then
      cp /usr/local/shiny-server/config/init.d/suse/shiny-server /etc/init.d/
   else
      cp /usr/local/shiny-server/config/init.d/redhat/shiny-server /etc/init.d/
   fi

   chmod +x /etc/init.d/shiny-server
   chkconfig --add shiny-server
   service shiny-server stop 2>/dev/null
   sleep 1
   service shiny-server start
fi

# clear error termination state
set -e

