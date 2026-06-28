vim.pack.add({
  { src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
  { src = "https://github.com/sontungexpt/witch-line", name = "witch-line" },
  { src = "https://github.com/ms-jpq/coq_nvim", name = "coq-nvim" },
  { src = "https://github.com/echasnovski/mini.nvim", name = "mini.nvim" }
})

require("mini.pairs").setup({})

require("statusline")

vim.opt.number = true
vim.opt.fillchars = { eob = " " }
vim.opt.shortmess:append("I")

vim.cmd.colorscheme "catppuccin-mocha"
