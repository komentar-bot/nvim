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

vim.g.vimtex_compiler_progname = 'nvr'
vim.g.vimtex_fold_enabled =true
