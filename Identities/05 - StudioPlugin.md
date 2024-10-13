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
    - The settings file for all local plugins is located at `%localappdata%\Roblox\{loggedInUserId}\InstalledPlugins\0\settings.json`. This file is also shared wuth BuiltInPlugins.
    - Can be marked as a "Debuggable Plugin," allowing it to be parented under [`PluginDebugService`](https://create.roblox.com/docs/reference/engine/classes/PluginDebugService)
    - The instance is named `user_[fileName].[fileExtension]`
  - Cloud
    - Is also loaded on the disk, but in a more complicated way.
      - Studio will download the plugin from the Roblox website first, or via `StudioService.TryInstallPlugin()` if installed through the toolbox.
      - The plugin model is then placed at `%localappdata%\Roblox\{loggedInUserId}\InstalledPlugins\{pluginId}\{pluginVersionId}\Plugin.rbxm`
        - The plugin's settings file will be in the same folder, if the plugin uses settings at all.
    - This kind of plugin cannot be marked "debuggable," unlike local plugins.
    - The instance is named `cloud_[pluginId]`
