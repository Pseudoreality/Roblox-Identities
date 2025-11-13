# StudioPlugin

## Description
Used for custom add-ons made by developers.

## Information
- **Accessible Capabilities:**
  - [`Plugin`](../Capabilities/00%20-%20Plugin.md)
- **Identity:** 5
- **Related Instances:**
  - [`Plugin`](https://create.roblox.com/docs/reference/engine/classes/Plugin)
  - [`Script`](https://create.roblox.com/docs/reference/engine/classes/Script)
  - [`LocalScript`](https://create.roblox.com/docs/reference/engine/classes/LocalScript)

## Notes
  ### General
  - Each developer Plugin can have three copies of itself running, each within the `Edit`, `PlayClient`, and `PlayServer` DataModels.
  - This identity is allowed to bypass [`HttpService.HttpEnabled`](https://create.roblox.com/docs/reference/engine/classes/HttpService#HttpEnabled) in the Edit DataModel, with some nuance explained in [`Plugin Permissions`](05%20-%20StudioPlugin.md#plugin-permissions).
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
  ### Plugin Permissions
  - Regarding Plugin Permissions. *All* threads that run under `StudioPlugin` are effected by Plugin Permissions unless their Asset Id, which is a part of the identity, is less than 0, which just means it's a local plugin.
    - This does mean that getting `StudioPlugin` through non-legitimate ways will still be affected by Plugin Permissions, since their Asset Id will default to 0.
    - So far, each of these are considered an individual Plugin Permission.
      - Access to requested domains via `HttpService`, each one is its own permission.
        - If it is the first time the plugin has requested for a specific domain, the Http Request will yield infinitely until the user pressed Allow or Deny on the prompt.
        - If Allow is pressed, the request will pass. If Denied, then the function used will error with `HttpService permission denied on domain {url} for plugin {id}.` Future requests, if denied, will repeat the error forever until the user allows it manually via the Plugin Management widget.
      - Access to scripts, or "Script Injection" (does not apply if the plugin isn't a legitimate cloud plugin)
        - If the plugin doesn't have this permission, it will error immediately if it tries to modify an Instance that has *any* kind of [`LuaSourceContainer`](https://create.roblox.com/docs/reference/engine/classes/LuaSourceContainer) instance in it at all, with the error being `Plugin "{PluginName}" was denied script injection permission. The user has been prompted for future attempts.`
        - If the plugin was denied script injection, then future errors will instead say `Plugin "{PluginName}" was denied script injection permission. You can grant this permission in the Plugin Manager.`
  ### `IsDebuggable`
  - As a general note for all Plugin Instances, including built-in, all plugins can be marked `IsDebuggable`, which allows [`PluginDebugService`](https://create.roblox.com/docs/reference/engine/classes/PluginDebugService) to accept the plugin as a child and allows the plugin to be saved and reloaded. HOWEVER.. there are nuances to this when it comes to the functionality with different plugins.
    - Plugins created via the `PluginManager` are not savable. Studio will report back with "Plugin successfully saved as " ... with no file name attached, and does not actually save anything.
      - Most likely because it wasn't created with a file.
    - Cloud plugins will sort of work, but it will only save the model file on the disk, not the website file. This makes debugging a cloud plugin rather useless. 
    - Any Built-In Plugin can be marked as debuggable at anytime, and can be reloaded after doing this. This is allowed even without internal permissions, but keep in mind that `IsDebuggable` (and built-in plugins themselves) are [`RobloxScript`](../Capabilities/03%20-%20RobloxScript.md).
    - And of course, Local Plugins that were loaded from the disk will work entirely as intended.
