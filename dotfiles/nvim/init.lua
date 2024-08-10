vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.signcolumn = "number"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Set up plugins
local plugins = {
        -- Colorscheme
       { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
        -- Find files
       {
         "nvim-telescope/telescope.nvim", tag='0.1.5',
         dependencies = { "nvim-lua/plenary.nvim" }
       }
}
local opts = {}

require("lazy").setup(plugins, opts)

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-t>', builtin.find_files, {})
vim.keymap.set('n', '<C-f>', builtin.live_grep, {})

require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
