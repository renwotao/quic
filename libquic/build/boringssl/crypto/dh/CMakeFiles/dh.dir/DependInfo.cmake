# The set of languages for which implicit dependencies are needed:
SET(CMAKE_DEPENDS_LANGUAGES
  "C"
  )
# The set of files for implicit dependencies of each language:
SET(CMAKE_DEPENDS_CHECK_C
  "/home/ren/quic/libquic/boringssl/crypto/dh/check.c" "/home/ren/quic/libquic/build/boringssl/crypto/dh/CMakeFiles/dh.dir/check.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/dh/dh.c" "/home/ren/quic/libquic/build/boringssl/crypto/dh/CMakeFiles/dh.dir/dh.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/dh/dh_asn1.c" "/home/ren/quic/libquic/build/boringssl/crypto/dh/CMakeFiles/dh.dir/dh_asn1.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/dh/params.c" "/home/ren/quic/libquic/build/boringssl/crypto/dh/CMakeFiles/dh.dir/params.c.o"
  )
SET(CMAKE_C_COMPILER_ID "GNU")

# Preprocessor definitions for this target.
SET(CMAKE_TARGET_DEFINITIONS
  "BORINGSSL_IMPLEMENTATION"
  "USE_OPENSSL"
  "__STDC_CONSTANT_MACROS"
  "__STDC_LIMIT_MACROS"
  )

# Targets to which this target links.
SET(CMAKE_TARGET_LINKED_INFO_FILES
  )

# The include file search paths:
SET(CMAKE_C_TARGET_INCLUDE_PATH
  "../src"
  "../src/third_party/modp_b64"
  "../boringssl/include"
  "../src/third_party/protobuf/src"
  "/src"
  "../boringssl/crypto/../include"
  "../boringssl/crypto/dh/../../include"
  )
SET(CMAKE_CXX_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_Fortran_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_ASM_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
