require "app-switch"
require "window-move"

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, 18, function()
  hs.mjomatic.go({
    "CCi",
    "AAM",
    "",
    "C Google Chrome",
    "i iTerm",
    "M Mail",
    "A Atom"})
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, 19, function()
  hs.mjomatic.go({
    "CCCCCCCCCCCCCCCCCCCCCCCC",
    "CCCCCCCCCCCCCCCCCCCCCCCC",
    "CCCCCCCCCCCCCCCCCCCCCCCC",
    "AAAAAAAAAAAAAMMMMMMMMMMM",
    "AAAAAAAAAAAAAMMMMMMMMMMM",
    "",
    "C Google Chrome",
    "M Mail",
    "A Atom"})
end)

hs.hotkey.bind({"cmd", "alt", "ctrl", "shift"}, "Return", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)
end)
