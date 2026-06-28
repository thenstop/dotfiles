local plugins = {
  { "catppuccin/nvim", "catppuccin" },
  { "hrsh7th/nvim-cmp", "nvim-cmp" },
  { "sontungexpt/witch-line", "witch-line" },
  { "ms-jpq/coq_nvim", "coq-nvim" },
  { "codeberg.org/mfussenegger/nvim-jdtls", "nvim-jdtls" },
  { "echasnovski/mini.nvim", "mini.nvim" }
}

for _, p in ipairs(plugins) do
  vim.pack.add { { src = "https://github.com/" .. p[1], name = p[2] } }
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = "java",
  callback = function()
    local jdtls = require('jdtls')
    local root = jdtls.setup.find_root({'.git', 'mvnw', 'gradlew', 'pom.xml', 'build.gradle'})
    
    jdtls.start_or_attach({
      cmd = {
        'java', '-Declipse.application=org.eclipse.jdt.ls.core.id1', '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product', '-Dlog.level=ALL', '-Xms1g', '-Xmx2g',
        '-jar', vim.fn.glob('/home/lchavez3509/.local/share/nvim/eclipse.jdt.ls/plugins/org.eclipse.equinox.launcher_*.jar'),
        '-configuration', '/home/lchavez3509/.local/share/nvim/eclipse.jdt.ls/config_linux',
        '-data', '/home/lchavez3509/.cache/jdtls/workspace/' .. vim.fn.fnamemodify(root, ':t')
      },
      root_dir = root,
    })
  end,
})

require("mini.pairs").setup({})

vim.opt.number = true
vim.opt.fillchars = { eob = " " }
vim.opt.shortmess:append("I")

vim.cmd.colorscheme "catppuccin-mocha"
