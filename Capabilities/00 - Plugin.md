# Plugin

## Description
Members with this security are intended for Plugin and/or non-strict internal usage.

## Information
- **Security Name:** Plugin Security
- **Index:** 0

## Notes
- This security can be thought of as an "Anti-LiveGame" security since almost every identity but [`GameScript`](../Identities/02%20-%20GameScript.md) has access to it.
- `DebuggerManager()` requires this security to be called <u>but</u> the Instance returned requires [`LocalUser`](01%20-%20LocalUser.md) to be accessed.
- [`PluginManager()`](https://create.roblox.com/docs/reference/engine/classes/PluginManager) requires this security to be called.
- [`settings()`](https://create.roblox.com/docs/reference/engine/globals/RobloxGlobals#settings) requires this security to be called.

## Required for Instantiation
- [`File`](https://create.roblox.com/docs/reference/engine/classes/File)
- [`PluginDragEvent`](https://create.roblox.com/docs/reference/engine/classes/PluginDragEvent)
