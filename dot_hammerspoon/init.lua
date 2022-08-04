local mash = {"cmd", "alt", "ctrl"}
local mash_shift = {"ctrl", "alt", "shift"}
-- init grid
hs.grid.MARGINX = 0
hs.grid.MARGINY = 0
hs.grid.GRIDWIDTH = 7
hs.grid.GRIDHEIGHT = 3

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "F", function() hs.application.launchOrFocus("iTerm") end)

-- disable animation
hs.window.animationDuration = 0

hs.hotkey.bind(mash, 'P', hs.grid.pushWindowPrevScreen)
hs.hotkey.bind(mash, '.', hs.hints.windowHints)

--left half of the screen
hs.hotkey.bind(mash, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)
--right half of the screen
hs.hotkey.bind(mash, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)
end)
--fill the screen
hs.hotkey.bind(mash, "Up", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  if f.w == max.w and f.h == max.h then
    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h / 2
  else
    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h
  end
    
  win:setFrame(f)
end)
hs.hotkey.bind(mash, "Down", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + (max.h / 2) 
  f.w = max.w
  f.h = max.h / 2
  
  win:setFrame(f)
end)


-- 4 screen quadrants
-- mapping: 
--    | 1 2 |
--    | 3 4 | 
hs.hotkey.bind(mash, "1", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h /2 
  win:setFrame(f)
end)

hs.hotkey.bind(mash, "2", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h /2 
  win:setFrame(f)
end)

hs.hotkey.bind(mash, "3", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x 
  f.y = max.y + (max.h / 2)
  f.w = max.w / 2
  f.h = max.h /2 
  win:setFrame(f)
end)

hs.hotkey.bind(mash, "4", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y + (max.h /2)
  f.w = max.w / 2
  f.h = max.h /2 
  win:setFrame(f)
end)


local mouseCircle = nil
local mouseCircleTimer = nil

function mouseHighlight()
    -- Delete an existing highlight if it exists
    if mouseCircle then
        mouseCircle:delete()
        if mouseCircleTimer then
            mouseCircleTimer:stop()
        end
    end
    -- Get the current co-ordinates of the mouse pointer
    mousepoint = hs.mouse.getAbsolutePosition()
    -- Prepare a big red circle around the mouse pointer
    mouseCircle = hs.drawing.circle(hs.geometry.rect(mousepoint.x-40, mousepoint.y-40, 80, 80))
    mouseCircle:setStrokeColor({["red"]=1,["blue"]=0,["green"]=0,["alpha"]=1})
    mouseCircle:setFill(false)
    mouseCircle:setStrokeWidth(5)
    mouseCircle:show()

    -- Set a timer to delete the circle after 3 seconds
    mouseCircleTimer = hs.timer.doAfter(3, function() mouseCircle:delete() end)
end
hs.hotkey.bind({"cmd","alt","shift"}, "D", mouseHighlight)


--autoreload config
function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")
--inspiration: https://github.com/Hammerspoon/hammerspoon/wiki/ztomer's-init.lua
