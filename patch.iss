;--------------------------------------------Full game name for naming patch itself and desktop icons
#define NAME "EmotionCreators"
;----------------------------------------------------------------------------Current HF Patch version
#define VERSION "1.2"
;----------------------------------------------------------------------------------------------------
#include "_Common\Header.iss"

[Setup]
CloseApplications=yes
RestartApplications=no
CloseApplicationsFilter=*.exe,*.dll
Compression=lzma2/ultra64
;lzma2/ultra64 | zip | lzma2/fast
LZMAUseSeparateProcess=yes
;LZMADictionarySize=208576
LZMADictionarySize=208576
LZMANumFastBytes=273
LZMANumBlockThreads=9
DiskSpanning=yes
DefaultDirName={reg:HKCU\Software\Illusion\emotioncreators\emotioncreators,INSTALLDIR}

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "jp"; MessagesFile: "compiler:Languages\Japanese.isl"

#include "Translations.iss"

[Types]
Name: "full_en"; Description: "{cm:fullInstall}"; Languages: en;
Name: "full"; Description: "{cm:fullInstall}"; Languages: jp;
Name: "extra"; Description: "{cm:extraInstall}"
Name: "bare"; Description: "{cm:bareInstall}"
Name: "none"; Description: "{cm:noneInstall}"
Name: "custom"; Description: "{cm:customInstall}"; Flags: iscustom

[Components]
Name: "Patch"; Description: "Free patches and DLC up to 07/05/2019 by Illusion + Game repair"; Types: full_en full extra custom bare none; Flags: fixed

Name: "BepInEx"; Description: "BepInEx v5.0.1 Plugin framework + MessageCenter v1.1 + ConfigurationManager v15.1 + HarmonyX_Beta2"; Types: full_en full extra custom bare; Flags: fixed 
Name: "BepInEx\Dev"; Description: "{cm:CompDev}";

Name: "BepisPlugins"; Description: "BepisPlugins r13.1.1 (Core plugins needed for most things)"; Types: full_en full extra custom bare; Flags: fixed
Name: "ECAPI"; Description: "ECAPI v1.9.8 (Modding API needed by many plugins)"; Types: full_en full extra custom bare; Flags: fixed

Name: "XUnityResourceRedirector"; Description: "XUnity.ResourceRedirector 1.1.1 (Modding API)"; Types: full_en full extra custom bare; Flags: fixed

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Name: "TL"; Description: "{cm:CompTL}"; Types: full_en extra

Name: "TL\AutoTranslator"; Description: "XUnity.AutoTranslator 4.9.0"; Types: full_en extra
Name: "TL\AutoTranslator\EnglishTranslation"; Description: "ManlyMarco/EmotionCreatorsTranslation v2.1"; Types: full_en extra
Name: "TL\EnglishLauncher"; Description: "English Launcher v2.0"; Types: full_en extra

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Name: "UNC"; Description: "{cm:CompUNC}"; Types: full_en full extra
Name: "UNC\Selector"; Description: "Uncensor Selector v3.9"; Types: full_en full extra
Name: "UNC\Selector\Pack"; Description: "Uncensor pack 29/08/2019"; Types: full_en full extra

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Name: "Content"; Description: "Additional content for character and scene creation (Needed to properly load most character cards and scenes)"; Types: full_en full extra

Name: "Content\ModpackEC"; Description: "Sideloader Modpack for EC 29/08/2019 (Mods specially made for EC)"; Types: full_en full extra
Name: "Content\Modpack"; Description: "Sideloader Modpack for KK 08/03/2020 (Lots of additional content for making characters)"; Types: full_en full extra
Name: "Content\ModpackCompatibility"; Description: "Sideloader Modpack - Compatibility Pack for KK 08/03/2020 (Optional content useful for loading old cards)"; Types: full_en full extra

Name: "Content\EC_ClothingUnlocker"; Description: "EC_ClothingUnlocker v1.1 (can use female clothes on males)"; Types: full_en full extra
Name: "Content\EC_HairAccessoryCustomizer"; Description: "EC_HairAccessoryCustomizer v1.1.3 (adds advanced controls for hair accessories)"; Types: full_en full extra

