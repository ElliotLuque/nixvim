{
  globals.mapleader = " ";

  keymaps = [
    {
      mode = "v";
      key = "J";
      action = ":m '>+1<CR>gv=gv";
    }
    {
      mode = "v";
      key = "K";
      action = ":m '<-2<CR>gv=gv";
    }
    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
    }
    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
    }
    {
      mode = "n";
      key = "<Esc>";
      action = "<cmd>nohlsearch<CR>";
    }
    {
      mode = "n";
      key = "<leader>ww";
      action = "<cmd>set wrap!<CR>";
      options = {
        desc = "Toggle line wrap";
      };
    }
    {
      mode = "n";
      key = "<left>";
      action = "<cmd>echo 'Use h to move!!'<CR>";
    }
    {
      mode = "n";
      key = "<right>";
      action = "<cmd>echo 'Use l to move!!'<CR>";
    }
    {
      mode = "n";
      key = "<up>";
      action = "<cmd>echo 'Use k to move!!'<CR>";
    }
    {
      mode = "n";
      key = "<down>";
      action = "<cmd>echo 'Use j to move!!'<CR>";
    }
  ];
}
