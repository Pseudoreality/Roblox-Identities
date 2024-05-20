# ElevatedGameScript

## Description
Used for special scripts that are authored by Roblox to run within live games. These scripts handle things like the [`CoreGui`](https://create.roblox.com/docs/reference/engine/classes/CoreGui) among many other things.

## Information
- **Accessible Capabilities:**
  - [`PluginSecurity`](../Capabilities/1%20-%20PluginSecurity.md)
  - [`LocalUserSecurity`](../Capabilities/3%20-%20LocalUserSecurity.md)
  - [`RobloxScriptSecurity`](../Capabilities/5%20-%20RobloxScriptSecurity.md)
- **Identity:** 3
- **Related Instances:**
  - `CoreScript`

## Notes
- Most[^appCoreScriptDisclaimer] `CoreScript` source code can be found in `%localappdata%\Roblox\Versions\{clientUploadVersion}\ExtraContent\scripts\CoreScripts` on Windows, assuming the version used is a Roblox Studio installation.
- However, the code for these scripts are run from `%localappdata%\Roblox\Versions\{clientUploadVersion}\ExtraContent\models\DataModelPatch\DataModelPatch.rbxm`
> [!WARNING]
> Do NOT attempt to edit `DataModelPatch.rbxm` without backing it up. This file has a signature, meaning any change you make to it will almost always corrupt the file and in most cases with this file, leaves Roblox Studio/Roblox Player in a non-functional state.
> `DataModelPatch.rbxm` will also *usually* only work for the version of Roblox you find it in, so don't use an old backup if Roblox updates.

[^appCoreScriptDisclaimer]: `CoreScript`s that run on home page of the Roblox App, such as `LuaAppStarterScript`, will not have their source code provided since they are not a part of Roblox Studio. RCCService's `CoreScript`s will also not be found here for obvious reasons.
