-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps her-- Atalho para Compilar e Rodar C++ no Terminal Flutuante
vim.keymap.set("n", "<leader>rr", function()
  local file = vim.fn.expand("%")
  local out = vim.fn.expand("%:r")
  local cmd = string.format("gcc %s -o %s && ./%s", file, out, out)

  -- Abre o terminal do LazyVim e roda o comando
  Snacks.terminal(cmd)
end, { desc = "Run C/C++ Code" })
