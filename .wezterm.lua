local wezterm = require("wezterm")

local config = wezterm.config_builder()
config.font = wezterm.font("3270 Nerd Font Mono")

config.color_scheme = "cyberpunk"
config.font_size = 16
config.default_cursor_style = "BlinkingUnderline"
config.cursor_blink_rate = 400
-- tmux stuff
config.leader = { key = "q", mods = "ALT", timeout_milliseconds = 2000 }
config.keys = {
	{
		mods = "LEADER",
		key  = "c",
		action = wezterm.action.SpawnTab "CurrentPaneDomain"
	},
	{
		mods = "LEADER",
		key = "x",
		action = wezterm.action.CloseCurrentPane {confirm = true }
	}
}
--tab bar stuff
config.hide_tab_bar_if_only_one_tab = false
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.tab_and_split_indices_are_zero_based = true

return config
