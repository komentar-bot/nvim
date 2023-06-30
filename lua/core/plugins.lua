-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- You add plugins here
    -- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("nvim-telescope/telescope-file-browser.nvim")

--	use({
--        "nvim-treesitter/nvim-treesitter",
--        config = function()
--			require("core.treesitters")
--		end,
--    }) -- Treesitter Syntax Highlighting

	-- Completion
    use({
        "hrsh7th/nvim-cmp",
        config = function()
			require("core.cmps")
		end,
    }) -- completion plugin
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-cmdline")
    use("uga-rosa/cmp-dictionary")
    use("saadparwaiz1/cmp_luasnip") 

    -- Snippet
    use({
        "L3MON4D3/LuaSnip",
        config = function()
			require("core.luasnips")
		end,
    })
    use("rafamadriz/friendly-snippets")

	-- Productivity
	use("vimwiki/vimwiki")

	use("folke/which-key.nvim") -- Which Key
	use({
        "nvim-lualine/lualine.nvim",
        config = function()
			require("core.statuslines")
		end,
    }) -- A better statusline

	-- File management --
    use({
        "nvim-tree/nvim-tree.lua",
        config = function()
			require("core.trees")
		end,
})
	use("ryanoasis/vim-devicons")

	-- Tim Pope Plugins --
	use("tpope/vim-surround")
end)
