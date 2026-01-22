require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "q", "<Nop>", { desc = "Disable Marco Recording" })
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd>w <cr>")

map("n", "K", "<cmd>lua vim.lsp.buf.hover({border='double'})<CR>", { desc = "LSP Hover With Border" })

map("n", "<leader>q", "<cmd>cclose | lclose<CR>", { desc = "Close Quickfix and Location List" })
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

map("n", "<leader>sp", '<cmd>lua require("spectre").toggle()<CR>', { desc = "Spectre 全局搜索替换面板" })
map("n", "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', { desc = "搜索当前单词" })
map("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', { desc = "搜索选中的文本" })

map("n", "gd", "gdzz", { desc = "LSP Go to Definition and center" })
map("n", "<C-o>", "<C-o>zz", { desc = "Jump backward and center" })
map("n", "<C-i>", "<C-i>zz", { desc = "Jump forward and center" })

