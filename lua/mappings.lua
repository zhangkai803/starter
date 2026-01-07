require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>o", "<cmd>AerialToggle! right<CR>", { desc = "Toggle Outline Tree" })

map("n", "<leader>du", "<cmd>lua require'dapui'.toggle() <CR>", { desc = "Toggle DAP UI" })
map("n", "<leader>db", "<cmd> DapToggleBreakPoint <CR>", { desc = "Toggle Breakpoint" })
map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Start/Continue Debugging" })

