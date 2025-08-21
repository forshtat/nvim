require("nvchad.configs.lspconfig").defaults()

local lspconfig = require("lspconfig")

-- Default servers
local servers = { "html", "cssls" }
vim.lsp.enable(servers)

-- Solidity LSP setup with explicit configuration
lspconfig.solidity.setup({
  cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
  filetypes = { "solidity" },
  root_dir = lspconfig.util.find_git_ancestor,
  single_file_support = true,
})
-- npm install -g @nomicfoundation/solidity-language-server

-- read :h vim.lsp.config for changing options of lsp servers
