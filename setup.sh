#!/usr/bin/env zsh
set -e

local destination=$HOME/.zsh/completions
if [[ -n "$1" ]]; then
  destination=$1
fi

mkdir -p "$destination"

local -a  files=(${(@f)"$(find Unix Perl dotnet Ocaml -name '_*' -type f)"})
if [[ $OSTYPE == darwin* ]]; then
  files+=(macOS/_*)
fi

for file in $files
do
  echo "Create symbolic link $file => $destination/"
  ln -sf $PWD/$file "$destination"
done
