return {
  "neovim/nvim-lspconfig",
  dependencies = { "hrsh7th/cmp-nvim-lsp" },
  config = function()
  local capabilities = require "cmp_nvim_lsp".default_capabilities()

  -- 为 clangd 提供 cmp
  require "lspconfig".clangd.setup {
    capabilities = capabilities
  }
  -- 为 tsserver 提供 cmp
  require "lspconfig".tsserver.setup {
    capabilities = capabilities
  }
  -- 为 texlab 提供 cmp
  require "lspconfig".texlab.setup {
    capabilities = capabilities
  }
  -- 为 lua_ls 提供 cmp
  require "lspconfig".lua_ls.setup {
    capabilities = capabilities
  }
  -- 为 pyright 提供 cmp
  require "lspconfig".pyright.setup {
    capabilities = capabilities
  }
end
}
