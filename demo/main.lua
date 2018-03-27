--#############################################################################
--# Corona HTML5 Session Storage Demo
--# (c)2018 C. Byerley (develephant)
--#############################################################################
local sessionStorage = require("sessionStorage")

--#############################################################################
--# API
--#############################################################################
local function setItem(key, data)
  sessionStorage.setItem('username', 'Jimmy')
end

local function getItem(key, valType)
  local val = sessionStorage.getItem('username')
  print(val)
end

local function removeItem(key)
  sessionStorage.removeItem('username')
end

local function exists(key)
  if (sessionStorage.exists('username')) then
    print(true)
  else
    print(false)
  end
end

local function clear()
  sessionStorage.clear()
end

--#############################################################################
--# UI
--#############################################################################
local widget = require("widget")

--# Text
local title = display.newText({
  text = "Corona HTML5 Session Storage Plugin",
  x = display.contentCenterX,
  y = 40,
  font = native.systemFont,
  fontSize = 18,
  align = "center"
})
title:setFillColor(249/255,124/255,0)

cookie_txt = display.newText({
  text = "Select Action",
  x = display.contentCenterX,
  y = 80,
  font = native.systemFont,
  fontSize = 16,
  align = "center"
})

--# Buttons
local xPos = display.contentCenterX

local setSessionBtn = widget.newButton({
  x = xPos,
  y = 120,
  label = "Set Session Storage Key",
  onRelease = setItem
})

local getSessionBtn = widget.newButton({
  x = xPos,
  y = 160,
  label = "Get Session Storage Key",
  onRelease = getItem
})

local removeSessionBtn = widget.newButton({
  x = xPos,
  y = 200,
  label = "Remove Session Storage Key",
  onRelease = removeItem
})

local existsSessionBtn = widget.newButton({
  x = xPos,
  y = 240,
  label = "Check Session Storage Key",
  onRelease = exists
})

local clearSessionBtn = widget.newButton({
  x = xPos,
  y = 280,
  label = "Clear Session Storage Keys",
  onRelease = clear
})
