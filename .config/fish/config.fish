set -g -x fish_greeting ''

set -gx TERM xterm-256color

# Theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# Aliases
if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -l"
alias lla "ll -A"

alias cls "clear"
command -qv nvim && alias vim nvim

set -gx EDITOR nvim

set -gx PATH bin $PATH
set -gx PATH ~/bin $PATH
set -gx PATH ~/.local/bin $PATH

# NodeJS

# fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch yellow

# Status Chars
set __fish_git_prompt_char_dirtystate '⚡'
set __fish_git_prompt_char_stagedstate '→'
set __fish_git_prompt_char_stashstate '↩'
set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'

set -g theme_hide_hostname no

function fish_prompt
    #set_color 18974e
    #printf (date "+$c2%H$c0:$c2%M$c0:$c2%S>")
    set_color f2777a
    printf '%s@%s%s%s%s> ' (whoami) (set_color ff8a00) (hostname | cut -d . -f 1) \
        (set_color $fish_color_cwd) (prompt_pwd)
    set_color $fish_color_error
    printf '%s ' (__fish_git_prompt)
    set_color normal
end
