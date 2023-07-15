vim.opt_local.conceallevel = 2
vim.opt_local.shiftwidth=0

local kind_icons = {
  Text = "",
  Snippet = "",
  File = "󰔱",
}

require'cmp'.setup.buffer{

  formatting = {
    format = function(entry, vim_item)
      vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
      vim_item.menu = ({
        path = "[Path]",
        omni = (vim.inspect(vim_item.menu):gsub('%"', "")),
        luasnip = "[Snippet]",
      })[entry.source.name]
      return vim_item
    end,
  },
sources = {
    {   name = "path" },
    {   name = "omni" },
    {   name = "luasnip",
        keyword_length = 2,
    },
  },

}

vim.api.nvim_buf_set_keymap(0, "n", "<leader>lc", "<plug>(vimtex-compile)", { noremap = false })
vim.api.nvim_buf_set_keymap(0, "n", "<leader>le", "<plug>(vimtex-errors)", { noremap = false })
vim.api.nvim_buf_set_keymap(0, "n", "<leader>lv", "<plug>(vimtex-view)", { noremap = false })
vim.api.nvim_buf_set_keymap(0, "n", "<leader>ls", "<plug>(vimtex-toggle-main)", { noremap = false })
