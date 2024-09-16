![Roderik's dotfiles](header.jpg)

These dotfiles are a collection of configuration files for various command-line tools and applications. They can be installed and managed using the `chezmoi` tool, which is a command-line utility for managing dotfiles across multiple machines.

They feature:

- an basic fish setup
- a ton of super tools

## Installation

### App Store

Make sure you are logged in to the App Store.

### Install Homebrew

Homebrew is a package manager for macOS, which simplifies the installation of various command-line tools and applications. It is used in the installation process to install chezmoi.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"
```

### Install Chezmoi

Chezmoi is a tool that allows users to manage their dotfiles across multiple machines. It provides a simple and flexible way to manage dotfiles using version control, templates, and encryption. It is used in the installation process to initialize and apply Roderik’s dotfiles.

```
brew install chezmoi
chezmoi init --apply roderik
```

### Install the dotfiles

```
chezmoi apply -v
```

### Set your computer name

```
./hostname.sh <computername>
```

## Make it your own

1. Fork this repo
2. run `chezmoi init --apply <your username>`

## Learn more

For more information on chezmoi, you can visit the official website at https://www.chezmoi.io/.
