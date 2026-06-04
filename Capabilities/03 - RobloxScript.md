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

- Threads with this security are restricted from using `loadstring()`, regardless of `ServerScriptService.LoadStringEnabled`.
- The presence or absence of the security dictates what `ModuleScript`s the thread is allowed to use.
  - For `ModuleScript`s created by DataModelPatches, such as those found in `CoreGui` and `CorePackages`, and BuiltInPlugins, the thread <ins>must have</ins> this security.
  - For `ModuleScript`s from most other sources, such as those inserted by developers, the thread <ins>must not have</ins> it.
  - If either condition is not met, `require` throws an error.
