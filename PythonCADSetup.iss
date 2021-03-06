; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{3B87B49A-1A23-4E98-9C9D-D6152D970EB5}
AppName=PythonCAD
AppVersion=0.5
;AppVerName=PythonCAD 0.4
AppPublisher=PythonCAD
AppPublisherURL=https://sourceforge.net/projects/pythoncad/
AppSupportURL=https://sourceforge.net/projects/pythoncad/
AppUpdatesURL=https://sourceforge.net/projects/pythoncad/
DefaultDirName={pf}\PythonCAD
DefaultGroupName=PythonCAD
LicenseFile=.\PythonCAD\Gpl_license.txt
OutputBaseFilename=setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: "..\pyinstaller-1.5.1\PythonCAD\dist\PythonCAD\PythonCAD.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\PythonCAD\icons\*"; DestDir: "{app}\icons"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\pyinstaller-1.5.1\PythonCAD\dist\PythonCAD\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\PythonCAD"; Filename: "{app}\PythonCAD.exe"  ;WorkingDir: "{app}"; AppUserModelID: "PythonCAD.PythonCAD"
Name: "{commondesktop}\PythonCAD"; Filename: "{app}\PythonCAD.exe"; Tasks: desktopicon ;WorkingDir: "{app}";AppUserModelID: "PythonCAD.PythonCAD"
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\PythonCAD"; Filename: "{app}\PythonCAD.exe"; Tasks: quicklaunchicon  ;WorkingDir: "{app}";AppUserModelID: "PythonCAD.PythonCAD"

[Run]
Filename: "{app}\PythonCAD.exe"; Description: "{cm:LaunchProgram,PythonCAD}"; Flags: nowait postinstall skipifsilent

