mainMod = "SUPER" 
terminal = "kitty"
fileManager = "thunar"
menu = "rofi -show drun"
benq="DP-1"
terra="HDMI-A-1"


require("monitors")

require("keybinds")

require("input")
require("env")
require("autostart")
require("default")
require("windowrules")
require("look-and-feel")
require("look-and-feel")


hl.workspace_rule({workspace="1", persistent=true, monitor=benq})
hl.workspace_rule({workspace="2", persistent=true, monitor=terra, default=true})
hl.workspace_rule({workspace="3", monitor=terra})