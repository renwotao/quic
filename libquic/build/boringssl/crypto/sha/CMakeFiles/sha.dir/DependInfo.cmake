# The set of languages for which implicit dependencies are needed:
SET(CMAKE_DEPENDS_LANGUAGES
  "ASM"
  "C"
  )
# The set of files for implicit dependencies of each language:
SET(CMAKE_DEPENDS_CHECK_ASM
  "/home/ren/quic/libquic/build/boringssl/crypto/sha/sha1-x86_64.S" "/home/ren/quic/libquic/build/boringssl/crypto/sha/CMakeFiles/sha.dir/sha1-x86_64.S.o"
  "/home/ren/quic/libquic/build/boringssl/crypto/sha/sha256-x86_64.S" "/home/ren/quic/libquic/build/boringssl/crypto/sha/CMakeFiles/sha.dir/sha256-x86_64.S.o"
  "/home/ren/quic/libquic/build/boringssl/crypto/sha/sha512-x86_64.S" "/home/ren/quic/libquic/build/boringssl/crypto/sha/CMakeFiles/sha.dir/sha512-x86_64.S.o"
  )
SET(CMAKE_ASM_COMPILER_ID "GNU")
SET(CMAKE_DEPENDS_CHECK_C
  "/home/ren/quic/libquic/boringssl/crypto/sha/sha1.c" "/home/ren/quic/libquic/build/boringssl/crypto/sha/CMakeFiles/sha.dir/sha1.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/sha/sha256.c" "/home/ren/quic/libquic/build/boringssl/crypto/sha/CMakeFiles/sha.dir/sha256.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/sha/sha512.c" "/home/ren/quic/libquic/build/boringssl/crypto/sha/CMakeFiles/sha.dir/sha512.c.o"
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
  "../boringssl/crypto/sha/../../include"
  )
SET(CMAKE_CXX_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_Fortran_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_ASM_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
