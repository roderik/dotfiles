
# dotfiles

![dotfiles](./logo.jpg)

A pure "Apple Silicon" setup script for my computers. It installs nothing that does not have a native arm version.

## Installation

For all operations we are going to need several command line utilities and XCode. Just the CLT is not enough. Install Xcode via the App Store.

While this is running, sync the Infrastructure folder in Documents on iCloud and copy over the ssh keys to `~/.ssh`

Then run

```sh
cd ~
git clone https://github.com/roderik/dotfiles.git
cd ~/dotfiles
./install.sh
```

## Manual applications

- [Slack](https://slack.com/intl/en-be/downloads/mac)
- [Mimestream](https://mimestream.com/download)
- [Intellij IDEA](https://youtrack.jetbrains.com/issue/JBR-2526) --> does not open files, vscode it is

## To investigate

```yaml
# No M1 build
#cask "kaleidoscope"
# plex
#zoomus
#discord
#studio-3t
#lens

# Research
#google-cloud-sdk
#grammarly for safari

#mas "Reeder 5.", id: 1529448980
#mas "Parcel - Delivery Tracking", id: 639968404
#mas "Twitter", id: 1482454543

# Rust issue
#brew "starship"

# Python 3.8 issue
#brew "azure-cli"

# Go issue
#brew "aws-iam-authenticator"
#brew "kubectx"
#brew "go", args: ["head"]
#brew "kubectl"
#brew "helm"
#brew "fzf"
#brew "helmfile"
#brew "k9s"
#brew "yq"
```
