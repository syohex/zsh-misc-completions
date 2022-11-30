# zsh misc completions

## Unix

- clang-format
- clang-tidy
- emacsclient
- [gtags](https://www.gnu.org/software/global/)
- porg
- peco

## Perl

- carmel
- [carton](https://github.com/perl-carton/carton)
- cpanm
- milla
- [minil](https://github.com/tokuhirom/Minilla)
- [perl-build](https://github.com/tokuhirom/Perl-Build)
- [plackup](https://github.com/plack/Plack)
- [start_server](https://github.com/kazuho/p5-Server-Starter)

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
