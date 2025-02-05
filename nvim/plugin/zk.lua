require("zk").setup({
  -- can be "telescope", "fzf", "fzf_lua", "minipick", or "select" (`vim.ui.select`)
  -- it's recommended to use "telescope", "fzf", "fzf_lua", or "minipick"
  picker = "telescope",

  lsp = {
    -- `config` is passed to `vim.lsp.start_client(config)`
    config = {
      cmd = { "zk", "lsp" },
      name = "zk",
      -- on_attach = ...
      -- etc, see `:h vim.lsp.start_client()`
    },

    -- automatically attach buffers in a zk notebook that match the given filetypes
    auto_attach = {
      enabled = true,
      filetypes = { "markdown" },
    },
  },
})

local keymap = vim.keymap
local opts = { noremap = true, silent = false }

-- Create a new note after asking for its title.
keymap.set("n", "<leader>zn", function()
  vim.cmd("ZkNew { title = vim.fn.input('Title: ') }")
end, { desc = "Create a new note", unpack(opts) })

-- Open notes.
keymap.set("n", "<leader>zo", "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", { desc = "Open notes", unpack(opts) })

-- Open notes associated with the selected tags.
keymap.set("n", "<leader>zt", "<Cmd>ZkTags<CR>", { desc = "Open notes by tags", unpack(opts) })

-- Search for the notes matching a given query.
keymap.set("n", "<leader>zf", function()
  vim.cmd("ZkNotes { sort = { 'modified' }, match = { vim.fn.input('Search: ') } }")
end, { desc = "Search notes", unpack(opts) })

-- Search for the notes matching the current visual selection.
keymap.set("v", "<leader>zf", ":'<,'>ZkMatch<CR>", { desc = "Search notes by selection", unpack(opts) })

