This is my personal documentation from my time messing with Roblox's identities and security tags.
I decided to post it on Github since a message I've been updating on a private Discord channel is getting too long and I don't feel like buying Nitro, plus Github's Markdown is much better lol


For anyone that doesn't know what Roblox identities are, I can sorta go over them here.
Every script on Roblox is basically given a level of access. This level of access is called an identity. They exist to keep malicious actors from running sensitive Roblox APIs that you may have seen locked behind, for example, RobloxScriptSecurity when you looking up what that *one* function does at 3 in the morning.
An example can be `CoreGui.TakeScreenshot()`. You wouldn't want some random game to run this whenever they wanted, right? That's where security tags come in.

Security tags are applied to an API member Roblox deems to be sensitive or otherwise something only they should be messing with.
Using `CoreGui.TakeScreenshot()` as a example still, it's security tag is RobloxScriptSecurity, which significantly limits it's access from before.
Only anything that explicitly has access to RobloxScriptSecurity can use `CoreGui.TakeScreenshot()` now, which is good since no random game can just up and take screenshots whenever they wish.
Functions, Events, and Callbacks have a singular security tag, however Properties can have a Read and Write security, so do keep that in mind.

Wrapping it up, you can view a script's identity by calling the `printidentity()` function, however for checking a script's permissions, you can either refer to what is listed further down or you can run the lua script provided in this repository.

Anyway, I hope I can list these as accurately as possible. Please keep in mind that I obviously won't know everything since I am not a Roblox employee, just enough to where I found it best to move it to Github.
Also I lost my mind immediately after starting this list, wondering why Roblox made half of these to behind with, do forgive me.
If something isn't accurate, or there's something I could word much better. Please say so, free cookies if you do because I can't write for shit. :pray:

## Security Tags

#### Current Tags
* None
  - Number: 0
  - Notes: I honestly forgot it was a thing, but it basically says that everything can use this member, go nuts. :champagne::partying_face:
* PluginSecurity
  - Number: 1
  - Notes: This member is deemed too dangerous/useless for GameScripts to use
    - Most members under this are strictly intended for Plugin use<sub>(duhhh)</sub>.
* LocalUserSecurity
  - Number: 3
  - Notes: This member is too dangerous to be used by even Plugins, but end users can use it in the CommandBar lol.
    - You need this permission to access the DebuggerManager[^debuggerManagerCommandBarOnly]<sub>(silly, I know!)</sub>.
* WritePlayerSecurity
  - Number: 4
  - Notes: Only accessible for internal usage when relating to Player members.
     - ...Why does no member says it explicitly has it?
     - But if you've tried to change the name of the `Player.Character` you've encountered it.
     - It's only purpose in life is to restrict it's write access for strictly internal usage.
     - Members Used Since Roblox Doesn't Say: `Player.Character.Name`, `Player.DisplayName`, `Player.Name`, `Player.HasVerifiedBadge`, `Player.UserId`
* RobloxScriptSecurity
  - Number: 5
  - Notes: This member is too dangerous (or too useless) to be used by the end user in any way.
    - Have fun using that one really obscure function that you probably needed, because it's most likely locked behind this for no good reason. :sunglasses:
* RobloxSecurity
  - Number: 6
  - Notes: This member is intended for strictly internal usage only.
    - The overall strictest security on the list.
    - You will see this security commonly on serialization-only properties and backend functions, events, and callbacks.
    - Only like, 3 members with this are exposed to the regular API dump, but you can get the entire list of members with the Full API Dump.
    - The official Roblox docs say CoreScripts can use this, but they're lying because I haven't been able get CoreScripts to access these members.
* NotAccessibleSecurity
  - Number **(sorta speculation)**: Let's just say 7, even though it says ScriptWriteRestricted in error messages.
  - Notes: This member is not meant to be changed by anything during runtime. 
    - You might be able to change it through the properties window.
    - Basically `NotScriptable` but for write access only and not the entire member.
#### Other Tags
* security1
  - Number **(speculation)**: 1
  - Notes **(speculation)**: Doesn't exist anymore.
    - Probably the old name for PluginSecurity.
* RobloxPlaceSecurity
  - Number: 2
  - Notes **(speculation)**: Doesn't exist anymore.
    - As far as I know, it was used for experimental members.
    - Any member that had it when this was deleted was either changed to LocalUserSecurity or RobloxScriptSecurity.
  
