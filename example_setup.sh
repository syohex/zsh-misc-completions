#!/usr/bin/env zsh
set -e

local destination=$1
if [[ -z "$destination" ]]; then
  "Usage: $0 dest_dir"
  exit 1
fi

local -a files
if [[ $OSTYPE == darwin* ]]; then
  files=(${(@f)"$(find Unix Perl macOS -name '_*' -type f)"})
else
  files=(${(@f)"$(find Unix Perl -name '_*' -type f)"})
fi


for file in $files
do
  local base=$(basename $file)
  echo "Create symbolic link $destination/$base"
  ln -sf $PWD/$file "$destination/$base"
done
