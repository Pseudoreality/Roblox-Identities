# WritePlayer

## Description
This security is used to restrict common [`Player`](https://create.roblox.com/docs/reference/engine/classes/Player) members to internal, usually non-Lua usage only.

> [!NOTE]
> As of writing this, this only applies to the **write access** of the members at the bottom.

## Information
- **Security Name:** Write Player Security
- **Index:** 2

## Notes
- [`Player`](https://create.roblox.com/docs/reference/engine/classes/Player) instantiation requires this security
  - This can be substituted with `Players.CreateLocalPlayer()` and `Players.ResetLocalPlayer()` if the identity has [`LocalUser`](01%20-%20LocalUser.md).
- Unfortunately, the official documentation does not show which members have this security. This will be provided in the section below.

## Required for Members
- `Player.Character.Name` (Not required if `FFlagRemoveCharacterNameLock` is `true`: [Release Note](https://create.roblox.com/docs/release-notes/release-notes-733#:~:text=Scripts%20can%20now%20rename%20a%20player%27s%20Character%20model%20at%20any%20point%20in%20its%20lifecycle.%20The%20name%20lock%20that%20previously%20blocked%20renames%20without%20WritePlayer%20is%20no%20longer%20applied.))
- [`Player.DisplayName`](https://create.roblox.com/docs/reference/engine/classes/Player#DisplayName)
- [`Player.HasVerifiedBadge`](https://create.roblox.com/docs/reference/engine/classes/Player#HasVerifiedBadge)
- `Player.Name`
- `Player.name`
- `Player.PlatformName`, which also needs [`RobloxScript`](03%20-%20RobloxScript.md).
- [`Player.UserId`](https://create.roblox.com/docs/reference/engine/classes/Player#UserId)
- `Player.userId`
