# ElevatedGameScript

## Description
Used for special scripts that are authored by Roblox to run within live games. These scripts handle things like the [`CoreGui`](https://create.roblox.com/docs/reference/engine/classes/CoreGui) among many other things.

## Information
- **Accessible Capabilities:**
  - [`Plugin`](../Capabilities/00%20-%20Plugin.md)
  - [`LocalUser`](../Capabilities/01%20-%20LocalUser.md)
  - [`RobloxScript`](../Capabilities/03%20-%20RobloxScript.md)
  - [`InternalTest`](../Capabilities/60%20-%20InternalTest.md)
- **Identity:** 3
- **Related Instances:**
  - `CoreScript`

## Notes
- Most[^appCoreScriptDisclaimer] `CoreScript` source code can be found in `%localappdata%\Roblox\Versions\{clientUploadVersion}\ExtraContent\scripts\CoreScripts` on Windows, assuming the version used is a Roblox Studio installation.
- However, the code for these scripts are run from several different DataModelPatches. The most notable one being `%localappdata%\Roblox\Versions\{clientUploadVersion}\ExtraContent\models\DataModelPatch\DataModelPatch.rbxm`
> [!WARNING]
> Do NOT attempt to edit the `rbxm` files from the DataModelPatch folders without backing it up. These files have signatures, meaning any change you make to them will almost always corrupt the file and, in most cases with this file, leaves Roblox Studio/Roblox Player in a non-functional state.
> These files will also *usually* only work for the version of Roblox you find it in, so don't use an old backup if Roblox updates.

[^appCoreScriptDisclaimer]: `CoreScript`s that are only present on Roblox Player, such as `LuaAppStarterScript`, will not have their source code provided since they are not a part of Roblox Studio. RCCService's `CoreScript`s will also not be found here for obvious reasons.
