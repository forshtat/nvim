require("nvchad.configs.lspconfig").defaults()

vim.lsp.enable({ "html", "cssls", "jsonls" })

vim.lsp.config.solidity = {
  cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
  filetypes = { "solidity" },
  root_dir = function(fname)
    return vim.fs.dirname(vim.fs.find({ ".git" }, { upward = true, path = fname })[1])
  end,
  single_file_support = true,
}
vim.lsp.enable("solidity")

vim.lsp.config.jsonls = {
  filetypes = { "json", "jsonc" },
}
