vim.pack.add {
    { src = "https://github.com/saghen/blink.cmp", version = "v1" }
}
require('blink.cmp').setup({
    keymap = {
        preset = 'enter',
        -- Allow tab/s-tab to be used for menu navigation, while preserving
        -- its original behavor from "enter" preset
        ["<Tab>"] = {
            function(cmp)
                if cmp.is_menu_visible() then
                    return cmp.select_next()
                end
                return cmp.snippet_forward()
            end,
            "fallback",
        },

        ["<S-Tab>"] = {
            function(cmp)
                if cmp.is_menu_visible() then
                    return cmp.select_prev()
                end
                return cmp.snippet_backward()
            end,
            "fallback",
        },

    },

    appearance = {
        nerd_font_variant = 'mono'
    },

    completion = {
        documentation = { auto_show = true },
        list = { selection = { preselect = false, auto_insert = true } }
    },

    signature = { enabled = true, trigger = { enabled = true } },

    sources = {
        default = { 'lsp', 'path', 'snippets' } --, 'buffer' },
    },

    fuzzy = {
        implementation = "prefer_rust_with_warning"
    }
})
