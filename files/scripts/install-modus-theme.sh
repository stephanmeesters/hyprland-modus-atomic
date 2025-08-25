#!/usr/bin/env bash
set -euo pipefail

git clone https://github.com/stephanmeesters/Modus /usr/share/Modus
# cd /usr/share/Modus && git checkout 316e3066ba2427b687bde3381642b4bf10caa222

# cd /usr/share/Modus \
  # && python -m venv .venv \
  # && source .venv/bin/activate \
  # && pip install -r requirements.txt \
pip install --no-deps git+https://github.com/Fabric-Development/fabric.git
