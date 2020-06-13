PROMPT='%{$fg_bold[white]%}%c%{$reset_color%} $(git_prompt_info)  '
PROMPT+="%(?:%{$fg_bold[magenta]%}-> :%{$fg_bold[red]%}-> )%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}•"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}•"
