# dotfiles

Approach inspired by [Storing dotfiles with Git](https://web.archive.org/web/20220308232632/https://engineeringwith.kalkayan.io/series/developer-experience/storing-dotfiles-with-git-this-is-the-way/).

## Installation

```
# Clone the bare repository.
git clone --bare --recurse-submodules https://github.com/grizznaut/dotfiles.git $HOME/.dotfiles
# Checkout to apply the changes.
# It will fail if there are any conflicts with existing files. Resolve conflicts manually if needed.
/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout
# Source the changes.
source ~/.zshrc
# Hide untracked files.
dotfiles config status.showUntrackedFiles no
```

## Usage

```
dotfiles log
dotfiles add ~/.config/some-new-config-file
dotfiles status
...
```
