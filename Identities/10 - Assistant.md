# Assistant (Identity)

## Description
Used by the AI Assistant when it runs code.

## Information
- **Accessible Capabilities:**
	- [`Plugin`](../Capabilities/00%20-%20Plugin.md)
	- [`LocalUser`](../Capabilities/01%20-%20LocalUser.md)
	- [`PluginOrOpenCloud`](../Capabilities/61%20-%20PluginOrOpenCloud.md)
	- [`Assistant`](../Capabilities/62%20-%20Assistant.md)
- **Identity:** 10
- **Related Instances:** N/A

## Notes
* Specifically, this identity is used by code bound to the `AssistantBridge`, a Plugin Component.
	1. Code is passed to `AssistantBridge:BindCodeAsync(string): number`, which returns an identifier.
	2. Then the identifier is passed to `AssistantBridge:RunBoundCodeAsync(number): ...any`. This function returns whatever the code returns, or rethrows an error to the calling thread if the code errors.
	* `AssistantBridge:SetUseElevatedAssistantAsync(boolean)` is used to set the identity of bound code to either `Assistant` or [`ElevatedStudioPlugin`](06%20-%20ElevatedStudioPlugin.md). Calling `SetUseElevatedAssistantAsync` with true will silently fail if the client doesn't have Internal Permission.
		* If the client has Internal Permission, then Assistant will expose this as a setting  **Assistant** > **...** > **Internal (Features)** > **Script Identity**.
			1. The Assistant plugin will use `AssistantApplication`, another Plugin Component, to save and load Assistant Settings.
			2. For **Script Identity** specifically, it calls `AssistantApplication:SetUserSettingsAsync(string, any)` with `"UseElevatedCapabilities"` and a boolean. This saves the setting to `%localappdata%\Roblox\AssistantSettings\{authenticatedUserId}.json`.
			3. When the Assistant plugin (re)loads, it will read from this file by `AssistantApplication:GetUserSettingsAsync(string): any` with `"UseElevatedCapabilities"`.
			4. Using the result from above, it will call `SetUseElevatedAssistantAsync`.