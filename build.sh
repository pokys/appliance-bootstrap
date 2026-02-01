#!/bin/bash
set -e

OUT=output/ignition.json

if ! command -v butane >/dev/null; then
  echo "ERROR: butane not found"
  exit 1
fi

butane butane/base.yaml -o "$OUT"
echo "Ignition generated: $OUT"
