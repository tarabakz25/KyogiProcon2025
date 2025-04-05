cmake_minimum_required(VERSION 3.13)

project(KyogiProcon2025 CXX)

# C++17を使用
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(a.out src/main.cc)

# インクルードディレクトリの追加
include_directories(lib)

# コンパイラの設定
set(CMAKE_CXX_COMPILER "g++")
set(CMAKE_CXX_FLAGS "-std=c++17")


