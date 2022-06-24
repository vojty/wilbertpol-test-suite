FROM alpine:3.16.0

RUN apk --no-cache add cmake clang clang-dev make gcc git g++ libc-dev curl tar

WORKDIR /app
RUN curl -sSL "https://github.com/vhelin/wla-dx/archive/refs/tags/v10.1.tar.gz" | tar xzv -C .

WORKDIR /app/wla-dx-10.1
RUN mkdir build && \
    cd build && \
    cmake .. && \
    cmake --build . --config Release

ENV PATH=${PATH}:/app/wla-dx-10.1/build/binaries

