#!/bin/sh
export PKG_CONFIG_PATH="$(opam config var lib)/pkgconfig"
flags="$(pkg-config --static mirage-xen-posix --cflags)"
if [ "$(uname -m)" = "x86_64" -o "$(uname -m)" = "x86" ]
then
    flags="$flags -mrdrnd -mrdseed"
fi
echo "($flags)"
