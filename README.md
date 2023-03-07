This is my personal documentation from my time messing with Roblox's identities and security tags as well as other miscellaneous information I've discovered about the how their code is loaded with some humor sprinkled in there.
I decided to post it on Github since a message I've been updating on a private Discord channel is getting too long and I don't feel like buying Nitro, plus Github's Markdown is much better lol


For anyone that doesn't know what Roblox identities are, I can sorta go over them here.
Every script on Roblox is basically given a number that says what they're allowed to access. This number is called an identity. They exist to keep malicious actors from running sensitive Roblox APIs that you may have seen locked behind, for example, RobloxScriptSecurity when you looking up what that *one* function does at 3 in the morning.
An example can be `CoreGui.TakeScreenshot()`. You wouldn't want some random game to run this whenever they wanted, right? That's where security tags come in.

Security tags are applied to an API member Roblox deems to be sensitive or otherwise something only they should be messing with.
Using `CoreGui.TakeScreenshot()` as a example still, it's security tag is RobloxScriptSecurity, which significantly limits it's access from before.
Only anything that has access to RobloxScriptSecurity can use `CoreGui.TakeScreenshot()` now, which is good since no random game can just up and take screenshots whenever they wish.
Functions, Events, and Callbacks have a singular security tag, however Properties can have a Read and Write security, so do keep that in mind.

