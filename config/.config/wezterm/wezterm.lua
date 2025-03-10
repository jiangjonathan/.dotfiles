local wezterm = require 'wezterm'

print("Config loaded")

local config = {}

local target_triple = wezterm.target_triple

if target_triple:find("windows") then
  print("Windows")
  config.default_domain = 'WSL:Ubuntu'
elseif target_triple:find("darwin") then
  print("Mac")
  config.default_domain = 'local'
  config.default_prog = {'/bin/zsh', '-l'}
else
  print("OS not found")
  config.default_domain = ''  -- Default domain if it's not Windows or macOS
end

config.color_scheme = 'GruvboxDark'
config.window_decorations = 'RESIZE'
config.force_reverse_video_cursor = true
config.window_padding = {
  left = 0,
  right = 0, 
  top = 0, 
  bottom = 0,
}
config.font_size = 14
config.initial_rows = 50
config.initial_cols = 100
return config
