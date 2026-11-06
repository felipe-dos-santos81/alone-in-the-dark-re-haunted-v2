#!/bin/sh
# Stages what a release ships besides the executable: the HD assets into
# ASSETS (where the game reads them: the folder it starts in, or the app's
# Resources on macOS) and the player README and licences into DOCS.
# Paths are relative to the repository root (Git Bash paths mean nothing to
# the Windows cmake).
# usage: tools/release/stage.sh <build_hda_archive> <assets dir> <docs dir>
set -eu
cd "$(dirname "$0")/../.."
hda=$1 assets=$2 docs=$3
mkdir -p "$assets" "$docs/licenses"

"$hda" Assets/backgrounds_hd "$assets/backgrounds_hd.hda"
cmake "-DDESTINATION=$assets" -DMODELS=Assets/models_hd -DATLASES=Assets/atlases \
    -P TatouSource/cmake/copy_hd_models.cmake
cp -R Assets/masks_hd Assets/fonts "$assets/"

cp tools/release/README.txt LICENSE "$docs/"
L=TatouSource/ThirdParty
cp $L/SDL/LICENSE.txt "$docs/licenses/SDL3.txt"
cp $L/bgfx.cmake/bgfx/LICENSE "$docs/licenses/bgfx.txt"
cp $L/bgfx.cmake/bx/LICENSE "$docs/licenses/bx.txt"
cp $L/bgfx.cmake/bimg/LICENSE "$docs/licenses/bimg.txt"
cp $L/imgui/LICENSE.txt "$docs/licenses/imgui.txt"
cp $L/soloud.cmake/soloud/LICENSE "$docs/licenses/soloud.txt"
cp $L/zlib/README "$docs/licenses/zlib.txt"
cp Assets/fonts/OFL.txt "$docs/licenses/IMFellEnglish-OFL.txt"