Wrapping it up, you can view a script's identity by calling the `printidentity()` function, however for checking a script's permissions, you can either refer to what is listed further down or you can run [the lua script provided in this repository](https://github.com/Pseudoreality/Roblox-Identities/blob/main/CheckPermissions.lua).

Anyway, I hope I can list these as accurately as possible. Please keep in mind that I obviously won't know everything since I am not a Roblox employee, just enough to where I found it best to move it to Github.

## Disclaimers Before We Start
* I will ***not*** be providing methods for unlocking Roblox Internal or completely changing identities like I did for these tests since I'd rather not have the company kick my door down.
* I can't write for shit, so if you find a typo, or something that isn't accurate, please assist me by telling me. I will give you free cookies for this. 🙏

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
  - Notes: Only accessible for internal usage when relating to write access on Player members.
     - ...Why does no member explicitly say it has this tag?
     - If you've tried to change the name of the `Player.Character` you've encountered it.
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
    - The official Roblox docs say CoreScripts can use this[^robloxSecurityReference], but they're lying because I haven't been able to get CoreScripts to access these members.
      - Here's an image of me trying to call `Player.GetGameSessionID()` from a CoreScript: ![](https://cdn.discordapp.com/attachments/980231791984144384/1081561357813567488/image.png)
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
* UnknownSecurity
  - Number: N/A
  - Notes: Used by `-API` and `-FullAPI` when it doesn't know the security of a member.
  
## Identities

* Anonymous
  - Number: 0
  - Permissions: Contextual
  - InstancesUsed: Contextual
  - Notes: It's quite literally an anonymous thread, it's a bit shy ☹
    - There's no set permissions for it, since it could be literally anything.
    - Something to do with the explorer and properties windows actually uses this in the background with all permissions but WritePlayerSecurity.
      - You can test this by trying to change `Player.Name` from properties, it should output some error along the lines of `"The current identity (0) cannot blah blah blah (lacking permission 4)"`
* LocalGui
  - Number: 1
  - Permissions:
    - PluginSecurity (1)
    - LocalUserSecurity (3)
  - InstancesUsed: N/A
  - Notes: Controls certain actions with the Studio UI, such as the properies window.
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
    - As mentioned on Roblox's docs, *most*[^appDisclaimer] of their source code is available in `%localappdata%\Roblox\Versions\VERSION\ExtraContent\scripts\CoreScripts` on Windows[^coreScriptSourceCode].
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
    - Also used by `File > Model > Run Script`.
    - The bar itself can have it's identity changed between GameScript, CommandBar, and ElevatedStudioPlugin on Roblox Internal.
      - Here's an image of what that looks like: ![](https://cdn.discordapp.com/attachments/980231791984144384/1081526722517811210/image.png)
    - Elaborating on InstancesUsed, it's source code (wack as hell, I know) can be be read in two different ways.
      - `TemporaryScriptService.CommandLine`, though `TemporaryScriptService` itself is locked behind RobloxSecurity.
      - `ScriptEditorService.CommandBar`, and call `ScriptDocument.GetText()`
        - Yes, this means any Plugin is capable of reading exactly what you're typing in the CommandBar
* StudioPlugin
  - Number: 5
  - Permissions:
    - PluginSecurity (1)
  - InstancesUsed:
    - [`Plugin`](https://create.roblox.com/docs/reference/engine/classes/Plugin)
    - [`Script`](https://create.roblox.com/docs/reference/engine/classes/Script)
    - [`LocalScript`](https://create.roblox.com/docs/reference/engine/classes/LocalScript)
  - Notes: Custom add-on to Studio that any developer can use.
    - The people that make these are the coolest people ever and you should thank them.
    - There are two types of StudioPlugins
      - Local
        - Loaded on the disk from `%localappdata%\Roblox\Plugins`
        - Can be parented under `PluginDebugService`
        - Plugin instance is named `user_[fileName].[fileExtension]`
      - Cloud
        - Is also loaded on the disk, but in a more complicated way.
          - Initially downloaded from the Roblox website or via `StudioService.TryInstallPlugin()` first though.
        - Can not be debugged for "fuck you" reason (I can understand why though, since Local plugins exist anyway)
        - Plugin instance is named `cloud_[pluginId]`
    - Can have three copies of itself loaded at a time
      - Edit
      - PlayClient
      - PlayServer
* ElevatedStudioPlugin
  - Number: 6
  - Permissions:
    - PluginSecurity (1)
    - LocalUserSecurity (3)
    - RobloxScriptSecurity (5)
  - InstancesUsed: *Refer to StudioPlugin.*
  - Notes: Built-in "add-on"[^builtInPluginsAreRequired] to Studio
    - They can only be loaded from the disk
    - They are signed, reading official built in plugin source code isn't possible because of this
      - If you have Internal Permissions, the signature check is ignored completely.
    - Surprisingly, can be debugged!
      - Can be done by adding the plugin to a comma seperated FString
        - `FStringDebugCommaSepBuiltInPluginsToDebug`
        - Must be formatted like `[FileName].[FileExtension], [FileName].[FileExtension]`
          - Case-sensitive
    - There are two types
      - Normal<sub>No better name :(</sub>
        - Loaded on the disk from `%localappdata%\Roblox\Versions\VERSION\BuiltInPlugins\Optimized_Embedded_Signature`
          - If the plugin is being debugged, it is loaded from `%localappdata%\Roblox\Versions\VERSION\ExtraContent\BuildInPlugins` instead
        - Plugin instance is named `builtin_[fileName].[fileExtension]`
      - Standalone
        - Loaded on the disk from `%localappdata%\Roblox\Versions\VERSION\BuiltInStandalonePlugins\Optimized_Embedded_Signature`
        <!-- This needs to be verified
          - If the plugin is being debugged, it is loaded from `%localappdata%\Roblox\Versions\VERSION\ExtraContent\BuildInStandalonePlugins` instead
        -->
        - Plugin instance is named `sabuiltin_[fileName].[fileExtension]`
    - Can have four copies of itself loaded at a time
      - Standalone
        - DataModel that runs before everything, even as early as the Home Page
      - Edit
      - PlayClient
      - PlayServer
    - Most of these are open to use by developers, but some require Internal Permissions to use
      - Some examples of internal only plugins include:
        - Developer Inspector
        - Roblox Classic
        - Storybook
        - User Input Playback Tool
    - Some can only be activated via FFlag
      - Some examples include
        - GuiDevEnv
        - Roblox Classic
* COM
  - Number: 7
  - Permissions: All
  - InstancesUsed **(speculation)**: N/A
  - Notes: Unknown use case
    - Used by Roblox script executors, like Synapse, to completely ignore all identity related errors.
      - Some free exploits use identity 6 for some dumbass reason.
    - It can create a Player instance, so I'm happy enough. ![](https://cdn.discordapp.com/attachments/980231791984144384/1081552399501623296/image.png)
* WebService
  - Number: 8
  - Permissions: All
  - InstancesUsed **(speculation)**: I can only assume `LuaWebService` based off of the identity's name, but I'm not positive
  - Notes: Unknown use case
    - Ditto! ![](https://cdn.discordapp.com/attachments/980231791984144384/1081551958260863036/image.png)
* Replicator
  - Number: 9
  - Permissions:
    - WritePlayerSecurity (4)
    - RobloxScriptSecurity (5)
  - InstancesUsed **(speculation)**: N/A
  - Notes **(speculation)**: Most likely something to do with Replication Jobs
    - Tritto! ![](https://cdn.discordapp.com/attachments/980231791984144384/1081551659479613440/image.png)

## Permissions Chart
I wanted to have a bit of fun and use Markdown's tables. This gave me the excuse to!
Plus if you just want to see what everything has access to, you can just look right here.

<!-- I was really desperate for checkmarks. I didn't want the emojis because they wouldn't look nearly as good in my mind. -->
|  | LocalGui (1) | GameScript (2) | ElevatedGameScript (3) | CommandBar (4) | StudioPlugin (5) | ElevatedStudioPlugin (6) | COM (7) | WebService (8) | Replicator (9) |
|:---|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| PluginSecurity (1) | <ul><li>-[x] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[ ] </li></ul> |
| LocalUserSecurity (3) | <ul><li>-[x] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[ ] </li></ul> |
| WritePlayerSecurity (4) | <ul><li>-[ ] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[x] </li></ul> |
| RobloxScriptSecurity (5) | <ul><li>-[ ] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[x] </li></ul> |
| RobloxSecurity (6) | <ul><li>-[ ] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[ ] </li></ul> |
| NotAccessibleSecurity (7) | <ul><li>-[ ] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[ ] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[x] </li></ul> | <ul><li>-[ ] </li></ul> |

## Footnotes
[^robloxSecurityReference]: [`Player.GetGameSessionId()`](https://create.roblox.com/docs/reference/engine/classes/Player#GetGameSessionID:~:text=string-,ROBLOX%20SECURITY,-Returns) (Hover over the ROBLOX SECURITY tag)
[^debuggerManagerCommandBarOnly]: [`DebuggerManager`](https://create.roblox.com/docs/reference/engine/classes/DebuggerManager#:~:text=It%20can%20be%20retrieved%20via%20the%20DebuggerManager()%20function%2C%20but%20only%20from%20the%20command%20bar.)
[^appDisclaimer]: The source code of CoreScripts on the Roblox Player or Windows App is not provided.
[^coreScriptSourceCode]: [`CoreScript`](https://create.roblox.com/docs/reference/engine/classes/CoreScript#:~:text=The%20source%20code%20for%20CoreScripts%20can%20be%20found%20within%20Roblox%27s%20content%20folder.%20In%20Windows%2C%20this%20is%20can%20be%20found%20at%20%25localappdata%25%5CRoblox%5CVersions%5CVERSION%5CExtraContent%5Cscripts%5CCoreScripts)
[^builtInPluginsAreRequired]: Not really an add-on, since you need most of them to make Studio even mostly useable.
