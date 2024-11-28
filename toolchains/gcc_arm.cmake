include($ENV{SOURCE_DIR}/toolchains/toolchain.cmake)

set(CMAKE_SYSROOT ${SYSROOT_ARM32})

set(CMAKE_C_COMPILER arm-linux-gnueabihf-gcc)
set(CMAKE_CXX_COMPILER arm-linux-gnueabihf-g++)
set(CMAKE_AR arm-linux-gnueabihf-ar)

SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -march=armv7-a -marm -mfpu=neon -mfloat-abi=hard")
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${CMAKE_C_FLAGS}")

set(TARGET_ARCHITECTURE arm32)