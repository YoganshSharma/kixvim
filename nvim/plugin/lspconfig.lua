local lspconfig = vim.lsp.config
-- lspconfig('rust_analyzer', {}) -- done by rustaceanvim
vim.lsp.enable('tinymist')
vim.lsp.enable('ols') -- Odin language server
vim.lsp.enable('gleam')
lspconfig('ccls', {})
lspconfig('cmake', {})
lspconfig('clangd', {})

lspconfig('gopls', {})
lspconfig('basedpyright', {})

lspconfig('statix', {})
lspconfig('nil_ls', {
  autostart = true,
  settings = {
    ['nil'] = {
      formatting = {
        command = { "nixfmt" },
      },
    },
  },
})

lspconfig('bashls', {})
lspconfig('fish_lsp', {})
lspconfig('bqnlsp', {})
lspconfig('matlab_ls', {})

lspconfig('ts_ls', {})
lspconfig('svelte', {})
lspconfig('tailwindcss', {})

lspconfig('marksman', {})
-- Grammar checker
lspconfig('harper_ls', {
  filetypes = { "markdown" },
  linters = {
    SentenceCapitalization = true
  },
  on_attach = function(client, bufnr)
    vim.diagnostic.config({
      virtual_text = false,
    }, bufnr)
  end,

})
