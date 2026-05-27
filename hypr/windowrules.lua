hl.window_rule({
  name = "pavu-floating",
  match = {
    class = "my-window"
  },
  border_size = 10
})

local largeSize = {"org.signal.Signal", "org.telegram.desktop", "Ferdium", "fdm"}
local smallSize = {"blueman-manager", "org.pulseaudio.pavucontrol"}

for i = 1,#largeSize do
   hl.window_rule({
  name = largeSize[i],
  match = {
    class = largeSize[i]
  },
  float = true,
  size= {1000,800},
  move = {"cursor_x-(window_w*0.5))", "(cursor_y-(window_h*0.5))"}
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
  move = {"cursor_x-(window_w*0.5))", "(cursor_y-(window_h*0.5))"}
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
  name="baobab",
  match = {
    class = "org.gnome.baobab"
  },
  float = true,
  move = {"cursor_x-(window_w*0.5))", "(cursor_y-(window_h*0.5))"}

})