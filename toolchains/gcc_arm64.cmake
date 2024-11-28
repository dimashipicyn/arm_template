include($ENV{SOURCE_DIR}/toolchains/toolchain.cmake)

set(CMAKE_SYSROOT ${SYSROOT_ARM64})

set(CMAKE_C_COMPILER aarch64-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER aarch64-linux-gnu-g++)
set(CMAKE_AR aarch64-linux-gnu-ar)

SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${CMAKE_C_FLAGS}")

set(TARGET_ARCHITECTURE arm64)