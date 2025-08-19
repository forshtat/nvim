require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>i", function()
  vim.lsp.buf.code_action({
    apply = true
  })
end, { desc = "Code Action" })
vim.keymap.set("v", "<leader>i", function()
  vim.lsp.buf.code_action({
    apply = false
  })
end, { desc = "Code Action" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
