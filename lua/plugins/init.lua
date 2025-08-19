return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
   'mrcjkb/rustaceanvim',
   version = '^6', -- Recommended
   lazy = false, -- This plugin is already lazy
  },
  {
    "Yu-Leo/blame-column.nvim",
    opts = {}, -- for default options. Refer to the configuration section for custom setup.
    cmd = "BlameColumnToggle",
  },
  {
    'stevearc/overseer.nvim',
    opts = {},
  },
  
{
  "git@github.com:pmizio/typescript-tools.nvim",
  ft = { "typescript", "tsx" },
  config = function()
    require("typescript-tools").setup({
      -- plugin options (see README)
    })
  end,
},
{
  "folke/snacks.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    lazygit = { enabled = true },
  },
  keys = {
    {
      "<leader>gg",
      function()
        -- run lazygit in the current working directory
        Snacks.lazygit({ cwd = vim.loop.cwd() })
      end,
      desc = "Lazygit (cwd)",
    },
  },
}

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
