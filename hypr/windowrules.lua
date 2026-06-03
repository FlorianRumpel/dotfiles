hl.window_rule({
  name = "pavu-floating",
  match = {
    class = "my-window"
  },
  border_size = 10
})

local largeSize = {"org.twosheds.iwgtk", "org.signal.Signal", "org.telegram.desktop", "Ferdium", "fdm"}
local smallSize = {"blueman-manager", "org.pulseaudio.pavucontrol"}


for i = 1,#largeSize do
   hl.window_rule({
  name = largeSize[i],
  match = {
    class = largeSize[i]
  },
  float = true,
  size= {1000,800},
  center = true
  -- border_size = 10
})
end

for i = 1,#smallSize do
   hl.window_rule({
  name = smallSize[i],
  match = {
    class = smallSize[i]
  },
  float = true,
  size= {900,500},
 center = true
  -- border_size = 10
})
end


hl.window_rule({
  name="Spotify",
  match = {
    class = "Spotify"
  },
  workspace = "3 silent"
})
hl.window_rule({
  name="Discord",
  match = {
    class = "discord"
  },
  workspace = "3 silent"
})

hl.window_rule({
  name="firefox",
  match = {
    class = "firefox"
  },
  workspace = "1"
})

hl.window_rule({
  name="save-as",
  match = {
    class = "DesktopEditors"
    
  },
center=true,
  float = true
})


hl.window_rule({
  name="baobab",
  match = {
    class = "org.gnome.baobab"
  },
  float = true,
  center = true

})


hl.window_rule({
    match = {
        class = "^(code)$",
        workspace = "special:magic silent",
    },
    workspace = "special:magic silent",
    float = true,
    size = { 900, 500 },
    move = { "(monitor_w*0.5)-450", 50 }
})