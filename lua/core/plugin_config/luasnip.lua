if not pcall(require, "luasnip") then
  return
end

local ls = require "luasnip"

require("luasnip.loaders.from_lua").load { paths = "~/Appdata/Local/nvim/snippets/" }
require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load()

-- Config
ls.config.set_config {
  history = false,
  updateevents = "TextChanged,TextChangedI",
  enable_autosnippets = true,
}
