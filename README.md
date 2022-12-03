# zsh misc completions

## Unix

- [emacsclient](https://www.gnu.org/software/emacs/)
- [gtags](https://www.gnu.org/software/global/)
- [porg](https://github.com/miyagawa/cpanminus)
- peco

## Perl

- [carmel](https://github.com/miyagawa/Carmel)
- [carton](https://github.com/perl-carton/carton)
- [cpanm](https://github.com/miyagawa/cpanminus)
- [cpm](https://github.com/skaji/cpm)
- milla
- [minil](https://github.com/tokuhirom/Minilla)
- [perl-build](https://github.com/tokuhirom/Perl-Build)
- [plackup](https://github.com/plack/Plack)
- [start_server](https://github.com/kazuho/p5-Server-Starter)

## dotnet

- [fantomas](https://github.com/fsprojects/fantomas)

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

Run `setup.sh`

```zsh
./setup.sh ~/.zsh/completions
```
