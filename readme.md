# Config Installation
1. Path Neovim `:echo stdpath('config')` in Neovim. It is usually`$env:LOCALAPPDATA`.
2. Clone your nvim config to `git clone git@github.com:777uliahshafar/nvim.git "$env:LOCALAPPDATA\nvim"`
3. cd to nvim configration folder `nc`.

# Nvim Installation
1. Package manager is using lazy nvim plugin manager.
4. Ripgrep `scoop install ripgrep`, required for nvim-tree.
5. fd `scoop install fd` required for nvim-tree.
6. zig `scoop install zig` required for nvim-treesitter. `:TSInstallInfo` available language, `:TSUpdate` update parsers unconditionally.
11. nvim-neorg, create folder for neorg workspace manually if it doesn't provide automatically.
13. latexindent.pl configuration : create indentconfig.yaml in home directory `C:\Users\<username>\` which contains the path to your `defaultSettings.yaml` in nvim directory. 

Windows users may find that they have to end .yaml files with a blank line.

*indentconfig.yaml* content
```
paths:
  - C:\Users\<username>\AppData\Local\nvim\defaultSettings.yaml

```

PS. Check your nvim config `:checkhealth`

# Latex 
1. Strawberry Perl [link](https://strawberryperl.com/) latex on nvim.
2. Miktek, latex distribution [link](https://miktex.org/download). Package installation on the fly is much better. Check update on miktex console after installation, latex on nvim.
3. SumatraPDF, enable all the options on options menu, latex on nvim.
4. Add SumatraPDF parent directories of the executable to your `PATH environment variable` see [link](https://www.wikihow.com/Change-the-PATH-Environment-Variable-on-Windows), open `edit the system environment variables` > on Advanced System properties tab click environment variables > click path then click edit > then add this `C:\Users\ul\AppData\Local\SumatraPDF\`.
5. Zotero, BetterBibtex (synchronous bibliography), see [link](https://drive.google.com/drive/u/0/folders/1UsJqCA7hvCMOdPRt7kLBwdPOuTYu0gkL)
6. SplitShow (dual-head presentation of PDF slides).
7. Add some custom packages such as [helpers4ht](https://github.com/michal-h21/helpers4ht) or [datetime2-bahasai](https://github.com/777uliahshafar/dotfiles/tree/master/datetime2-bahasai).  The reason to use custom *datetime2-bahasai* because the original vocabulary is outdated like pebruari not februari.
- Create a new TEXMF root: `mkdir ~/mytexmf`
- Create a sub directory: `mkdir -p ~/mytexmf/tex/latex/mystuff`
- Copy your .cls and/or .sty files to `~/mytexmf/tex/latex/mystuff`, or copy folders to `~/mytexmf/tex/latex/`
- eg. `~/mytexmf/tex/latex/helpers4ht/` or `~/mytexmf/tex/latex/datetime2-bahasai/datetime2-bahasai.ldf`
- Register the TEXMF root directory ~/mytexmf in *Miktex Console > Settings > Directories*, see [link](https://miktex.org/howto/miktex-console).

## Faq latex
1. How to deal with Swap Warning
- Recover the swap file(r)
- If the content looks right, Save(:w) and Reopen(:e).
- If the content older, Reopen without Save(:r!)
- Delete swap file (d) or manually from zsh.

2. Lag in a long line and large file
- Refresh fold with `<F6>`, from fastfold.
