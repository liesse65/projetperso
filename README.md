# projetperso

This repository contains a simple script to bootstrap a minimal Yocto build.

## Quick start

1. Ensure required host packages are installed as described in the Yocto Project documentation (e.g. `gawk`, `wget`, `git-core`, `diffstat`, `unzip`, `texinfo`, `gcc`, `build-essential`, `chrpath`, `socat`, `libsdl1.2-dev`, `xterm`).
2. Run the `build_yocto.sh` script:

```bash
./build_yocto.sh
```

The script clones Yocto's `poky` repository (branch `kirkstone`) into `yocto/`, sets up a build directory, and builds `core-image-minimal` using BitBake.
