# TestingGameScript

## Description
Used for internal test places. All [`GameScript`](02%20-%20GameScript.md)s will run at this identity instead.

## Information
- **Accessible Capabilities:**
	- [`InternalTest`](../Capabilities/60%20-%20InternalTest.md)
- **Identity:** 12
- **Related Instances:**
	- [`Script`](https://create.roblox.com/docs/reference/engine/classes/Script)
	- [`LocalScript`](https://create.roblox.com/docs/reference/engine/classes/LocalScript)

## Notes
- Added 04/22/25
- Making every script in a game run at this level can be done by adding its owner's id to `DFStringInternalTestGroupIds`, assuming the game's owner is a group.