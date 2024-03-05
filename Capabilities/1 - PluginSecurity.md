# PluginSecurity

## Description
Members with this security are intended for Plugin and/or non-strict internal usage.

## Information
- **Capability:** Plugin
- **Permission Id:** 1

## Notes
- This security can be thought of as an "Anti-GameScript" security since every identity but `GameScript` has access to it.

- A few instances require the thread to possess this capability in order to be instantiated via `Instance.new`.
  - [`NetworkClient`](https://create.roblox.com/docs/reference/engine/classes/NetworkClient)
  - [`File`](https://create.roblox.com/docs/reference/engine/classes/File)
  - [`PluginDragEvent`](https://create.roblox.com/docs/reference/engine/classes/PluginDragEvent)
  - [`NetworkServer`](https://create.roblox.com/docs/reference/engine/classes/NetworkServer)
