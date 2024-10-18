# CommandBar

## Description
Used for the Command Bar, a debugging tool for developers. `CommandBar` is also used for the "Run Script" button found in the Model tab on Roblox Studio.

## Information
- **Accessible Capabilities:**
  - [`PluginSecurity`](../Capabilities/1%20-%20PluginSecurity.md)
  - [`LocalUserSecurity`](../Capabilities/3%20-%20LocalUserSecurity.md)
- **Identity:** 4
- **Related Instances:**
  - [`ScriptDocument`](https://create.roblox.com/docs/reference/engine/classes/ScriptDocument)
    - Due to [`ScriptDocument.IsCommandBar`](https://create.roblox.com/docs/reference/engine/classes/ScriptDocument#IsCommandBar)

## Notes
- This is the most permissive identity a developer may use on Non-Internal Studio
- On the topic of the Command Bar itself, because of `ScriptDocument`s, the Command Bar is represented by one. This means that any Plugin is capable of reading anything written to the Command Bar.
- On Internal Studio, the Command Bar may also have its identity changed to either [`GameScript`](02%20-%20GameScript.md), `CommandBar`, or [`ElevatedStudioPlugin`](06%20-%20ElevatedStudioPlugin.md) as showed below. ![](https://i.imgur.com/QPxJvd3.png)
