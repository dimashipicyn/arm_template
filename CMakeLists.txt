cmake_minimum_required(VERSION 3.24)
project(arm_template LANGUAGES C CXX VERSION 0.0.1)

set(version ${PROJECT_VERSION})

add_executable(${PROJECT_NAME})
add_subdirectory(src)

target_include_directories(${PROJECT_NAME}
PRIVATE
    "src"
)

find_package(Threads REQUIRED)

target_link_libraries(${PROJECT_NAME}
PRIVATE
    Threads::Threads
)
