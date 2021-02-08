#!/bin/bash
set -euo pipefail
. /asdf/asdf.sh
asdf local python 3.7.9
if [[ ! -d /venv/bin/activate ]]; then
  python -m venv /venv
fi
source /venv/bin/activate
python -m pip install -U pip setuptools wheel
python -m pip install -U -r /requirements.txt
python -m pip install -U discord.py[voice]
