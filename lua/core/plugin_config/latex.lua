-- change defaul compiler engine
vim.g.vimtex_compiler_latexmk_engines = {
    _ = '-lualatex'
}

vim.g.vimtex_compiler_latexmk = {
      options = {
        "-shell-escape",
        "-verbose",
        "-file-line-error",
        "-interaction=nonstopmode",
        "-synctex=1",
      },
    }

vim.g.vimtex_view_general_viewer = "SumatraPDF"
vim.g.vimtex_view_general_options = "-reuse-instance -forward-search @tex @line @pdf"
