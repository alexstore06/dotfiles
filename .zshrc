# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alex/.zshrc'
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Begin custom config

# Aliases
alias sudo='sudo '
alias vi="nvim"
alias vim="emacsclient -nw"
alias emacs="emacsclient --create-frame"
alias update='yay'
alias install='yay -S --needed'
alias remove='yay -R'
alias airpods='bluetoothctl power on && bluetoothctl connect 68:3E:C0:A8:31:22'
alias cdd='cd ~/Downloads'
alias sctl='sudo systemctl'
alias bon='bluetoothctl power on'
alias boff='bluetoothctl power off'
alias update-grub='sudo mount /dev/nvme0n1p3 /mnt && sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias ls='eza'
alias lst='eza -T'
alias lsa='eza -a'
alias cat='bat --paging=never'
alias cd='z'
alias teamviewer='sudo systemctl restart teamviewerd && teamviewer'

# Environment variables
export PATH="$HOME/.config/emacs/bin:$PATH"
export PS1="%n@%m %~$ "

# Keybinds
bindkey '^R' history-incremental-search-backward

eval "$(direnv hook zsh)"

# Must remain at bottom
eval "$(zoxide init zsh)"
