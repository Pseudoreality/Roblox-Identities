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
- `Player.Character.Name`
- [`Player.DisplayName`](https://create.roblox.com/docs/reference/engine/classes/Player#DisplayName)
- [`Player.HasVerifiedBadge`](https://create.roblox.com/docs/reference/engine/classes/Player#HasVerifiedBadge)
- `Player.Name`
- `Player.name`
- [`Player.UserId`](https://create.roblox.com/docs/reference/engine/classes/Player#UserId)
- `Player.userId`
