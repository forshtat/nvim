require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<leader>a", "<cmd>Telescope keymaps<CR>", { desc = "Search keymaps" })

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

-- Run (overseer) — mirrors IntelliJ Run tool window
map("n", "<leader>rr", "<cmd>OverseerRun<CR>",         { desc = "Run: pick config" })
map("n", "<leader>rl", "<cmd>OverseerRestartLast<CR>", { desc = "Run: rerun last" })
map("n", "<leader>ro", "<cmd>OverseerToggle<CR>",      { desc = "Run: open panel" })
map("n", "<leader>rq", "<cmd>OverseerClose<CR>",       { desc = "Run: close panel" })
map("n", "<leader>rx", "<cmd>OverseerShell<CR>",       { desc = "Run: shell command" })

local ok, wk = pcall(require, "which-key")
if ok then wk.add({ { "<leader>r", group = "Run" } }) end
