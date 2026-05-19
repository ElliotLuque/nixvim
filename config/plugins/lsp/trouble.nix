{ ... }:
{
  plugins.trouble = {
    enable = true;

    settings = {
      auto_close = true;
      auto_open = false;
      auto_preview = true;
      focus = false;

      follow = true;
      indent_guides = true;

      multiline = true;
      warn_no_results = false;
      open_no_results = false;

      use_diagnostic_signs = true;

      modes = {
        diagnostics = {
          win = {
            position = "bottom";
            size = 10;
          };
        };
      };
    };
  };

  extraConfigLua = ''
    -- Toggle global diagnostics
    vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", {
      desc = "Diagnostics (Trouble)",
    })

    -- Buffer diagnostics
    vim.keymap.set("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", {
      desc = "Buffer Diagnostics (Trouble)",
    })

    -- Quickfix
    vim.keymap.set("n", "<leader>xq", "<cmd>Trouble qflist toggle<cr>", {
      desc = "Quickfix (Trouble)",
    })

    -- Location list
    vim.keymap.set("n", "<leader>xl", "<cmd>Trouble loclist toggle<cr>", {
      desc = "Location List (Trouble)",
    })

    -- LSP references in Trouble
    vim.keymap.set("n", "gr", "<cmd>Trouble lsp_references toggle<cr>", {
      desc = "References (Trouble)",
    })

    -- Navegación dentro de Trouble
    vim.keymap.set("n", "]t", function()
      require("trouble").next({ skip_groups = true, jump = true })
    end)

    vim.keymap.set("n", "[t", function()
      require("trouble").prev({ skip_groups = true, jump = true })
    end)
  '';
}
