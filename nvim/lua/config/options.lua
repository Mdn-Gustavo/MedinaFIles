vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.termguicolors = true
vim.cmd("colorscheme default")

-- Desativa as cores semânticas que o LSP injeta por cima do tema
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client then
      client.server_capabilities.semanticTokensProvider = nil
    end
  end,
})
