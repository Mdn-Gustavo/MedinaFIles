return {
  {
    "nyngwang/Vim-Colorless",
    lazy = false, -- Carrega no início
    priority = 1000, -- Garante que carrega antes de outros plugins
    config = function()
      -- Ativa o tema
      vim.cmd([[colorscheme colorless]])

      -- Mantém o fundo transparente (Pitch Black do seu Alacritty)
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "LineNr", { fg = "#666666", bg = "none" })
    end,
  },
}
