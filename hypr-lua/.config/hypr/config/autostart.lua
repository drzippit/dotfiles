-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                    Autostart Configuration                  ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

-- Autostart wiki https://wiki.hyprland.org/Configuring/Keywords/#executing
local defaults = require("config.defaults")

hl.on("hyprland.start", function()
	hl.exec_cmd("uwsm app -- waypaper --restore")
	hl.exec_cmd("uwsm app -- waybar")
	hl.exec_cmd("uwsm app -- swayosd-server")
	hl.exec_cmd("uwsm app -- elephant")
	hl.exec_cmd("walker --gapplication-service")
	hl.exec_cmd("uwsm app -- mako")
	hl.exec_cmd("uwsm app -- /usr/bin/pypr")
	hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
	hl.exec_cmd("uwsm app -- hyprdynamicmonitors run  --disable-power-events --enable-lid-events")
	hl.exec_cmd("uwsm app -- " .. defaults.idlehandler)
	hl.exec_cmd("uwsm app -- wl-paste --type text --watch cliphist store")
	hl.exec_cmd("uwsm app -- wl-paste --type image --watch cliphist store")
	hl.exec_cmd("uwsm app -- udiskie")
	hl.exec_cmd("uwsm app -- pass-cli ssh-agent start")
end)
