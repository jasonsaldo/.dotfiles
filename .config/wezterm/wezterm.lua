local wezterm = require("wezterm")
local mux = wezterm.mux
local config = wezterm.config_builder()
config.font = wezterm.font("MesloLGS NF")

config.color_scheme = "cyberpunk"
config.font_size = 16
config.default_cursor_style = "BlinkingUnderline"
config.cursor_blink_rate = 400
-- tmux stuff
config.leader = { key = "q", mods = "ALT", timeout_milliseconds = 2000 }
config.keys = {
	{
		mods = "LEADER",
		key = "c",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		mods = "LEADER",
		key = "w",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
	{
		mods = "LEADER",
		key = "'",
		action = wezterm.action.ClearScrollback("ScrollbackAndViewport"),
	},
}
--tab bar stuff
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = true
--config.default_prog = { "powershell.exe" }
config.window_background_opacity = 0.95
config.max_fps = 120
config.window_decorations = "RESIZE"
--start fullscreen or maximized
wezterm.on("gui-startup", function(cmd)
	local tab, pane, window = mux.spawn_window(cmd or {})
	window:gui_window():maximize()
end)

return config