Name: "Content\EC_MaterialEditor"; Description: "EC_MaterialEditor v1.9.5 (adds advanced material controls to maker and studio)"; Types: full_en full extra

Name: "Content\KKABMX"; Description: "ECABMX v3.5.1 (More sliders in maker)"; Types: full_en full extra
Name: "Content\KSOX"; Description: "EC_OverlayMods v5.1.2 (Custom body, clothes and eye textures)"; Types: full_en full extra
Name: "Content\EC_InvisibleBody"; Description: "EC_InvisibleBody v1.3.2 (Hide character body)"; Types: full_en full extra

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Name: "FIX"; Description: "{cm:CompFIX}"; Types: extra
Name: "FIX\ModpackECFixes"; Description: "Sideloader Modpack - Fixes for EC 29/08/2019 (Fixes to some of the content)"; Types: full_en full extra
Name: "FIX\IllusionFixes"; Description: "IllusionFixes_EmotionCreators v1.10 (Fixes to many of the game's bugs and limitations)"; Types: full_en full extra
Name: "FIX\EC_RimRemover"; Description: "EC_RimRemover v1.0.1 (Can help make hair and items from KK look better)"; Types: full_en full extra
Name: "FIX\InputHotkeyBlock"; Description: "InputHotkeyBlock v1.2 (Blocks hotkeys when typing in text fields)"; Types: full_en full extra
Name: "FIX\ECAlternativeNodeVerification"; Description: "ECAlternativeNodeVerification v1.0.0 (Fixes large node graphs crashing scene save)"; Types: full_en full extra
Name: "FIX\ECIKParentUnlocker"; Description: "ECIKParentUnlocker v2.0.0 (Allows reparenting any IK target in H nodes)"; Types: full_en full extra

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Name: "Feature"; Description: "Improvements and additional features"; Types: extra
;Name: "Feature\DragAndDrop"; Description: "Drag and drop character cards and scenes v1.3"; Types: full_en full extra
;Name: "Feature\KK_BrowserFolders"; Description: "KK_BrowserFolders v1.3 (Folder support in chara/scene select screens)"; Types: full_en full extra
;Name: "Feature\KK_ClothesLoadOption"; Description: "KK_ClothesLoadOption 0.0.0 (Can load only some parts of coordinate cards)"; Types: full_en full extra
;Name: "Feature\KK_BetterColorPicker"; Description: "KK_BetterColorPicker v1.0 (Select color from anywhere on screen in maker, useful for copying colors from reference images)"; Types: full_en full extra

Name: "Feature\EC_RemoveToRecycleBin"; Description: "EC_RemoveToRecycleBin v1.1.1 (Prevents accidentally losing cards by overwriting them)"; Types: full_en full extra
Name: "Feature\GraphicsSettings"; Description: "BepInEx.GraphicsSettings v1.2 (Additional graphics settings)"; Types: full_en full extra
Name: "Feature\CharacterReplacer"; Description: "EmotionCreators_CharacterReplacer v1.6.2 (Replace default characters in maker)"; Types: full_en full extra
Name: "Feature\CharacterExport"; Description: "CharacterExport v1.0 (Export character cards from a scene)"; Types: full_en full extra

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Name: "MISC"; Description: "{cm:CompMISC}";

Name: "MISC\FPSCounter"; Description: "FPSCounter v2.2 (FPS display and simple plugin profiler)"; Types: full_en full extra
Name: "MISC\Editor"; Description: "Runtime Unity Editor v2.0.1 (Trainer and debugger)"; Types: full_en full extra
Name: "MISC\EnableResize"; Description: "EnableResize v1.4 (Allows resizing of game window, can cause UI issues)"; Types: extra
Name: "MISC\Meme"; Description: "Custom intro voices v10 (FubukiGasm)"; Types: extra

Name: "MISC\FIX"; Description: "Fix game registry (e.g. after moving to different folder)"; Types: bare full_en full extra

[Files]
Source: "HelperLib.dll"; DestDir: "{app}"; Flags: dontcopy

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Source: "Input\_Patch\extras\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch
Source: "Input\_Patch\emocre_01_plus_oh0705drd_all\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch

