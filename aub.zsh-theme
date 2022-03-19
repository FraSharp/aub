# LICENSE
# SPDX-License-Identifier: MIT
# aub (aka schwa) Zsh theme, compatible and tested with Oh-My-Zsh
# https://github.com/ohmyzsh
# 2022 Francesco Duca <f.duca00@gmail.com>
# END LICENSE

# In function 'prompt_char'
# Taken from @suvash - https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/suvash.zsh-theme
# Modified by @FraSharp to reflect aub (aka schwa) Zsh theme standard(s)
#
# if directory is a git repository  	=>  use '[+]'
# else if directory is mercurial scm  	=>  use '[Hg]'
# else use '[ə]'
function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '[+]' && return
    hg root >/dev/null 2>/dev/null && echo '[Hg]' && return
    echo '[ə]'
}

# Simplify colors using a kind of 'alias'
#
# Regular font(s)
#
yellow=%{$fg[yellow]%}
blue=%{$fg[blue]%}
red=%{$fg[red]%}
#
# Bold font(s)
#
bold_cyan=%{$fg_bold[cyan]%}
bold_magenta=%{$fg_bold[magenta]%}
bold_white=%{$fg_bold[white]%}
bold_blue=%{$fg_bold[blue]%}
bold_green=%{$fg_bold[green]%}
bold_red=%{$fg_bold[red]%}

# <In normal directory(s)> in this order:
#
# ə
# {username}
# at
# {hostname aka pc's name}
# in
# {directory}
# [ə]			        -> This is specified in 'prompt_char' function.

# <In git directory(s)> in this order:
#
# ə
# {username}
# at
# {hostname aka pc's name}
# in
# {directory}
# on 				-> This is specified in 'ZSH_THEME_GIT_PROMPT_PREFIX' flag.
# {repository's branch name} 	-> This is specified in 'ZSH_THEME_GIT_PROMPT_PREFIX' flag.
# [+]				-> This is specified in 'prompt_char' function.

# $fg_bold 			-> Bold font
# $fg				-> Regular font

# Variable to use custom username
custom_username=false
# Variable to use custom hostname
custom_hostname=false


# Set custom username only if the variable is true
if [ $custom_username = true ]; then
# Set custom username here
username=""
else
# Else it will fallback to real username
username=%n
fi

# Set custom hostname only if the variable is false
if [ $custom_hostname = true ]; then
# Set custom hostname here
hostname=""
else
# Else fallback to real hostname
hostname=%m
fi

PROMPT="\
%{$bold_cyan%}ə \
%{$bold_magenta%}$username \
%{$bold_white%}at \
%{$yellow%}$hostname \
%{$bold_white%}in \
%{$bold_green%}%~ \
%{$bold_blue%}\
\$(git_prompt_info)\
\$(hg_prompt_info)\
%{$bold_blue%}\$(prompt_char)%{$reset_color%} "

# <Only in git directory(s)> in this order:
#
# on
# {repository's branch name}
ZSH_THEME_GIT_PROMPT_PREFIX="%{$bold_white%}on %{$reset_color%}%{$red%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "

# This flag is used just to print the branch name without the
# '*' at the end of the branch name
ZSH_THEME_GIT_PROMPT_DIRTY=""

ZSH_THEME_HG_PROMPT_PREFIX="%{$blue%}hg %{$red%}"
ZSH_THEME_HG_PROMPT_SUFFIX="%{$reset_color%}"
