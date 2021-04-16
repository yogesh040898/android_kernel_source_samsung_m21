export ARCH=arm64
make clean && make mrproper
make bluefly_m21_defconfig O=m21
make -j$(nproc --all) CROSS_COMPILE=$(pwd)/toolchain64/bin/aarch64-linux-android- CC=$(pwd)/clang/bin/clang CLANG_TRIPLE=aarch64-linux-gnu- O=m21
