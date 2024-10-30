# PluginSecurity

## Description
Members with this security are intended for Plugin and/or non-strict internal usage.

## Information
- **Capability:** Plugin
- **Permission Id:** 1

## Notes
- This security can be thought of as an "Anti-LiveGame" security since almost every identity but [`GameScript`](../Identities/02%20-%20GameScript.md) has access to it.
- [`settings()`](https://create.roblox.com/docs/reference/engine/globals/RobloxGlobals#settings) requires this security to be called.

## Required for Instantiation
- [`NetworkClient`](https://create.roblox.com/docs/reference/engine/classes/NetworkClient)
- [`File`](https://create.roblox.com/docs/reference/engine/classes/File)
- [`PluginDragEvent`](https://create.roblox.com/docs/reference/engine/classes/PluginDragEvent)
- [`NetworkServer`](https://create.roblox.com/docs/reference/engine/classes/NetworkServer)
