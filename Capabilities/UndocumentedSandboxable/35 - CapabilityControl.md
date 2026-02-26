# CapabilityControl
> [!IMPORTANT]
> This is an undocumented Sandboxable capability. If/when the capability receives [official documentation](https://create.roblox.com/docs/scripting/capabilities), this file will be removed!

## Description
Access relating to setting Capabilities from a script

## Notes
- A sandboxed script is unable to grant capabilities that it doesn't have.
- If this is attempted, it will error with `The current thread cannot extend 'Capabilities' (lacking capability x)`, with `x` being the first capability in the attempted list that the current thread doesn't have.
  - Nuance, but this exact same error happens when attempting to set the current script's sandboxed instance's `Sandboxed` to `false`. This is because it expects the thread to have all sandboxable capabilities (excludes Engine API Capabilities, like the ones directly in [this folder](..)). Because `Unassigned` isn't an Engine API Capability, it expects the thread to have this capability too, which no sandboxed script is allowed to have.

## Assigned API, as of v710
- [`Instance.Capabilities`](https://create.roblox.com/docs/reference/engine/classes/Instance#Capabilities), [`Instance.Sandboxed`](https://create.roblox.com/docs/reference/engine/classes/Instance#Sandboxed)
