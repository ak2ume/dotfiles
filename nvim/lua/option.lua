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
map("n", "<M-h>", "<C-w>h")
map("n", "<D-h>", "<C-w>h") -- can't use it on Mac due to the default key shortcut
map("n", "<M-j>", "<C-w>j")
map("n", "<D-j>", "<C-w>j")
map("n", "<M-k>", "<C-w>k")
map("n", "<D-k>", "<C-w>k")
map("n", "<M-l>", "<C-w>l")
map("n", "<D-l>", "<C-w>l")
map("t", "<M-h>", "<C-Bslash><C-n><C-w>h")
map("t", "<D-h>", "<C-Bslash><C-n><C-w>h")
map("t", "<M-j>", "<C-Bslash><C-n><C-w>j")
map("t", "<D-j>", "<C-Bslash><C-n><C-w>j")
map("t", "<M-k>", "<C-Bslash><C-n><C-w>k")
map("t", "<D-k>", "<C-Bslash><C-n><C-w>k")
map("t", "<M-l>", "<C-Bslash><C-n><C-w>l")
map("t", "<D-l>", "<C-Bslash><C-n><C-w>l")
map("t", "<Esc>", "<C-Bslash><C-n>")
map("t", "<C-[>", "<C-Bslash><C-n>")
map("t", "<C-v><Esc>", "<Esc>")

