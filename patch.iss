; Copyright (C) 2020  ManlyMarco
; This program is free software: you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation, either version 3 of the License, or
; (at your option) any later version.
;--------------------------------------------Full game name for naming patch itself and desktop icons
#define NAME "EmotionCreators"
;----------------------------------------------------------------------------Current HF Patch version
#define VERSION "1.3"
;----------------------------------------------------------------------------------------------------
#include "_Common\Header.iss"

[Setup]
AppName=HF Patch for EmotionCreators
OutputBaseFilename=EmotionCreators HF Patch v{#VERSION}

ArchitecturesInstallIn64BitMode=x64
CloseApplications=yes
RestartApplications=no
CloseApplicationsFilter=*.exe,*.dll
Compression=lzma2/ultra64
;lzma2/ultra64 | zip | lzma2/fast
LZMAUseSeparateProcess=yes
;LZMADictionarySize=208576
LZMADictionarySize=208576
LZMANumFastBytes=273
LZMANumBlockThreads=7
DiskSpanning=yes
DefaultDirName={reg:HKCU\Software\Illusion\emotioncreators\emotioncreators,INSTALLDIR}

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "jp"; MessagesFile: "compiler:Languages\Japanese.isl"
Name: "sc"; MessagesFile: "compiler:Languages\ChineseSimplified.isl"

#include "Translations.iss"

[Types]
Name: "full_en";  Description: "{cm:fullInstall}";  Languages: en;
Name: "full";     Description: "{cm:fullInstall}";  Languages: jp sc;
Name: "extra_en"; Description: "{cm:extraInstall}"; Languages: en;
Name: "extra";    Description: "{cm:extraInstall}"; Languages: jp sc;
Name: "bare";     Description: "{cm:bareInstall}"
Name: "none";     Description: "{cm:noneInstall}"
Name: "custom";   Description: "{cm:customInstall}"; Flags: iscustom

[Components]
Name: "Patch"; Description: "Free patches up to 07/05/2019 + Game repair"; Types: full_en full extra custom bare none; Flags: fixed
;Name: "Patch\UserData"; Description: "{cm:CompDefCards}";

Name: "BepInEx"; Description: "BepInEx v5.3 Plugin framework + MessageCenter v1.2 + ConfigurationManager v16.0 + BepIn4Patcher v1.0"; Types: full_en full extra_en extra custom bare; Flags: fixed 
Name: "BepInEx\Dev"; Description: "{cm:CompDev}";

Name: "BepisPlugins"; Description: "BepisPlugins r15.4 (Core plugins needed for most things)"; Types: full_en full extra custom bare; Flags: fixed
Name: "ECAPI"; Description: "ECAPI v1.13.1 (Modding API needed by many plugins)"; Types: full_en full extra custom bare; Flags: fixed

Name: "XUnityResourceRedirector"; Description: "XUnity.ResourceRedirector 1.1.2 (Modding API)"; Types: full_en full extra custom bare; Flags: fixed

Name: "KKManager"; Description: "KKManager v0.13.1 (Manage and update mods)"; Types: full_en full extra_en extra custom
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Name: "CustomLauncher"; Description: "IllusionLaunchers v2.1 (Custom launcher)"; Types: full extra full_en extra_en custom

Name: "AT"; Description: "XUnity.AutoTranslator v4.12.0"; Types: full extra full_en extra_en custom

Name: "AT\TL"; Description: "{cm:CompTL}"; Types: full_en extra_en 
Name: "AT\TL\EnglishTranslation"; Description: "ManlyMarco/EmotionCreatorsTranslation v2.1"; Types: full_en extra_en
;Name: "AT\TL\EnglishTranslation\UserData"; Description: "Translated cards, scenes and backgrounds (they overwrite defaults)"

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Name: "UNC"; Description: "{cm:CompUNC}"; Types: full_en full extra_en extra

Name: "UNC\Selector"; Description: "KK_UncensorSelector v3.9.2 (NEEDS Koikatsu Overlay Mods!)"; Types: full_en full extra_en extra
Name: "UNC\Selector\Pack"; Description: "Sideloader Modpack - EC_UncensorSelector (Uncensors for use with UncensorSelector)"; Types: full_en full extra_en extra

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Name: "Content"; Description: "Additional content for character and scene creation (Needed to properly load most character cards and scenes)"; Types: full_en full extra_en extra

Name: "Content\Modpack"; Description: "Sideloader Modpack for KK/EC (Lots of additional content for making characters) + ModBoneImplantor v0.2.4"; Types: full_en full extra
Name: "Content\ModpackEC"; Description: "Sideloader Modpack for EC (Mods specially made for EC)"; Types: full_en full extra
Name: "Content\ModpackCompatibility"; Description: "Sideloader Modpack - Compatibility Pack for KK/EC (Optional content useful for loading old cards, not very useful for new cards)"; Types: full_en full extra

Name: "Content\EC_ClothingUnlocker"; Description: "EC_ClothingUnlocker v2.0.1 (Can use female clothes on males)"; Types: full_en full extra
Name: "Content\EC_HairAccessoryCustomizer"; Description: "EC_HairAccessoryCustomizer v1.1.5 (Color matching for hair accessories)"; Types: full_en full extra

Name: "Content\EC_MaterialEditor"; Description: "EC_MaterialEditor v2.1.1 (Advanced material controls for maker and studio)"; Types: full_en full extra
Name: "Content\EC_MaterialEditor\Pack"; Description: "Sideloader Modpack - KK_MaterialEditor (Shaders for use with MaterialEditor)"; Types: full_en full extra

Name: "Content\KKABMX"; Description: "ECABMX v4.3 (More sliders in maker)"; Types: full_en full extra
Name: "Content\KSOX"; Description: "EC_OverlayMods v5.2 (Custom body, clothes and eye textures)"; Types: full_en full extra
Name: "Content\EC_InvisibleBody"; Description: "EC_InvisibleBody v1.3.2 (Hide character body)"; Types: full_en full extra

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Name: "FIX"; Description: "{cm:CompFIX}"; Types: extra
Name: "FIX\ModpackECFixes"; Description: "Sideloader Modpack - Fixes for EC (Fixes to base content)"; Types: full_en full extra
Name: "FIX\IllusionFixes"; Description: "IllusionFixes_EmotionCreators v14.0 (Fixes to many of the game's bugs and limitations)"; Types: full_en full extra
Name: "FIX\EC_ExtraCharacters"; Description: "EC_ExtraCharacters v1.0.2 (Lets you to have more than the 8 characters)"; Types: full_en full extra
Name: "FIX\EC_RimRemover"; Description: "RimRemover v1.1 (Removes rim lighting around the edges, looks better to some people, enable in plugin settings)"; Types: full_en full extra
Name: "FIX\InputHotkeyBlock"; Description: "InputHotkeyBlock v1.2 (Blocks hotkeys when typing in text fields)"; Types: full_en full extra
Name: "FIX\ECAlternativeNodeVerification"; Description: "ECAlternativeNodeVerification v1.0.0 (Fixes large node graphs crashing scene save)"; Types: full_en full extra
Name: "FIX\ECIKParentUnlocker"; Description: "ECIKParentUnlocker v2.0.0 (Allows reparenting any IK target in H nodes)"; Types: full_en full extra

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Name: "Feature"; Description: "Improvements and additional features"; Types: extra
;Name: "Feature\DragAndDrop"; Description: "Drag and drop character cards and scenes v1.3"; Types: full_en full extra
Name: "Feature\BrowserFolders"; Description: "EC_BrowserFolders v2.2 (Folder support in chara/scene select screens)"; Types: full_en full extra
;Name: "Feature\KK_ClothesLoadOption"; Description: "KK_ClothesLoadOption 0.0.0 (Can load only some parts of coordinate cards)"; Types: full_en full extra
;Name: "Feature\KK_BetterColorPicker"; Description: "KK_BetterColorPicker v1.0 (Select color from anywhere on screen in maker, useful for copying colors from reference images)"; Types: full_en full extra

Name: "Feature\MakerAdditions"; Description: "MakerAdditions v1.0 (Quality of life improvements to character maker)"; Types: full_en full extra
Name: "Feature\EC_MakerSearch"; Description: "EC_MakerSearch v1.1.1 (Add search boxes to item lists in character maker)"; Types: full_en full extra
Name: "Feature\EC_MakerDefaults"; Description: "EC_MakerDefaults v1.0 (Change default character maker settings, check plugin options)"; Types: full_en full extra
Name: "Feature\EC_Pushup"; Description: "EC_Pushup v1.2 (Clothes affect breast shape)"; Types: full_en full extra

Name: "Feature\EC_RemoveToRecycleBin"; Description: "EC_RemoveToRecycleBin v1.1.1 (Prevents accidentally losing cards by overwriting them)"; Types: full_en full extra
Name: "Feature\GraphicsSettings"; Description: "BepInEx.GraphicsSettings v1.2 (Additional graphics settings)"; Types: full_en full extra
Name: "Feature\MuteInBackground"; Description: "BepInEx.MuteInBackground v1.1 (Automatically mute the game when not focused, enable in plugin settings)"; Types: full_en full extra

Name: "Feature\CharacterReplacer"; Description: "EmotionCreators_CharacterReplacer v1.6.2 (Replace default characters in maker)"; Types: full_en full extra
Name: "Feature\CharacterExport"; Description: "CharacterExport v1.0 (Export character cards from a scene)"; Types: full_en full extra

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Name: "MISC"; Description: "{cm:CompMISC}";

Name: "MISC\FPSCounter"; Description: "FPSCounter v3.0 (FPS display and simple plugin profiler)"; Types: full_en full extra
Name: "MISC\Editor"; Description: "Runtime Unity Editor v2.1.1 (Trainer and debugger)"; Types: full_en full extra
Name: "MISC\EnableResize"; Description: "EnableResize v1.4 (Allows resizing of game window, can cause UI issues)"; Types: extra
Name: "MISC\Meme"; Description: "Custom intro voices v11 (AH↓ HA↑ HA↑ HA↑)"; Types: extra

Name: "MISC\FIX"; Description: "Fix game registry (e.g. after moving to different folder)"; Types: bare full_en full extra

[Files]
Source: "HelperLib.dll"; DestDir: "{app}"; Flags: dontcopy

Source: "Input\DirectX\Jun2010\*"; DestDir: "{tmp}\hfp\DirectXRedist2010"; Flags: ignoreversion recursesubdirs createallsubdirs deleteafterinstall; Check: DirectXRedistNeedsInstall

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

;Source: "Input\_Patch\extras\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch
Source: "Input\_Patch\emocre_01_plus_oh0705drd_all\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch

Source: "E:\Games\EmotionCreators\mods\Sideloader Modpack\*"; DestDir: "{app}\mods\Sideloader Modpack"; Flags: ignoreversion recursesubdirs solidbreak; Components: Content\Modpack
Source: "E:\Games\EmotionCreators\mods\Sideloader Modpack - Compatibility Pack\*"; DestDir: "{app}\mods\Sideloader Modpack - Compatibility Pack"; Flags: ignoreversion recursesubdirs ; Components: Content\ModpackCompatibility
Source: "E:\Games\EmotionCreators\mods\Sideloader Modpack - KK_MaterialEditor\*"; DestDir: "{app}\mods\Sideloader Modpack - KK_MaterialEditor"; Flags: ignoreversion recursesubdirs; Components: Content\EC_MaterialEditor\Pack
Source: "E:\Games\EmotionCreators\mods\EC Sideloader Modpack\*"; DestDir: "{app}\mods\EC Sideloader Modpack"; Flags: ignoreversion recursesubdirs; Components: Content\ModpackEC
Source: "E:\Games\EmotionCreators\mods\EC Sideloader Modpack - EC_UncensorSelector\*"; DestDir: "{app}\mods\EC Sideloader Modpack - EC_UncensorSelector"; Flags: ignoreversion recursesubdirs; Components: UNC\Selector\Pack
Source: "E:\Games\EmotionCreators\mods\EC Sideloader Modpack - Fixes\*"; DestDir: "{app}\mods\EC Sideloader Modpack - Fixes"; Flags: ignoreversion recursesubdirs; Components: FIX\ModpackECFixes

Source: "Input\KKManager\*"; DestDir: "{app}\[UTILITY] KKManager\"; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak; Components: KKManager

Source: "Input\BepInEx_x64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx
Source: "Input\BepInEx_Essentials\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx
;Source: "Input\BepInEx_Compatibility\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\Compat

#ifndef WEBINSTALLER
Source: "Input\BepInEx_Dev\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: BepInEx\Dev
#endif

Source: "Input\_Plugins\EC_BepisPlugins\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: BepisPlugins

Source: "Input\_Plugins\ECAPI\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: ECAPI

Source: "Input\_Plugins\XUnity.ResourceRedirector-BepIn-5x\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: XUnityResourceRedirector

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Source: "Input\_TL\_lang jp\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Languages: jp
Source: "Input\_TL\_lang ch\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Languages: sc
Source: "Input\_TL\_lang eng\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Languages: en

Source: "Input\_Plugins\XUnity.AutoTranslator-BepIn-5x\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: AT

Source: "Input\_TL\EmotionCreatorsTranslation\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Excludes: UserData; Components: AT\TL\EnglishTranslation

Source: "Input\Launcher_jp\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: CustomLauncher

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Source: "Input\_Plugins\KK_UncensorSelector\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: UNC\Selector

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Source: "Input\_Plugins\EC_ModBoneImplantor\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Content\Modpack
Source: "Input\_Plugins\EC_ClothingUnlocker\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs ; Components: Content\EC_ClothingUnlocker
Source: "Input\_Plugins\EC_HairAccessoryCustomizer\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs ; Components: Content\EC_HairAccessoryCustomizer

Source: "Input\_Plugins\EC_MaterialEditor\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs ; Components: Content\EC_MaterialEditor

Source: "Input\_Plugins\ECABMX\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Content\KKABMX
Source: "Input\_Plugins\EC_OverlayMods\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Content\KSOX
Source: "Input\_Plugins\EC_InvisibleBody\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Content\EC_InvisibleBody

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Source: "Input\_Plugins\IllusionFixes_EmotionCreators\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: FIX\IllusionFixes
Source: "Input\_Plugins\EC_ExtraCharacters\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: FIX\EC_ExtraCharacters
Source: "Input\_Plugins\RimRemover\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: FIX\EC_RimRemover
Source: "Input\_Plugins\EC_InputHotkeyBlock\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: FIX\InputHotkeyBlock
Source: "Input\_Plugins\ECAlternativeNodeVerification\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: FIX\ECAlternativeNodeVerification
Source: "Input\_Plugins\ECIKParentUnlocker\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: FIX\ECIKParentUnlocker

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

;Source: "Input\_Plugins\DragAndDrop.dll"; DestDir: "{app}\BepInEx"; Flags: ignoreversion; Components: Feature\DragAndDrop
Source: "Input\_Plugins\EC_BrowserFolders\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Feature\BrowserFolders
;Source: "Input\_Plugins\KK_ClothesLoadOption.dll"; DestDir: "{app}\BepInEx"; Flags: ignoreversion; Components: Feature\KK_ClothesLoadOption
;Source: "Input\_Plugins\KK_BetterColorPicker\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Feature\KK_BetterColorPicker

Source: "Input\_Plugins\EC_MakerAdditions\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Feature\MakerAdditions
Source: "Input\_Plugins\EC_MakerSearch\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Feature\EC_MakerSearch
Source: "Input\_Plugins\EC_MakerDefaults\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Feature\EC_MakerDefaults
Source: "Input\_Plugins\EC_Pushup\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Feature\EC_Pushup

Source: "Input\_Plugins\EC_RemoveToRecycleBin\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Feature\EC_RemoveToRecycleBin
Source: "Input\_Plugins\GraphicsSettings.dll"; DestDir: "{app}\BepInEx\plugins"; Flags: ignoreversion recursesubdirs; Components: Feature\GraphicsSettings
Source: "Input\_Plugins\BepInEx.MuteInBackground\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Feature\MuteInBackground

Source: "Input\_Plugins\EmotionCreators_CharacterReplacer\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Feature\CharacterReplacer
Source: "Input\_Plugins\EC_CharacterExport\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Feature\CharacterExport

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Source: "Input\_Plugins\FPSCounter\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: MISC\FPSCounter
Source: "Input\_Plugins\RuntimeUnityEditor\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: MISC\Editor
Source: "Input\_Plugins\EnableResize.dll"; DestDir: "{app}\BepInEx\plugins"; Flags: ignoreversion recursesubdirs; Components: MISC\EnableResize
Source: "D:\SVN\ManlyMarco\KK-HF_Patch\Input\_Misc\Memes\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: MISC\Meme

[InstallDelete]
; Clean up old translations
Type: filesandordirs; Name: "{app}\BepInEx\translation"; Components: AT\TL
Type: filesandordirs; Name: "{app}\UserData\LauncherEN"; Components: CustomLauncher
Type: files; Name: "{app}\InitSettingEN.exe"; Components: CustomLauncher
Type: files; Name: "{app}\InitSettingEnglish.exe"; Components: CustomLauncher
Type: files; Name: "{app}\InitSetting EN.exe"; Components: CustomLauncher
Type: files; Name: "{app}\InitSetting English.exe"; Components: CustomLauncher
Type: files; Name: "{app}\InitSetting.exe"
Type: files; Name: "{app}\InitSetting.exe.config"

Type: filesandordirs; Name: "{app}\BepInEx\plugins\EC_CorePlugins"

; Clean up old modpacks
;Type: filesandordirs; Name: "{app}\mods\Sideloader Modpack"; Components: Content\Modpack
;Type: filesandordirs; Name: "{app}\mods\Sideloader Modpack - EC"; Components: Content\ModpackEC


; Clean up old patches and packs
Type: files; Name: "{app}\start.bat"
Type: files; Name: "{app}\desktop.ini"
Type: files; Name: "{app}\*.ico"
Type: files; Name: "{app}\[BR]*"

; Always not necessary
Type: files; Name: "{app}\0Harmony.dll"
Type: files; Name: "{app}\BepInEx.dll"
Type: files; Name: "{app}\Mono.Cecil.dll"

; Junk
Type: filesandordirs; Name: "{app}\BepInEx\bepinex4_backup"
Type: filesandordirs; Name: "{app}\BepInEx\cache"
Type: filesandordirs; Name: "{app}\temp"
Type: files; Name: "{app}\README.*"
Type: files; Name: "{app}\*.log"
Type: files; Name: "{app}\*.pdb"
Type: files; Name: "{app}\changelog.txt"
Type: files; Name: "{app}\HF_Patch_log.txt"
Type: files; Name: "{app}\output_log.txt"
Type: files; Name: "{app}\CharaStudio_Data\output_log.txt"
Type: files; Name: "{app}\Koikatu_Data\output_log.txt"
Type: files; Name: "{app}\KoikatuVR_Data\output_log.txt"
Type: files; Name: "{app}\Koikatsu Party_Data\output_log.txt"
; Yikes, someone extracted a sideloader mod...
Type: files; Name: "{app}\manifest.xml"

; Needed to migrate from BepInEx 3.x to 4.x
Type: files; Name: "{app}\BepInEx.Patcher.exe"; Components: BepInEx

; Just in case. Also resets any hash caches
Type: filesandordirs; Name: "{app}\[UTILITY] KKManager"; Components: KKManager
Type: filesandordirs; Name: "{app}\temp"

; Potentially incompatible, outdated or buggy plugins
Type: files; Name: "{app}\mods\atari2.1 (normal bust).zipmod"
Type: files; Name: "{app}\BepInEx\ModBoneImplantor.dll"
Type: files; Name: "{app}\BepInEx\HSubs.dll"
Type: files; Name: "{app}\BepInEx\KKUS.dll"
Type: files; Name: "{app}\BepInEx\FixCompilation.dll"
Type: files; Name: "{app}\BepInEx\RuntimeUnityEditor.dll"; Components: MISC\Editor
Type: files; Name: "{app}\BepInEx\HideStudioUI.dll"
Type: files; Name: "{app}\BepInEx\HideHInterface.dll"

Type: files; Name: "{app}\XInputInterface.dll"

; Clean up old uncensors
Type: filesandordirs; Name: "{app}\mods\Uncensor"; Components: UNC\Selector
Type: filesandordirs; Name: "{app}\mods\EC_UncensorSelector Base.zipmod"; Components: UNC\Selector
Type: filesandordirs; Name: "{app}\mods\Uncensors and body mods"; Components: UNC\Selector
Type: filesandordirs; Name: "{app}\mods\EC Sideloader Modpack - EC_UncensorSelector"; Components: UNC\Selector

; Clean dlls completely to fix problems with copied/unnecessary/old dlls. All dlls are included in the patch data
Type: filesandordirs; Name: "{app}\EmotionCreators_Data\Managed"; Components: Patch
Type: filesandordirs; Name: "{app}\EmotionCreators_Data\MonoBleedingEdge"; Components: Patch

; IPA, useless because patched assemblies are replaced
Type: files; Name: "{app}\IPA.exe"; Components: Patch

[Registry]
Root: HKCU; Subkey: "Software\Illusion"; Components: MISC\FIX
Root: HKCU; Subkey: "Software\Illusion\emotioncreators"; Components: MISC\FIX
Root: HKCU; Subkey: "Software\Illusion\emotioncreators\emotioncreators"; Components: MISC\FIX
Root: HKCU; Subkey: "Software\Illusion\emotioncreators\emotioncreators"; ValueType: string; ValueName: "INSTALLDIR"; ValueData: "{app}\"; Components: MISC\FIX

[Tasks]
Name: desktopicon; Description: "{cm:TaskIcon}"; Flags: unchecked
Name: delete; Description: "{cm:TaskDelete}";
Name: delete\Sidemods; Description: "{cm:TaskDeleteSide}"
Name: delete\Plugins; Description: "{cm:TaskDeletePlugins}";
Name: delete\Config; Description: "{cm:TaskDeletePluginSettings}"; Flags: unchecked
Name: delete\Listfiles; Description: "{cm:TaskDeleteLst}"
Name: fixSideloaderDupes; Description: "{cm:TaskSideDupes}";

[Icons]
Name: "{userdesktop}\{#NAME}"; Filename: "{app}\InitSetting.exe"; IconFilename: "{app}\InitSetting.exe"; WorkingDir: "{app}\"; Comment: "{cm:IconGame}"; Tasks: desktopicon

[Run]
Filename: "{tmp}\hfp\DirectXRedist2010\DXSETUP.exe"; Parameters: "/silent"; Description: "Installing DirectX redistributables"; Flags: skipifdoesntexist runascurrentuser

Filename: "{app}\InitSetting.exe"; Description: "{cm:RunGame}"; Flags: postinstall runascurrentuser nowait skipifsilent skipifdoesntexist;

Filename: "https://wiki.anime-sharing.com/hgames/index.php?title=Koikatu/Technical_Help"; Description: "{cm:RunWiki}"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent
Filename: "https://discord.gg/Szumqcu"; Description: "{cm:RunDiscord}"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent;

Filename: "{app}\[UTILITY] KKManager\StandaloneUpdater.exe"; Parameters: """{app}"""; Description: "{cm:StartUpdate}"; Flags: postinstall runascurrentuser unchecked nowait skipifsilent skipifdoesntexist

Filename: "https://github.com/ManlyMarco/EC-HF_Patch"; Description: "Latest releases and source code"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent

Filename: "https://www.patreon.com/ManlyMarco"; Description: "ManlyMarco Patreon (Creator of this patch)"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent;

[Code]
procedure CreateBackup(path: String);
external 'CreateBackup@files:HelperLib.dll stdcall';

procedure FixConfig(path: String);
external 'FixConfig@files:HelperLib.dll stdcall';

procedure PostInstallCleanUp(path: String);
external 'PostInstallCleanUp@files:HelperLib.dll stdcall';

procedure WriteVersionFile(path, version: String);
external 'WriteVersionFile@files:HelperLib.dll stdcall';

procedure SetConfigDefaults(path: String);
external 'SetConfigDefaults@files:HelperLib.dll stdcall';

procedure FixPermissions(path: String);
external 'FixPermissions@files:HelperLib.dll stdcall';

procedure RemoveJapaneseCards(path: String);
external 'RemoveJapaneseCards@files:HelperLib.dll stdcall';

procedure RemoveNonstandardListfiles(path: String);
external 'RemoveNonstandardListfiles@files:HelperLib.dll stdcall';

procedure RemoveSideloaderDuplicates(path: String);
external 'RemoveSideloaderDuplicates@files:HelperLib.dll stdcall';

procedure RemoveModsExceptModpacks(path: String);
external 'RemoveModsExceptModpacks@files:HelperLib.dll stdcall';



function DirectXRedistNeedsInstall(): Boolean;
begin
  Result := not RegKeyExists(HKLM, 'SOFTWARE\WOW6432Node\Valve\Steam\Apps\CommonRedist\DirectX\Jun2010')
end;

procedure CurPageChanged(CurPageID: Integer);
begin
  if CurPageID = wpSelectTasks then
  begin
    // If garbage plugins are detected, delete all old mods by default
    if(FileExists(ExpandConstant('{app}\BepInEx\config\EC.Core.Fixes.MakerFPS.cfg')) or FileExists(ExpandConstant('{app}\BepInEx\CardCacher.dll')) or FileExists(ExpandConstant('{app}\BepInEx\0Harmony.dll')) or FileExists(ExpandConstant('{app}\BepInEx\TexResPatch.dll')) or FileExists(ExpandConstant('{app}\BepInEx\KK_GUIDMigration.dll')) or FileExists(ExpandConstant('{app}\BepInEx\Sideloader.dll')) or FileExists(ExpandConstant('{app}\BepInEx\Assembly-CSharp.dll'))) then
    begin
      WizardForm.TasksList.CheckItem(WizardForm.TasksList.Items.Count - 6, coCheckWithChildren);
    end;
    
  end;
end;

procedure CurStepChanged(CurStep: TSetupStep);
var
  ResultCode: Integer;
begin
  // After install completes
  if CurStep = ssPostInstall then
  begin
    // Delete Japanese versions of cards and bgs if English versions are installed (only those with different names)
    //if IsComponentSelected('AT\TL\EnglishTranslation\UserData') then
    //    RemoveJapaneseCards(ExpandConstant('{app}'));
        
    // Always clean up sideloader mods in case user already messed up
    if IsTaskSelected('fixSideloaderDupes') then
        RemoveSideloaderDuplicates(ExpandConstant('{app}'));
        
    FixConfig(ExpandConstant('{app}'));
    WriteVersionFile(ExpandConstant('{app}'), '{#VERSION}');
    
    // Prevent trying to install the redist again
    Exec('reg', 'add HKEY_LOCAL_MACHINE\SOFTWARE\Valve\Steam\Apps\CommonRedist\DirectX\Jun2010 /v dxsetup /t REG_DWORD /d 1 /f /reg:32', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
    
    PostInstallCleanUp(ExpandConstant('{app}'));
  end;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
var
  ResultCode: Integer;
begin
  // allow the setup turning to the next page
  Result := True;

  if (CurPageID = wpSelectDir) then
  begin
    if (not FileExists(ExpandConstant('{app}\EmotionCreators.exe'))) then
    begin
      if (SuppressibleMsgBox(ExpandConstant('{cm:MsgExeNotFound}'), mbError, MB_YESNO, 0) = IDNO) then
        Result := False;
    end;

    if Result = True then
    begin
      if (FileExists(ExpandConstant('{app}\Koikatu.exe')) or FileExists(ExpandConstant('{app}\Koikatsu Party.exe'))) then
      begin
        MsgBox(ExpandConstant('{cm:MsgKoikatuDetected}'), mbError, MB_OK);
        Result := False;
      end
    end;

    if Result = True then
    begin
      if (FileExists(ExpandConstant('{app}\AI-Shoujo.exe')) or FileExists(ExpandConstant('{app}\AI-Syoujyo.exe')) or FileExists(ExpandConstant('{app}\HoneySelect2.exe'))) then
      begin
        MsgBox(ExpandConstant(ExpandConstant('{cm:MsgAISFilesDetected}')), mbError, MB_OK);
        Result := False;
      end
    end;
    
    if Result = True then
    begin
      if (Length(ExpandConstant('{app}')) > 100) then
      begin
        MsgBox(ExpandConstant('{cm:MsgDeepPath}'), mbError, MB_OK);
        Result := False;
      end
    end;
    
    if Result = True then
    begin
      // Check for file corruptions
      if (not FileExists(ExpandConstant('{app}\abdata\sound\setting\object\00.unity3d')) or not FileExists(ExpandConstant('{app}\abdata\sound\setting\sound3dsettingdata\00.unity3d')) or not FileExists(ExpandConstant('{app}\abdata\sound\setting\soundsettingdata\00.unity3d'))) then
      begin
        MsgBox(ExpandConstant('{cm:MsgMissingGameFiles}'), mbError, MB_OK);
        Result := False;
      end;

      // Check for extracted zipmods
      if FileExists(ExpandConstant('{app}\manifest.xml')) then
      begin
        SuppressibleMsgBox(ExpandConstant('{cm:MsgExtractedZipmod}'), mbError, MB_OK, 0);
      end;
    end;
  end;
end;

function PrepareToInstall(var NeedsRestart: Boolean): String;
var
  ResultCode: Integer;
begin
  NeedsRestart := false;
  try
    // Close the game if it's running
    Exec('taskkill', '/F /IM EmotionCreators.exe', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
    Exec('taskkill', '/F /IM InitSetting.exe', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
    Exec('taskkill', '/F /IM InitSettingEN.exe', ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);

    // Fix file permissions
    //Exec('takeown', ExpandConstant('/f "{app}" /r /SKIPSL /d y'), ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
    //Exec('icacls', ExpandConstant('"{app}" /grant everyone:F /t /c /l'), ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
    FixPermissions(ExpandConstant('{app}'));
    
    //try
    //  ExecAsOriginalUser('explorer.exe', '', '', 0, ewNoWait, ResultCode);
    //except
    //  ShowExceptionMessage();
    //end;
  except
    ShowExceptionMessage();
  end;
  
  CreateBackup(ExpandConstant('{app}'));
  
  // Backup plugin settings
  if (not IsTaskSelected('delete\Config')) then
    FileCopy(ExpandConstant('{app}\BepInEx\config.ini'), ExpandConstant('{app}\config.ini'), false);
  
  // Remove BepInEx folder
  if (IsTaskSelected('delete\Config') and IsTaskSelected('delete\Plugins')) then begin
    DelTree(ExpandConstant('{app}\BepInEx'), True, True, True);
  end
  else
  begin
    // Or only remove plugins
    if (IsTaskSelected('delete\Plugins')) then begin
      DelTree(ExpandConstant('{app}\BepInEx\plugins'), True, True, True);
      DelTree(ExpandConstant('{app}\BepInEx\patchers'), True, True, True);
      DelTree(ExpandConstant('{app}\BepInEx\IPA'), True, True, True);
      DelTree(ExpandConstant('{app}\scripts'), True, True, True);
      Exec(ExpandConstant('{cmd}'), '/c del *.dll', ExpandConstant('{app}\BepInEx'), SW_SHOW, ewWaitUntilTerminated, ResultCode);
      Exec(ExpandConstant('{cmd}'), '/c del *.dl_', ExpandConstant('{app}\BepInEx'), SW_SHOW, ewWaitUntilTerminated, ResultCode);
    end;
  end;
  
  if (not IsTaskSelected('delete\Config')) then
  begin
    // Restore the settings and remove the backup
    CreateDir(ExpandConstant('{app}\BepInEx'));
    FileCopy(ExpandConstant('{app}\config.ini'), ExpandConstant('{app}\BepInEx\config.ini'), false);
    DeleteFile(ExpandConstant('{app}\config.ini'));
  end
  else
  begin
    // Or remove settings
    DeleteFile(ExpandConstant('{app}\BepInEx\config.ini'));
  end;
    
  if (IsTaskSelected('delete\Sidemods')) then
    RemoveModsExceptModpacks(ExpandConstant('{app}'));
    
  if (IsTaskSelected('delete\Listfiles')) then
    RemoveNonstandardListfiles(ExpandConstant('{app}'));
      
  SetConfigDefaults(ExpandConstant('{app}'));
end;
