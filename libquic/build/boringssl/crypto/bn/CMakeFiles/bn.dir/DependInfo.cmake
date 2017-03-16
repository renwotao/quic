# The set of languages for which implicit dependencies are needed:
SET(CMAKE_DEPENDS_LANGUAGES
  "ASM"
  "C"
  )
# The set of files for implicit dependencies of each language:
SET(CMAKE_DEPENDS_CHECK_ASM
  "/home/ren/quic/libquic/build/boringssl/crypto/bn/rsaz-avx2.S" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/rsaz-avx2.S.o"
  "/home/ren/quic/libquic/build/boringssl/crypto/bn/rsaz-x86_64.S" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/rsaz-x86_64.S.o"
  "/home/ren/quic/libquic/build/boringssl/crypto/bn/x86_64-mont.S" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/x86_64-mont.S.o"
  "/home/ren/quic/libquic/build/boringssl/crypto/bn/x86_64-mont5.S" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/x86_64-mont5.S.o"
  )
SET(CMAKE_ASM_COMPILER_ID "GNU")
SET(CMAKE_DEPENDS_CHECK_C
  "/home/ren/quic/libquic/boringssl/crypto/bn/add.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/add.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/bn/asm/x86_64-gcc.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/asm/x86_64-gcc.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/bn/bn.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/bn.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/bn/bn_asn1.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/bn_asn1.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/bn/cmp.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/cmp.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/bn/convert.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/convert.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/bn/ctx.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/ctx.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/bn/div.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/div.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/bn/exponentiation.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/exponentiation.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/bn/gcd.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/gcd.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/bn/generic.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/generic.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/bn/kronecker.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/kronecker.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/bn/montgomery.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/montgomery.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/bn/mul.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/mul.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/bn/prime.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/prime.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/bn/random.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/random.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/bn/rsaz_exp.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/rsaz_exp.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/bn/shift.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/shift.c.o"
  "/home/ren/quic/libquic/boringssl/crypto/bn/sqrt.c" "/home/ren/quic/libquic/build/boringssl/crypto/bn/CMakeFiles/bn.dir/sqrt.c.o"
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
  "../boringssl/crypto/bn/../../include"
  )
SET(CMAKE_CXX_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_Fortran_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
SET(CMAKE_ASM_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
