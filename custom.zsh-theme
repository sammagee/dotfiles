PROMPT="%(?:%{$fg_bold[magenta]%}-> :%{$fg_bold[red]%}-> )%{$reset_color%}"
PROMPT+='%{$fg_bold[cyan]%}%c%{$reset_color%}  '

RPROMPT='%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}•"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}•"
