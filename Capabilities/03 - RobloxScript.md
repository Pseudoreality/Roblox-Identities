# RobloxScript
<!-- need to look more into RobloxScript related actions because there's a few and i'm def missing some -->

## Description
Members with this security are intended for strict internal usage.

## Information
- **Security Name:** Roblox Script Security
- **Index:** 3

## Notes
> [!WARNING]
> Assuming you are someone that has Internal Permissions, either legitimately or illegitimately, you should treat members under this security with caution if you have no idea what you're doing.
> Some of these members are harmless, but many are landmines that activate certain actions regarding your account / your device.

- By default, threads with this security are restricted from using `loadstring()` by default, regardless of `ServerScriptService.LoadStringEnabled`
  - This restriction can be removed by setting `FFlagDisableCorescriptLoadstring` to `false`
- Certain `ModuleScripts`, like the ones created by various DataModelPatches, are locked only to threads with this security.
  - However, interestingly enough, `ModuleScripts` created through other means are locked only to threads that __don't__ have this security.
  - Attemping to require a `ModuleScript` without these conditions being met causes `require` to throw an error.