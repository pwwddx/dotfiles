require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd

autocmd("BufNewFile", {
  pattern = "*.cpp",
  command = "0r ~/CP/cppTemplate2.cpp",
})
