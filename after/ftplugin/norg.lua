vim.opt_local.linebreak = true

require("cmp").setup.buffer {
  sources = {
    { name = "luasnip" },
    { name = "path" },
    { name = "neorg" },
  },
}
