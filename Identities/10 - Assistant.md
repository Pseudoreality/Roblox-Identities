# Assistant (Identity)

## Description
Used by the AI Assistant when it runs code.

## Information
- **Accessible Capabilities:**
	- [`Assistant`](../Capabilities/Assistant.md)
	- [`PluginSecurity`](../Capabilities/1%20-%20PluginSecurity.md)
	- [`LocalUserSecurity`](../Capabilities/3%20-%20LocalUserSecurity.md)
- **Identity:** 10
- **Related Instances:** [`Script`](https://create.roblox.com/docs/reference/engine/classes/Script)

## Notes
* Specifically, this identity is used by code bound to `StreamingService` and executed though `StreamingService.RunSandboxedCode`.
* For every snippet of code binded to `StreamingService`, the engine creates a disabled, non-Archivable `Script` under `CoreGui.Assistant` named "RunCode"
	* The `Source` of this script can be changed and rerunning code through the Assistant will use the new code.
