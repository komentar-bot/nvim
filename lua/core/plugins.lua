local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    -- Telescope --
    {
        "nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		dependencies = { { "nvim-lua/plenary.nvim" } },
    },
    	"nvim-telescope/telescope-file-browser.nvim",

    -- Syntax 
    {
        "nvim-treesitter/nvim-treesitter",
        build = function()
            pcall(require("nvim-treesitter.install").update{ with_sync = true })
        end,
		dependencies = { { "nvim-treesitter/nvim-treesitter-textobjects" } },
    },
    -- Completion -- 
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "uga-rosa/cmp-dictionary",
        "saadparwaiz1/cmp_luasnip",
    -- Snippet --
        "L3MON4D3/LuaSnip",
        "rafamadriz/friendly-snippets",

    -- Status line --
        "nvim-lualine/lualine.nvim",
    -- File management --
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { { "nvim-tree/nvim-web-devicons", lazy = true } },
    },

    -- zen mode--
    {
        "folke/zen-mode.nvim",
        dependencies = { { "folke/twilight.nvim", lazy = true, opts= { context = 4} } },
    },
    -- Tim Pope Plugins --
	"tpope/vim-surround",

    -- Colorscheme --
    --
    {
    "777uliahshafar/gruvbox.nvim",
    priority = 1000,     
    },

    -- Writing
    {"lervag/vimtex",
    lazy = false,     
    },
    {
    "andrewferrier/wrapping.nvim",
    config = function()
        require("wrapping").setup {
            auto_set_mode_filetype_allowlist = {
                "text",
            },
    }
    end
    },
    {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { {"nvim-lua/plenary.nvim"},{ "nvim-neorg/neorg-telescope" } },
    config = function()
      require("neorg").setup {
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.highlights"] = {
            config = {
                highlights = {
                    links = {
                        file = "+@string",
                        location = {
                            url = "+@string",
                                },
                            },
                        },
                    },
                },
          ["core.integrations.telescope"] = {},
          ["core.concealer"] = {
            config = {
            folds = false
            }
            }, -- Adds pretty icons to your documents
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
              },
            default_workspace = "notes",
            },
          },
        ["core.keybinds"] = {
            config = {
                hook = function(keybinds)
                    keybinds.remap_key("norg", "n", "<C-Space>", "<LocalLeader>,")
                 end,
            },
        },
        ["core.completion"] ={
            config = {
            engine = "nvim-cmp",
                        },
                    },
        ["core.integrations.nvim-cmp"] = {},
        },
      }
    end,
  },
}


local opts = {}
require("lazy").setup(plugins, opts)


