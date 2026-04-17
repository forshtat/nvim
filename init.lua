vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "autocmds"

vim.schedule(function()
  require "mappings"
end)

vim.opt.shell = "/bin/bash"
vim.o.exrc = true
vim.o.secure = true

vim.wo.relativenumber = true

-- Move lines up and down with Ctrl+Shift+j / Ctrl+Shift+k
vim.keymap.set("n", "<C-S-j>", "mz:m+<CR>`z==", { silent = true })
vim.keymap.set("n", "<C-S-k>", "mz:m-2<CR>`z==", { silent = true })

vim.keymap.set("i", "<C-S-j>", "<Esc>:m+<CR>==gi", { silent = true })
vim.keymap.set("i", "<C-S-k>", "<Esc>:m-2<CR>==gi", { silent = true })

vim.keymap.set("v", "<C-S-j>", ":m'>+<CR>gv=`<my`>mzgv`yo`z", { silent = true })
vim.keymap.set("v", "<C-S-k>", ":m'<-2<CR>gv=`>my`<mzgv`yo`z", { silent = true })

