#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$repo_root"

if [[ ! -f .gitmodules ]]; then
  echo "No .gitmodules file found in $repo_root" >&2
  exit 1
fi

git submodule sync --recursive
git submodule update --init --recursive

