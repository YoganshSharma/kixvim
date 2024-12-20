local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set(
  "n",
  "<leader>ca",
  function()
    vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
    -- or vim.lsp.buf.codeAction() if you don't want grouping.
  end,
  { silent = true, buffer = bufnr, desc = "Rust Code Action" }
)
vim.keymap.set(
  "n",
  "K", -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
  function()
    vim.cmd.RustLsp({ 'hover', 'actions' })
  end,
  { silent = true, buffer = bufnr }
)

vim.keymap.set(
  "v",
  "<leader>cj",
  function()
    vim.cmd.RustLsp('joinLines')
  end,
  { silent = true, buffer = bufnr, desc = "Rust Join Lines" }
)

vim.keymap.set(
  "n",
  "<leader>crd",
  function()
    vim.cmd.RustLsp('openDocs')
  end,
  { silent = true, buffer = bufnr, desc = "Rust open docs.rs" }
)

vim.keymap.set(
  "n",
  "<leader>crc",
  function()
    vim.cmd.RustLsp('openCargo')
  end,
  { silent = true, buffer = bufnr, desc = "Rust open cargo" }
)

vim.keymap.set(
  {"n", "v"},
  "<leader>cmj",
  function()
    vim.cmd.RustLsp { 'moveItem',  'down' }
  end,
  { silent = true, buffer = bufnr, desc = "Rust move down" }
)

vim.keymap.set(
  {"n", "v"},
  "<leader>cmk",
  function()
    vim.cmd.RustLsp { 'moveItem',  'up' }
  end,
  { silent = true, buffer = bufnr, desc = "Rust move up" }
)

vim.keymap.set(
  {"n", "v"},
  "<leader>gp",
  function()
    vim.cmd.RustLsp('parentModule')
  end,
  { silent = true, buffer = bufnr, desc = "Rust Goto Parent Module" }
)

vim.keymap.set(
  {"n", "v"},
  "<leader>crp",
  function()
    vim.cmd.RustLsp('parentModule')
  end,
  { silent = true, buffer = bufnr, desc = "Rust Goto Parent Module" }
)
