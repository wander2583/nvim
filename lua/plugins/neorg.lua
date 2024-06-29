return {
  "vhyrro/luarocks.nvim",
  priority = 1000, -- We'd like this plugin to load first out of the rest
  config = true, -- This automatically runs `require("luarocks-nvim").setup()`
}, {
  "nvim-neorg/neorg",
  dependencies = { "luarocks.nvim" },
  -- put any other flags you wanted to pass to lazy here!
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        ["core.norg.concealer"] = {},
        ["core.norg.dirman"] = {
          config = {
            workspaces = {
              my_workspace = "~/neorg",
            },
          },
        },
        ["core.keybinds"] = {
          config = {
            default_keybinds = true,
            neorg_leader = "<Leader>o",
          },
        },
        ["core.norg.completion"] = {
          config = {
            engine = "nvim-cmp",
          },
        },
        ["core.integrations.telescope"] = {},
        ["core.integrations.nvim-cmp"] = {},
      },
    })
  end,
}
