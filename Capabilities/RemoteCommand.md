# RemoteCommand

## Description
Members with this capability are only intended to be used from a Remote Command. It is granted to [`GameScript`](../Identities/02%20-%20GameScript.md) when executed by `RemoteCommandService.ExecuteCommand`, `RemoteCommandService.ExecuteCommandAsync`, and `ExecutedRemoteCommand.RunMoreCode`.

## Notes
- Added 08/26/25
- Even if an identity were forcibly given this capability, members with it will still require that the code be ran in the intended environment, an `ExecutedRemoteCommand`.
	- If access of these members outside of an `ExecutedRemoteCommand` is attempted, the script will error with `"x can only be called from within an executed command"`.

## Required for Members
- `RemoteCommandService.GetExecutingPlayer`
- `RemoteCommandService.GetReceivedUpdateSignal`
- `RemoteCommandService.GetStoppingSignal`
- `RemoteCommandService.SendUpdate`
- `UniqueIdLookupService.GetOrCreateUniqueIdRemoteCommand`
