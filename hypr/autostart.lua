---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
hl.on("hyprland.start", function () 

    hl.exec_cmd("hyprpaper & firefox & waybar & kdeconnectd & hyprsunset")
    hl.exec_cmd("spotify")
    -- hl.exec_cmd("gtk-launch youtube-music && playerctl -p YoutubeMusic pause")


    hl.exec_cmd("G_MESSAGES_DEBUG=all swaync > ~/swaync_debug.log 2>&1")
    -- Messenger
    hl.exec_cmd("ferdium --hidden")
    hl.exec_cmd("org.telegram.desktop -startintray")
    hl.exec_cmd("org.signal.Signal -startintray")
    -- Clipboard
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")

    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    -- hl.exec_cmd("thunar --daemons")


    hl.exec_cmd("echo $HYPRLAND_INSTANCE_SIGNATURE > /tmp/his")


end)
