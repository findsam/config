PROMPT='%{$fg[red]%}$(if [[ $PWD == $HOME ]]; then echo "~/sam"; else echo "~/sam/%1d"; fi)%{$reset_color%}$(git_prompt_info) %{$fg[green]%}➜%{$reset_color%} '

git_prompt_info() {
  if git rev-parse --git-dir > /dev/null 2>&1; then
    local branch=$(git branch --show-current 2>/dev/null)
    echo "%{$fg[green]%}@${branch}%{$reset_color%}"
  fi
}
