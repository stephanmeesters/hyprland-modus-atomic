#!/usr/bin/env bash
set -euo pipefail

work=/tmp/apple-fonts
mkdir -p "$work/src" "$work/fonts"
cd "$work"

for dmg in SF-Pro.dmg SF-Compact.dmg SF-Mono.dmg NY.dmg; do
  curl -L -O "https://devimages-cdn.apple.com/design/resources/download/${dmg}"
  7z e "$dmg" -y -osrc/
  cd src
  7z x *.pkg -y
  if [ -f 'Payload~' ]; then 7z x 'Payload~' -y; else 7z x Payload -y; fi
  mkdir -p ../fonts
  mv -f Library/Fonts/* ../fonts/ || true
  rm -rf ./*
  cd ..
done

install -d /usr/local/share/fonts/apple
install -m 0644 fonts/* /usr/local/share/fonts/apple/
fc-cache -f
