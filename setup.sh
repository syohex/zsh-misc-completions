#!/usr/bin/env zsh
set -e

local destination=$HOME/.zsh/completions
if [[ -n "$1" ]]; then
  destination=$1
fi

mkdir -p "$destination"

local -a files
if [[ $OSTYPE == darwin* ]]; then
  files=(${(@f)"$(find Unix Perl macOS -name '_*' -type f)"})
else
  files=(${(@f)"$(find Unix Perl -name '_*' -type f)"})
fi

for file in $files
do
  echo "Create symbolic link $file => $destination/"
  ln -sf $PWD/$file "$destination"
done
