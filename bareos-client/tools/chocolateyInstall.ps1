$packageName = 'bareos-client'
$installerType = 'exe'
$url = 'https://download.bareos.org/current/windows/winbareos-23.0.3~pre34.9a6c163ce-release-64-bit.exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$checksum    = 'B1D5F1B7D3D4B10985663BEFCDC60B2A7F4E93E0FE31E17AB815B020B0EBA7C7'
$checksumType= 'sha256'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$checksum" "$checksumType"  -validExitCodes $validExitCodes