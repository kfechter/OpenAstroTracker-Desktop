; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "OATControl"
#define MyAppVersion "1.0.3.0"
#define MyAppPublisher "OpenAstroTech"
#define MyAppURL "https://wiki.openastrotech.com/"
#define MyAppExeName "OATControl.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{20C1A22F-131F-40E3-BF13-2FDAD69FBD34}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableWelcomePage=no
WizardImageFile=.\Assets\OATControlSplash.bmp
DisableProgramGroupPage=yes
LicenseFile=.\Assets\CreativeCommons.txt
InfoAfterFile=.\Readme.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=.\bin\SetupOutput
OutputBaseFilename=OATControlSetup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: ".\bin\Release\OATControl.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\bin\Release\ControlzEx.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\bin\Release\MahApps.Metro.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\bin\Release\MahApps.Metro.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\bin\Release\OATCommunications.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\bin\Release\OATCommunications.WPF.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\bin\Release\OATCommunications.ASCOM.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\bin\Release\ASCOM.DeviceInterfaces.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\bin\Release\ASCOM.DriverAccess.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\bin\Release\ASCOM.Exceptions.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\bin\Release\ASCOM.Utilities.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\bin\Release\OATControl.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\bin\Release\PointsOfInterest.xml"; DestDir: "{app}"; Flags: ignoreversion
Source: ".\bin\Release\System.Windows.Interactivity.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

