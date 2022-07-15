# RISC-V toolchain
set -gx PACKAGES_PATH /mnt/d/ak2ume/git/github.com/riscv-collab/riscv-edk2-platforms
set -gx PACKAGES_PATH /mnt/d/ak2ume/git/github.com/riscv-collab/riscv-edk2 $PACKAGES_PATH
fish_add_path /opt/riscv/bin
set -gx EDK_TOOLS_PATH /mnt/d/ak2ume/git/github.com/riscv-collab/riscv-edk2/BaseTools
set -gx GCC5_RISCV64_PREFIX /opt/riscv/bin/riscv64-unknown-elf-

