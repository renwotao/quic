# The set of languages for which implicit dependencies are needed:
SET(CMAKE_DEPENDS_LANGUAGES
  "ASM"
  "C"
  )
# The set of files for implicit dependencies of each language:
SET(CMAKE_DEPENDS_CHECK_ASM
  "/home/ren/quic/libquic/build/boringssl/crypto/ec/p256-x86_64-asm.S" "/home/ren/quic/libquic/build/boringssl/crypto/ec/CMakeFiles/ec.dir/p256-x86_64-asm.S.o"
  )
SET(CMAKE_ASM_COMPILER_ID "GNU")
SET(CMAKE_DEPENDS_CHECK_C
  "/home/ren/quic/libquic/boringssl/crypto/ec/ec.c" "/home/ren/quic/libquic/build/boringssl/crypto/ec/CMakeFiles/ec.dir/ec.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/ec/ec_asn1.c" "/home/ren/quic/libquic/build/boringssl/crypto/ec/CMakeFiles/ec.dir/ec_asn1.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/ec/ec_key.c" "/home/ren/quic/libquic/build/boringssl/crypto/ec/CMakeFiles/ec.dir/ec_key.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/ec/ec_montgomery.c" "/home/ren/quic/libquic/build/boringssl/crypto/ec/CMakeFiles/ec.dir/ec_montgomery.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/ec/oct.c" "/home/ren/quic/libquic/build/boringssl/crypto/ec/CMakeFiles/ec.dir/oct.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/ec/p224-64.c" "/home/ren/quic/libquic/build/boringssl/crypto/ec/CMakeFiles/ec.dir/p224-64.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/ec/p256-64.c" "/home/ren/quic/libquic/build/boringssl/crypto/ec/CMakeFiles/ec.dir/p256-64.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/ec/p256-x86_64.c" "/home/ren/quic/libquic/build/boringssl/crypto/ec/CMakeFiles/ec.dir/p256-x86_64.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/ec/simple.c" "/home/ren/quic/libquic/build/boringssl/crypto/ec/CMakeFiles/ec.dir/simple.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/ec/util-64.c" "/home/ren/quic/libquic/build/boringssl/crypto/ec/CMakeFiles/ec.dir/util-64.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/ec/wnaf.c" "/home/ren/quic/libquic/build/boringssl/crypto/ec/CMakeFiles/ec.dir/wnaf.c.o"
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
  "../boringssl/crypto/ec/../../include"
  )
SET(CMAKE_CXX_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_Fortran_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_ASM_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
