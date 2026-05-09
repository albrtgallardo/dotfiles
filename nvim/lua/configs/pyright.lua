local lspconfig = require("lspconfig")

lspconfig.pyright.setup{
  on_attach = function(client, bufnr)
    print("Pyright LSP conectado a este buffer")
  end,
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true
      }
    }
  }
}

