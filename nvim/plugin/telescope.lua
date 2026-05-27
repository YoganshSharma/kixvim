if vim.g.did_load_telescope_plugin then
  return
end
vim.g.did_load_telescope_plugin = true

local telescope = require('telescope')
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')
local pickers = require('telescope.pickers')
local finders = require('telescope.finders')
local conf = require('telescope.config').values

local function show_messages()
  local output = vim.fn.execute('messages')
  local lines = vim.split(output, '\n', { plain = true })

  pickers.new({}, {
    prompt_title = 'Messages',
    finder = finders.new_table { results = lines },
    sorter = conf.generic_sorter {},
    previewer = false,
  }):find()
end

telescope.setup {
  defaults = {
    path_display = { 'truncate' },
    layout_strategy = 'vertical',
    mappings = {
      i = {
        ['<C-q>'] = actions.send_to_qflist,
        ['<C-l>'] = actions.send_to_loclist,
        ['<C-s>'] = actions.cycle_previewers_next,
        ['<C-a>'] = actions.cycle_previewers_prev,
      },
      n = {
        q = actions.close,
      },
    },
    prompt_prefix = '   ',
    selection_caret = '  ',
    entry_prefix = '  ',
    initial_mode = 'insert',
  },
  extensions = {},
}

vim.keymap.set('n', '<M-p>', builtin.oldfiles, { desc = '[telescope] old files' })
vim.keymap.set('n', '<leader>tc', builtin.quickfix, { desc = '[telescope] quickfix list' })
vim.keymap.set('n', '<leader>tq', builtin.command_history, { desc = '[telescope] command history' })
vim.keymap.set('n', '<leader>tl', builtin.loclist, { desc = '[telescope] loclist' })
vim.keymap.set('n', '<leader>tr', builtin.registers, { desc = '[telescope] registers' })
vim.keymap.set('n', '<leader>tbb', builtin.buffers, { desc = '[telescope] buffers' })
vim.keymap.set(
  'n',
  '<leader>tbf',
  builtin.current_buffer_fuzzy_find,
  { desc = '[telescope] current buffer fuzzy find' }
)
vim.keymap.set('n', '<leader>td', builtin.lsp_document_symbols, { desc = '[telescope] lsp document symbols' })
vim.keymap.set(
  'n',
  '<leader>to',
  builtin.lsp_dynamic_workspace_symbols,
  { desc = '[telescope] lsp dynamic workspace symbols' }
)
vim.keymap.set('n', '<leader>tn', function()
  telescope.extensions.notify.notify()
end, { desc = '[telescope] notify' })
vim.keymap.set('n', '<leader>tm', show_messages, { desc = '[telescope] messages' })
