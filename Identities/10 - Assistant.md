# Assistant (Identity)

## Description
Used by the AI Assistant when it runs code.
<!--are they going to kill this identity? LOL-->
If `FFlagAssistantAtCommandBarSecurity` is `true`, the code will run with [`CommandBar`](04%20-%20CommandBar.md) instead.

## Information
- **Accessible Capabilities:**
	- [`Assistant`](../Capabilities/62%20-%20Assistant.md)
	- [`Plugin`](../Capabilities/00%20-%20Plugin.md)
	- [`LocalUser`](../Capabilities/01%20-%20LocalUser.md)
- **Identity:** 10
- **Related Instances:** [`Script`](https://create.roblox.com/docs/reference/engine/classes/Script)

## Notes
* Specifically, this identity is used by code bound to `StreamingService` and executed though `StreamingService.RunSandboxedCode`.
* For every snippet of code binded to `StreamingService`, the engine creates a disabled, non-Archivable `Script` under `CoreGui.Assistant` named "RunCode"
	* The `Source` of this script can be changed and rerunning code through the Assistant will use the new code.
