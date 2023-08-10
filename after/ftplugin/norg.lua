vim.opt_local.linebreak = true

require("cmp").setup.buffer {
  sources = {
    { name = "luasnip" },
    { name = "path" },
    { name = "neorg" },
  },
}

vim.api.nvim_buf_set_keymap(0, "n", "<leader>k", "<s-{>", { noremap = false })
vim.api.nvim_buf_set_keymap(0, "n", "<leader>j", "<s-}>", { noremap = false })
