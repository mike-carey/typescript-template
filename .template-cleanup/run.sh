#!/usr/bin/env bash

set -euo pipefail

[ -n "${REPOSITORY:-}" ] || {
  REPOSITORY="$(dirname "$PWD")"
  export REPOSITORY
}

for script in .template-cleanup/*.sh; do
  [ -f "$script" ] || continue

  # Ignore the run script
  [ "$script" != .template-cleanup/run.sh ] || continue

  bash -c "$script"
done
