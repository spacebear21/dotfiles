# dotfiles

Approach inspired by [Storing dotfiles with Git](https://web.archive.org/web/20220308232632/https://engineeringwith.kalkayan.io/series/developer-experience/storing-dotfiles-with-git-this-is-the-way/).

## Installation

```
git clone --bare https://github.com/grizznaut/dotfiles.git $HOME/.dotfiles
/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout
source ~/.zshrc
dotfiles config status.showUntrackedFiles no
```

## Usage

```
dotfiles log
dotfiles add ~/.config/some-new-config-file
dotfiles status
...
```
