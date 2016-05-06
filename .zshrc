# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/arkezar/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
alias ls='ls --color=auto'
alias vim='nvim'

neofetch

vman() {
	nvim -c "SuperMan $*"

	if [ "$?" != "0" ]; then
		echo "No manual for $*"
	fi
}

source /usr/share/zsh/scripts/antigen/antigen.zsh
antigen use oh-my-zsh
antigen theme bira
antigen bundle zsh-users/zsh-syntax-highlighting
