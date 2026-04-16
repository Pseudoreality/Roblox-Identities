# PluginOrOpenCloud

## Description
Members with this security are intended to be used by [`LuauExecutionSessionTask`](https://create.roblox.com/docs/cloud/reference/LuauExecutionSessionTask)s or [`Plugin`](https://create.roblox.com/docs/reference/engine/classes/Plugin)s. Identities with [`Plugin`](00%20-%20Plugin.md) capabilities are automatically given `PluginOrOpenCloud`.

## Information
- **Security Name:** OpenCloud Security
- **Index:** 61

## Assigned API, as of v717
* [`SerializationService`](https://create.roblox.com/docs/reference/engine/classes/SerializationService)
* [`ModuleScript`](https://create.roblox.com/docs/reference/engine/classes/ModuleScript) Members:
	* [`ModuleScript.Source`](https://create.roblox.com/docs/reference/engine/classes/ModuleScript#Source)
* [`RunService`](https://create.roblox.com/docs/reference/engine/classes/RunService) Members:
	* [`RunService.Misprediction`](https://create.roblox.com/docs/reference/engine/classes/RunService#Misprediction) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`Script`](https://create.roblox.com/docs/reference/engine/classes/Script) Members:
	* [`Script.Source`](https://create.roblox.com/docs/reference/engine/classes/Script#Source)
* [`ScriptContext`](https://create.roblox.com/docs/reference/engine/classes/ScriptContext) Members:
	* [`ScriptContext.EnableCoverage`](https://create.roblox.com/docs/reference/engine/classes/ScriptContext#EnableCoverage)
	* [`ScriptContext.GetCoverageStats`](https://create.roblox.com/docs/reference/engine/classes/ScriptContext#GetCoverageStats)