require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "basedpyright", "gopls", "typos_lsp", "rust_analyzer", "vtsls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
