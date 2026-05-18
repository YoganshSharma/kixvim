if vim.g.did_load_fff_plugin then
  return
end
vim.g.did_load_fff_plugin = true

local fff = require('fff')

fff.setup {
  lazy_sync = true,
  debug = {
    enabled = true,
    show_scores = true,
  },
}

local function current_filetype_query()
  local ext = vim.fn.expand('%:e')
  if ext == '' then
    return ''
  end
  return '*.' .. ext
end

local function join_query(...)
  local parts = vim.tbl_filter(function(part)
    return part ~= nil and part ~= ''
  end, { ... })
  return table.concat(parts, ' ')
end

local function live_grep(opts)
  fff.live_grep(opts or {})
end

local function fuzzy_grep(opts)
  opts = vim.tbl_extend('force', opts or {}, {
    grep = { modes = { 'fuzzy' } },
  })
  fff.live_grep(opts)
end

local function project_files()
  fff.find_files()
end

vim.keymap.set('n', '<leader>tp', project_files, { desc = '[fff] find files' })
vim.keymap.set('n', '<C-g>', live_grep, { desc = '[fff] live grep' })
vim.keymap.set('n', '<leader>tf', fuzzy_grep, { desc = '[fff] fuzzy grep' })
vim.keymap.set('n', '<M-f>', function()
  fuzzy_grep { query = current_filetype_query() }
end, { desc = '[fff] fuzzy grep filetype' })
vim.keymap.set('n', '<M-g>', function()
  live_grep { query = current_filetype_query() }
end, { desc = '[fff] live grep filetype' })
vim.keymap.set('n', '<leader>t*', function()
  live_grep { query = join_query(current_filetype_query(), vim.fn.expand('<cword>')) }
end, { desc = '[fff] grep current string in filetype' })
vim.keymap.set('n', '<leader>*', function()
  live_grep { query = vim.fn.expand('<cword>') }
end, { desc = '[fff] grep current string' })
vim.keymap.set('n', '<leader>tg', project_files, { desc = '[fff] project files' })
