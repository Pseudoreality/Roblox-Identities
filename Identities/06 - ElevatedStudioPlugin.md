# ElevatedStudioPlugin

## Description
Used for any important studio tools and features that are written in Lua.

## Information
- **Accessible Capabilities:**
  - [`Plugin`](../Capabilities/00%20-%20Plugin.md)
  - [`LocalUser`](../Capabilities/01%20-%20LocalUser.md)
  - [`RobloxScript`](../Capabilities/03%20-%20RobloxScript.md)
  - [`Assistant`](../Capabilities/62%20-%20Assistant.md)
  - [`InternalTest`](../Capabilities/60%20-%20InternalTest.md)
- **Identity:** 6
- **Related Instances:**
  - [`Plugin`](https://create.roblox.com/docs/reference/engine/classes/Plugin)
  - [`StandalonePluginScripts`](https://create.roblox.com/docs/reference/engine/classes/StandalonePluginScripts)
  - [`Script`](https://create.roblox.com/docs/reference/engine/classes/Script)
  - [`LocalScript`](https://create.roblox.com/docs/reference/engine/classes/LocalScript)

## Notes
- The files for BuiltInPlugins are signed and compiled to bytecode already, meaning reading the source code is not possible nor is editing the file. This also prevents loading custom plugins as BuiltInPlugins unless it is done through Internal Studio.
- BuiltInPlugins can run under four DataModels, those DataModels being `Standalone` (if it is a StandaloneBuiltInPlugin), `Edit`, `PlayClient`, and `PlayServer`
- These plugins can be automatically added to [`PluginDebugService`](https://create.roblox.com/docs/reference/engine/classes/PluginDebugService) by adding their names to `FStringDebugCommaSepBuiltInPluginsToDebug`
  - This string is case-sensitive and must be formatted as `[fileName].[fileExtension], [fileName].[fileExtension], etc`
- The `Plugin` instance for scripts running under this identity *usually* require [`RobloxScript`](../Capabilities/03%20-%20RobloxScript.md) to access. However, if [`PluginDebugService`](https://create.roblox.com/docs/reference/engine/classes/PluginDebugService) accepts the `Plugin` as a child using whatever method, its access permissions are permanently de-elevated to `Plugin`'s usual [`Plugin`](../Capabilities/00%20-%20Plugin.md) permissions until the plugin is reloaded.
  - To clarify, this does NOT mean that the script identities themselves are demoted to `StudioPlugin`, just that the `Plugin` instance's access security is de-elevated.
- There are two kinds of BuiltInPlugins
  - Non-Standalone
    - On Windows, they are loaded from `%localappdata%\Roblox\Versions\{versionGuid}\BuiltInPlugins\Optimized_Embedded_Signature`, or `%localappdata%\Roblox\Versions\{versionGuid}\BuiltInPlugins` if `FStringDebugSepBuiltInPlugins` is not empty.
    - The instance is named `builtin_[fileName].[fileExtension]`
  - Standalone
    - On Windows, loaded from `%localappdata%\Roblox\Versions\{versionGuid}\StandaloneBuiltInPlugins\Optimized_Embedded_Signature`, or `%localappdata%\Roblox\Versions\{versionGuid}\StandaloneBuiltInPlugins` if `FStringDebugSepBuiltInPlugins` is not empty.
    - The instance is named `sabuiltin_[fileName].[fileExtension]`
