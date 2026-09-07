#define MyAppName "Mentori Journal"
#define MyAppVersion "14.14"
#define MyAppPublisher "Mentori"
#define MyAppExeName "MentoriJournal.cmd"

[Setup]
AppId={{B4D92878-EE2E-4C38-A8F2-98D836DF1414}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={localappdata}\Programs\Mentori Journal
DefaultGroupName={#MyAppName}
PrivilegesRequired=lowest
OutputDir=output
OutputBaseFilename=Mentori-Journal-Setup-v14.14
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
ArchitecturesAllowed=x64compatible
UninstallDisplayName={#MyAppName}

[Files]
Source: "..\app\mentori-journal.html"; DestDir: "{app}\app"; Flags: ignoreversion
Source: "..\launcher\MentoriJournal.cmd"; DestDir: "{app}\launcher"; Flags: ignoreversion

[Icons]
Name: "{autoprograms}\Mentori Journal"; Filename: "{app}\launcher\MentoriJournal.cmd"; WorkingDir: "{app}"
Name: "{autodesktop}\Mentori Journal"; Filename: "{app}\launcher\MentoriJournal.cmd"; WorkingDir: "{app}"

[Run]
Filename: "{app}\launcher\MentoriJournal.cmd"; Description: "اجرای Mentori Journal"; Flags: nowait postinstall skipifsilent

[Code]
procedure CurUninstallStepChanged(CurUninstallStep: TUninstallStep);
begin
  { داده‌های پروفایل کاربر عمداً هنگام حذف برنامه پاک نمی‌شوند. }
end;
