#!/usr/bin/env bash
set -euo pipefail

cd /workspace

if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  echo "error: /workspace is not a git repository" >&2
  exit 1
fi

HEAD="$(git rev-parse --short HEAD)"
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
echo "goutham workspace ready (branch=${BRANCH}, commit=${HEAD})"
