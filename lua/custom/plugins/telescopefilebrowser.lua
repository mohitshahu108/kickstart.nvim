return {
  'nvim-telescope/telescope-file-browser.nvim',
  config = function ()

    -- Load telescope-file-browser.nvim
    require('telescope').load_extension('file_browser')

    -- Set the key mapping to open the file browser
    vim.api.nvim_set_keymap('n', '<leader>f', ':Telescope file_browser<CR>', { noremap = true, silent = true })

    -- Set the key mapping to open the file browser
    vim.api.nvim_set_keymap('n', '<leader>nf', ':Telescope file_browser<CR>', { noremap = true, silent = true })

    -- Set the configuration options for the file browser
    require('telescope').setup {
      extensions = {
        file_browser = {
          hidden = true,
          show_hidden = true,
          disable_devicons = true,
          file_ignore_patterns = {'node_modules'}
        }
      }
    }

  end
}
