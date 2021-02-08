#!/bin/bash
set -euxo pipefail
docker build -t musicbot ./image
docker run --rm --name musicbot \
	--network=br0 \
	-v $PWD/MusicBot:/workspace \
	-it musicbot