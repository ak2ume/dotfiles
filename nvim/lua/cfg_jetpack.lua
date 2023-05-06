local jetpackfile = vim.fn.stdpath('data') .. '/site/pack/jetpack/opt/vim-jetpack/plugin/jetpack.vim'
-- local jetpack_dir = vim.fn.expand('~/.local/share/nvim/site/pack/jetpack/opt/vim-jetpack')
-- local jetpack_repo_dir = jetpack_dir..'/plugin/jetpack.vim'
vim.o.runtimepath = jetpackfile..','..vim.o.runtimepath

local rc_dir = vim.g.configtomlpath
local toml = rc_dir..'/dein.toml'

vim.cmd('packadd vim-jetpack')
vim.fn['jetpack#begin']()
vim.fn['jetpack#load_toml'](toml)
vim.fn['jetpack#end']()

-- plugin install check
if vim.fn.filereadable(jetpackfile) == 0 then
  local jetpackurl = "https://raw.githubusercontent.com/tani/vim-jetpack/master/plugin/jetpack.vim"
  vim.fn.system(string.format('curl -fsSLo %s --create-dirs %s', jetpackfile, jetpackurl))
end

-- plugin install check
local jetpack = require('jetpack')
for _, name in ipairs(jetpack.names()) do
  if not jetpack.tap(name) then
    jetpack.sync()
    break
  end
end

