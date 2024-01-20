-- Pull in the wezterm API
local wezterm = require 'wezterm'
local act = wezterm.action 
-- This table will hold the configuration.
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end


config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font 'JetBrains Mono'
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.85
config.window_padding = {
  left = 1,
  right = 1,
  top = 0,
  bottom = 0,
}


return config

