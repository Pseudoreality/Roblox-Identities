# NotAccessibleSecurity

## Description
Members with this security are intended to only be written to outside of a running game.

> [!NOTE]
> In a similar fashion to [`WritePlayerSecurity`](../4%20-%20WritePlayerSecurity.md), this security is only intended for restricting **write access**.

## Information
- **Capability:** NotAccessible
- **Permission Id (speculation):** 7

## Notes
- Some members under this security may be changed through the properties window.
- An easier way to think of this security is the `NotScriptable` tag, but for write access only.