Source: "Input\BepInEx\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx
Source: "Input\HarmonyX_Beta2\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx
Source: "Input\BepInEx_Dev\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: BepInEx\Dev;

Source: "Input\EC_BepisPlugins\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: BepisPlugins

Source: "Input\ECAPI\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: ECAPI

Source: "Input\XUnity.ResourceRedirector\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: XUnityResourceRedirector

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Source: "Input\_TL\XUnity.AutoTranslator\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: TL\AutoTranslator

Source: "Input\_TL\EmotionCreatorsTranslation\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Excludes: UserData; Components: TL\AutoTranslator\EnglishTranslation

Source: "Input\_TL\launcher\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: TL\EnglishLauncher

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Source: "Input\_Uncensor\KK_UncensorSelector\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: UNC\Selector
Source: "E:\Games\Emotion Creators\mods\EC Sideloader Modpack - EC_UncensorSelector\*"; DestDir: "{app}\mods\EC Sideloader Modpack - EC_UncensorSelector"; Flags: ignoreversion recursesubdirs; Components: UNC\Selector\Pack

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Source: "D:\Games\Koikatsu\mods\Sideloader Modpack\*"; DestDir: "{app}\mods\Sideloader Modpack"; Flags: ignoreversion recursesubdirs ; Components: Content\Modpack; Excludes: "[DeathWeasel]Centered Body Paint Layout v1.0.zipmod,[DeathWeasel][KK]Accessory Hair Back v1.6.3.zipmod,[DeathWeasel][KK]Accessory Hair Extension v1.4.zipmod,[DeathWeasel][KK]Accessory Hair Front v1.4.zipmod,[DeathWeasel][KK]Accessory Hair Side v1.0.zipmod,[DeathWeasel][KK]Bras v1.2.zipmod,[DeathWeasel][KK]Character Maker Poses v1.0.zipmod,[DeathWeasel][KK]Emotion Creators Items v1.1.zipmod,[DeathWeasel][KK]Goatee v1.1.zipmod,[DeathWeasel][KK]No Ears v1.0.zipmod,[DeathWeasel][KK]Panties v1.3.1.zipmod,[DA]Acc Noir v1.1.zipmod,[DA]Acc Yukari v1.0.zipmod,[DA]MidnaHelm.zipmod,[DeathWeasel][KK]Rings and Things v1.0.zipmod,[DeathWeasel][KK]Swimsuits v1.2.zipmod,[DeathWeasel][KK]XIII v1.3.zipmod,[SeanTheExtraGuy]Topless Suntans.zipmod,[stinger722_32]Headmod+Facefix.zipmod,[Wubsy]Cow Print Patterns.zipmod,[DeathWeasel & Rylen][KK]Rylen Accessory Hair Front v1.0.zipmod"
Source: "D:\Games\Koikatsu\mods\Sideloader Modpack - Compatibility Pack\*"; DestDir: "{app}\mods\Sideloader Modpack - Compatibility Pack"; Flags: ignoreversion recursesubdirs ; Components: Content\Modpack; Excludes: "[CelestiaZX][KK]MeguminOutfit v1.0.zipmod,[Omega]Half Tights.zipmod,[Kimora]Love Live.zipmod"
;Source: "Input\_Content\ModBoneImplantor.dll"; DestDir: "{app}\BepInEx"; Flags: ignoreversion recursesubdirs ; Components: Content\Modpack
Source: "E:\Games\Emotion Creators\mods\EC Sideloader Modpack\*"; DestDir: "{app}\mods\EC Sideloader Modpack"; Flags: ignoreversion recursesubdirs ; Components: Content\ModpackEC
Source: "Input\_Content\EC_ClothingUnlocker\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs ; Components: Content\EC_ClothingUnlocker
Source: "Input\_Content\EC_HairAccessoryCustomizer\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs ; Components: Content\EC_HairAccessoryCustomizer

Source: "Input\_Content\EC_MaterialEditor\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs ; Components: Content\EC_MaterialEditor

