# RemoteCommand

> [!IMPORTANT]
> Limited Information and Speculation

## Description

## Notes
- Added 08/26/25
	- As of this date, no identities have this capability.
- So far, all of the Members below will throw an error, even if you force an identity to have this capability.
	- Given the error: `"x can only be called from within an executed command"`, it's reasonable to guess they can only be used from the code passed to `RemoteCommandService.ExecuteCommand`, `RemoteCommandService.ExecuteCommandAsync`, and `ExecutedRemoteCommand.RunMoreCode`.
		- This is speculation until the feature is further implemented on RCCService.

## Required for Members
- `RemoteCommandService.GetExecutingPlayer`
- `RemoteCommandService.GetReceivedUpdateSignal`
- `RemoteCommandService.GetStoppingSignal`
- `RemoteCommandService.SendUpdate`
- `UniqueIdLookupService.GetOrCreateUniqueIdRemoteCommand`
