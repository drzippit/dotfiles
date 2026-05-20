-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                     Defaults Configuration                  ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

local M = {}

-- general
M.filemanager = "nautilus"
M.applauncher = "walker"
M.terminal = "kitty"
M.idlehandler = "hypridle"

-- Screenshots
M.shot_region = 'grimblast copy area & notify-send "Area screenshot taken"'
M.shot_window = 'grimblast copy active & notify-send "Windows screenshot taken"'
M.shot_screen = 'grimblast copy output & notify-send "Screenshot taken"'

--SwayOSD as osdclient
M.osdclient = "swayosd-client --monitor \"$(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name')\""

return M
