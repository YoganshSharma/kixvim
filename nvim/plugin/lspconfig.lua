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
