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
<!-- need to verify -->
- Something with the Explorer and Properties windows uses `Anonymous` when changing properties, it's capabilities seem to be all EXCEPT [`WritePlayer`](../Capabilities/02%20-%20WritePlayer.md).
  - If using an older client (< v600?), this can be tested by attempting to change any of the Player members. This will result in an error that reads similarly to `The current identity (0) cannot X 'Y' (lacking permission 4)`.
<!-- need to verify -->
- Something that executes the factory of all classes in the engine uses `Anonymous`, its capabilities are all EXCEPT [`WritePlayer`](../Capabilities/02%20-%20WritePlayer.md) and [`RobloxScript`](../Capabilities/03%20-%20RobloxScript.md).
  - This can be seen within log files, as it fails to create `ParabolaAdornment` and `Player`.
- If the engine does not grant it permissions, or the identity was granted in a way that the engine unintended, it will have no permissions.
