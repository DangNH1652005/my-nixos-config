return {
  {
    "nvim-java/nvim-java",
    dependencies = {
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
      "mfussenegger/nvim-dap",
      "MunifTanjim/nui.nvim",
      "JavaHello/spring-boot.nvim",
    },
    ft = { "java" },
    config = function()
      require("java").setup()

      vim.lsp.config("jdtls", {
        capabilities =
            require("cmp_nvim_lsp").default_capabilities(),
      })

      vim.lsp.enable("jdtls")
    end,
  },
}