## Identities

* Anonymous
  - Number: 0
  - Permissions: Contextual
  - InstancesUsed: Contextual
  - Notes: It's quite literally an anonymous identity, it's a bit shy ☹
    - There's no set permissions for it, since it could be literally anything.
    - Something to do with the explorer and properties windows actually uses this in the background with all permissions but WritePlayerSecurity.
    - You can test this by trying to change `Player.Name` from properties, it should output some error along the lines of `"The current identity (0) did blah blah blah (lacking permission 4)"`
* LocalGui
  - Number: 1
  - Permissions:
    - PluginSecurity (1)
    - LocalUserSecurity (3)
  - InstancesUsed: N/A
  - Notes: LocalGui
    - Also known as `expressionEval` because that's the name of the script that uses this identity.
    - Can actually be used by developers weirdly enough.
      - Example: Write `printidentity()` in a property that evaluates expressions, such as `BasePart.Size`. It should output `Current identity is 1`.
    - Has no real reason to exist since it's pretty much a copy of CommandBar, but sure Roblox.
* GameScript
  - Number: 2
  - Permissions: N/A
  - InstancesUsed:
    - [`Script`](https://create.roblox.com/docs/reference/engine/classes/Script)
    - [`LocalScript`](https://create.roblox.com/docs/reference/engine/classes/LocalScript)
  - Notes: Standard developer script
    - Will be the lifeblood of *any* Roblox game.
      - If you can get any other identity to run in a live game though and ***after reporting it to Roblox AND after they've patched it***, please tell me because that would be the most hilarious thing to me.
    - The only identity a developer can use in live games.
    - Elaborating on InstancesUsed, this assumes they **are not** published/saved as a cloud/user plugin.
* ElevatedGameScript
  - Number: 3
  - Permissions:
    - PluginSecurity (1)
    - LocalUserSecurity (3)
    - RobloxScriptSecurity (5)
  - InstancesUsed:
    - [`CoreScript`](https://create.roblox.com/docs/reference/engine/classes/CoreScript)
  - Notes: Special script used to run Lua scripts made by Roblox in live games.
    - As mentioned on Roblox's docs, most[^appDisclaimer] of their source code is available in `%localappdata%\Roblox\Versions\VERSION\ExtraContent\scripts\CoreScripts` on Windows.
    - Code is *actually* loaded from `%localappdata%\Roblox\Versions\VERSION\ExtraContent\models\DataModelPatch\DataModelPatch.rbxm`
      - ***DO NOT EDIT THIS MODEL FILE! IT'S SIGNED AND WILL BRICK YOUR STUDIO IF YOU DON'T KNOW WHAT YOU'RE DOING!***
        - This was learned from personal experience, at least back the model up first so you don't have to reinstall Studio so you don't have to suffer the same fate. :pray:
* CommandBar
  - Number: 4
  - Permissions:
    - PluginSecurity (1)
    - LocalUserSecurity (3)
  - InstancesUsed: N/A (kinda, refer to notes)
  - Notes: Utility and debugging tool.
    - Most permissive identity a developer can use.
    - Also used by `File > View > Run Script`.
    - The bar itself can have it's identity changed between GameScript, CommandBar, and ElevatedStudioPlugin on Roblox Internal.
      - Here's an image of what that looks like: ![](https://cdn.discordapp.com/attachments/980231791984144384/1081526722517811210/image.png)
    - Elaborating on InstancesUsed, it's source code (wack as hell, I know) can be be read in two different ways.
      - `TemporaryScriptService.CommandLine`, though `TemporaryScriptService` itself is locked behind RobloxSecurity.
      - `ScriptEditorService.CommandBar`, and call `ScriptDocument.GetText()`
        - Yes, this means any Plugin is capable of reading exactly what you're typing in the CommandBar
* StudioPlugin
  - Number: 5

## Footnotes
[^debuggerManagerCommandBarOnly]: [`DebuggerManager`](https://create.roblox.com/docs/reference/engine/classes/DebuggerManager#:~:text=It%20can%20be%20retrieved%20via%20the%20DebuggerManager()%20function%2C%20but%20only%20from%20the%20command%20bar.)
[^appDisclaimer]: The source code of CoreScripts on the Roblox Player or Windows App is not provided.
