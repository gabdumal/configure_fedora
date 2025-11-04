#!/usr/bin/env fish

## Install LLVM packages
sudo dnf install llvm llvm-cmake-utils llvm-devel \
  llvm-doc llvm-googletest llvm-libs llvm-static \
  llvm-test clang clang-analyzer clang-devel clang-libs \
  clang-resource-filesystem clang-tools-extra \
  clang-tools-extra-devel compiler-rt git-clang-format \
  libomp libomp-devel lld lld-devel lld-libs lldb \
  lldb-devel python3-clang python3-lit python3-lldb \
  libcxx libcxx-devel libcxx-static libcxxabi \
  libcxxabi-devel libcxxabi-static llvm-bolt \
  llvm-filesystem llvm-libunwind llvm-libunwind-devel \
  llvm-libunwind-static mlir mlir-devel mlir-static \
  polly polly-devel python3-mlir -y

## Install Ninja
sudo dnf install ninja-build python3-ninja -y

## Install CMake
sudo dnf install cmake -y
