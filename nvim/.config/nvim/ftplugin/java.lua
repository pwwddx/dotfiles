local nvlsp = require "nvchad.configs.lspconfig"
local data = vim.fn.stdpath "data"

-- find the project folder (or use the current folder for single files)
local root_dir = vim.fs.root(0, { ".git", "pom.xml", "build.gradle" }) or vim.fn.getcwd()

-- debugger jar from Mason
local debug_jar = vim.fn.glob(data .. "/mason/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar", true)

require("jdtls").start_or_attach {
  cmd = { data .. "/mason/bin/jdtls", "-data", data .. "/jdtls-workspace/" .. vim.fn.fnamemodify(root_dir, ":t") },
  root_dir = root_dir,
  capabilities = nvlsp.capabilities, -- completion works with nvim-cmp
  on_attach = nvlsp.on_attach, -- NvChad's LSP keymaps (gd, K, ...)
  init_options = { bundles = { debug_jar } }, -- load debugger into jdtls
}
