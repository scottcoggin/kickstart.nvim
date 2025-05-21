return {
  'iamcco/markdown-preview.nvim',
  ft = { 'markdown' },
  build = 'cd app && npm install',
  config = function()
    vim.g.mkdp_auto_start = 0
    vim.g.mkdp_auto_close = 1
    vim.g.mkdp_refresh_slow = 0
    vim.g.mkdp_command_for_global = 0
    vim.g.mkdp_open_to_the_world = 0
    vim.g.mkdp_browser = '' -- leave empty to use system default
    vim.g.mkdp_echo_preview_url = 1
  end,
  keys = {
    { '<leader>mp', '<cmd>MarkdownPreviewToggle<CR>', desc = 'Markdown Preview' },
  },
}
