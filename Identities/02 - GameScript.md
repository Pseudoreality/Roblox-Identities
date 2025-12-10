# GameScript

## Description
Used for scripts that are authored by a developer with the intent of it being published with a game. It's also used by `ExecutedRemoteCommand`s issued by the Roblox Studio client.

## Information
- **Accessible Capabilities:**
	- [`RemoteCommand`](../Capabilities/59%20-%20RemoteCommand.md) (If executed via `RemoteCommandService`)
- **Identity:** 2
- **Related Instances:**
	- [`Script`](https://create.roblox.com/docs/reference/engine/classes/Script)
	- [`LocalScript`](https://create.roblox.com/docs/reference/engine/classes/LocalScript)
  - `RemoteCommandService`
  - `ExecutedRemoteCommand`

## Notes
- This should be the only identity the standard game developer can execute within a live game. If any other is found, it should be reported as an exploit and potential security risk.
- Code passed to `LogService:ExecuteScript()` will use this identity, assuming the client that calls `LogService:ExecuteScript()` has manage permissions to the current game.
	- The Developer Console uses `LogService:ExecuteScript()`, meaning the server command bar on it also runs as a `GameScript`
- In regards to Related Instances, this assumes that the `Script`s and `LocalScript`s are not published/saved as a cloud/builtin/user plugin.
