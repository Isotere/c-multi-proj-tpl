cmake_minimum_required(VERSION 3.30)
project(my_project)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(CMAKE_C_COMPILER /opt/homebrew/opt/llvm/bin/clang)

set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED True)


# Let's nicely support folders in IDEs
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/bin")

# Для нормального отображение содержимого STL контейнеров в дебагере
# https://www.jetbrains.com/help/clion/configuring-debugger-options.html #gdb-config
# set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -gdwarf-3 -D_LIBCPP_DEBUG=1 -D_GLIBCXX_DEBUG=1 -D_GLIBCXX_DEBUG_PEDANTIC=1")
set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -gdwarf-3")


# FetchContent added in CMake 3.11, downloads during the configure step
include(FetchContent)

add_subdirectory(src/hello_world)

