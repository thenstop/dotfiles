vim.pack.add({
  { src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
  { src = "https://github.com/sontungexpt/witch-line", name = "witch-line" },
  { src = "https://github.com/ms-jpq/coq_nvim", name = "coq_nvim" },
  { src = "https://github.com/echasnovski/mini.nvim", name = "mini.nvim" },
  { src = "https://github.com/MagicDuck/grug-far.nvim", name = "grug-far.nvim" }
})

require('grug-far').setup({
  keymaps = {
    replace = '<leader>r',
    qflist = '<leader>q',
  }
})

local group = vim.api.nvim_create_augroup("GrugFarLayout", { clear = true })

vim.api.nvim_create_autocmd("VimEnter", {
  group = group,
  callback = function()
    require('grug-far').open()
    vim.cmd.wincmd("p")
  end,
})

vim.api.nvim_create_autocmd("BufEnter", {
  group = group,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and vim.bo.filetype == "grug-far" then
      vim.cmd("qa!")
    end
  end,
})

require("mini.pairs").setup({})
require("statusline")

vim.keymap.set('n', '1', '<C-w>h')
vim.keymap.set('n', '2', '<C-w>l')

vim.opt.number = true
vim.opt.wrap = false
vim.opt.fillchars = { eob = " " }
vim.opt.shortmess:append("I")

vim.cmd.colorscheme "catppuccin-mocha"
