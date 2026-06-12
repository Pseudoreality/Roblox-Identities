# LocalGui

## Description
Used for a few actions within the Studio UI, such as evaluating expressions on certain properties.

## Information
- **Accessible Capabilities:**
	- [`Plugin`](../Capabilities/00%20-%20Plugin.md)
	- [`LocalUser`](../Capabilities/01%20-%20LocalUser.md)
- **Identity:** 1
- **Related Instances:** N/A

## Notes
- Can be used to execute some limited code because of the behavior mentioned in the description.
  - Example: Writing [`printidentity()`](https://create.roblox.com/docs/reference/engine/globals/RobloxGlobals#printidentity) in certain properties ([`BasePart.Size`](https://create.roblox.com/docs/reference/engine/classes/BasePart#Size) for example) and pressing enter will output `Current identity is 1`
  - Writing [`error()`](https://create.roblox.com/docs/reference/engine/globals/LuaGlobals#error) will show that a script running as `LocalGui` is named "expressionEval"
