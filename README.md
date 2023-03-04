This is some personal documentation from my time messing with Roblox's identities and security tags.
I decided to post it on Github since a message I've been updating on a private Discord channel is getting too long and I don't feel like buying Nitro, plus, Github's Markdown is nicer lol

For anyone that doesn't know what Roblox identities are, I can sorta go over them here.
Every script on Roblox is basically given a level of access. This level of access is called an identity. They exist to keep malicious actors from running sensitive Roblox APIs that you may have seen locked behind, for example, RobloxScriptSecurity when you looking up what that *one* function does at 3 in the morning.
An example can be `CoreGui.TakeScreenshot()`. You wouldn't want some random game to run this whenever they wanted, right? That's where security tags come in.

Security tags are applied to an API member Roblox deems to be sensitive or otherwise something only they should be messing with.
Using `CoreGui.TakeScreenshot()` as a example still, it's security tag is RobloxScriptSecurity, which significantly limits it's access from before.
Only anything that explicitly has access to RobloxScriptSecurity can use `CoreGui.TakeScreenshot()` now, which is good since no random game can just up and take screenshots whenever they wish.
Functions, Events, and Callbacks have a singular security tag, however Properties can have a Read and Write security, so do keep that in mind.

Wrapping it up, you can view a script's identity by calling the `printidentity()` function, however for checking a script's permissions, you can either refer to what I am about to list further down or you can run the lua script provided.

Anyway, I hope I can list these as accurately as possible. Please keep in mind that I obviously won't know everything since I am not a Roblox employee, just enough to where I found it best to move it to Github.
If something isn't accurate, or there's something I could word better. Please say so, free cookies if you do because I can't write for shit. :pray:

## Security Tags

#### Current Tags
* None
  - Number: 0
  - Notes: I honestly forgot it was a thing, but it basically says that everything can use this member, go nuts. :champagne::partying_face:
* PluginSecurity
  - Number: 1
  - Notes: This member is deemed too dangerous/useless for GameScripts to use, but everything else (mostly Plugins, duhhh) is fine.
* LocalUserSecurity
  - Number: 3
  - Notes: More obscure than the past two, but basically says you can use it in the CommandBar but nowhere else.
    - You need this permission to access the DebuggerManager (silly, I know!).
* WritePlayerSecurity
  - Number: 4
  - Notes: ...Why? No member says it explicitly has it. But if you've tried to change the name of the `Player.Character` you've encountered it.
    - Technically nothing can access this security tag, it's only purpose in life is to restrict it's write access for strictly internal usage.
  - Members Used Since Roblox Doesn't Say: `Player.Character.Name`, `Player.DisplayName`, `Player.Name`, `Player.HasVerifiedBadge`, `Player.UserId`
* RobloxScriptSecurity
  - Number: 5
  - Notes: This member is too dangerous (or too useless) to be used by the end user in any way.
    - Have fun using that one really obscure function that you probably needed, because it's most likely locked behind this for no good reason. :sunglasses:
* RobloxSecurity
  - Number: 6
  - Notes: The overall strictest security on this list. This member is intended for strictly internal usage only.
    - You will see this security commonly on serialization-only properties and backend functions, events, and callbacks.
    - Only like, 3 members with this are exposed to the regular API dump, but you can get the entire list of members with the Full API Dump.
    - The official Roblox docs say CoreScripts can use this, but they're lying because I haven't been able get CoreScripts to access these members.
* NotAccessibleSecurity
  - Number **(sorta speculation)**: Let's just say 7, even though it says ScriptWriteRestricted in error messages.
  - Notes: This member is not meant to be changed by anything during runtime. You might be able to change it through the properties window.
    - Basically `NotScriptable` but for write access only and not the entire member.
#### Other Tags
* security1
  - Number **(speculation)**: 1
  - Notes **(speculation)**: Doesn't exist anymore.
    - Probably the old name for PluginSecurity.
* RobloxPlaceSecurity
  - Number: 2
  - Notes **(speculation)**: Doesn't exist anymore.
    - As far as I know, it was used for experimental members. Any member that had it when this was deleted was either changed to LocalUserSecurity or RobloxScriptSecurity.
  
