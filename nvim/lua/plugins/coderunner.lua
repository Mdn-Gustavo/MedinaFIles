return {
  {
    "CRAG666/code_runner.nvim",
    config = function()
      require("code_runner").setup({
        filetype = {
          python = "python3 $fileName",
          php = "php $fileName",
          javascript = "node $fileName",
          java = "javac $fileName && java $fileNameWithoutExt",
          cpp = "g++ $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
          c = "gcc $fileName -o $fileNameWithoutExt && ./$fileNameWithoutExt",
          cs = "dotnet run",
        },
      })
    end,
  },
}
