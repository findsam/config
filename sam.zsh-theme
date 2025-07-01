PROMPT="%{$fg[red]%}~/sam%{$reset_color%} %{$fg[green]%}➜%{$reset_color%} "
PROMPT+='$(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}$(basename $(git rev-parse --show-toplevel 2>/dev/null) 2>/dev/null)@%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}"
