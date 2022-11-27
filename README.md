# zsh misc completions

## Unix

- clang-format
- clang-tidy
- emacsclient
- gtags
- porg
- peco

## Perl

- carmel
- carton
- cpanm
- milla
- minil
- [perl-build](https://github.com/tokuhirom/Perl-Build)
- [plackup](https://github.com/plack/Plack)
- start_server

## macOS

- mediafilesegmenter
- mediastreamsegmenter
- mediastreamvalidator
- mediasubtitlesegmenter
- screencapture

## Setup example

Add some directory to `fpath` variables. In the following example, add `~/.zsh/completions`.

```zsh
mkdir -p ~/.zsh/completions
fpath=(~/.zsh/completions $fpath)
```

Run `example_setup.sh`

```zsh
./example_setup.sh ~/.zsh/completions
```
