# set incremental search tool in ghq
if status is-interactive
    # Commands to run in interactive sessions can go here
end

# peco
set fish_plugins theme peco

# alias
# 既存のコマンドをより良いデフォルトに上書き
alias mv="mv -i"           # -i 上書き前に警告
alias mkdir="mkdir -p"     # -p 必要に応じて親ディレクトリを作る
alias df="df -h"           # -h 人間が読める形式で表示

# display git branch
set -g theme_display_git_master_branch yes
# prompt after newline
set -g theme_newline_cursor yes
# display date
set -g theme_display_date no

# Keybind
function fish_user_key_bindings
    bind \cr peco_select_history # Bind for peco history to Ctrl+r
end

# set incremental search tool in ghq
set GHQ_SELECTOR peco

