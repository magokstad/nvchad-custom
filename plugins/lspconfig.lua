local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
  "html",
  "cssls",
  "tsserver",
  "vuels",
  "tailwindcss",
  "clangd",
  "rust_analyzer",
  "jdtls",
  "jedi_language_server",
  "texlab",
  "clojure_lsp",
  "crystalline"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
