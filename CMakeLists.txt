cmake_minimum_required(VERSION 3.0.0 FATAL_ERROR)
project               (CppStarter VERSION 0.1.0 LANGUAGES CXX)
set                   (CMAKE_BUILD_TYPE Release)
set                   (CMAKE_CXX_STANDARD 17)

add_compile_options (-Wall -Wextra -pedantic)

file(GLOB_RECURSE PROJECT_HEADERS src/*.h)
file(GLOB_RECURSE PROJECT_SOURCES src/*.cpp)

set (PROJECT_FILES 
${PROJECT_HEADERS} 
${PROJECT_SOURCES})

add_executable(${PROJECT_NAME} ${PROJECT_FILES})
