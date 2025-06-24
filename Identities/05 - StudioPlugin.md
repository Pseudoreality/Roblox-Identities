# StudioPlugin

## Description
Used for custom add-ons made by developers.

## Information
- **Accessible Capabilities:**
  - [`PluginSecurity`](../Capabilities/1%20-%20PluginSecurity.md)
- **Identity:** 5
- **Related Instances:**
  - [`Plugin`](https://create.roblox.com/docs/reference/engine/classes/Plugin)
  - [`Script`](https://create.roblox.com/docs/reference/engine/classes/Script)
  - [`LocalScript`](https://create.roblox.com/docs/reference/engine/classes/LocalScript)

## Notes
- This identity is allowed to bypass [`HttpService.HttpEnabled`](https://create.roblox.com/docs/reference/engine/classes/HttpService#HttpEnabled) in the Edit DataModel.
- Each developer Plugin can have three copies of itself running, each within the `Edit`, `PlayClient`, and `PlayServer` DataModels.
- There are two types of developer Plugins.
  - Local
    - Loaded on the disk from the directory specified in `Studio Settings > Studio > Plugins Dir`
    - The settings file for all local plugins is located at `%localappdata%\Roblox\{loggedInUserId}\InstalledPlugins\0\settings.json`. This file is also shared with BuiltInPlugins.
    - The instance is named `user_[fileName].[fileExtension]`
  - Cloud
    - Is also loaded on the disk, but in a more complicated way.
      - Studio will download the plugin from the Roblox website first, or via `StudioService.TryInstallPlugin()` if installed through the toolbox.
      - The plugin model is then placed at `%localappdata%\Roblox\{loggedInUserId}\InstalledPlugins\{pluginId}\{pluginVersionId}\Plugin.rbxm`
        - The plugin's settings file will be in the same folder, if the plugin uses settings at all.
    - The instance is named `cloud_[pluginId]`
- As a general note for all plugins, including built-in, all plugins can be marked `IsDebuggable`, which allows [`PluginDebugService`](https://create.roblox.com/docs/reference/engine/classes/PluginDebugService) to accept the plugin as a child and allows the plugin to be saved and reloaded. HOWEVER.. there are nuances to this when it comes to the functionality with different plugins.
  - Plugins created via the `PluginManager` are not savable. Studio will report back with "Plugin successfully saved as " ... with no file name attached, and does not actually save anything.
    - Most likely because it wasn't created with a file.
  - Cloud plugins will sort of work, but it will only save the model file on the disk, not the website file. This makes debugging a cloud plugin rather useless. 
  - Any Built-In Plugin can be marked as debuggable at anytime, and can be reloaded after doing this. This is allowed even without internal permissions, but keep in mind that `IsDebuggable` (and built-in plugins themselves) are [`RobloxScriptSecurity`](../Capabilities/5%20-%20RobloxScriptSecurity.md).
  - And of course, Local Plugins that were loaded from the disk will work entirely as intended.
