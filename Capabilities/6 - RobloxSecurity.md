# RobloxSecurity

## Description
Members with this security are intended for VERY strict, non-Lua internal usage only.

## Information
- **Capability:** RobloxEngine
- **Permission Id:** 6

## Notes
> [!CAUTION]
> Even if you find out how to use members under this security, you should **NOT** try to use them.
> These members should only be managed by the engine, as the capability name suggests.
> Using one of them incorrectly can cause some weird issues that are not limited to the corruption of saved/loaded files depending on how much access you have.

- This security is commonly associated with serialization-only properties and backend members.
- Most of the members under this security can only be seen via a Full API Dump.

## Required for Instantiation
- `CSGDictionaryService`
- `FlyweightService`
- `NonReplicatedCSGDictionaryService`
- Possibly some more...
