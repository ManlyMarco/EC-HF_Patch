;--------------------------------------------Full game name for naming patch itself and desktop icons
#define NAME "EmotionCreators"
;----------------------------------------------------------------------------Current HF Patch version
#define VERSION "1.1"
;----------------------------------------------------------------------------------------------------
#include "_Common\Header.iss"

[Setup]
CloseApplications=yes
RestartApplications=no
CloseApplicationsFilter=*.exe,*.dll
Compression=lzma2/ultra64
;lzma2/ultra64 | zip
LZMAUseSeparateProcess=yes
LZMADictionarySize=208576
LZMANumFastBytes=273
LZMANumBlockThreads=2
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
Name: "Patch"; Description: "Patch and free DLC 05/24 by Illusion + Game repair"; Types: full_en full extra custom bare none; Flags: fixed

Name: "BepInEx"; Description: "BepInEx v2018 x64 5.0.0.133 Unity plugin framework"; Types: full_en full extra custom bare; Flags: fixed 
Name: "BepInEx\Dev"; Description: "{cm:CompDev}";

Name: "EC_CorePlugins"; Description: "EC_CorePlugins v1.1"; Types: full_en full extra custom bare; Flags: fixed
Name: "ECAPI"; Description: "ECAPI v1.3.3 (Modding API needed by many plugins)"; Types: full_en full extra custom bare; Flags: fixed

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Name: "TL"; Description: "{cm:CompTL}"; Types: full_en extra

Name: "TL\AutoTranslator"; Description: "XUnity.AutoTranslator 3.4.0"; Types: full_en extra
Name: "TL\AutoTranslator\EnglishTranslation"; Description: "ManlyMarco/EmotionCreatorsTranslation v2.0"; Types: full_en extra
Name: "TL\EnglishLauncher"; Description: "English Launcher v1.0"; Types: full_en extra

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Name: "UNC"; Description: "{cm:CompUNC}"; Types: full_en full extra
Name: "UNC\Selector"; Description: "Uncensor Selector v3.6"; Types: full_en full extra
Name: "UNC\Selector\Pack"; Description: "Uncensor pack 12/05/2019"; Types: full_en full extra

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Name: "Content"; Description: "Additional content for character and scene creation (Needed to properly load most character cards and scenes)"; Types: full_en full extra

Name: "Content\ModpackEC"; Description: "Sideloader Modpack for EmotionCreators 01-5-2019 (Mods specially made for EC)"; Types: full_en full extra
Name: "Content\Modpack"; Description: "Sideloader Modpack 22-5-2019 (Lots of additional content for making characters"; Types: full_en full extra

Name: "Content\EC_ClothingUnlocker"; Description: "EC_ClothingUnlocker v1.1 (can use female clothes on males)"; Types: full_en full extra
Name: "Content\EC_HairAccessoryCustomizer"; Description: "EC_HairAccessoryCustomizer v1.0 (adds advanced controls for hair accessories)"; Types: full_en full extra

Name: "Content\KKABMX"; Description: "ECABMX v3.1 (More sliders in maker)"; Types: full_en full extra
Name: "Content\KSOX"; Description: "EmotionCreators Overlay Mods v4.2.1 (Custom body, clothes and eye textures)"; Types: full_en full extra
Name: "Content\EC_InvisibleBody"; Description: "EC_InvisibleBody v1.2.1 (Hide character body)"; Types: full_en full extra
Name: "Content\EC_RimRemover"; Description: "EC_RimRemover v1.0 (Can help make hair from KK look better)"; Types: full_en full extra

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

;Name: "FIX"; Description: "{cm:CompFIX}"; Types: extra

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Name: "Feature"; Description: "Improvements and additional features"; Types: extra
;Name: "Feature\DragAndDrop"; Description: "Drag and drop character cards and scenes v1.3"; Types: full_en full extra
;Name: "Feature\KK_BrowserFolders"; Description: "KK_BrowserFolders v1.3 (Folder support in chara/scene select screens)"; Types: full_en full extra
;Name: "Feature\KK_ClothesLoadOption"; Description: "KK_ClothesLoadOption 0.0.0 (Can load only some parts of coordinate cards)"; Types: full_en full extra
;Name: "Feature\KK_BetterColorPicker"; Description: "KK_BetterColorPicker v1.0 (Select color from anywhere on screen in maker, useful for copying colors from reference images)"; Types: full_en full extra

Name: "Feature\EC_RemoveToRecycleBin"; Description: "EC_RemoveToRecycleBin v1.0 (Prevents accidentally losing cards by overwriting them)"; Types: full_en full extra

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Name: "MISC"; Description: "{cm:CompMISC}";

Name: "MISC\Editor"; Description: "Runtime Unity Editor v1.4 (Trainer and debugger)"; Types: full_en full extra

Name: "MISC\FIX"; Description: "Fix game registry (e.g. after moving to different folder)"; Types: bare full_en full extra

[Files]
Source: "HelperLib.dll"; DestDir: "{app}"; Flags: dontcopy

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Source: "Input\_Patch\emocre_01_plus_pd0524fgr_all\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Patch

