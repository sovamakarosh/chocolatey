$PackageName = 'bareos-client'
$InstallerType = 'exe'
$Url64 = 'https://download.bareos.org/current/windows/winbareos-23.0.3~pre34.9a6c163ce-release-64-bit.exe'
$SilentArgs = '/S'
$ValidExitCodes = @(0)
$Checksum64    = 'B1D5F1B7D3D4B10985663BEFCDC60B2A7F4E93E0FE31E17AB815B020B0EBA7C7'
$ChecksumType64= 'sha256'

Install-ChocolateyPackage "$PackageName" "$InstallerType" "$SilentArgs" "$Url64" "$Checksum64" "$ChecksumType64"  -validExitCodes $ValidExitCodes