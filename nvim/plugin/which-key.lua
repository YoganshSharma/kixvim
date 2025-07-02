local wk = require('which-key')
wk.add({
  { "<leader>l",  group = "[l]sp group" },
  { "<leader>lw", group = "[l]sp [w]orkspace group" },
  { "<leader>b",  group = "[b]uffer group" },
  { "<leader>bo", group = "[b]uffer [o]rder group" },
  { "<leader>g",  group = "[g]it group" },
  { "<leader>f",  group = "[f]ile" },
  { "<leader>n",  group = "[n]otify" },
  { "<leader>gh", group = "[g]it hunk group" },
  { "<leader>t",  group = "[t]elescope group" },
  { "<leader>tb", group = "[t]elescope [b]uffers group" },
  { "<leader>w",  group = "[w]indow group" },
  { "<leader>z",  group = "[z]k group" },
})
wk.setup {
  preset = 'helix'
}
