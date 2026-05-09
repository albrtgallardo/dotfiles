local lspconfig = require("lspconfig")

lspconfig.clangd.setup{
  on_attach = function(client, bufnr)
    print("Clangd LSP conectado a este buffer")
  end,
  cmd = { "clangd", "--background-index" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
}

