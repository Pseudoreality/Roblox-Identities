# GameScript

## Description
Used by a few different contexts:
- Scripts that are authored by a developer with the intent of it being published with a game:
	- [`Script`](https://create.roblox.com/docs/reference/engine/classes/Script)s that have their [`RunContext`](https://create.roblox.com/docs/reference/engine/enums/RunContext) set to `Server` or `Client` and parented to the [`DataModel`](https://create.roblox.com/docs/reference/engine/classes/DataModel)
	- [`Script`](https://create.roblox.com/docs/reference/engine/classes/Script)s with a `Legacy` [`RunContext`](https://create.roblox.com/docs/reference/engine/enums/RunContext) that are descendants of any of these Instances:
		- [`Backpack`](https://create.roblox.com/docs/reference/engine/classes/Backpack), if it is parented to a [`Player`](https://create.roblox.com/docs/reference/engine/classes/Player)
		- [`PlayerGui`](https://create.roblox.com/docs/reference/engine/classes/PlayerGui)
		- [`ServerScriptService`](https://create.roblox.com/docs/reference/engine/classes/ServerScriptService)
		- [`Workspace`](https://create.roblox.com/docs/reference/engine/classes/Workspace)
	- [`LocalScript`](https://create.roblox.com/docs/reference/engine/classes/LocalScript)s that are descendants of any of these Instances:
		- [`Backpack`](https://create.roblox.com/docs/reference/engine/classes/Backpack), if it is parented to the [`LocalPlayer`](https://create.roblox.com/docs/reference/engine/classes/Players#LocalPlayer).
		- [`Player.Character`](https://create.roblox.com/docs/reference/engine/classes/Player#Character), if it is the [`LocalPlayer`](https://create.roblox.com/docs/reference/engine/classes/Players#LocalPlayer)'s Character.
		- [`PlayerGui`](https://create.roblox.com/docs/reference/engine/classes/PlayerGui), if it is parented to the [`LocalPlayer`](https://create.roblox.com/docs/reference/engine/classes/Players#LocalPlayer).
		- [`PlayerScripts`](https://create.roblox.com/docs/reference/engine/classes/PlayerScripts), if it is parented to the [`LocalPlayer`](https://create.roblox.com/docs/reference/engine/classes/Players#LocalPlayer).
		- `Preloaded` <!-- need to look more into this service, so far it just acts like ReplicatedFirst, with the exception that it runs scripts before ReplicatedFirst even gets the chance. doesn't serialize to the game though -->
		- [`ReplicatedFirst`](https://create.roblox.com/docs/reference/engine/classes/ReplicatedFirst)
- Commands passed to `LogService:ExecuteScript()` on the client, assuming the client has manage permissions to the current game.
	- Since the Developer Console's server command bar uses this function, it also runs with `GameScript`.
- `ExecutedRemoteCommand`s issued by the Roblox Studio client.
- Internal Command Bar, if the `CommandBarPermissionDropdown` has `GameScript` selected.

## Information
- **Accessible Capabilities:**
	- [`InternalTest`](../Capabilities/60%20-%20InternalTest.md) (If `FFlagDebugLocalPluginsElevatedForInternal` is `true` and Internal Permission is enabled)
	- [`RemoteCommand`](../Capabilities/59%20-%20RemoteCommand.md) (If executed via `RemoteCommandService` or `ExecutedRemoteCommand:RunMoreCode()`)
- **Identity:** 2
- **Related Instances:**
	- [`Script`](https://create.roblox.com/docs/reference/engine/classes/Script)
	- [`LocalScript`](https://create.roblox.com/docs/reference/engine/classes/LocalScript)
	- `RemoteCommandService`
	- `ExecutedRemoteCommand`

## Notes
- This should be the only identity the standard game developer can execute within a live game. If any other is found, it should be reported as an exploit and potential security risk.
- In regards to Related Instances, this assumes that the [`Script`](https://create.roblox.com/docs/reference/engine/classes/Script)s and [`LocalScript`](https://create.roblox.com/docs/reference/engine/classes/LocalScript)s are not published/saved as a cloud/builtin/user plugin.