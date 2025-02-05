local keymap = vim.keymap
if require("zk.util").notebook_root(vim.fn.expand('%:p')) ~= nil then
  local opts = { noremap = true, silent = false }

  -- Open the link under the caret.
  keymap.set("n", "<CR>", "<Cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go to link definition", unpack(opts) })

  -- Create a new note after asking for its title, in the same directory as the current buffer.
  keymap.set("n", "<leader>zn", "<Cmd>ZkNew { dir = vim.fn.expand('%:p:h'), title = vim.fn.input('Title: ') }<CR>", { desc = "Create new note in current directory", unpack(opts) })

  -- Create a new note using the current selection for the title, in the same directory as the current buffer.
  keymap.set("v", "<leader>znt", ":'<,'>ZkNewFromTitleSelection { dir = vim.fn.expand('%:p:h') }<CR>", { desc = "Create new note from title selection", unpack(opts) })

  -- Create a new note using the current selection for content and asking for a title, in the same directory as the current buffer.
  keymap.set("v", "<leader>znc", ":'<,'>ZkNewFromContentSelection { dir = vim.fn.expand('%:p:h'), title = vim.fn.input('Title: ') }<CR>", { desc = "Create new note from content selection", unpack(opts) })

  -- Open notes linking to the current buffer.
  keymap.set("n", "<leader>zb", "<Cmd>ZkBacklinks<CR>", { desc = "Open notes linking to the current buffer", unpack(opts) })

  -- Open notes linked by the current buffer.
  keymap.set("n", "<leader>zl", "<Cmd>ZkLinks<CR>", { desc = "Open linked notes", unpack(opts) })

  -- Preview a linked note.
  keymap.set("n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", { desc = "Preview linked note", unpack(opts) })

  -- Open code actions for the current visual selection.
  keymap.set("v", "<leader>za", ":'<,'>lua vim.lsp.buf.range_code_action()<CR>", { desc = "Open code actions for selection", unpack(opts) })
end

