autoload -Uz vcs_info
precmd() { vcs_info; }

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '(%b)'

setopt PROMPT_SUBST

PROMPT='%{$fg_bold[cyan]%}%T \
%{$fg_bold[white]%}%n%{$fg[magenta]%}@%{$fg_bold[white]%}%m \
%{$fg_bold[cyan]%}%~${vcs_info_msg_0_:+ %{$fg_bold[white]%}${vcs_info_msg_0_}} \
%{$fg_bold[yellow]%}> %{$reset_color%}'
