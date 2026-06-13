---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
hl.on("hyprland.start", function () 



hl.exec_cmd("spotify")
hl.exec_cmd("waybar")
hl.exec_cmd("hyprpaper & firefox ")

hl.exec_cmd("org.telegram.desktop -startintray")
hl.exec_cmd("org.signal.Signal -startintray")

hl.exec_cmd("echo $HYPRLAND_INSTANCE_SIGNATURE > /tmp/his")

hl.exec_cmd("wl-paste --type text --watch cliphist store")
hl.exec_cmd("wl-paste --type image --watch cliphist store")

hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
hl.exec_cmd("thunar --daemons")
hl.exec_cmd("GSK_RENDERER=gl swaync") 
hl.exec_cmd("kdeconnectd ")
hl.exec_cmd("hyprsunset")
hl.exec_cmd("ferdium --hidden")




end)

-- hl.exec_cmd("code --new-window /home/florian/Notes", {
--     workspace = "special:magic silent",
--     size={900,500},
--     move= {"(monitor_w*0.5)-450" ,50},
--     float = true,
-- })
