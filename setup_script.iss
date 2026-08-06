[Setup]
AppName=METARFill BMKG
AppVersion=1.0.0
DefaultDirName={autopf}\METARFill_BMKG
DefaultGroupName=METARFill BMKG
UninstallDisplayIcon={app}\METARFill.exe
SetupIconFile=METARFill_Logo.ico
Compression=lzma2
SolidCompression=yes
OutputDir=.\InstallerOutput
OutputBaseFilename=METARFill_BMKG_Setup

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "dist\METARFILL\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{group}\METARFill BMKG"; Filename: "{app}\METARFill.exe"; IconFilename: "{app}\METARFill_Logo.ico"
Name: "{autodesktop}\METARFill BMKG"; Filename: "{app}\METARFill.exe"; Tasks: desktopicon; IconFilename: "{app}\METARFill_Logo.ico"

[Run]
Filename: "{app}\METARFill.exe"; Description: "{cm:LaunchProgram,METARFill BMKG}"; Flags: nowait postinstall skipifsilent