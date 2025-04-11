# Neovim Custom Keymaps Overview

## VimTeX

| Mode | Key | Action | Description |
|------|-----|--------|-------------|
| `n` | `<leader>ll` | `VimtexCompile` | Vimtex Compile |
| `n` | `<leader>lv` | `VimtexView` | Vimtex View PDF |
| `n` | `<leader>lc` | `VimtexClean` | Vimtex Clean |

## Lint

| Mode | Key | Action | Description |
|------|-----|--------|-------------|
| `n` | `<leader>L` | `lint.try_lint()` | Run linter manually |

## ToggleTerm / Runners

| Mode | Key | Action | Description |
|------|-----|--------|-------------|
| `n` | `<leader>tt` | `Toggle floating terminal` | Toggle terminal |
| `n` | `<leader>tp` | `Terraform plan` | Terraform plan |
| `n` | `<leader>ta` | `Terraform apply` | Terraform apply |
| `n` | `<leader>tf` | `Terraform fmt` | Terraform fmt |
| `n` | `<leader>tl` | `TFLint` | TFLint |
| `n` | `<leader>rr` | `Run Python file` | Run Python file |

## Copilot

| Mode | Key | Action | Description |
|------|-----|--------|-------------|
| `i` | `<C-y>` | `Accept Copilot suggestion` | Accept suggestion |
| `i` | `<C-]>` | `Dismiss Copilot suggestion` | Dismiss suggestion |
| `i` | `<M-[>` | `Previous Copilot suggestion` | Prev suggestion (Alt+[) |
| `i` | `<M-]>` | `Next Copilot suggestion` | Next suggestion (Alt+]) |

## init.lua keymaps

| Mode | Key | Action | Description |
|------|-----|--------|-------------|
| `n` | `<Esc>` | `<cmd>nohlsearch<CR>` | Clear search highlights |
| `n` | `<leader>q` | `vim.diagnostic.setloclist` | Open diagnostic quickfix list |
| `t` | `<Esc><Esc>` | `<C-\><C-n>` | Exit terminal mode |
| `n` | `<C-h>` | `<C-w><C-h>` | Move focus to the left window |
| `n` | `<C-l>` | `<C-w><C-l>` | Move focus to the right window |
| `n` | `<C-j>` | `<C-w><C-j>` | Move focus to the lower window |
| `n` | `<C-k>` | `<C-w><C-k>` | Move focus to the upper window |
| `n` | `<leader>f` | `conform.format()` | Format buffer |
| `n` | `<leader>sh` | `Telescope help_tags` | [S]earch [H]elp |
| `n` | `<leader>sk` | `Telescope keymaps` | [S]earch [K]eymaps |
| `n` | `<leader>sf` | `Telescope find_files` | [S]earch [F]iles |
| `n` | `<leader>ss` | `Telescope builtin` | [S]elect Telescope |
| `n` | `<leader>sw` | `Telescope grep_string` | [S]earch current [W]ord |
| `n` | `<leader>sg` | `Telescope live_grep` | [S]earch by [G]rep |
| `n` | `<leader>sd` | `Telescope diagnostics` | [S]earch [D]iagnostics |
| `n` | `<leader>sr` | `Telescope resume` | [S]earch [R]esume |
| `n` | `<leader>s.` | `Telescope oldfiles` | [S]earch Recent Files ("." for repeat) |
| `n` | `<leader><leader>` | `Telescope buffers` | [ ] Find existing buffers |
| `n` | `<leader>/` | `Telescope current_buffer_fuzzy_find` | [/] Fuzzy search in current buffer |
| `n` | `<leader>s/` | `Telescope live_grep open files` | [S]earch [/] in Open Files |
| `n` | `<leader>sn` | `Telescope find_files config dir` | [S]earch [N]eovim files |
