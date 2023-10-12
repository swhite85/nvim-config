require("bufferline").setup({
  options = {
    offsets = {
      {
        filetype = "NvimTree",
        text = function ()
          return vim.fn.getcwd()
        end,
        highlight = "Directory",
        separator = true
      }
    }
  }
})

