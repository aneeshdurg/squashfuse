#!/bin/bash
./autogen.sh
CFLAGS="-fPIC -fPIE -DNDEBUG" ./configure
make -j32
