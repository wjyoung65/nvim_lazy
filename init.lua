-- have to put mapleader first so mappings are correct
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- bootstrap lazy.nvim if it's not already installed
-- source: https://github.com/folke/lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--single-branch",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

vim.opt.runtimepath:prepend(lazypath)

require("lazy").setup("plugins", opts)
-- "plugins" can be
--   - table: with [plugin spec](https://github.com/folke/lazy.nvim#-plugin-spec)
--   - string: a lua module name
-- "opts" - see [Configuration](https://github.com/folke/lazy.nvim#%EF%B8%8F-configuration)
