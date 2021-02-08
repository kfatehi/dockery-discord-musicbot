#!/bin/bash
set -euo pipefail
. /asdf/asdf.sh
asdf local python 3.7.9
source /venv/bin/activate
./run.py
