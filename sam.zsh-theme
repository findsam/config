PROMPT='%{$fg[red]%}~/sam%{$reset_color%} %{$fg[green]%}➜%{$reset_color%} $(git_prompt_info)'

git_prompt_info() {
  if git rev-parse --git-dir > /dev/null 2>&1; then
    local repo=$(basename $(git rev-parse --show-toplevel))
    local branch=$(git branch --show-current 2>/dev/null)
    echo "%{$fg[cyan]%}${repo}%{$fg[green]%}@${branch}%{$reset_color%} "
  fi
}
