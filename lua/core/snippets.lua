if not pcall(require, "luasnip") then
  return
end

local ls = require("luasnip")

require("luasnip.loaders.from_snipmate").lazy_load({ paths = { "./snippets" } })

-- Config
ls.config.set_config {
  history = false,
  updateevents = "TextChanged,TextChangedI",
  enable_autosnippets = true,
}
