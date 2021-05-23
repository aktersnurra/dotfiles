# Dotfiles

A living document...

# Installation

Write detailed installation instruction here...

Install Artix, just follow Luke's tutorial on artix...

```
Install bluez and other good to have software, e.g. browser, fonts,nvim etc
dont forget to link runit
```

Fetch the config with:

```
alias config='/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME'
echo "dotfiles" >> .gitignore
git clone --bare https://gitlab.com/aktersnurra/dotfiles $HOME/dotfiles
```

Now what?



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
