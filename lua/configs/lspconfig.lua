require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "pyright", "gopls", "typos_lsp", "rust_analyzer", "vtsls", "yaml" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
