vim.opt_local.linebreak = true
-- vim.opt_local.conceallevel = 2

require("cmp").setup.buffer {
  sources = {
    { name = "luasnip" },
    { name = "path" },
    { name = "neorg" },
  },
}

vim.api.nvim_buf_set_keymap(0, "n", "<leader>d", "<CMD>put =strftime('* %m-%d')<CR>", { noremap = false })
vim.api.nvim_buf_set_keymap(0, "n", "<leader>k", "<s-{>", { noremap = false })
vim.api.nvim_buf_set_keymap(0, "n", "<leader>j", "<s-}>", { noremap = false })
vim.api.nvim_buf_set_keymap(0, "n", "<BS>", "<c-6>", { noremap = true })
