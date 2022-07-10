# Rust toolchain
. "$HOME/.cargo/env"

# RISC-V toolchain
export PACKAGES_PATH=/mnt/d/ak2ume/git/github.com/riscv-collab/riscv-edk2:/mnt/d/ak2ume/git/github.com/riscv-collab/riscv-edk2-platforms
export PATH=/opt/riscv/bin:${PATH}
export GCC5_RISCV64_PREFIX=/opt/riscv/bin/riscv64-unknown-elf-
