# PluginOrOpenCloud

## Description
Members with this security are intended to be used by [`LuauExecutionSessionTask`](https://create.roblox.com/docs/cloud/reference/LuauExecutionSessionTask)s or [`Plugin`](https://create.roblox.com/docs/reference/engine/classes/Plugin)s. Identities with [`Plugin`](00%20-%20Plugin.md) capabilities are automatically given `PluginOrOpenCloud`.

## Information
- **Security Name:** OpenCloud Security
- **Index:** 61

## Assigned API, as of v733
* [`DataModelDiff`](https://create.roblox.com/docs/reference/engine/classes/DataModelDiff)
* [`SerializationService`](https://create.roblox.com/docs/reference/engine/classes/SerializationService)
* [`AuroraScript`](https://create.roblox.com/docs/reference/engine/classes/AuroraScript) Members:
	* [`AuroraScript.EnableCulling`](https://create.roblox.com/docs/reference/engine/classes/AuroraScript#EnableCulling) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`AuroraScript.EnableLOD`](https://create.roblox.com/docs/reference/engine/classes/AuroraScript#EnableLOD) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`AuroraScript.LODCriticality`](https://create.roblox.com/docs/reference/engine/classes/AuroraScript#LODCriticality) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`AuroraScript.Priority`](https://create.roblox.com/docs/reference/engine/classes/AuroraScript#Priority) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
	* [`AuroraScript.Source`](https://create.roblox.com/docs/reference/engine/classes/AuroraScript#Source) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`ModuleScript`](https://create.roblox.com/docs/reference/engine/classes/ModuleScript) Members:
	* [`ModuleScript.Source`](https://create.roblox.com/docs/reference/engine/classes/ModuleScript#Source)
* [`RunService`](https://create.roblox.com/docs/reference/engine/classes/RunService) Members:
	* [`RunService.Misprediction`](https://create.roblox.com/docs/reference/engine/classes/RunService#Misprediction) (also requires [`Basic`](https://create.roblox.com/docs/scripting/capabilities#engine-api-access-control))
* [`Script`](https://create.roblox.com/docs/reference/engine/classes/Script) Members:
	* [`Script.Source`](https://create.roblox.com/docs/reference/engine/classes/Script#Source)
* [`ScriptContext`](https://create.roblox.com/docs/reference/engine/classes/ScriptContext) Members:
	* [`ScriptContext.EnableCoverage`](https://create.roblox.com/docs/reference/engine/classes/ScriptContext#EnableCoverage)
	* [`ScriptContext.GetCoverageStats`](https://create.roblox.com/docs/reference/engine/classes/ScriptContext#GetCoverageStats)