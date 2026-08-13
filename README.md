# zsh misc completions

## Unix

- [gtags](https://www.gnu.org/software/global/)
- [porg](https://github.com/miyagawa/cpanminus)
- [compiledb](https://github.com/nickdiego/compiledb)
- [bear](https://github.com/rizsotto/Bear)
- [cmigemo](https://github.com/koron/cmigemo)
- [rabbitmq](https://github.com/rabbitmq/rabbitmq-server)
- [android-cli](https://developer.android.com/tools/agents/android-cli/)
- [claude](https://claude.com/product/claude-code)

## Perl

- [carmel](https://github.com/miyagawa/Carmel)
- [carton](https://github.com/perl-carton/carton)
- [milla](https://github.com/miyagawa/Dist-Milla)
- [minil](https://github.com/tokuhirom/Minilla)
- [perl-build](https://github.com/tokuhirom/Perl-Build)
- [plackup](https://github.com/plack/Plack)
- [start_server](https://github.com/kazuho/p5-Server-Starter)

## dotnet

- [dotnet](https://github.com/dotnet/sdk)
  - dotnet provides zsh completion feature but it is not useful for me
- [fantomas](https://github.com/fsprojects/fantomas)
- [dotnet-install.sh](https://learn.microsoft.com/en-us/dotnet/core/tools/dotnet-install-script)

## Ruby

- [ruby-build](https://github.com/rbenv/ruby-build)

## macOS

- mediafilesegmenter
- mediastreamsegmenter
- mediastreamvalidator
- mediasubtitlesegmenter

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
