return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        options = {
          mode = 'buffers', -- Show buffers instead of tabpages
          offsets = {
            { filetype = 'NvimTree', text = 'File Explorer', text_align = 'left' },
          },
          show_close_icon = false, -- Disable close icons
          diagnostics = 'nvim_lsp', -- Enable LSP diagnostics
        },
        highlights = {
          buffer_selected = { italic = false },
          indicator_selected = { fg = { attribute = 'fg', highlight = 'Function' }, italic = false },
        },
      }
    end,
  },
}
