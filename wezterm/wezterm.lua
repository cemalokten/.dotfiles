local wezterm = require 'wezterm'
return {
  color_scheme = 'Jellybeans',
  font = wezterm.font('JetBrains Mono', { weight = 'Regular' }),
  -- font = wezterm.font('Berkeley Mono'),
  freetype_load_target = "Normal",
  force_reverse_video_cursor = true,
  scrollback_lines = 3500,
  font_size = 15, -- Standard
  -- font_size = 19, -- Standard
  tab_max_width = 400,
  use_fancy_tab_bar = false,
  cursor_blink_rate = 0,
  colors = {
    copy_mode_active_highlight_fg={Color="#ffffff"},
    copy_mode_active_highlight_bg={Color="#8787D7"},
    copy_mode_inactive_highlight_fg={Color="White"},
    copy_mode_inactive_highlight_bg={Color="Blue"},

    quick_select_label_fg={Color="white"},
    quick_select_label_bg={Color="Yellow"},
    quick_select_match_fg={Color="grey"},
    quick_select_match_bg={Color="Yellow"},
    background = '#151515',
    tab_bar = {
      -- The color of the strip that goes along the top of the window
      -- (does not apply when fancy tab bar is in use)
      background = '#151515',
      active_tab = {
        -- The color of the background area for the tab
        bg_color = '#8787D7',
        -- The color of the text for the tab
        fg_color = 'black',
        -- Specify whether you want "Half", "Normal" or "Bold" intensity for the
        -- label shown for this tab.
        -- The default is "Normal"
        intensity = 'Normal',

        -- Specify whether you want "None", "Single" or "Double" underline for
        -- label shown for this tab.
        -- The default is "None"
        underline = 'None',
        -- Specify whether you want the text to be italic (true) or not (false)
        -- for this tab.  The default is false.
        italic = false,
        -- Specify whether you want the text to be rendered with strikethrough (true)
        -- or not for this tab.  The default is false.
        strikethrough = false,
      },

      -- Inactive tabs are the tabs that do not have focus
      inactive_tab = {
        fg_color = '#8787D7',
        -- The color of the text for the tab
        bg_color = '#151515',

        -- The same options that were listed under the `active_tab` section above
        -- can also be used for `inactive_tab`.
      },
    },
  },
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  window_decorations = "RESIZE",
  window_background_opacity = 1,
  keys = {
    -- This will create a new split and run your default program inside it
    {
      key = 'w',
      mods = 'SHIFT|CMD',
      action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
      key = 'w',
      mods = 'CMD',
      action = wezterm.action.CloseCurrentPane { confirm = true },
    },
    {
      key="l",
      mods="CMD",
      action = wezterm.action{ ActivatePaneDirection="Next" }
    },
 },
}
