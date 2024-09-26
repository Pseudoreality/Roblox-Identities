# Intro
This is my personal documentation on Roblox thread identities and security tags, which are now called security capabilities. This can also contain other information regarding how code under a specific identity is loaded by the engine, among some other little things.
Keep in mind that any of the security capabilities listed within the [`SecurityCapability`](https://create.roblox.com/docs/reference/engine/enums/SecurityCapability) Enum will not be covered currently, but could be covered in the future as Roblox releases Script Sandboxing.

If you want to test anything in this repository, you can see the script's identity by calling `printidentity()` in the script. If you want to see the capabilities, you can refer to this repository or you can run the [Luau script provided](CheckCapabilities.luau).
Of course, depending on how old the client is, identities and their capabilities can be extremely different from other versions of Roblox. So if there comes to be an issue where I made a typo or some information is not correct, please use the most modern version of the client available.

# Explanation of Identities and Capabilities
If you don't exactly know what Identities and Capabilities are, then an explaination is provided here. Every thread on Roblox is assigned an ID, which dictates what the thread is able to access. This system exists to prevent certain scripts from accessing things that can be considered sensitive or only available under specific contexts.
Properties have a Read and Write security (which most of the time, both will be the exact same), while Functions, Events, and Callbacks only have the one security.

A few examples I can provide of Engine APIs being locked down for good reasons with this system:

* `CoreGui.TakeScreenshot` is a very obvious example of a function you don't want everyone to have access to, as it will forcefully take a screenshot. Because of this, Roblox gave this function the [`RobloxScriptSecurity`](Capabilities/5%20-%20RobloxScriptSecurity.md) tag, which locks it from anything that cannot access `RobloxScriptSecurity` but allows things like `CoreScript`s to access it.

* [`HttpService.HttpEnabled`](https://create.roblox.com/docs/reference/engine/classes/HttpService#HttpEnabled) is another kind of sensitive property. Imagine a GameScript/Plugin you inserted into your game happened to be backdoor that serialized all of your game's Instances the second it started and sent it off to a remote server. However, it would be a pain if it was given `RobloxScriptSecurity` because that would lock it away from the command bar. This is most likely why Roblox gave this property [`LocalUserSecurity`](Capabilities/3%20-%20LocalUserSecurity.md) instead since [`GameScript`](Identities/2%20-%20GameScript.md)s and [`StudioPlugin`](Identities/5%20-%20StudioPlugin.md)s cannot use it, but the [`CommandBar`](Identities/3%20-%20CommandBar.md) can.
