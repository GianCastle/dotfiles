#!/bin/bash
#############################################################
# Install macOS via brew cask
# Author: Giancarlos Castillo <gc.c@outlook.com>
#############################################################

# Cask applications
apps=(
    cheatsheet
    ezip          # compress & extract
    iterm2
    licecap       # Recording screen as gif
    mounty        # Mounty for NTFS read/write

    #browsers
    firefox
    firefox-developer-edition
    google-chrome
    netspot       # Wifi signal analysis and scanner

    # Development
    java
    docker
    emacs
    fork            # Git Client: gitkraken, sourcetree
    typora        # Markdown editor
    visual-studio-code 
)

# Use colors, but only if connected to a terminal, and that terminal
# supports them.
if command -v tput >/dev/null 2>&1; then
    ncolors=$(tput colors)
fi
if [ -t 1 ] && [ -n "$ncolors" ] && [ "$ncolors" -ge 8 ]; then
    RED="$(tput setaf 1)"
    GREEN="$(tput setaf 2)"
    YELLOW="$(tput setaf 3)"
    BLUE="$(tput setaf 4)"
    BOLD="$(tput bold)"
    NORMAL="$(tput sgr0)"
else
    RED=""
    GREEN=""
    YELLOW=""
    BLUE=""
    BOLD=""
    NORMAL=""
fi

function check {
    # Check OS
    if [[ $OSTYPE != darwin* ]]; then
        echo "${RED}Error: only install software via brew_cask on macOS.${NORMAL}" >&2
        exit 1
    fi

    # Check brew
    if ! command -v brew >/dev/null 2>&1; then
        printf "${BLUE} ➜  Installing Homebrew and Cask...${NORMAL}\n"

        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

        brew tap caskroom/cask
        brew tap caskroom/fonts
        cd "$(brew --repo)"/Library/Taps/caskroom/homebrew-cask
        git remote set-url origin https://mirrors.ustc.edu.cn/homebrew-cask.git
    fi
}

function install () {
    for app in ${apps[@]}; do
        printf "${BLUE} ➜  Installing ${app}...${NORMAL}\n"
        brew cask install ${app}
    done
}

function cleanup {
    brew cask cleanup
}

function main {
    check
    install
    cleanup
}

main
