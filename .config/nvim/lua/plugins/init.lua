return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
        "c", "cpp",
  			"vim", "lua", "vimdoc",
        "html", "css", "python",
        "rust", "javascript", "typescript",
        "markdown", "latex", "bibtex",
        "arduino", "bash", "clojure",
        "cmake", "gitignore", "glsl",
        "hyprlang", "json", "make",
        "meson", "regex", "sql",
        "typst", "wgsl"
  		},
  	},
  },
  { "rubiin/fortune.nvim" },
  { "nvzone/menu" , lazy = true },
  {
    "mg979/vim-visual-multi",
    lazy = false
  },
  {
    "lervag/vimtex",
    lazy = false,
    ft = { "tex" },
    init = function()
      vim.g.tex_flavor = "latex"
      vim.g.vimtex_quickfix_mode = 0
      vim.g.vimtex_mappings_enabled = 0
      vim.g.vimtex_indent_enabled = 0

      vim.g.vimtex_view_method = "zathura"
      vim.g.vimtex_context_pdf_viewer = "zathura"
    end,
  },
  {
    "OXY2DEV/markview.nvim",
    lazy = false
  },
  -- {
  --   "jbyuki/nabla.nvim",
  --   keys = {
  --     { "<leader>l", function() require("nabla").popup() end, desc = "Notation", },
  --   },
  --   config = function()
  --     require("nabla").enable_virt()
  --   end,
  -- }
  -- {
  --   'goolord/alpha-nvim',
  --   dependencies = { 'echasnovski/mini.icons' },
  --   disable = false,
  --   config = function ()
  --       require'configs.alpha'
  --   end
  -- }
}
