# dotfiles

Approach inspired by [Storing dotfiles with Git](https://web.archive.org/web/20220308232632/https://engineeringwith.kalkayan.io/series/developer-experience/storing-dotfiles-with-git-this-is-the-way/).

## Installation

```
git clone --bare https://github.com/<username>/dotfiles.git $HOME/.dotfiles && source ~/.zshrc
```

This may be needed to not display all files in home dir:

```
dotfiles status.showUntrackedFiles no
```

## Usage

```
dotfiles log
dotfiles add ~/.config/some-new-config-file
dotfiles status
...
```
