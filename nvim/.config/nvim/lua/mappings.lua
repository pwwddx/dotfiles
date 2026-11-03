require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Change Space + e to Toggle instead of Focus
map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", { desc = "nvimtree toggle window" })

-- Unmap NvChad's default Ctrl + n so your multi-line plugin works
vim.keymap.del("n", "<C-n>")

map("n", "<A-Left>", "<cmd>vertical resize +3<cr>", { desc = "Resize window to the left" })
map("n", "<A-Right>", "<cmd>vertical resize -3<cr>", { desc = "Resize window to the right" })
map("n", "<A-Up>", "<cmd>resize +3<cr>", { desc = "Resize window upward" })
map("n", "<A-Down>", "<cmd>resize -3<cr>", { desc = "Resize window downward" })

map("t", "jk", "<C-\\><C-n>", { desc = "Exit terminal mode using jk" })

-- local nomap = vim.keymap.del
-- nomap("n", "<S-r>")
-- nomap("v", "<S-r>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
