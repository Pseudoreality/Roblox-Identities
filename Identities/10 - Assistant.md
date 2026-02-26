# Assistant (Identity)
<!-- get ready to deprecate this when it's killed from the engine, SteamingService was deleted v710 so use that for reference -->

> [!IMPORTANT]
> This identity is obsolete and isn't used by anything in the engine anymore. This will be moved to a deprecated folder when it's removed from the engine.

## Description
<!--Used by the AI Assistant when it runs code.-->
#### Obsolete Identity, the AI Assistant runs at [`CommandBar`](04%20-%20CommandBar.md) now.

## Information
- **Accessible Capabilities:**
    - [`Assistant`](../Capabilities/62%20-%20Assistant.md)
    - [`Plugin`](../Capabilities/00%20-%20Plugin.md)
    - [`LocalUser`](../Capabilities/01%20-%20LocalUser.md)
- **Identity:** 10
- **Related Instances:** N/A

<!--## Notes -->
<!--* Specifically, this identity is used by code bound to `StreamingService` and executed though `StreamingService.RunSandboxedCode`. -->
<!--* For every snippet of code binded to `StreamingService`, the engine creates a disabled, non-Archivable `Script` under `CoreGui.Assistant` named "RunCode" -->
<!--  * The `Source` of this script can be changed and rerunning code through the Assistant will use the new code. -->