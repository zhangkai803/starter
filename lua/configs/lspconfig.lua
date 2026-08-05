require("nvchad.configs.lspconfig").defaults()

-- Mason Pyright requires a modern Node runtime; keep this scoped to Neovim.
local homebrew_bin = "/opt/homebrew/bin"
if vim.fn.isdirectory(homebrew_bin) == 1 then
  vim.env.PATH = homebrew_bin .. ":" .. vim.env.PATH
end

local servers = { "html", "cssls", "pyright", "gopls", "typos_lsp", "rust_analyzer", "vtsls", "yaml" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
