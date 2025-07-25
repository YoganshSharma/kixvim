local lspconfig = require('lspconfig')
-- lspconfig.rust_analyzer.setup {} -- done by rustaceanvim
lspconfig.ccls.setup {}
lspconfig.cmake.setup {}
lspconfig.clangd.setup {}

lspconfig.gopls.setup {}
lspconfig.basedpyright.setup {}

lspconfig.statix.setup {}
lspconfig.nil_ls.setup {
  autostart = true,
  settings = {
    ['nil'] = {
      formatting = {
        command = { "nixfmt" },
      },
    },
  },
}

lspconfig.bashls.setup {}
lspconfig.fish_lsp.setup {}
lspconfig.bqnlsp.setup {}
lspconfig.matlab_ls.setup {}

lspconfig.ts_ls.setup {}
lspconfig.svelte.setup {}
lspconfig.tailwindcss.setup {}

lspconfig.marksman.setup {}
-- Grammar checker
lspconfig.harper_ls.setup {
  filetypes = { "markdown" },
  linters = {
    SentenceCapitalization = true
  },
  on_attach = function(client, bufnr)
    vim.diagnostic.config({
      virtual_text = false,
    }, bufnr)
  end,

}