Source: "Input\_Content\ECABMX\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Content\KKABMX
Source: "Input\_Content\EC_OverlayMods\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Content\KSOX
Source: "Input\_Content\EC_InvisibleBody\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Content\EC_InvisibleBody

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Source: "E:\Games\Emotion Creators\mods\EC Sideloader Modpack - Fixes\*"; DestDir: "{app}\mods\EC Sideloader Modpack - Fixes"; Flags: ignoreversion recursesubdirs ; Components: FIX\ModpackECFixes
Source: "Input\_Fix\IllusionFixes_EmotionCreators\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: FIX\IllusionFixes
Source: "Input\_Fix\RimRemover.dll"; DestDir: "{app}\BepInEx\plugins"; Flags: ignoreversion recursesubdirs; Components: FIX\EC_RimRemover
Source: "Input\_Fix\EC_InputHotkeyBlock.dll"; DestDir: "{app}\BepInEx\plugins\EC_Plugins"; Flags: ignoreversion recursesubdirs; Components: FIX\InputHotkeyBlock
Source: "Input\_Fix\ECAlternativeNodeVerification\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: FIX\ECAlternativeNodeVerification
Source: "Input\_Fix\ECIKParentUnlocker\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: FIX\ECIKParentUnlocker

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

;Source: "Input\_Feature\DragAndDrop.dll"; DestDir: "{app}\BepInEx"; Flags: ignoreversion; Components: Feature\DragAndDrop
;Source: "Input\_Feature\KK_BrowserFolders.dll"; DestDir: "{app}\BepInEx"; Flags: ignoreversion; Components: Feature\KK_BrowserFolders
;Source: "Input\_Feature\KK_ClothesLoadOption.dll"; DestDir: "{app}\BepInEx"; Flags: ignoreversion; Components: Feature\KK_ClothesLoadOption
;Source: "Input\_Feature\KK_BetterColorPicker\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Feature\KK_BetterColorPicker

Source: "Input\_Feature\EC_RemoveToRecycleBin\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Feature\EC_RemoveToRecycleBin
Source: "Input\_Feature\GraphicsSettings.dll"; DestDir: "{app}\BepInEx\plugins"; Flags: ignoreversion recursesubdirs; Components: Feature\GraphicsSettings
Source: "Input\_Feature\EmotionCreators_CharacterReplacer\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Feature\CharacterReplacer
Source: "Input\_Feature\EC_CharacterExport\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Feature\CharacterExport

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Source: "Input\_Misc\FPSCounter\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: MISC\FPSCounter
Source: "Input\_Misc\RuntimeUnityEditor\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: MISC\Editor
Source: "Input\_Misc\EnableResize.dll"; DestDir: "{app}\BepInEx\plugins"; Flags: ignoreversion recursesubdirs; Components: MISC\EnableResize
Source: "D:\SVN\KK\KK-HF_Patch\Input\_Misc\Memes\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: MISC\Meme

[InstallDelete]
; Clean up old translations
Type: filesandordirs; Name: "{app}\BepInEx\translation"; Components: TL
Type: filesandordirs; Name: "{app}\UserData\LauncherEN"; Components: TL\EnglishLauncher
Type: filesandordirs; Name: "{app}\InitSettingEN.exe"

Type: filesandordirs; Name: "{app}\BepInEx\plugins\EC_CorePlugins"

; Clean up old modpacks
;Type: filesandordirs; Name: "{app}\mods\Sideloader Modpack"; Components: Content\Modpack
;Type: filesandordirs; Name: "{app}\mods\Sideloader Modpack - EC"; Components: Content\ModpackEC

; Always not necessary
Type: files; Name: "{app}\0Harmony.dll"
Type: files; Name: "{app}\BepInEx.dll"
Type: files; Name: "{app}\Mono.Cecil.dll"

; Junk
Type: files; Name: "{app}\*.log"
Type: files; Name: "{app}\*.pdb"
Type: files; Name: "{app}\changelog.txt"
; Yikes, someone extracted a sideloader mod...
Type: files; Name: "{app}\manifest.xml"

; Needed to migrate from BepInEx 3.x to 4.x
Type: files; Name: "{app}\BepInEx.Patcher.exe"; Components: BepInEx

; Will get replaced, makes sure there are no stale files left
Type: filesandordirs; Name: "{app}\BepInEx\cache"; Components: BepInEx
Type: filesandordirs; Name: "{app}\BepInEx\core"; Components: BepInEx

