git_branch() {
    local b
    b=$(git branch --show-current 2>/dev/null)
    [[ -n $b ]] && print " ($b)"
}

setopt PROMPT_SUBST

PROMPT='%{$fg_bold[cyan]%}%T \
%{$fg_bold[white]%}%n%{$fg[magenta]%}@%{$fg_bold[white]%}%m \
%{$fg_bold[cyan]%}%~%{$fg_bold[white]%}$(git_branch) \
%{$fg_bold[yellow]%}> %{$reset_color%}'
