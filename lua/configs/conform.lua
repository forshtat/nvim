local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "goimports", "gofmt" },
    -- css = { "prettier" },
    solidity = { "forge" }, -- Using forge fmt for Solidity formatting
    -- html = { "prettier" },

    -- Add TypeScript/JavaScript formatting
    -- npm install -g prettier
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    json = { "prettier" },
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
