# Intro
This is my personal documentation on Roblox thread identities and their capabilities. It also covers where the engine uses the identity when running code, along with any other related details. If there is ever an event where an identity or capability is removed/replaced in the engine, then they should be placed in their dedicated Deprecated folder.

If you want easy ways to test a thread's identity and capabilities:
- [`printidentity()`](https://create.roblox.com/docs/reference/engine/globals/RobloxGlobals#printidentity) will output the identity.
- [This script](CheckCapabilities.luau) will probe specific API to print the thread's capabilities.

Keep in mind that depending on the client and version used, identities and their capabilities can be extremely different. Because of that, if anything here needs to be corrected and you want to open an issue/pull request, please use the most up-to-date version of Roblox available to verify information, preferable on production.

> [!WARNING]
> This does not cover any of the [Script Capabilities](https://create.roblox.com/docs/scripting/capabilities) that can be sandboxed by developers, as they have their own official documentation page. I will only add the sandboxable capabilities here if the official documentation isn't good enough or it becomes outdated.

# Explanation of Identities and Capabilities
Every thread is assigned an identity and a set of capabilities, which dictates what it can access. This system exists to prevent certain contexts from accessing things that could be considered sensitive or dangerous. Developers are able to sandbox their own scripts and take away [Script Capabilities](https://create.roblox.com/docs/scripting/capabilities) to limit threads even further to prevent misuse.

Properties are assigned a read and write security, as well as read and write capability lists. Most of the time, the read and write values will share the same value. Functions, Events, and Callbacks are given only one security and one capability list.
For all members, it is possible for them to not have their capability lists provided to indicate that it doesn't need any capabilities to use it. However, all securities will be present with [`None`](Capabilities/03%20-%20RobloxScript.md) being use to indicate that all threads are allowed to access it.

### A few examples of locked Engine APIs
* `CoreGui.TakeScreenshot` forces the client to take a screenshot and save the result to the disk. Obviously, you wouldn't want any game to be able to do this, which is why Roblox assigned [`RobloxScript`](Capabilities/03%20-%20RobloxScript.md) to it. This locks it to trusted contexts, such as `CoreScript`s, whose threads run as [`ElevatedGameScript`](Identities/03%20-%20ElevatedGameScript.md).

* [`HttpService.HttpEnabled`](https://create.roblox.com/docs/reference/engine/classes/HttpService#HttpEnabled), which allows threads to use [`HttpService`](https://create.roblox.com/docs/reference/engine/classes/HttpService) methods when true. In the event of backdoors and viruses somehow being added to one's game, or a malicious plugin being installed, [`LocalUser`](Capabilities/01%20-%20LocalUser.md) as the write security prevents additional damage from being done, while allowing certain identities such as the [`CommandBar`](Identities/04%20-%20CommandBar.md) for developer convenience.