{pkgs,lib, ...};

{
    vim = {
        theme = {
            enable = true;
            name = "catppucin";
            style = "dark";
        };

        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;

        languages = {
            enableLSP = true;
            enableTreesitter = true;

            nix.enable = true;
            ts.enable = true;
            cpp.enable = true;
        };

    };
}
