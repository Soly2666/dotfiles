# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Optimized PATH setup (consolidated)
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/sbin:/usr/local/opt/libressl/bin:$HOME/bin:/usr/local/bin:$HOME/.local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/Users/islamelbanna/.oh-my-zsh"
export TERM="xterm-256color"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

#ZSH_THEME="random"
#ZSH_THEME="powerlevel9k/powerlevel9k"
ZSH_THEME="powerlevel10k/powerlevel10k"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )
ZSH_THEME_RANDOM_CANDIDATES=( "agnoster" "amuse" "gnzh" "gianu" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
 export UPDATE_ZSH_DAYS=3

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# Core plugins (loaded immediately)
plugins=(
  git
  history
  sudo
  macos
  extract
  fzf
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Load docker, kubectl, oc plugins only if commands exist
# This prevents loading completions for tools you don't have installed
_additional_plugins=()
command -v docker >/dev/null 2>&1 && _additional_plugins+=(docker)
command -v kubectl >/dev/null 2>&1 && _additional_plugins+=(kubectl) 
command -v oc >/dev/null 2>&1 && _additional_plugins+=(oc)

# Add conditional plugins to main plugin list
plugins+=(${_additional_plugins[@]})
unset _additional_plugins

# To make Homebrew’s completions available in zsh, you must get the Homebrew-managed zsh site-functions on your FPATH before initialising zsh’s completion facility. Add the following to your ~/.zshrc file:
# https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh
#
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  # Speed up compinit by skipping security checks for system completions
  for dump in ~/.zcompdump(N.mh+24); do
    compinit -d ~/.zcompdump
  done
  [[ -s ~/.zcompdump ]] || compinit -d ~/.zcompdump
fi

source $ZSH/oh-my-zsh.sh

#forcibly rebuild zcompdump.
# rm -f ~/.zcompdump; compinit  # COMMENTED OUT - causes slow startup

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

neofetch

# iTerm2 shell itegration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# broot settings
#source /Users/islamelbanna/Library/Preferences/org.dystroy.broot/launcher/bash/br
source /Users/islamelbanna/.config/broot/launcher/bash/br

# fzf autocomplition
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_BASE="/opt/homebrew/opt/fzf"

# IBM Cloud CLI auto-complete
#source /usr/local/ibmcloud/autocomplete/zsh_autocomplete

# CP4NA Training Directory
export HOME_CP4NA_TRAINING=$HOME

# PowerLevel10k configuration
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# InstructLAB
alias python3=/opt/homebrew/bin/python3.11
. ~/.ilab-complete.zsh

# Initialize zoxide repalcment for cd command
eval "$(zoxide init zsh)"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
source ~/.kubectl_aliases
