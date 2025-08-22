#!/usr/bin/env bash
set -euo pipefail

git clone https://github.com/Fabric-Development/glace /tmp/glace
cd /tmp/glace && git checkout 8c2cc2a46a3856121bec701e7c468b35416b2428

mkdir /tmp/glace-out
cd /tmp/glace && meson setup build --prefix=/tmp/glace-out -Dbuildtype=release --wipe && ninja -C build install