Source: "Input\BepInEx\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs solidbreak createallsubdirs; Components: BepInEx
Source: "Input\BepInEx.cfg"; DestDir: "{app}\BepInEx\config\"; Flags: ignoreversion; Components: BepInEx; Check: not FileExists(ExpandConstant('{app}\BepInEx\config\BepInEx.cfg'))
Source: "Input\BepInEx_Dev\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: BepInEx\Dev;

Source: "Input\EC_CorePlugins\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: EC_CorePlugins

Source: "Input\ECAPI.dll"; DestDir: "{app}\BepInEx\plugins"; Flags: ignoreversion; Components: ECAPI

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Source: "Input\_TL\XUnity.AutoTranslator\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: TL\AutoTranslator

Source: "Input\_TL\EmotionCreatorsTranslation\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Excludes: UserData; Components: TL\AutoTranslator\EnglishTranslation

Source: "Input\_TL\InitSettingEN.exe"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: TL\EnglishLauncher

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Source: "Input\_Uncensor\KK_UncensorSelector\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: UNC\Selector
Source: "Input\_Uncensor\Uncensors and body mods\*"; DestDir: "{app}\mods\Uncensors and body mods"; Flags: ignoreversion recursesubdirs; Components: UNC\Selector\Pack

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Source: "..\..\KK\KK-HF_Patch\Input\_Content\[KK]Sideloader Modpack\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs solidbreak; Components: Content\Modpack
;Source: "Input\_Content\ModBoneImplantor.dll"; DestDir: "{app}\BepInEx"; Flags: ignoreversion recursesubdirs solidbreak; Components: Content\Modpack
Source: "Input\_Content\[EC]Sideloader Modpack\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs solidbreak; Components: Content\ModpackEC

Source: "Input\_Content\EC_ClothingUnlocker\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs solidbreak; Components: Content\EC_ClothingUnlocker
Source: "Input\_Content\EC_HairAccessoryCustomizer\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs solidbreak; Components: Content\EC_HairAccessoryCustomizer

Source: "Input\_Content\ECABMX.dll"; DestDir: "{app}\BepInEx\plugins"; Flags: ignoreversion recursesubdirs; Components: Content\KKABMX
Source: "Input\_Content\EC.OverlayMods.dll"; DestDir: "{app}\BepInEx\plugins"; Flags: ignoreversion recursesubdirs; Components: Content\KSOX
Source: "Input\_Content\EC_InvisibleBody\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Content\EC_InvisibleBody
Source: "Input\_Content\EC_RimRemover.dll"; DestDir: "{app}\BepInEx\plugins"; Flags: ignoreversion recursesubdirs; Components: Content\EC_RimRemover

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

; no fixes!

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

;Source: "Input\_Feature\DragAndDrop.dll"; DestDir: "{app}\BepInEx"; Flags: ignoreversion; Components: Feature\DragAndDrop
;Source: "Input\_Feature\KK_BrowserFolders.dll"; DestDir: "{app}\BepInEx"; Flags: ignoreversion; Components: Feature\KK_BrowserFolders
;Source: "Input\_Feature\KK_ClothesLoadOption.dll"; DestDir: "{app}\BepInEx"; Flags: ignoreversion; Components: Feature\KK_ClothesLoadOption
;Source: "Input\_Feature\KK_BetterColorPicker\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: Feature\KK_BetterColorPicker

Source: "Input\_Feature\EC_RemoveToRecycleBin.dll"; DestDir: "{app}\BepInEx\plugins"; Flags: ignoreversion; Components: Feature\EC_RemoveToRecycleBin

;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Source: "Input\_Misc\RuntimeUnityEditor\*"; DestDir: "{app}\BepInEx\plugins\RuntimeUnityEditor"; Flags: ignoreversion recursesubdirs; Components: MISC\Editor

[InstallDelete]
; Clean up old translations
Type: filesandordirs; Name: "{app}\BepInEx\translation"; Components: TL

; Clean up old modpacks
Type: filesandordirs; Name: "{app}\mods\Sideloader Modpack"; Components: Content\Modpack
Type: filesandordirs; Name: "{app}\mods\Sideloader Modpack - EC"; Components: Content\ModpackEC

; Always not necessary
Type: files; Name: "{app}\0Harmony.dll"
Type: files; Name: "{app}\BepInEx.dll"
Type: files; Name: "{app}\Mono.Cecil.dll"
Type: files; Name: "{app}\BepInEx.Patcher.exe"; Components: BepInEx

; Junk
Type: files; Name: "{app}\*.log"
Type: files; Name: "{app}\*.pdb"
; Yikes, someone extracted a sideloader mod...
Type: files; Name: "{app}\manifest.xml"

; Potentially incompatible, outdated or buggy plugins
Type: files; Name: "{app}\mods\atari2.1 (normal bust).zipmod"