; Potentially incompatible, outdated or buggy plugins
Type: files; Name: "{app}\mods\atari2.1 (normal bust).zipmod"

; Clean up old uncensors
Type: filesandordirs; Name: "{app}\mods\Uncensor"; Components: UNC\Selector
Type: filesandordirs; Name: "{app}\mods\EC_UncensorSelector Base.zipmod"; Components: UNC\Selector
Type: filesandordirs; Name: "{app}\mods\Uncensors and body mods"; Components: UNC\Selector
Type: filesandordirs; Name: "{app}\mods\EC Sideloader Modpack - EC_UncensorSelector"; Components: UNC\Selector

; Clean dlls completely to fix problems with copied/unnecessary/old dlls. All dlls are included in the patch data
Type: filesandordirs; Name: "{app}\EmotionCreators_Data\Managed"; Components: Patch
Type: filesandordirs; Name: "{app}\EmotionCreators_Data\MonoBleedingEdge"; Components: Patch

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
Filename: "{app}\InitSetting.exe"; Description: "{cm:RunGame}"; Flags: postinstall runascurrentuser nowait skipifsilent skipifdoesntexist;

Filename: "https://discord.gg/Szumqcu"; Description: "{cm:RunDiscord}"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent;

Filename: "https://github.com/ManlyMarco/EC-HF_Patch"; Description: "Latest releases and source code"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent
Filename: "https://www.patreon.com/ManlyMarco"; Description: "Support on Patreon"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent

[Code]
procedure CreateBackup(path: String);
external 'CreateBackup@files:HelperLib.dll stdcall';

procedure FixConfig(path: String);
external 'FixConfig@files:HelperLib.dll stdcall';

procedure WriteVersionFile(path, version: String);
external 'WriteVersionFile@files:HelperLib.dll stdcall';

procedure SetConfigDefaults(path: String);
external 'SetConfigDefaults@files:HelperLib.dll stdcall';

procedure RemoveJapaneseCards(path: String);
external 'RemoveJapaneseCards@files:HelperLib.dll stdcall';

procedure RemoveNonstandardListfiles(path: String);
external 'RemoveNonstandardListfiles@files:HelperLib.dll stdcall';

procedure RemoveSideloaderDuplicates(path: String);
external 'RemoveSideloaderDuplicates@files:HelperLib.dll stdcall';

procedure RemoveModsExceptModpacks(path: String);
external 'RemoveModsExceptModpacks@files:HelperLib.dll stdcall';

procedure CurPageChanged(CurPageID: Integer);
begin
  if CurPageID = wpSelectTasks then
  begin
    // If old config style is detected clean the config by default
    if(FileExists(ExpandConstant('{app}\BepInEx\config\EC.Core.Fixes.MakerFPS.cfg'))) then
    begin
      WizardForm.TasksList.CheckItem(WizardForm.TasksList.Items.Count - 6, coCheckWithChildren);
    end;
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
      if(SuppressibleMsgBox(ExpandConstant('{cm:MsgExeNotFound}'), mbError, MB_YESNO, 0) = IDNO) then
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

  // After install completes
  if (CurPageID = wpFinished) then
  begin
    
    // Always clean up sideloader mods in case user already messed up
    if IsComponentSelected('fixSideloaderDupes') then
        RemoveSideloaderDuplicates(ExpandConstant('{app}'));
        
    FixConfig(ExpandConstant('{app}'));
    WriteVersionFile(ExpandConstant('{app}'), '{#VERSION}');
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
    Exec('takeown', ExpandConstant('/f "{app}" /r /SKIPSL /d y'), ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
    Exec('icacls', ExpandConstant('"{app}" /grant everyone:F /t /c /l'), ExpandConstant('{app}'), SW_HIDE, ewWaitUntilTerminated, ResultCode);
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
    //RemoveModsExceptModpacks(ExpandConstant('{app}'));
    DelTree(ExpandConstant('{app}\mods'), True, True, True);
    
  if (IsTaskSelected('delete\Listfiles')) then
    RemoveNonstandardListfiles(ExpandConstant('{app}'));
      
  SetConfigDefaults(ExpandConstant('{app}'));
end;
