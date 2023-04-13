![Roderik's dotfiles](header.jpg)

These dotfiles are a collection of configuration files for various command-line tools and applications. They can be installed and managed using the `chezmoi` tool, which is a command-line utility for managing dotfiles across multiple machines.

They feature:

- an extensive zsh setup with a lot of focus on fzf completions
- a ton of super tools

## Installation

Install Homebrew

Homebrew is a package manager for macOS, which simplifies the installation of various command-line tools and applications. It is used in the installation process to install chezmoi.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
```

Install Chezmoi

Chezmoi is a tool that allows users to manage their dotfiles across multiple machines. It provides a simple and flexible way to manage dotfiles using version control, templates, and encryption. It is used in the installation process to initialize and apply Roderik’s dotfiles.

```
brew install chezmoi
chezmoi init --apply roderik
```

Install the dotfiles

```
chezmoi apply -v
```

## tmux

Remember that the default <prefix> is ctrl+b.

- Install plugins with <prefix> + I. <- do this after installing!
- Split panes by pressing <prefix> + % and <prefix> + ".
- Kill panes by pressing <prefix> + x.
- Switch panes with <prefix> + arrow.
- Create new windows by pressing <prefix> + c.
- Switch windows by pressing <prefix> + number.
- Rename windows with <prefix> + ,
- Zoom in and out a pane with <prefix> + z
- Detach with <prefix> + d and reattach with tmux.

## Make it your own

1. Fork this repo
2. run `chezmoi init --apply <your username>`

## Learn more

For more information on chezmoi, you can visit the official website at https://www.chezmoi.io/.
