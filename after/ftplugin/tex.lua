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

