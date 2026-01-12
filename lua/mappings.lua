require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
map("n", "<leader>o", "<cmd> AerialToggle! right <CR>", { desc = "Toggle Outline Tree" })

map("n", "<leader>du", "<cmd> lua require'dapui'.toggle() <CR>", { desc = "Toggle DAP UI" })
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Toggle Breakpoint" })
map("n", "<leader>dr", "<cmd> DapContinue <CR>", { desc = "Start/Continue Debugging" })
map("n", "<leader>dc", "<cmd> DapTerminate <CR>", { desc = "Terminate Debugging" })
map("n", "<leader>ds", "<cmd> DapStepOver <CR>", { desc = "StepOver" })
map("n", "<leader>di", "<cmd> DapStepInto <CR>", { desc = "StepInto" })
map("n", "<leader>do", "<cmd> DapStepOut <CR>", { desc = "StepOut" })
-- 在 Normal 模式下
map("n", "<A-j>", ":m .+1<CR>== ", { desc = "Move down" })
map("n", "<A-k>", ":m .-2<CR>== ", { desc = "Move up" })
-- 在 Visual 模式下（支持多行同时移动）
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })

map("n", "<leader>ca", "<cmd> lua vim.lsp.buf.code_action() <CR>", { desc = "Code Action" })

