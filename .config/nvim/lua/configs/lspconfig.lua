require("nvchad.configs.lspconfig").defaults()

local servers = {"pyright", "ruff", "gopls", "bashls"}

vim.lsp.config("pyright", {
  settings = {
    ['pyright'] = {
      disableOrganizeImports = true,
    },
    ['python'] = {
      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
        ignore = { '*' },
      },
    },
  },

})



vim.lsp.config("gopls",{
  settings = {
    ['gopls'] = {
      analyses = {
        unusedparams = true,
        shadow = true,
      },
      staticcheck = true,
    },
  },
})


vim.lsp.config("bashls",{
  settings = {
    cmd = { 'bash-language-server', 'start' },
    filetypes = { 'bash', 'sh' }
  }
})


vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
