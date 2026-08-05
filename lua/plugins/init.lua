return {
  { "nvim-telescope/telescope.nvim", enabled = false },
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  { "nvim-tree/nvim-tree.lua", enabled = false },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },

  -- My custom plugins
  {
    "stevearc/aerial.nvim",
    event = "LspAttach", -- 当 LSP 启动时加载
    cmd = { "AerialToggle", "AerialOpen", "AerialClose", "AerialNavToggle" },
    opts = {
      show_guides = true,
      -- 强制使用树形结构
      layout = {
        max_width = { 40, 0.2 },
        default_direction = "right", -- 在右侧打开，不干扰左侧的 NvimTree
      },
      -- 自动折叠设置
      manage_folds = true,
      filter_kind = false,
      -- 实时跟随光标
      highlight_on_hover = true,
    },
  },
  {
    "gitsigns.nvim",
    opts = {
      current_line_blame = true, -- 开启行内提示
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol", -- 放在行尾
        delay = 500,           -- 停顿 0.5 秒后显示
      },
    }
  },
  {
  "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = true, auto_trigger = true },
      })
    end,
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      require("dap-go").setup()
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
      local dap, dapui = require("dap"), require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      -- Path to the python executable installed by Mason
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
    end,
  },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      words = { enabled = true },
      picker = { enabled = true, sources = { explorer = { hidden = true } } },
      notifier = { enabled = true },
      statuscolumn = { enabled = true },
      input = { enabled = true },
      bigfile = { enabled = true },
      indent = { enabled = true },
      git = { enabled = true },
      outline = { enabled = true },
    },
  }
}
