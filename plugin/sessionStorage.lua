--#############################################################################
--# Corona HTML5 Session Storage Plugin
--# (c)2018 C. Byerley (develephant)
--#############################################################################
local lib

local platform = system.getInfo("platform")

if platform == 'html5' then
  lib = require("sessionStorage_js")
else
	-- wrapper for non web platforms
	local CoronaLibrary = require "CoronaLibrary"
	-- Create stub library for simulator
	lib = CoronaLibrary:new{ name='sessionStorage', publisherId='com.me' }
  -- Alert for non-HTML5 platforms
	local function defaultFunction()
		print( "WARNING: The '" .. lib.name .. "' library is not available on this platform." )
  end
  
  lib.setItem = defaultFunction
  lib.getItem = defaultFunction
  lib.removeItem = defaultFunction
  lib.exists = defaultFunction
  lib.clear = defaultFunction
end

return lib
