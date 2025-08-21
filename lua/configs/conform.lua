local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- css = { "prettier" },
    solidity = { "forge" }, -- Using forge fmt for Solidity formatting
    -- html = { "prettier" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
