# ElevatedStudioPlugin

## Description
Used for any important studio tools and features that are written in Lua.

## Information
- **Accessible Capabilities:**
  - [`PluginSecurity`](../Capabilities/1%20-%20PluginSecurity.md)
  - [`LocalUserSecurity`](../Capabilities/3%20-%20LocalUserSecurity.md)
  - [`RobloxScriptSecurity`](../Capabilities/5%20-%20RobloxScriptSecurity.md)
- **Identity:** 6
- **Related Instances:**
  - [`Plugin`](https://create.roblox.com/docs/reference/engine/classes/Plugin)
  - [`StandalonePluginScripts`](https://create.roblox.com/docs/reference/engine/classes/StandalonePluginScripts)
  - [`Script`](https://create.roblox.com/docs/reference/engine/classes/Script)
  - [`LocalScript`](https://create.roblox.com/docs/reference/engine/classes/LocalScript)

## Notes
- The files for BuiltInPlugins are signed and compiled to bytecode already, meaning reading the source code is not possible nor is editing the file. This also prevents loading custom plugins as BuiltInPlugins unless it is done through Internal Studio.
- BuiltInPlugins can run under four DataModels, those DataModels being `Standalone` (if it is a StandaloneBuiltInPlugin), `Edit`, `PlayClient`, and `PlayServer`
- These plugins can be debugged by added their names to `FStringDebugCommaSepBuiltInPluginsToDebug`
  - This string is case-sensitive and must be formatted as `[fileName].[fileExtension], [fileName].[fileExtension], etc`
- There are two kinds of BuiltInPlugins
  - Non-Standalone
    - On Windows, they are loaded from `%localappdata%\Roblox\Versions\{versionGuid}\BuiltInPlugins\Optimized_Embedded_Signature`, or `%localappdata%\Roblox\Versions\{versionGuid}\BuiltInPlugins` if `FStringDebugSepBuiltInPlugins` is not empty.
    - The instance is named `builtin_[fileName].[fileExtension]`
  - Standalone
    - On Windows, loaded from `%localappdata%\Roblox\Versions\{versionGuid}\StandaloneBuiltInPlugins\Optimized_Embedded_Signature`, or `%localappdata%\Roblox\Versions\{versionGuid}\StandaloneBuiltInPlugins` if `FStringDebugSepBuiltInPlugins` is not empty.
    - The instance is named `sabuiltin_[fileName].[fileExtension]`
