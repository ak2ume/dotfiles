# set incremental search tool in ghq
if status is-interactive
    # Commands to run in interactive sessions can go here
end

# peco
set fish_plugins theme peco

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

# RISC-V toolchain
set -gx PACKAGES_PATH /mnt/d/ak2ume/git/github.com/riscv-collab/riscv-edk2-platforms
set -gx PACKAGES_PATH /mnt/d/ak2ume/git/github.com/riscv-collab/riscv-edk2 $PACKAGES_PATH
fish_add_path /opt/riscv/bin
set -gx GCC5_RISCV64_PREFIX /opt/riscv/bin/riscv64-unknown-elf-
