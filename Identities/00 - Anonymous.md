# Anonymous

> [!IMPORTANT]
> Speculation

## Description
Used for threads that the engine wishes to keep anonymous.

## Information
- **Accessible Capabilities:** Contextual
- **Identity:** <u>Displays</u> as 0
- **Related Instances:** Contextual

## Notes
<!-- can't get more info about this right now, but the capability bitmask for the properties windows shows with all sandboxed caps, an unknown cap 55, and Restricted??? -->
<!-- it's also not the only thread in the engine to use this bitmask, so i really don't know what to make of it right now... -->
<!-- i don't even know if it's anonymous, really need to come back to this later.. -->
- ~~Something with the Explorer and Properties windows uses `Anonymous` when changing properties, it's capabilities seem to be all EXCEPT [`WritePlayer`](../Capabilities/02%20-%20WritePlayer.md).~~-
  - ~~If using an older client (< v600?), this can be tested by attempting to change any of the Player members. This will result in an error that reads similarly to `The current identity (0) cannot X 'Y' (lacking permission 4)`.~~
- Something that executes the factory of all classes in the engine possibly uses `Anonymous`. However it has zero capabilities, even missing sandboxable ones.
  - This can be seen within log files, as it fails to create `ParabolaAdornment` and [`Player`](https://create.roblox.com/docs/reference/engine/classes/Player).
- If the engine does not grant it permissions, or the identity was granted in a way that the engine unintended, it will have no permissions.