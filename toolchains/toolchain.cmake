set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

if(NOT DEFINED ENV{SYSROOT_ARM32} OR NOT DEFINED ENV{SYSROOT_ARM64})
message("Set ENV variable SYSROOT_ARM32 or SYSROOT_ARM64 in .bashrc or to VSCode CMake Tools extension settings")
endif()

set(SYSROOT_ARM32 $ENV{SYSROOT_ARM32})
set(SYSROOT_ARM64 $ENV{SYSROOT_ARM64})

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

# Additional common flags
# DEBUG without optimisation
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_CXX_FLAGS} -ffunction-sections -Wall -Wextra -Werror -O0 -gdwarf-4")
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS} -ffunction-sections -Wall -Wextra -Werror -Weffc++ -O0 -gdwarf-4")
 
# RELEASE with optimisation
set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} ${CMAKE_C_FLAGS} -ffunction-sections -Wall -Wextra -Werror -O2")
set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} ${CMAKE_CXX_FLAGS} -ffunction-sections -Wall -Wextra -Werror -Weffc++ -O2")

#add_link_options("-fuse-ld=gold")