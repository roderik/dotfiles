
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
- [Docker](https://www.docker.com/blog/download-and-try-the-tech-preview-of-docker-desktop-for-m1/)

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

```
