vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.splitright = true
vim.o.termguicolors = true
vim.o.hidden = true
vim.o.updatetime = 300
vim.bo.expandtab = true
vim.bo.autoindent = true
vim.bo.tabstop = 2
vim.bo.shiftwidth = 2
vim.bo.autoread = true
vim.wo.number = true
vim.wo.signcolumn = 'yes'
vim.wo.cursorline = true
vim.cmd 'set clipboard+=unnamedplus'

-- key bindings --
local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
map("t", "<Esc>", "<C-Bslash><C-n>")
map("t", "<C-[>", "<C-Bslash><C-n>")
map("t", "<C-v><Esc>", "<Esc>")

