require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- mapping for Markdown Preview
map("n", "<leader>mp", "<CMD> MarkdownPreview<CR>", { desc = "Open Preview" })
map("n", "<leader>mc", "<CMD> MarkdownPreviewStop<CR>", { desc = "Close Preview" })
