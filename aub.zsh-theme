PROMPT="\
%{$fg_bold[cyan]%}ə \
%{$fg_bold[magenta]%}%n\
%{$fg_bold[white]%} at\
%{$fg[yellow]%} %m\
%{$fg_bold[white]%} in \
%{$terminfo[bold]$fg[green]%}%~%{$reset_color%} \$(git_prompt_info)$(hg_prompt_info)%{$reset_color%}%{$fg_bold[blue]%}[+] \
%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}on %{$reset_color%}%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_HG_PROMPT_PREFIX="%{$fg[blue]%}hg %{$fg[red]%}"
ZSH_THEME_HG_PROMPT_SUFFIX="%{$reset_color%}"
