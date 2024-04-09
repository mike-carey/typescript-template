#!/usr/bin/env bash

set -eo pipefail

with_backup_ext=''
if [[ "$OSTYPE" == "darwin"* ]]; then
  # MacOS sed requires a backup file
  with_backup_ext=.bak
fi

description="${DESCRIPTION:-}"
# Default to the description from github
[ -n "$description" ] || description="$(gh repo view --jq .description --json description)"

{
  echo "# ${REPOSITORY^}" # title case
  echo ""

  # Fetch the description from github
  echo "$description"

  # Delete all lines up to the template cleanup comment
  sed '1,/<!-- @template-cleanup -->/d' README.md.tpl
} > README.md.tmp
mv README.md.tmp README.md
git add README.md

git mv .templatesyncignore.tpl .templatesync
