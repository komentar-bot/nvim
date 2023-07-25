require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = {
    "lua_ls",
  },
  automatic_installation = true,
}

require("mason-null-ls").setup {
  automatic_installation = true,
  ensure_installed = {
    "stylua",
    "latexindent",
  },
}
