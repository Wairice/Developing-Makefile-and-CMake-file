cmake_minimum_required(VERSION 3.10)
project(calculator_project)

set(CMAKE_CXX_STANDARD 11)

add_library(calculator SHARED calculator.cpp)

add_executable(calculator_exec main.cpp)
target_link_libraries(calculator_exec calculator)
