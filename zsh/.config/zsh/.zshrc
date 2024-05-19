#!/bin/zsh
#
# .zshrc - Zsh file loaded on interactive shell sessions.
#

# Zsh options.
setopt extended_glob

# Autoload functions you might want to use with antidote.
ZFUNCDIR=${ZFUNCDIR:-$ZDOTDIR/functions}
fpath=($ZFUNCDIR $fpath)
autoload -Uz $fpath[1]/*(.:t)

# Source zstyles you might use with antidote.
[[ -e ${ZDOTDIR:-~}/.zstyles ]] && source ${ZDOTDIR:-~}/.zstyles

# Clone antidote if necessary.
[[ -d ${ZDOTDIR:-~}/.antidote ]] ||
  git clone https://github.com/mattmc3/antidote ${ZDOTDIR:-~}/.antidote

# Create an amazing Zsh config using antidote plugins.
source ${ZDOTDIR:-~}/.antidote/antidote.zsh
antidote load

test -e "${ZDOTDIR}/.iterm2_shell_integration.zsh" && source "${ZDOTDIR}/.iterm2_shell_integration.zsh"

alias ncfg='nvim ~/Dotfiles/nvim/.config/nvim/init.lua'
alias zcfg='nvim ~/Dotfiles/zsh/.config/zsh/.zshrc'

# git aliases
alias gits='git status'
alias gitc='git commit'
alias gitp='git push'
alias lz='lazygit'

# open code folder in finder
alias dev='open ~/Code'

# Run executable at ~/Dotfiles/bin/ndev if it exists
[[ -x ~/Dotfiles/bin/ndev ]] && alias ndev='~/Dotfiles/bin/ndev'

