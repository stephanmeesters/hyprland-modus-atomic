#!/usr/bin/env bash
set -euo pipefail

git clone https://github.com/S4NKALP/Modus /usr/share/Modus
cd /usr/share/Modus && git checkout 316e3066ba2427b687bde3381642b4bf10caa222

pip install --no-deps git+https://github.com/Fabric-Development/fabric.git
