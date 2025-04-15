# ohmyzsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"

export DEFAULT_USER="nakamurashun"
prompt_context(){}

# プラグイン
plugins=( 
    git
)
source $ZSH/oh-my-zsh.sh


# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# ghqのキーバインド
function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^]' peco-src

# prompt(git branch)
# autoload -uz vcs_info
# setopt prompt_subst
# zstyle ':vcs_info:git:*' check-for-changes true
# zstyle ':vcs_info:git:*' stagedstr "%f{green}"
# zstyle ':vcs_info:git:*' unstagedstr "%f{red}"
# zstyle ':vcs_info:*' formats "%f{blue} %c%u<%b>%f"
# zstyle ':vcs_info:*' actionformats '%b%f{yellow} [%b|%a]%f%b'
# prompt=$'\n''%f{196}┝ %f%u%c$vcs_info_msg_0_ (%d %*)%u'$'\n''%b%f{196}%#%f%b '
# precmd(){ vcs_info }

# bun completions
[ -s "/users/sodalite/.bun/_bun" ] && source "/users/sodalite/.bun/_bun"

# nvim config
alias vi='nvim'
alias vim='nvim'
alias cvim='nvim ~/.config/nvim/init.lua'
alias cdvim='cd ~/.config/nvim'
alias cdvimp='cd ~/.config/nvim/lua/plugins'

# zshrc
alias cz='nvim ~/.zshrc'
alias uz='source ~/.zshrc'

# tmux
alias ctmux='nvim ~/.tmux.conf'

# history
alias his='history | tac | head -n 15'
alias his2='history | tac | sed -n '17,32p'' # hisに続けて打つことを想定するため、初回his分を差し引いて17から+15

# Vscode
alias code='code-insiders'

# cd
alias cd2='cd ../../'
