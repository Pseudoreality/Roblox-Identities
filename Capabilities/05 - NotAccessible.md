# NotAccessible

## Description
Members with this security are used for internal non-Luau usage.
Some members that are given this security are usually only given it to restrict developers from writing to a property at runtime. Specifically for these members, the developer may change them through the Properties/Studio Settings widget.

## Information
- **Security Name:** Not Accessible Security
- **Index:** 5

## Notes
- It should be considered strange if a member recieves this security on both read and write. In these cases, they usually have `NotScriptable` paired with it. Below is a list of said strange members as of v710:
	- `RomarkRbxAnalyticsService`
	- `NetworkSettings.InboundNetworkLossPercent (NotScriptable)`
	- `NetworkSettings.InboundNetworkMaxDelayMs (NotScriptable)`
	- `NetworkSettings.InboundNetworkMinDelayMs (NotScriptable)`
	- `NetworkSettings.NetworkEmulationEnabled (NotScriptable)`
	- `NetworkSettings.OpenCertManagerDialog (NotScriptable)`
    - `NetworkSettings.OutboundNetworkLossPercent (NotScriptable)`
    - `NetworkSettings.OutboundNetworkMaxDelayMs (NotScriptable)`
    - `NetworkSettings.OutboundNetworkMinDelayMs (NotScriptable)`
