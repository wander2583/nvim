return {
  "epwalsh/pomo.nvim",
  version = "*",
  lazy = true,
  cmd = { "TimerStart", "TimerRepeat" },
  dependencies = {
    -- Optional, but highly recommended if you want to use the "Default" timer
    "rcarriga/nvim-notify",
  },
  opts = {
    {
      update_interval = 1000,
      notifiers = {
        {
          name = "Default",
          opts = {
            sticky = true,
            title_icon = "󱎫",
            text_icon = "󰄉",
          },
        },
        { name = "System" },
      },
      timers = {
        Break = {
          { name = "System" },
        },
      },
    },
  },
}
