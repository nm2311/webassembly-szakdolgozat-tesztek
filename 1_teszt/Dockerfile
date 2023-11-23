# syntax=docker/dockerfile:1

# Compile C
FROM emscripten/emsdk as build-c
WORKDIR /usr/src/wasm
COPY PrimeC/primes_words.c ./main.c
RUN emcc -O3 main.c -o c.wasm
RUN gcc -Ofast -march=native -mtune=native -funroll-all-loops -o native-c main.c -lm

# Compile C++
FROM emscripten/emsdk as build-cpp
WORKDIR /usr/src/wasm
COPY PrimeCPP/PrimeCPP.cpp ./main.cpp
RUN em++ -O3 -std=c++17 main.cpp -o cpp.wasm
RUN apt update -qq && apt install -y clang
RUN clang++ -march=native -mtune=native -Ofast -std=c++17 main.cpp -o native-cpp

# Run tests
FROM debian
WORKDIR /usr/src/wasm
COPY src/run.sh .
COPY --from=build-c /usr/src/wasm/c.wasm /usr/src/wasm/native-c ./
COPY --from=build-cpp /usr/src/wasm/cpp.wasm /usr/src/wasm/native-cpp ./
RUN apt update && apt install -y curl xz-utils
RUN curl https://wasmtime.dev/install.sh -sSf | bash
ENV PATH="/root/.wasmtime/bin:$PATH"

CMD ./run.sh
