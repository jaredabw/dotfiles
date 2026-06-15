autoload -Uz vcs_info
precmd() { vcs_info; }

zstyle ':vcs_info:git:*' formats '(%b)'
zstyle ':vcs_info:*' enable git

PROMPT="%{$fg_bold[cyan]%}%T \
%{$fg_bold[white]%}%n%{$fg[magenta]%}@%{$fg_bold[white]%}%m \
%{$fg_bold[cyan]%}%~ \
%{$fg_bold[white]%}${vcs_info_msg_0_} \
%{$fg_bold[yellow]%}> %{$reset_color%}"
