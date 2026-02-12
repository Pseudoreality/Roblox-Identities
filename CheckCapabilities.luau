local CHECKBOX_EMOJI = utf8.char(0x2705)
local CROSS_EMOJI = utf8.char(0x274C)

local function getSuccess(fn, ...)
	return ( pcall(fn, ...) )
end

local function customSuccess(fn)
	local success, result = pcall(fn)
	return success and result
end

local capInfos = {
	{
		name = "Plugin",
		index = 0,
		canAccess = getSuccess(function()
			return game:GetService("CoreGui").Name
		end)
	},
	{
		name = "LocalUser",
		index = 1,
		canAccess = getSuccess(function()
			return game.DataCost
		end)
	},
	{
		name = "WritePlayer",
		index = 2,
		canAccess = getSuccess(Instance.new, "Player")
	},
	{
		name = "RobloxScript",
		index = 3,
		canAccess = getSuccess(function()
			return game:GetService("CorePackages").Name
		end)
	},
	{
		name = "RobloxEngine",
		index = 4,
		canAccess = getSuccess(function()
			return Instance.new("Decal").TexturePack
		end)
	},
	{
		name = "NotAccessible",
		index = 5,
		canAccess = getSuccess(function()
			Instance.new("MeshPart").MeshId = ""
		end)
	},

	{
		name = "RemoteCommand",
		index = 59,
		canAccess = customSuccess(function()
			local RemoteCommandService = game:GetService("RemoteCommandService")

			if not RemoteCommandService then
				return false
			end

			local success, errMsg = pcall(RemoteCommandService.GetExecutingPlayer, RemoteCommandService)

			if not success and string.find(errMsg, "current thread cannot") then
				return false
			end

			return true
		end)
	},
	{
		name = "InternalTest",
		index = 60,
		canAccess = getSuccess(Instance.new, "CustomLog")
	},
	{
		name = "PluginOrOpenCloud",
		index = 61,
		canAccess = getSuccess(function()
			Instance.new("ModuleScript").Source = ""
		end)
	},
	-- this is going to return false if the identity doesn't have LocalUser.. but nothing i can do about that for now
	{
		name = "Assistant",
		index = 62,
		canAccess = customSuccess(function()
			local StreamingService = game:GetService("StreamingService")

			if not StreamingService then
				return false
			end

			-- this is going to error regardless because noargs, lacking permission takes priority though
			local _, errMsg = pcall(StreamingService.ExecuteCommandAsync, StreamingService)

			if string.find(errMsg, "current thread cannot") then
				return false
			end

			return true
		end)
	},
}

local longestNameLength = 0
for _, info in capInfos do
	if #info.name > longestNameLength then
		longestNameLength = #info.name
	end
end

local message = string.format(`\n%-{longestNameLength}s | %-6s | %s\n`, "Name", "Index", "Accessible")
message ..= string.rep("-", #message)

for _, info in capInfos do
	local index = if info.index then tostring(info.index) else "N/A"
	local accessible = info.canAccess and CHECKBOX_EMOJI or CROSS_EMOJI

	message ..= string.format(`\n%-{longestNameLength}s | %-6s | %s`, info.name, index, accessible)
end

printidentity("Approximate Capabilities for Identity")
print(message)
