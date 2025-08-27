return {
  'nvimtools/none-ls.nvim',
  opts = function(_, opts)
    local null_ls = require 'null-ls'
    opts.sources = vim.list_extend(opts.sources or {}, {
      null_ls.builtins.formatting.prettier.with {
        filetypes = { 'json', 'javascript', 'typescript', 'yaml', 'markdown', 'html', 'css' },
      },
    })
  end,
}
