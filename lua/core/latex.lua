-- change defaul compiler engine
vim.g.vimtex_compiler_latexmk_engines = {
    _ = '-lualatex'
}

vim.g.vimtex_compiler_method = "latexmk"
vim.g.vimtex_compiler_latexmk = {
    options = {
        "-shell-escape",
        "-verbose",
        "-file-line-error",
        "-synctex=1",
        "-interaction=nonstopmode",
    },
}

-- configuration is used by default on Windows if SumatraPDF is detected as executable.
--vim.g.vimtex_view_method = 'SumatraPDF'
--vim.g.vimtex_view_general_options = "-forward-search @tex @line @pdf"

