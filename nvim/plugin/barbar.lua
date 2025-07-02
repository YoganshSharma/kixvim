--- BarBar
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
keymap.set('n', '[b',  '<Cmd>BufferPrevious<CR>', { silent = true, desc = 'previous [b]uffer' })
keymap.set('n', ']b',  '<Cmd>BufferNext<CR>', { silent = true, desc = 'next [b]uffer' })
keymap.set('n', '[B', '<Cmd>BufferFirst<CR>', { silent = true, desc = 'first [B]uffer' })
keymap.set('n', ']B', '<Cmd>BufferLast<CR>', { silent = true, desc = 'last [B]uffer' })
keymap.set('n', '<leader>bn', '<Cmd>BufferNext<CR>', { desc = '[b]uffer [n]ext' })
keymap.set('n', '<leader>bp', '<Cmd>BufferPrevious<CR>', { desc = '[b]uffer [p]revious' })

-- Re-order to previous/next
keymap.set('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
keymap.set('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)

-- Goto buffer in position...
keymap.set('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
keymap.set('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
keymap.set('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
keymap.set('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
keymap.set('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
keymap.set('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
keymap.set('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
keymap.set('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
keymap.set('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
keymap.set('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

-- Pin/unpin buffer
keymap.set('n', '<leader>bP', '<Cmd>BufferPin<CR>', { desc = '[b]uffer [P]in' })

-- Goto pinned/unpinned buffer
--                 :BufferGotoPinned
--                 :BufferGotoUnpinned

-- Close buffer
keymap.set('n', '<leader>bc', '<Cmd>BufferClose<CR>', { desc = '[b]uffer [c]close' })

-- Wipeout buffer
--                 :BufferCloseBuffersRight
keymap.set('n', '<leader>bqw', '<Cmd>BufferWipeout<CR>', { desc = '[b]uffer [q] [w]ipeout' })

-- Close commands
keymap.set('n', '<leader>bqa', '<Cmd>BufferCloseAllButCurrent<CR>', { desc = '[b]uffer [q]uit [a]ll but current' })
keymap.set('n', '<leader>bqp', '<Cmd>BufferCloseAllButPinned<CR>', { desc = '[b]uffer [q]uit all but [p]inned' })
keymap.set('n', '<leader>bqP', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>',
  { desc = '[b]uffer [q]uit all but current or [P]inned' })
keymap.set('n', '<leader>bql', '<Cmd>BufferCloseBuffersLeft<CR>', { desc = '[b]uffer [q]uit [l]eft' })
keymap.set('n', '<leader>bqr', '<Cmd>BufferCloseBuffersRight<CR>', { desc = '[b]uffer [q]uit [r]ight' })


-- Magic buffer-picking mode
keymap.set('n', '<leader>bj', '<Cmd>BufferPick<CR>', { desc = '[b]uffer pick/[j]ump' })
keymap.set('n', '<leader>bJ', '<Cmd>BufferPick<CR>', { desc = '[b]uffer delete pick/[J]ump' })

-- Sort automatically by...
keymap.set('n', '<leader>bob', '<Cmd>BufferOrderByBufferNumber<CR>', { desc = '[b]uffer [o]rder by number' })
keymap.set('n', '<leader>bon', '<Cmd>BufferOrderByName<CR>', { desc = '[b]uffer [o]rder by [n]ame' })
keymap.set('n', '<leader>bod', '<Cmd>BufferOrderByDirectory<CR>', { desc = '[b]uffer [o]rder by [d]irectory' })
keymap.set('n', '<leader>bol', '<Cmd>BufferOrderByLanguage<CR>', { desc = '[b]uffer [o]rder by [l]anguage' })
keymap.set('n', '<leader>bow', '<Cmd>BufferOrderByWindowNumber<CR>', { desc = '[b]uffer [o]rder by [w]indow number' })

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
