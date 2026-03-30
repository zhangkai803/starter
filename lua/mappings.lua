require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "q", "<Nop>", { desc = "Disable Marco Recording" })
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd>w <cr>")

-- hover
map("n", "K", "<cmd>lua vim.lsp.buf.hover({border='double'})<CR>", { desc = "LSP Hover With Border" })

-- quick close
map("n", "<leader>q", "<cmd>cclose | lclose<CR>", { desc = "Close Quickfix and Location List" })

-- debugger
map("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<CR>", { desc = "Toggle DAP UI" })
map("n", "<leader>db", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle Breakpoint" })
map("n", "<F5>", "<cmd>DapContinue<CR>", { desc = "Start/Continue Debugging" })
map("n", "<S-F5>", "<cmd>DapTerminate<CR>", { desc = "Terminate Debugging" })
map("n", "<F6>", "<cmd>DapStepOver<CR>", { desc = "StepOver" })
map("n", "<F7>", "<cmd>DapStepInto<CR>", { desc = "StepInto" })
map("n", "<F8>", "<cmd>DapStepOut<CR>", { desc = "StepOut" })

-- move line
map("n", "<A-j>", ":m .+1<CR>== ", { desc = "Move line down" })
map("n", "<A-k>", ":m .-2<CR>== ", { desc = "Move line up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })

-- code action
map("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "Code Action" })

-- snacks
-- 使用 autocmd 确保在任何文件类型下都拥有最高优先级
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    map("n", "]]", function() require("snacks").words.jump(1) end, { buffer = true, desc = "下一引用" })
    map("n", "[[", function() require("snacks").words.jump(-1) end, { buffer = true, desc = "上一引用" })
  end,
})
map("n", "<leader>e", function() require("snacks").explorer() end, { desc = "文件目录" })
map("n", "<leader>sj", function() require("snacks").picker.jumps() end, { desc = "跳转历史图谱" })
map("n", "gd", function() require("snacks").picker.lsp_definitions() end, { desc = "跳转到定义" })
map("n", "grr", function() require("snacks").picker.lsp_references() end, { desc = "查找引用" })
map("n", "<leader>gl", function() require("snacks").picker.git_log() end, { desc = "Git Log (当前文件)" })
map("n", "<leader>gs", function() require("snacks").picker.git_status() end, { desc = "Git Status (项目全览)" })
map("n", "<leader>gb", function() require("snacks").git.blame_line() end, { desc = "Git Blame (当前行)" })
map("n", "<leader>gd", function() require("snacks").picker.git_diff() end, { desc = "Git Diff (对比)" })
map("n", "<leader>ss", function() require("snacks").scope.jump() end, { desc = "跳转到当前块起始位置" })
map("n", "<leader>sw", function() require("snacks").picker.grep_word() end, { desc = "项目内搜索当前单词" })
map("n", "<leader>fw", function() require("snacks").picker.grep() end, { desc = "项目内全局搜索" })
map("n", "<leader>ff", function() require("snacks").picker.files() end, { desc = "项目内文件搜索" })
map("n", "<leader>fb", function() require("snacks").picker.buffers() end, { desc = "Buffer 搜索" })
map("n", "<leader>fp", function() require("snacks").picker.projects() end, { desc = "搜索项目" })
map("n", "<leader>sr", function() require("snacks").picker.resume() end, { desc = "恢复上一次搜索 (Resume)" })
map("n", "<leader>sh", function() require("snacks").picker.search_history() end, { desc = "查看搜索历史记录" })
map("n", "<leader>sd", function() require("snacks").picker.diagnostics() end, { desc = "文件诊断图谱" })
map("n", "<leader>so", function() require("snacks").outline.toggle() end, { desc = "切换代码大纲 (Outline)" })
map("n", "<leader>ss", function() require("snacks").picker.lsp_symbols() end, { desc = "搜索代码符号 (Picker Outline)" })
