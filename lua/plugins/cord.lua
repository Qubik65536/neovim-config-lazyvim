return {
  {
    "vyfor/cord.nvim",
    build = ":Cord update",
    opts = {
      editor = {
        client = "neovim",
        tooltip = "The Superior Text Editor",
        icon = nil,
      },
      idle = {
        enabled = true,
        timeout = 3600000,
        show_status = true,
        ignore_focus = true,
        unidle_on_focus = true,
        smart_idle = true,
        details = "Idling",
        state = nil,
        tooltip = "💤",
        icon = nil,
      },
    },
  },
}
