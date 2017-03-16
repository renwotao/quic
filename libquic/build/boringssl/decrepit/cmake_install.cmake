# Install script for directory: /home/ren/quic/libquic/boringssl/decrepit

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
    SET(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/ren/quic/libquic/build/boringssl/decrepit/bio/cmake_install.cmake")
  INCLUDE("/home/ren/quic/libquic/build/boringssl/decrepit/blowfish/cmake_install.cmake")
  INCLUDE("/home/ren/quic/libquic/build/boringssl/decrepit/cast/cmake_install.cmake")
  INCLUDE("/home/ren/quic/libquic/build/boringssl/decrepit/des/cmake_install.cmake")
  INCLUDE("/home/ren/quic/libquic/build/boringssl/decrepit/dh/cmake_install.cmake")
  INCLUDE("/home/ren/quic/libquic/build/boringssl/decrepit/dsa/cmake_install.cmake")
  INCLUDE("/home/ren/quic/libquic/build/boringssl/decrepit/evp/cmake_install.cmake")
  INCLUDE("/home/ren/quic/libquic/build/boringssl/decrepit/obj/cmake_install.cmake")
  INCLUDE("/home/ren/quic/libquic/build/boringssl/decrepit/rc4/cmake_install.cmake")
  INCLUDE("/home/ren/quic/libquic/build/boringssl/decrepit/ripemd/cmake_install.cmake")
  INCLUDE("/home/ren/quic/libquic/build/boringssl/decrepit/rsa/cmake_install.cmake")
  INCLUDE("/home/ren/quic/libquic/build/boringssl/decrepit/ssl/cmake_install.cmake")
  INCLUDE("/home/ren/quic/libquic/build/boringssl/decrepit/x509/cmake_install.cmake")
  INCLUDE("/home/ren/quic/libquic/build/boringssl/decrepit/xts/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

