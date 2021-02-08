#!/bin/bash
set -euo pipefail
docker run -d --name musicbot \
	--network=br0 \
	-v $PWD/MusicBot:/workspace \
	-t musicbot