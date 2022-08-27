#!/bin/bash
set -euo pipefail

curl -sSL "https://github.com/vhelin/wla-dx/archive/refs/tags/v$WLA_DX_VERSION.tar.gz" | tar xzv -C "${HOME}"
mv "${HOME}/wla-dx-${WLA_DX_VERSION}" "${HOME}/wla-dx"
cd "${HOME}/wla-dx"
cmake .
make
