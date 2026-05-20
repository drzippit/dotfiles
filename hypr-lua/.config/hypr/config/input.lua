-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                      Input Configuration                    ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

-- Input wiki https://wiki.hyprland.org/Configuring/Variables/#input

hl.gesture({
	fingers = 3,
	direction = "horizontal",
	action = "workspace",
})

hl.config({
	input = {
		follow_mouse = 2,
		float_switch_override_focus = 2,
		kb_options = "ctrl:nocaps",
		accel_profile = "flat",
		repeat_rate = 40,
		repeat_delay = 600,
		touchpad = {
			clickfinger_behavior = true,
			natural_scroll = true,
			scroll_factor = 0.4,
		},
	},
	cursor = {
		inactive_timeout = 10,
	},
})
