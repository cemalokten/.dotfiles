if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR hx

set --universal pure_enable_single_line_prompt true
set --universal pure_color_system_time pure_color_mute
set --universal pure_enable_git true
set --universal pure_color_primary '#a390f0'
set --universal pure_color_git_branch '#D57556' 
set --universal pure_color_info '#52a7f6' 
set --universal pure_symbol_prompt "INSERT"
set --universal pure_symbol_reverse_prompt "NORMAL"
set --universal pure_symbol_git_dirty " ?" 


# Use LS_COLORS to color fff.
# (On by default if available)
# (Ignores FFF_COL1)
export FFF_LS_COLORS=1

# # Directory color [0-9]
# export FFF_COL1=2

# # Status background color [0-9]
export FFF_COL2=5

# # Selection color [0-9] (copied/moved files)
export FFF_COL3=2

# # Cursor color [0-9]
export FFF_COL4=1

# # Status foreground color [0-9]
export FFF_COL5=8

# Text Editor
export EDITOR="hx"

# File Attributes Command
export FFF_STAT_CMD="stat"

# Enable or disable CD on exit.
# (On by default)
export FFF_CD_ON_EXIT=0

# CD on exit helper file
# Default: '${XDG_CACHE_HOME}/fff/fff.d'
#          If not using XDG, '${HOME}/.cache/fff/fff.d' is used.
export FFF_CD_FILE=~/.fff_d

# Default: 'mv'
#          Define a custom program to use to trash files.
#          The program will be passed the list of selected files
#          and directories.
export FFF_TRASH_CMD="trash"

# Cargo runs rust
export PATH="$HOME/.cargo/bin:$PATH"

# Remove alias to Trash
alias rm="trash"

# Lazygit shortcut
alias L="lazygit"

# Format changed files with Prettier

# Sweater API key
export OPEN_WEATHER_API_KEY="999756e436f0e178ff0f0e72cdd17310"

# GO Path
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

# MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/cemalokten/.rd/bin"
# MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

# FZF & RIPGREP
function fzf_rg
  bash /Users/cemalokten/.config/fish/bash/fzf.sh
end

bind -M insert \cf fzf_rg

# BAT THEME
export BAT_THEME="Dracula"

# Set cat to bat
alias cat="bat"

# Set ls to exa -alh
alias ls="exa -alh"

# GO path
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/Go/bin:$PATH"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

set -gx ATUIN_NOBIND "true"
atuin init fish | source

# bind to ctrl-r in normal and insert mode, add any other bindings you want here too
bind \cr _atuin_search
bind -M insert \cr _atuin_search

# bind yy to open yazi
function yy
	set tmp (mktemp -t "yazi-cwd.XXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		cd -- "$cwd"
	end
	rm -f -- "$tmp"
end

# pnpm
set -gx PNPM_HOME "/Users/cemalokten/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

#Export HELIX runtime location
export HELIX_RUNTIME=~/src/helix/runtime
