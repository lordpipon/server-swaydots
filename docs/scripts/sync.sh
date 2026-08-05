#!/usr/bin/env bash
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
SRC="$REPO_ROOT/docs/src"

for f in "$REPO_ROOT"/*.md; do
  cp "$f" "$SRC/"
done

rm -rf "$SRC/config"
cp -r "$REPO_ROOT/config" "$SRC/config"

echo "Synced root markdown and config/ from $REPO_ROOT into $SRC"
