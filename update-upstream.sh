#!/usr/bin/env bash
set -e -x

rm -rf soundio
git clone --depth 1 https://github.com/slimsag/libsoundio soundio

pushd soundio
# TODO: pin version when we go back to upstream libsoundio
# git reset --hard 8ab36069123a8b38e247ace55f8a6b3e6ee14f5f
rm -rf src/config.h.in \
    .gitignore \
    CHANGELOG.md \
    CMakeLists.txt \
    README.md \
    cmake/ \
    doc/ \
    example/ \
    test/

popd
