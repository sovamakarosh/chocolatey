$packageName= 'bareos-client'
$url64      = 'https://download.bareos.org/current/windows/winbareos-23.0.3~pre34.9a6c163ce-release-64-bit.exe'

$packageArgs = @{
  packageName   = $packageName
  url64bit      = $url64
  silentArgs    = "/S"
  validExitCodes= @(0)
  checksum64    = 'B1D5F1B7D3D4B10985663BEFCDC60B2A7F4E93E0FE31E17AB815B020B0EBA7C7'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs