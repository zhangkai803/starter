**This repo is supposed to be used as config by NvChad users!**

- The main nvchad repo (NvChad/NvChad) is used as a plugin by this repo.
- So you just import its modules , like `require "nvchad.options" , require "nvchad.mappings"`
- So you can delete the .git from this repo ( when you clone it locally ) or fork it :)

# Credits

1) Lazyvim starter https://github.com/LazyVim/starter as nvchad's starter was inspired by Lazyvim's . It made a lot of things easier!

# Usage

## Install

```
git clone https://github.com/zhangkai803/starter.git ~/.config/nvim && nvim
```

# Setup

Install plugins via lazy.nvim

```
:Lazy
```

Install lsp via Mason

```
:Mason
```

Install language parser via TreeSitter

```
:TSInstall python
:TSInstall rust
:TSInstall go
```

