# GameScript

## Description
Used for scripts that are authored by a developer with the intent of it being published with a game.

## Information
- **Accessible Capabilities:** None
- **Identity:** 2
- **Related Instances:**
  - [`Script`](https://create.roblox.com/docs/reference/engine/classes/Script)
  - [`LocalScript`](https://create.roblox.com/docs/reference/engine/classes/LocalScript)

## Notes
- This should be the only identity the standard game developer can execute within a live game. If any other is found, it should be reported as an exploit and potential security risk.
- This identity is also applied to [`luau-execution-sessions`](https://devforum.roblox.com/t/beta-open-cloud-engine-api-for-executing-luau/3172185) under the name `TaskScript`.
  - This could be changed to [`StudioPlugin`](5%20-%20StudioPlugin.md) or [`CommandBar`](5%20-%20CommandBar.md) ~~(unlikely) in the future, as [the OP mentions](https://devforum.roblox.com/t/beta-open-cloud-engine-api-for-executing-luau/3172185#:~:text=to%2030%20seconds.-,Script.Source%20is%20not%20accessible%20(we%20know%20how%20important%20this%20is%20to%20testing%20workflows%2C%20so%20we%E2%80%99re%20actively%20working%20on%20a%20fix%20here),-Questions%2C%20Feedback) wanting to allow these sessions to access [`Script.Source`](https://create.roblox.com/docs/reference/engine/classes/Script#Source)~~ [`Script.Source`](https://create.roblox.com/docs/reference/engine/classes/Script#Source) was given a merge capability "PluginOrOpenCloud." This bullet might be removed soon when v645 is released for RCCService so I can test it more.
- In regards to Related Instances, this assumes that the `Script`s and `LocalScript`s are not published/saved as a cloud/builtin/user plugin.