; Clean up old uncensors
Type: filesandordirs; Name: "{app}\mods\Uncensor"; Components: UNC\Selector
Type: filesandordirs; Name: "{app}\mods\EC_UncensorSelector Base.zipmod"; Components: UNC\Selector
Type: filesandordirs; Name: "{app}\mods\Uncensors and body mods"; Components: UNC\Selector

; Clean dlls completely to fix problems with copied/unnecessary/old dlls. All dlls are included in the patch data
Type: filesandordirs; Name: "{app}\EmotionCreators_Data\Managed"; Components: Patch
Type: filesandordirs; Name: "{app}\EmotionCreators_Data\MonoBleedingEdge"; Components: Patch

[Registry]
Root: HKCU; Subkey: "Software\Illusion"; Components: MISC\FIX
Root: HKCU; Subkey: "Software\Illusion\emotioncreators"; Components: MISC\FIX
Root: HKCU; Subkey: "Software\Illusion\emotioncreators\emotioncreators"; Components: MISC\FIX
Root: HKCU; Subkey: "Software\Illusion\emotioncreators\emotioncreators"; ValueType: string; ValueName: "INSTALLDIR"; ValueData: "{app}\"; Components: MISC\FIX

[Tasks]
Name: desktopicon; Description: "{cm:TaskIcon}"; Components: TL\EnglishLauncher; Flags: unchecked
Name: desktopicon\jp; Description: "{cm:TaskIcon}"; Components: not TL\EnglishLauncher; Flags: unchecked
Name: delete; Description: "{cm:TaskDelete}";
Name: delete\Sidemods; Description: "{cm:TaskDeleteSide}"
Name: delete\Plugins; Description: "{cm:TaskDeletePlugins}";
Name: delete\Config; Description: "{cm:TaskDeletePluginSettings}"; Flags: unchecked
Name: delete\Listfiles; Description: "{cm:TaskDeleteLst}"
Name: fixSideloaderDupes; Description: "{cm:TaskSideDupes}";

[Icons]
Name: "{userdesktop}\{#NAME}"; Filename: "{app}\InitSettingEN.exe"; IconFilename: "{app}\InitSettingEN.exe"; WorkingDir: "{app}\"; Comment: "EmotionCreators English launcher"; Tasks: desktopicon
Name: "{userdesktop}\{#NAME}"; Filename: "{app}\InitSetting.exe"; IconFilename: "{app}\InitSetting.exe"; WorkingDir: "{app}\"; Comment: "{cm:IconGame}"; Tasks: desktopicon\jp

[Run]
Filename: "{app}\InitSettingEN.exe"; Description: "{cm:RunGame}"; Flags: postinstall runascurrentuser nowait skipifsilent skipifdoesntexist; Components: TL\EnglishLauncher
Filename: "{app}\InitSetting.exe"; Description: "{cm:RunGame}"; Flags: postinstall runascurrentuser nowait skipifsilent skipifdoesntexist; Components: not TL\EnglishLauncher

Filename: "https://discord.gg/Szumqcu"; Description: "{cm:RunDiscord}"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent;

Filename: "http://www.hongfire.com/forum/forum/hentai-lair/hentai-game-discussion/5921249-illusion-koikatu-コイカツ！-discussion-and-faq"; Description: "{cm:RunHF}"; Flags: shellexec runasoriginaluser postinstall unchecked nowait skipifsilent

[Code]
procedure FixConfig(path: String);
external 'FixConfig@files:HelperLib.dll stdcall';

procedure SetConfigDefaults(path: String);
external 'SetConfigDefaults@files:HelperLib.dll stdcall';

procedure RemoveJapaneseCards(path: String);
external 'RemoveJapaneseCards@files:HelperLib.dll stdcall';

procedure RemoveNonstandardListfiles(path: String);
external 'RemoveNonstandardListfiles@files:HelperLib.dll stdcall';

procedure RemoveSideloaderDuplicates(path: String);
external 'RemoveSideloaderDuplicates@files:HelperLib.dll stdcall';

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
      if (FileExists(ExpandConstant('{app}\Koikatu.exe'))) then
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
    if IsComponentSelected('fixSideloaderDupes') then
        RemoveSideloaderDuplicates(ExpandConstant('{app}'));
        
    FixConfig(ExpandConstant('{app}'));
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
  
  if (IsTaskSelected('delete\Plugins')) then
    DelTree(ExpandConstant('{app}\BepInEx\plugins'), True, True, True);
  
  if (IsTaskSelected('delete\Config')) then
    DelTree(ExpandConstant('{app}\BepInEx\config'), True, True, True);
    
  if (IsTaskSelected('delete\Sidemods')) then
    DelTree(ExpandConstant('{app}\mods'), True, True, True);
    
  if (IsTaskSelected('delete\Listfiles')) then
    RemoveNonstandardListfiles(ExpandConstant('{app}'));
      
  // Remove BepInEx folder when all tasks concerning it are checked
  if (IsTaskSelected('delete\Config') and IsTaskSelected('delete\Plugins')) then
    DelTree(ExpandConstant('{app}\BepInEx'), True, True, True);
    
  SetConfigDefaults(ExpandConstant('{app}'));
end;
