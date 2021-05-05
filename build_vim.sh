#!/bin/sh
# Build vim with python3.6

CFLAGS=-fPIC ./configure --with-features=huge \
    --enable-multibyte \
    --enable-rubyinterp=yes \
    --enable-python3interp=yes \
    --with-python3-config-dir=/usr/lib/python3.6/config \
    --enable-perlinterp=yes \
    --enable-luainterp=yes \
    --enable-cscope
