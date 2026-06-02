require "nvchad.autocmds"

vim.o.autoread = true

local file_reload_group = vim.api.nvim_create_augroup("UserFileReload", { clear = true })

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI", "ShellCmdPost" }, {
  group = file_reload_group,
  callback = function()
    if vim.o.buftype ~= "" or vim.fn.mode() == "c" then
      return
    end

    vim.cmd "silent! checktime"
  end,
})

vim.api.nvim_create_autocmd("FileChangedShellPost", {
  group = file_reload_group,
  callback = function()
    vim.notify("Buffer reloaded from disk", vim.log.levels.INFO, { title = "File changed" })
  end,
})
