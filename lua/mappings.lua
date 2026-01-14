require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd>w <cr>")

map("n", "K", "<cmd>lua vim.lsp.buf.hover({border='double'})<CR>", { desc = "LSP Hover With Border" })
map("n", "<leader>o", "<cmd>AerialToggle right<CR>", { desc = "Toggle Outline Tree" })
map("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<CR>", { desc = "Toggle DAP UI" })
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle Breakpoint" })
map("n", "<F5>", "<cmd>DapContinue<CR>", { desc = "Start/Continue Debugging" })
map("n", "<S-F5>", "<cmd>DapTerminate<CR>", { desc = "Terminate Debugging" })
map("n", "<F6>", "<cmd>DapStepOver<CR>", { desc = "StepOver" })
map("n", "<F7>", "<cmd>DapStepInto<CR>", { desc = "StepInto" })
map("n", "<F8>", "<cmd>DapStepOut<CR>", { desc = "StepOut" })
map("n", "<A-j>", ":m .+1<CR>== ", { desc = "Move line down" })
map("n", "<A-k>", ":m .-2<CR>== ", { desc = "Move line up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })
map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "Code Action" })

