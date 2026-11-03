return {
  "CRAG666/code_runner.nvim",
  config = function()
    require("code_runner").setup({
      filetype = {
        c = 'gcc "$fileName" -o "$fileNameWithoutExt" && ./$fileNameWithoutExt',
        cpp = 'g++ "$fileName" -o "$fileNameWithoutExt" && ./$fileNameWithoutExt',
        python = 'python3 -u "$fileName"',
        php = 'php "$fileName"',
        java = 'cd "$dir" && javac "$fileName" && java -cp "$dir" "$fileNameWithoutExt"',
        cs = 'cd "$dir" && dotnet run',
      },
    })
    vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = true })
  end,
}
