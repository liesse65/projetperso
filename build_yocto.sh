#!/bin/bash
# Simple script to set up and build a minimal Yocto image

set -e

YOCTO_VERSION="kirkstone"
YOCTO_DIR="yocto"

# Install instructions: the user must ensure required host packages are installed
# according to Yocto Project documentation.

if [ ! -d "$YOCTO_DIR/poky" ]; then
    git clone -b "$YOCTO_VERSION" https://git.yoctoproject.org/git/poky "$YOCTO_DIR/poky"
fi

source "$YOCTO_DIR/poky/oe-init-build-env" "$YOCTO_DIR/build"

bitbake core-image-minimal
