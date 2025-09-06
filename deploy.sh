#!/bin/bash
set -euo pipefail

DEST="$HOME/deployed"
mkdir -p "$DEST"
cp app.py "$DEST/"
echo "Deployed at: $(date)" > "$DEST/deploy.log"
echo "User: $(whoami)" >> "$DEST/deploy.log"
echo "Commit: $(git rev-parse --short HEAD)" >> "$DEST/deploy.log"
ls -l "$DEST" >> "$DEST/deploy.log"
echo "Deployment finished"
