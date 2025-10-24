-- lua/plugins/cmp.lua
return {
    enabled = false,
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",  -- load when entering insert mode
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",

    },
    config = function()
        local cmp_status, cmp = pcall(require, "cmp")
        if not cmp_status then return end


        cmp.setup({
            mapping = cmp.mapping.preset.insert({
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<CR>"] = cmp.mapping.confirm({ select = true }),
            ["<Tab>"] = cmp.mapping.select_next_item(),
            ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        }),
        sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "buffer" },
            { name = "path" },
            { name = "luasnip" },
        }),
    })
    end,
}

