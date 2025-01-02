local lspconfig = require('lspconfig')
lspconfig.rust_analyzer.setup {}
lspconfig.ccls.setup {}
lspconfig.cmake.setup {}
lspconfig.clangd.setup {}

lspconfig.gopls.setup {}
lspconfig.pylyzer.setup {}

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
