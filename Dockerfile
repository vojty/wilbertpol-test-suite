FROM alpine:3.16.0

ENV WLA_DX_VERSION 10.2

RUN apk --no-cache add cmake clang clang-dev make gcc git g++ libc-dev curl tar

WORKDIR /app
RUN curl -sSL "https://github.com/vhelin/wla-dx/archive/refs/tags/v$WLA_DX_VERSION.tar.gz" | tar xzv -C .

WORKDIR /app/wla-dx-$WLA_DX_VERSION
RUN mkdir build && \
    cd build && \
    cmake .. && \
    cmake --build . --config Release

ENV PATH=${PATH}:/app/wla-dx-$WLA_DX_VERSION/build/binaries

