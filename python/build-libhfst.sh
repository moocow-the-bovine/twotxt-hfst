#!/bin/bash

set -o pipefail
set -o errexit
set -o xtrace

# build 2txt version of libhfst
cd ..
[ -e ./configure ] || ./autogen.sh
[ -e Makefile ] || ./configure --disable-static
#exec make AM_CXXFLAGS="-fPIC -DPIC" LDFLAGS="$LDFLAGS -fPIC" "$@"
exec make "$@"
