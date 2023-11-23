#!/bin/sh
echo --- C NATIVE ---
./native-c
echo --- C WASM ---
wasmtime c.wasm
echo --- C++ NATIVE ---
./native-cpp
echo --- C++ WASM ---
wasmtime cpp.wasm
echo --- END ---