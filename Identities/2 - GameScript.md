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
- In regards to Related Instances, this assumes that the `Script`s and `LocalScript`s are not published/saved as a cloud/builtin/user plugin.
