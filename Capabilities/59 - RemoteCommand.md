# RemoteCommand

## Description
Members with this capability are only intended to be used from a Remote Command. It is granted to [`GameScript`](../Identities/02%20-%20GameScript.md) when executed by `RemoteCommandService.ExecuteCommand`, `RemoteCommandService.ExecuteCommandAsync`, and `ExecutedRemoteCommand.RunMoreCode`.

## Information
- **Index:** 59

## Notes
- Added 08/26/25
- Even if an identity were forcibly given this capability, members with it will still require that the code be ran in the intended environment, an `ExecutedRemoteCommand`.
	- If access of these members outside of an `ExecutedRemoteCommand` is attempted, the script will error with `"x can only be called from within an executed command"`.

## Assigned API, as of v716
* [`RemoteCommandService`](https://create.roblox.com/docs/reference/engine/classes/RemoteCommandService) Members:
	* [`RemoteCommandService.GetExecutingPlayer`](https://create.roblox.com/docs/reference/engine/classes/RemoteCommandService#GetExecutingPlayer)
	* [`RemoteCommandService.GetReceivedUpdateSignal`](https://create.roblox.com/docs/reference/engine/classes/RemoteCommandService#GetReceivedUpdateSignal)
	* [`RemoteCommandService.GetStoppingSignal`](https://create.roblox.com/docs/reference/engine/classes/RemoteCommandService#GetStoppingSignal)
	* [`RemoteCommandService.SendUpdate`](https://create.roblox.com/docs/reference/engine/classes/RemoteCommandService#SendUpdate)
* [`UniqueIdLookupService`](https://create.roblox.com/docs/reference/engine/classes/UniqueIdLookupService) Members:
	* [`UniqueIdLookupService.GetOrCreateUniqueIdRemoteCommand`](https://create.roblox.com/docs/reference/engine/classes/UniqueIdLookupService#GetOrCreateUniqueIdRemoteCommand)
