#!/usr/bin/env bash
set -e -x

rm -rf soundio
git clone --depth 1 https://github.com/slimsag/libsoundio soundio

pushd soundio
# git reset --hard 8ab36069123a8b38e247ace55f8a6b3e6ee14f5f
soundio_delete=($(find -maxdepth 1 | grep -v -E '^./(soundio|src|LICENSE)$'))
rm -rf "${soundio_delete[@]}" || true
rm -rf "src/config.h.in"
popd
