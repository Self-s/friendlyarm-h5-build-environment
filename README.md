# Docker repository for friendlyarm h5 build environment

### make u-boot:
```sh
    cd u-boot
    make nanopi_h5_defconfig CROSS_COMPILE=aarch64-linux-gnu-
```
### make linux:
```sh
    cd linux
    touch .scmversion
    make sunxi_arm64_defconfig ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-
    make Image dtbs ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-
```
 >http://wiki.friendlyarm.com/wiki/index.php/Building_U-boot_and_Linux_for_H5/H3/H2%2B