local game = game
local select, pcall, loadstring, warn, getgenv = select, pcall, loadstring, warn, getgenv

local __index = getrawmetatable(game).__index

repeat task.wait() until game["Players"]

if not select(2, pcall(__index, game.Players, "LocalPlayer")) then
	local Success, Unload = pcall(select(2, pcall(loadstring, game:HttpGet("https://raw.githubusercontent.com/strblzng/BumboclattHook/main/src/Modules/Original.lua")))) -- Original / best version
	
	if not Success then
		warn("AIRHUB_V2 > Loader - Your script execution software does not support the original / best version, trying the degraded version...")
	
		getgenv().AirHubV2Loaded = nil -- will never implement shit
	
		if Unload then
			Unload()
		end
		
		Success = pcall(select(2, pcall(loadstring, game:HttpGet("https://raw.githubusercontent.com/strblzng/BumboclattHook/main/src/Modules/Primitive.lua")))) -- Degraded for UWP (works on web version)
	
		if not Success then
			return warn("AIRHUB_V2 > Loader - Your script execution software does not support this script.")
		end
	end
else
	local Success = pcall(select(2, pcall(loadstring, game:HttpGet("https://raw.githubusercontent.com/strblzng/BumboclattHook/main/src/Modules/Primitive.lua")))) -- Degraded for UWP (works on web version)
	
	if not Success then
		return warn("BUMBOSENSE > Loader - Your script execution software does not support this script.")
	end
end

-- strblzngs shit
