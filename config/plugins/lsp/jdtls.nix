{ pkgs, ... }:

{
  # IMPORTANT: jdtls nixvim
  plugins.lsp.servers.jdtls.enable = false;

  extraPackages = [
    pkgs.jdt-language-server
  ];

  extraConfigLua = ''
    local jdtls = require("jdtls")

    local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
    local root_dir = require("jdtls.setup").find_root(root_markers)

    if root_dir == nil then
      return
    end

    local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspace/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

    local config = {
      cmd = {
        "${pkgs.jdt-language-server}/bin/jdtls",
        "-data",
        workspace_dir,
      },

      root_dir = root_dir,

      settings = {
        java = {
          configuration = {
            updateBuildConfiguration = "interactive",
          },
          eclipse = {
            downloadSources = true,
          },
          maven = {
            downloadSources = true,
          },
          implementationsCodeLens = {
            enabled = true,
          },
          referencesCodeLens = {
            enabled = true,
          },
        },
      },

      capabilities = require("cmp_nvim_lsp").default_capabilities(),
    }

    jdtls.start_or_attach(config)
  '';

 
  extraConfigLuaPost = ''
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "java",
      callback = function()
      end,
    })
  '';
}
