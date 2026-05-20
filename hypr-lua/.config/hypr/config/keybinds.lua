---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER"

local defaults = require("config.defaults")

-- Applications

hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(defaults.terminal))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(defaults.filemanager))
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(defaults.applauncher))
hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd("kitty -e yazi"))

-- Window actions

hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

-- Exit

hl.bind(mainMod .. " + SHIFT + M", hl.dsp.exec_cmd([[loginctl terminate-user ""]]))

-- Pyprland

hl.bind(mainMod .. " + T", hl.dsp.exec_cmd("pypr-client toggle term"))
hl.bind(mainMod .. " + C", hl.dsp.exec_cmd("pypr-client toggle ferdium"))

-- Menus

hl.bind(mainMod .. " + P", hl.dsp.exec_cmd("$HOME/.local/bin/powerprofiles"))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.exec_cmd("$HOME/.local/bin/fanprofiles"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("$HOME/.local/bin/mainmenu"))
hl.bind(mainMod .. " + SHIFT + R", hl.dsp.exec_cmd("$HOME/.local/bin/restartmenu"))

-- Clipboard

hl.bind(mainMod .. " + SHIFT + V", hl.dsp.exec_cmd("cliphist list | walker -d | cliphist decode | wl-copy"))

-- Screenshots

hl.bind("Print", hl.dsp.exec_cmd(defaults.shot_region))
hl.bind("CTRL + Print", hl.dsp.exec_cmd(defaults.shot_window))
hl.bind("ALT + Print", hl.dsp.exec_cmd(defaults.shot_screen))
hl.bind("SHIFT + Print", hl.dsp.exec_cmd("$HOME/.local/bin/screenshotdmenu"))

-----------------------
-- MEDIA CONTROLS ----
-----------------------

-- Volume

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(defaults.osdclient .. " --output-volume raise"))

hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(defaults.osdclient .. " --output-volume lower"))

hl.bind("XF86AudioMute", hl.dsp.exec_cmd(defaults.osdclient .. " --output-volume mute-toggle"))

-- Precise volume

hl.bind("ALT + XF86AudioRaiseVolume", hl.dsp.exec_cmd(defaults.osdclient .. " --output-volume +1"))

hl.bind("ALT + XF86AudioLowerVolume", hl.dsp.exec_cmd(defaults.osdclient .. " --output-volume -1"))

-- Brightness

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd(defaults.osdclient .. " --brightness raise"))

hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd(defaults.osdclient .. " --brightness lower"))

-- Precise brightness

hl.bind("ALT + XF86MonBrightnessUp", hl.dsp.exec_cmd(defaults.osdclient .. " --brightness +1"))

hl.bind("ALT + XF86MonBrightnessDown", hl.dsp.exec_cmd(defaults.osdclient .. " --brightness -1"))

-- Playback

hl.bind("XF86AudioNext", hl.dsp.exec_cmd(defaults.osdclient .. " --playerctl next"))

hl.bind("XF86AudioPrev", hl.dsp.exec_cmd(defaults.osdclient .. " --playerctl previous"))

hl.bind("XF86AudioPause", hl.dsp.exec_cmd(defaults.osdclient .. " --playerctl play-pause"))

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd(defaults.osdclient .. " --playerctl play-pause"))

-------------------------
---- SYSTEM ACTIONS ----
-------------------------

hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))

hl.bind(mainMod .. " + O", hl.dsp.exec_cmd("killall -SIGUSR2 waybar"))

-------------------------
---- FOCUS MOVEMENT ----
-------------------------

hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

----------------------
---- WORKSPACES ----
----------------------
for i = 1, 10 do
	local key = i % 10 -- 10 maps to key 0
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

--------------------------
---- MOUSE BINDS ----
--------------------------

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })

hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
