# OpenCloud

## Description
Members with this security are intended to only be used by [LuauExecutionSessionTasks](https://create.roblox.com/docs/cloud/reference/LuauExecutionSessionTask).

## Notes
- Currently, `OpenCloud` is not its own capability, but instead exists internally as a sum capability of [`Plugin`](../1%20-%20PluginSecurity.md) and `OpenCloud` called "`PluginOrOpenCloud`"
- The only members that has this identity is [`Script.Source`](https://create.roblox.com/docs/reference/engine/classes/Script#Source) and [`ModuleScript.Source`](https://create.roblox.com/docs/reference/engine/classes/ModuleScript#Source).
