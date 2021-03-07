# Dotfiles

A living document...

# Installation

Write detailed installation instruction here...

## Arch

TBC

## macOS

TBC

## Common

TBC

## Alacritty

https://github.com/alacritty/alacritty


## Nerd Fonts

```
git clone https://github.com/ryanoasis/nerd-fonts

./nerd-fonts/install.sh

# If they don't show up
fc-cache -r

# Try finding Space Mono

fc-match "Space Mono Nerd Font"

# If installed correctly should return a match.


# When everything seems to be working, remove nerd-fonts/ directory as it is no longer needed.
rm -rf nerd-fonts/

```

## Python

No words needed, this is the setup:


Install:

* pyenv - https://github.com/pyenv/pyenv

    ```
    pyenv install 3.9.1
    
    pyenv shell 3.9.1
    ```

* pipx - https://github.com/pipxproject/pipx
  
    ```
    pipx install poetry

    pipx install black

    pipx install flake8

    pipx install nox 
    ```

https://cjolowicz.github.io/posts/hypermodern-python-01-setup/

https://www.cosmicpython.com

## Rust

Project structure:

https://doc.rust-lang.org/cargo/guide/project-layout.html

## Lazy

### Docker

https://github.com/jesseduffield/lazydocker

### Git

https://github.com/jesseduffield/lazygit

## Tmux

```
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

## NCDU

`sudo apt-get install ncdu`

`brew install ncdu`

## zsh

### Antigen

Install antigen https://github.com/zsh-users/antigen

### purs

https://github.com/aktersnurra/purs

## MacOS

Tiling manager

https://github.com/koekeishiya/yabai

https://github.com/koekeishiya/skhd

# TODO
* Write install man page
* Setup dotfiles man like https://www.atlassian.com/git/tutorials/dotfiles 
* auto install missing packages. 
