return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = 'main',
        build = ":TSUpdate",
        lazy = false,
        config = function()
            require("nvim-treesitter").install({
                'html', 'blade'
            })
        end,
    },
}
