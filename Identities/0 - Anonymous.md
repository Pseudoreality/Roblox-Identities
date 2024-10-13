# Anonymous

## Description
Used for threads that the engine wishes to keep anonymous.

## Information
- **Accessible Capabilities:** Contextual
- **Identity:** <u>Displays</u> as 0
- **Related Instances:** Contextual

## Notes
- Something with the Explorer and Properties windows uses `Anonymous` when changing properties, it's capabilties seem to be all EXCEPT [`WritePlayerSecurity`](../Capabilities/4%20-%20WritePlayerSecurity.md).
  - If using an older client (< v600?), this can be tested by attempting to change any of the Player members. This will result in an error that reads similiarly to `The current identity (0) cannot X 'Y' (lacking permission 4)`.
- Something that executes the factory of all classes in the engine uses `Anonymous`, it's capabilities are all EXCEPT `WritePlayerSecurity` and [`RobloxScriptSecurity`](../Capabililities/5%20-%20RobloxScriptSecurity.md).
  - This can be seen within log files, as it fails to create `ParabolaAdornment` and `Player`.
- If the engine does not grant it permissions, or the identity was granted in an way that the engine unintended (like changing the command bar byte), it will have no permissions.