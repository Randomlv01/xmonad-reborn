# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/random/.zshrc'

alias fuckin='doas'
alias fuck='su'
alias btw='clear && fastfetch -c examples/13'
#alias ash='~/dev/shell/ash'
alias ls='lsd --color=auto -l'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '
alias edit='msedit'
alias vol='pamixer --set-volume'
alias nano='nano -l'
alias rm='rm -rf'
alias v='vim'
alias vlang='/usr/bin/v'
alias files='yazi'
alias pass='cd ~/dev/vlang && ./main && cd'
alias top='dgop'
alias qr='python ~/dev/python/quickrun/main.py '
alias psh='/home/random/.xonsh-env/bin/xonsh'
#alias chpsh='chsh -c /home/random/.xonsh-env/bin/xonsh'
alias cam='mpv /dev/video0 --profile=low-latency --untimed --demuxer-lavf-o=video_size=1920x1080,input_format=mjpeg'
alias i='subb pacman -S'
alias r='subb pacman -Rns'
alias s='pacman -Ss'
alias u='subb pacman -Syyu'
alias emacs='emacs -nw'
alias tree='curl https://raw.githubusercontent.com/sergiolepore/ChristBASHTree/master/tree-EN.sh | bash'
alias xmas='clear && treefetch --xmas'
#alias fsh='chsh -c /bin/fish'
alias surf="tabbed -r 2 surf -pe x 'https://thees.zorbau.com/search'"
alias vimb='tabbed vimb -e'
alias rc='vim ~/.zshrc'
alias atheme='vim /usr/share/awesome/themes/default/theme.lua'
alias aconf='vim ~/.config/awesome/rc.lua'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias note='vim ~/notes/wichtig.md'
#alias sudo='doas'
alias mkdir='mkdir -p'
alias x='sx sh ~/.xinitrc'
alias cp='cp -r'
alias s='./dwl.sh'
alias c='clear'
alias autologin='cd /etc/systemd/system/getty.target.wants && subb vim getty@tty1.service && cd -'
alias getvol='pamixer --get-volume-human'
alias server='wakeonlan 00:E0:4C:69:24:A1'
alias ioff='nmcli radio all off'
alias ion='nmcli radio all on'

#autoload -Uz compinit
#compinit
# End of lines added by compinstall

autoload -Uz add-zsh-hook
add-zsh-hook precmd _load_syntax
#export MANPAGER='nvim +Man!'

_load_syntax() {
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  add-zsh-hook -d precmd _load_syntax
}

#ZSH_AUTOSUGGEST_USE_ASYNC=true
#source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

#prompt 
DARK_BROWN='%F{94}'
BLUE='%F{111}'
PURPLE='%F{141}'
WHITE='%F{15}'
GREEN='%F{2}'
TOK='%F{141}'
RESET='%f'

#PROMPT="${BLUE}%n@%m ${GREEN}%~${WHITE} $ ${RESET}"
PROMPT="${BLUE}%n@%m ${GREEN}%~${WHITE} λ ${RESET}"

#eval "$(starship init zsh)"


#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 
#source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh 

#fastfetch -c examples/13

#~/ColorScripts/crunch

# Created by `pipx` on 2026-02-20 07:03:09
export PATH="$PATH:/home/random/.local/bin"

ls -A | wc -l
