#!/usr/bin/env zsh
set -e
set -x

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
  ln -sf $PWD/$file ~/.zsh/completions
done
