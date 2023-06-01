-- didn't use any luau for compatibility
local function try(fn, ...)
	return (pcall(fn, ...))
end

local securityChecks = {
	{
		name = "None",
		number = 0,
		canAccess = try(function() return game.Name end)
	},
	{
		name = "PluginSecurity",
		number = 1,
		canAccess = try(function() return game:GetService("CoreGui").Name end)
	},
	{
		name = "LocalUserSecurity",
		number = 3,
		canAccess = try(function() return game.DataCost end)
	},
	{
		name = "WritePlayerSecurity",
		number = 4,
		canAccess = try(Instance.new, "Player")
	},
	{
		name = "RobloxScriptSecurity",
		number = 5,
		canAccess = try(function() return game:GetService("CorePackages").Name end)
	},
	{
		name = "RobloxSecurity",
		number = 6,
		canAccess = try(function() return Instance.new("SurfaceAppearance").TexturePack end)
	},
	{
		name = "NotAccessibleSecurity",
		number = 7,
		canAccess = try(function() Instance.new("MeshPart").MeshId = "" end)
	}
}

-- format everything
local message = ""

for index, securityInfo in pairs(securityChecks) do
	local canAccess = securityInfo.canAccess and "Yes" or "No"
	
	message = message .. (securityInfo.name .. " (" .. securityInfo.number .. ") = " .. canAccess .. (index ~= #securityChecks and "\n" or ""))
end

printidentity()
print(message)
