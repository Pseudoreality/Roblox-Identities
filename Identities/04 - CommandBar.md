# CommandBar

## Description
Used for the Command Bar, a debugging tool for developers. `CommandBar` is also used for the `Model > Run Script` on the old Studio UI or `Window > Script > Run Script` on the New Gen Studio UI.

## Information
- **Accessible Capabilities:**
  - [`Plugin`](../Capabilities/00%20-%20Plugin.md)
  - [`LocalUser`](../Capabilities/01%20-%20LocalUser.md)
- **Identity:** 4
- **Related Instances:**
  - [`ScriptDocument`](https://create.roblox.com/docs/reference/engine/classes/ScriptDocument)
    - Due to [`ScriptDocument.IsCommandBar`](https://create.roblox.com/docs/reference/engine/classes/ScriptDocument#IsCommandBar)

## Notes
- This is the most permissive identity a developer may use on Non-Internal Studio.
- On the topic of the Command Bar itself, because of `ScriptDocument`s, the Command Bar is represented by one. This means that any Plugin is capable of reading anything written to the Command Bar.
- On Internal Studio, the Command Bar may also have its identity changed to either [`GameScript`](02%20-%20GameScript.md), `CommandBar`, or [`ElevatedStudioPlugin`](06%20-%20ElevatedStudioPlugin.md) as showed below. ![](https://i.imgur.com/e2KqirW.png)
- [`debug.dumpcodesize()`](https://create.roblox.com/docs/reference/engine/libraries/debug#dumpcodesize), `debug.dumpheap()`, and `debug.dumprefs()` strictly require the calling thread to be `CommandBar` to be called.
