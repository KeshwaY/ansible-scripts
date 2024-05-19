# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Path
export PATH="$HOME/.local/bin:$PATH"
export KUBECONFIG="$HOME/.kube/config.yaml"

# Envs
export VISUAL=nvim;
export EDITOR=nvim;

# Custom functions
cd() {
        builtin cd "$@" && command exa --color=auto --icons  -F
}
mcd () {
        mkdir -p $1
        cd $1
}

# Aliases
alias mtar='tar -zcvf' # mtar <archive_compress>
alias utar='tar -zxvf' # utar <archive_decompress> <file_list>
alias z='zip -r' # z <archive_compress> <file_list>
alias uz='unzip' # uz <archive_decompress> -d <dir>
alias sr='source ~/.zshrc'
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
alias mkdir="mkdir -p"
alias ls="exa --color=auto --icons"
alias l="ls"
alias la="ls -l"
alias lla="ls -la"
alias lt="ls --tree"
alias grep='grep --color=auto'
alias mv='mv -v'
alias cp='cp -vr'
alias rm='rm -vr'
alias vim='nvim'
alias cl='clear'
