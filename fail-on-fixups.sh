#!/bin/bash

set -e

fixup_commits=$(git log --all --grep="fixup!" --oneline)

if [ -z "$fixup_commits" ]; then
  echo "No fixup commits found."
  exit 0
else
  echo "Fixup commits found:"
  echo "$fixup_commits"
  exit 1
fi
