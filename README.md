
# 🧠 Neovim Configuration

This is a modular Neovim configuration based on **Kickstart.nvim** and managed with **lazy.nvim**. It includes tailored support for Python, Terraform, LaTeX, Git workflows, and modern developer tools.

---

## 🚀 Features

- Modular plugin configuration via `lua/custom/plugins/`
- LSP, autocompletion, formatting, Git, Treesitter, and more
- Python, LaTeX, and Terraform support out of the box
- Fast terminal access and Copilot integration

---

## 🔧 Plugin Highlights

| Plugin | Description |
|--------|-------------|
| `lazy.nvim` | Plugin manager |
| `nvim-lspconfig` + `mason` | Language Server Protocol setup |
| `conform.nvim` | Format on save |
| `treesitter` | Syntax highlighting and parsing |
| `vimtex` | LaTeX support |
| `copilot.lua` | GitHub Copilot integration |
| `toggleterm.nvim` | Terminal toggling with Terraform commands |
| `gitsigns.nvim` + `lazygit.nvim` | Git support |
| `lualine.nvim` | Statusline |
| `telescope.nvim` | Fuzzy finder |
| `nvim-tree.lua` | File tree viewer |
| `mini.nvim` | Minimal enhancements (surround, ai, statusline) |

---

## 🎨 UI

- Colorscheme: `tokyonight-night`
- Statusline: `lualine` with filetype, branch, and filename
- Treesitter support for `lua`, `terraform`, `python`, `latex`, etc.

---

## 🧠 Keymaps

### 🔍 Telescope
| Mapping | Action |
|---------|--------|
| `<leader>sf` | Find files |
| `<leader>sk` | Keymaps |
| `<leader>sh` | Help tags |
| `<leader>sg` | Live grep |
| `<leader>ss` | Select Telescope |
| `<leader>s.` | Recent files |
| `<leader><leader>` | Buffers |

### 🗂️ NvimTree
| Mapping | Action |
|---------|--------|
| `<leader>n` | Toggle tree |
| `<leader>nf` | Find file |
| `<leader>nr` | Refresh tree |

### 🧪 LSP
| Mapping | Action |
|---------|--------|
| `gd`, `gD`, `gi`, `gr` | Navigate to definition/declaration/etc. |
| `K` | Hover docs |
| `<leader>rn` | Rename |
| `<leader>ca` | Code action |
| `<leader>f` | Format buffer |
| `[d`, `]d` | Diagnostics navigation |
| `<leader>e`, `<leader>q` | Show diagnostics / loclist |

### 🧹 Format on Save
- Via `conform.nvim`
- Supports: `lua`, `python (black, isort)`, `terraform`, `tex`

### 🧾 Git
| Mapping | Action |
|---------|--------|
| `<leader>gc` | Git commits |
| `<leader>gb` | Git branches |
| `<leader>gs` | Git status |
| `<leader>gg` | LazyGit |
| `[h`, `]h` | Next/Prev hunk |
| `<leader>gp`, `<leader>gs`, `<leader>gr` | Preview, stage, reset hunk |

### 🖥️ ToggleTerm + Terraform
| Mapping | Action |
|---------|--------|
| `<leader>tt` | Toggle terminal |
| `<leader>tp` | `terraform plan` |
| `<leader>ta` | `terraform apply` |
| `<leader>tf` | `terraform fmt` |
| `<leader>tl` | `tflint` |

### 🤖 Copilot
| Mapping | Action |
|---------|--------|
| `<C-j>` | Accept suggestion |
| `<M-]>`, `<M-[>` | Next/Prev suggestion |
| `<C-]>` | Dismiss suggestion |

---

## 🐍 Python

- Python host set to: `~/.pyenv/versions/nvim-python/bin/python`

---

## 📁 Project Structure

```bash
~/.config/nvim/
├── init.lua
└── lua/
    └── custom/
        └── plugins/
            ├── conform.lua
            ├── copilot.lua
            ├── git.lua
            ├── gitsigns.lua
            ├── lsp.lua
            ├── lualine.lua
            ├── nvimtree.lua
            ├── python.lua
            ├── toggleterm.lua
            ├── treesitter.lua
            └── vimtex.lua
```

---
