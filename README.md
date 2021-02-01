![ec_preview](https://user-images.githubusercontent.com/39247311/90802652-d8d7dd80-e317-11ea-9a3e-25ef15bf92b3.png)
# HF Patch for EmotionCreators
An unofficial patch for Emotion Creators with fan-made English translations and essential mods. It will allow you to load all character cards and scenes and give you countless content creation and gameplay improvements while still keeping the original, uncluttered feel of the game. All content is tested and fixed (or removed) as needed before each update, providing a stable platform for further modding. HF Patch can also repair many common issues, try it if you have issues.

HF Patch does not contain the full game, paid expansions or any other pirated content. You have to buy the game and expansions separately. You can buy it [on DMM](https://dlsoft.dmm.co.jp/detail/illusion_0029/).

The base game (Emotion Creators), and by extension this patch are not suitable for minors. If you are under 18 years old you can not use this patch. The base game and this patch contain only characters of age 18 or higher. The creator of this patch is not responsible for creations of its users and prohibits any unlawful use of this software.

You can support development of HF Patch and many of the included plugins through my Patreon page: https://www.patreon.com/ManlyMarco

## What's included?
HF Patch includes and installs by default:
- All free updates (no need to install any updates manually)
- Fan-made translations and automatic machine translations
- Most commonly used plugins and mods, which allows you to load most character cards and scenes available online
- Fixes for common issues with the game and mods like botched mod installs
- Full uncensor with multiple different models
You can see a full list of what HF Patch contains by checking the `[Components]` section [here](https://github.com/ManlyMarco/KK-HF_Patch/blob/master/patch.iss).
Note that HF Patch does not contain the full game, paid expansions or any other pirated content. The full game needs to be already installed for the patch to work. If you want to use the VR module, also install it before patching!

## Download
Check the [Releases](https://github.com/ManlyMarco/EC-HF_Patch/releases) page for download links. The magnet links need to be downloaded with a torrent client like [qBittorrent](https://www.qbittorrent.org/). To get mail updates for each new release you can watch this repositiory (top right) or watch the linked patreon page.

## How to install the patch?
1. Install the game
2. (Optional) Install any DLCs* you have. You don't have to install all of them, you can pick only some DLCs or don't install any DLCs at all.
3. Download the latest HF Patch release from [Releases](https://github.com/ManlyMarco/EC-HF_Patch/releases/latest). You should get a single .exe file and 2 or more .bin files. You can place these files anywhere you want. DO NOT download any .zip files from GitHub - they contain source code for the patch, not the patch itself.
4. Install the latest HF Patch by running the .exe and following the wizard. The default settings should work well for most users.
5. Done! You can now start the game launcher as usual and you will notice some new options straight away. You can remove the downloaded patcher files now if you want to save some space.

If in doubt, watch [this game and HF Patch installation guide](https://www.youtube.com/watch?v=Xece-wF86BM). If you have any questions, check the [Koikatu FAQ](https://wiki.anime-sharing.com/hgames/index.php?title=Koikatu/Technical_Help) (most of it applies to EC as well). 

If you need any further help, visit the [Koikatsu Discord server](https://discord.gg/urDt8CK) and ask in the #help channel, or ask in comments under this post. There are also chat and sharing channels for EC scenes and cards!

**Notes:**
- You can choose what mods you want, but for beginners it's recommended to leave the default settings.
- If you have installed a repack or are updating from an old patch, tell HF Patch to delete all old mods.

### Solutions to common issues with the patch
- If after installing the patch you have issues running the game, restart your PC and try to install the patch again with default settings.
- If after installing the patch Studio hangs when loading, start KKManager (it's in a folder in game directory) and click "Look for updates" at the top, then tell it to update the Studio modpack.
- If you have trouble downloading by using the magnet link, try updating your torrent client or use the latest qBittorrent (it's known to work well).
- Make sure you downloaded ALL parts to the same folder and that the parts all have the same name. You need ALL parts for the patch to work. If the installer asks you for another disc it means that your download was not extracted correctly and is missing files, or you renamed or removed some of the extracted files. 
- If you see any messages about corrupted files you'll have to re-download the offending part (or all of the parts).  If you downloaded the torrent, most torrent clients can "force recheck" the downloaded files so you don't have to re-download the whole thing.
- If your antivirus is flagging the .exe file make sure that you've downloaded the patch by following links in this post. If you are sure the download came from the right place, it's most likely a false positive (it's a common issue with non-signed application installers).

## Discussion and help
- [Koikatsu!/EmotionCreators discord server](https://discord.gg/zS5vJYS)
- [Koikatu Technical Help Wiki (Most of it applies to EC as well)](https://wiki.anime-sharing.com/hgames/index.php?title=Koikatu/Technical_Help)

If you need further help, feel free to ask in the **#help** channel on the server. Try to search for your issue first by using the Discord's search box at top right, it might have been already answered before. Please don't ask for help under this guide because I rarely check the comments here.


### General FAQ / Notes
- You can configure many plugins by Pressing F1 and then "Plugin settings". You can also see most of the plugin hotkeys in this menu (and change them).
- Installing HF Patch will add free updates for Koikatu, which contain Studio (separate exe file). For many people this is the only mode they use (apart from character maker to make characters for use in studio), so it is highly recommended that you check it out. All of Koikatu HF Patch preview images were made in studio. You can see other people's creations and download their studio scenes from the Discord server and various card sharing boorus.
- HF Patch does not contain the full game, paid expansions or any other pirated content. The full game needs to be already installed for the patch to work. If you want to use the VR module, also install it before patching! All paid DLC are optional and not required, you can skip them and the patch will still work fine (some features might be disabled/unavailable).
- You can install HF Patch over almost any game install and have it work perfectly, and you can run it again to enable/disable some plugins. This patch will automatically fix many broken game/mod installs and common issues. Just make sure to let it remove all old mods when asked.
- It's recommended to install all content mods if you plan to download character cards - they are required by many cards and scenes. If you find a card that is showing mod missing warnings try updating Sideloader Modpacks. This can be done with [KK Manager](https://github.com/IllusionMods/KKManager).
- The mods included in the patch don't modify any game files and can be easily disabled by removing the "winhttp.dll" file from your game directory. Official patches are applied permanently.
- Please leave the modders some positive feedback or help them in some other way!
- There is no warranty on this patch or on any of the included mods. You are installing this patch at your own risk. That being said, we try our best to help in case of issues. If you find any bugs, do let us know so they can be fixed.

## How to build the source
At least Visual Studio 2017 is needed for the helper library and latest unicode Inno Setup compiler is needed for the patch itself. All necessary mods have to be placed inside correct subfolders of the Input directory to compile. Because of massive size, they are not included here.
