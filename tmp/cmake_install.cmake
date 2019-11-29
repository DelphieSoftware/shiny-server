# Install script for directory: /home/ldelphie/source/shiny-server

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "0")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/shiny-server" TYPE DIRECTORY FILES
    "/home/ldelphie/source/shiny-server/assets"
    "/home/ldelphie/source/shiny-server/samples"
    "/home/ldelphie/source/shiny-server/build"
    "/home/ldelphie/source/shiny-server/config"
    "/home/ldelphie/source/shiny-server/ext"
    "/home/ldelphie/source/shiny-server/lib"
    "/home/ldelphie/source/shiny-server/manual.test"
    "/home/ldelphie/source/shiny-server/node_modules"
    "/home/ldelphie/source/shiny-server/R"
    "/home/ldelphie/source/shiny-server/scripts"
    "/home/ldelphie/source/shiny-server/templates"
    "/home/ldelphie/source/shiny-server/test"
    "/home/ldelphie/source/shiny-server/tools"
    USE_SOURCE_PERMISSIONS)
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/shiny-server/bin" TYPE PROGRAM FILES
    "/home/ldelphie/source/shiny-server/bin/node"
    "/home/ldelphie/source/shiny-server/bin/npm"
    "/home/ldelphie/source/shiny-server/bin/shiny-server"
    "/home/ldelphie/source/shiny-server/tmp/bin/deploy-example"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/shiny-server" TYPE FILE FILES
    "/home/ldelphie/source/shiny-server/binding.gyp"
    "/home/ldelphie/source/shiny-server/config.html"
    "/home/ldelphie/source/shiny-server/COPYING"
    "/home/ldelphie/source/shiny-server/NEWS"
    "/home/ldelphie/source/shiny-server/package.json"
    "/home/ldelphie/source/shiny-server/README.md"
    "/home/ldelphie/source/shiny-server/tmp/NOTICE"
    "/home/ldelphie/source/shiny-server/tmp/VERSION"
    "/home/ldelphie/source/shiny-server/tmp/GIT_VERSION"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/ldelphie/source/shiny-server/tmp/src/cmake_install.cmake")
  INCLUDE("/home/ldelphie/source/shiny-server/tmp/external/pandoc/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/ldelphie/source/shiny-server/tmp/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/ldelphie/source/shiny-server/tmp/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
