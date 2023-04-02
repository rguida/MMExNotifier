; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "MMExNotifier"
#define MyAppVersion "1.0.0"
#define MyAppURL "https://github.com/intcooper/MMExNotifier"
#define MyAppExeName "MMExNotifier.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{8065688C-C1EA-4273-942D-DA80826524AA}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\LICENSE.txt
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=commandline
OutputBaseFilename={#MyAppName}_Setup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Dirs]
Name: "{app}\runtimes"

[Files]
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\bin\Release\net6.0-windows10.0.22000.0\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\bin\Release\net6.0-windows10.0.22000.0\EntityFramework.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\bin\Release\net6.0-windows10.0.22000.0\EntityFramework.SqlServer.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\bin\Release\net6.0-windows10.0.22000.0\Hardcodet.NotifyIcon.Wpf.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\bin\Release\net6.0-windows10.0.22000.0\linq2db.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\bin\Release\net6.0-windows10.0.22000.0\Microsoft.Toolkit.Uwp.Notifications.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\bin\Release\net6.0-windows10.0.22000.0\Microsoft.Win32.TaskScheduler.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\bin\Release\net6.0-windows10.0.22000.0\Microsoft.Windows.SDK.NET.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\bin\Release\net6.0-windows10.0.22000.0\MMExNotifier.deps.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\bin\Release\net6.0-windows10.0.22000.0\MMExNotifier.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\bin\Release\net6.0-windows10.0.22000.0\MMExNotifier.dll.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\bin\Release\net6.0-windows10.0.22000.0\MMExNotifier.pdb"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\bin\Release\net6.0-windows10.0.22000.0\MMExNotifier.runtimeconfig.json"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\bin\Release\net6.0-windows10.0.22000.0\System.Data.SqlClient.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\bin\Release\net6.0-windows10.0.22000.0\System.Data.SQLite.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\bin\Release\net6.0-windows10.0.22000.0\System.Data.SQLite.EF6.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\bin\Release\net6.0-windows10.0.22000.0\WinRT.Runtime.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\bin\Release\net6.0-windows10.0.22000.0\runtimes\*"; DestDir: "{app}\runtimes"; Flags: recursesubdirs
Source: "C:\Users\Roberto\Documents\GitHub\MMExNotifier\MMExNotifier\LICENSE.txt"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

