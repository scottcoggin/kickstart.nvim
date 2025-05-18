-- ~/.config/nvim/lua/custom/plugins/treesitter.lua
return {
  {
    'nvim-treesitter/nvim-treesitter',
    version = 'v0.9.2',
    build = ':TSUpdate', -- keeps installing/updating your parsers
    opts = function(_, opts)
      -- ensure_installed exists
      opts.ensure_installed = opts.ensure_installed or {}
      -- add your extras
      local extra = { 'terraform', 'latex', 'python' }
      for _, lang in ipairs(extra) do
        if not vim.tbl_contains(opts.ensure_installed, lang) then
          table.insert(opts.ensure_installed, lang)
        end
      end
    end,
  },
}
