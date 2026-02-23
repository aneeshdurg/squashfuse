./autogen.sh
./configure
make clean
make CFLAGS="-fPIC"
# Produce squashfuse-hl.so from built objects
gcc -shared squashfuse-hl.o .libs/*.a .libs/libsquashfuse_ll.so \
  -lfuse3 -llzma -lzstd -llzo2 -llz4 -lxxhash -lz \
  -o squashfuse-hl.so
# Copy libsquashfuse_ll.so from build directory
cp .libs/libsquashfuse_ll.so.0.0.0 libsquashfuse_ll.so
