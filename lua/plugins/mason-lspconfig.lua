return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "williamboman/mason.nvim" },
  config = function()
    -- mason 配置
    require "mason".setup {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
        }
      }
    }

    -- mason-lspconfig 配置
    require("mason-lspconfig").setup {
      -- 选择需要启动的 lsp 服务器的语言
      ensure_installed = { "bashls", "clangd", "cssls", "html", "jdtls", "tsserver", "texlab", "lua_ls", "marksman", "pyright", "vimls" }
    }
  end
}

