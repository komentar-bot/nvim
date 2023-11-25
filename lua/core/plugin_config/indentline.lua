local cb = function()
  if vim.o.background == "dark" then
    return "#5c6370"
  else
    return "#a89984"
  end
end

require("hlchunk").setup {
  indent = {
    enable = true,
    chars = { "▏" },
    style = {
      { fg = cb },
    },
    exclude_filetype = {
      trouble = true,
      lazy = true,
    },
  },

  line_num = {
    enable = false,
  },

  blank = {
    enable = false,
    style = {
      { fg = cb },
    },
  },

  chunk = {
    enable = true,
    notify = false,
    chars = {
      horizontal_line = "━",
      vertical_line = "┃",
      left_top = "┏",
      left_bottom = "┗",
      right_arrow = "━",
    },
    style = {
      { fg = cb },
      { fg = "#f35336" },
    },
    textobject = "ic",
  },

  context = {
    enable = false,
  },
}
