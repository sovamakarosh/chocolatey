$packageName = 'bareos-client'
$installerType = 'exe'
$url = 'https://download.bareos.org/bareos/release/19.2/windows/winbareos-19.2.7-release-32-bit.exe'
$url64 = 'https://download.bareos.org/bareos/release/19.2/windows/winbareos-19.2.7-release-64-bit.exe'
$silentArgs = '/S'
$validExitCodes = @(0)
$checksum      = '3CA9FE7BC67DC042F9F97AB448F05A733502833BFCADE3B26CCEF900545E7FAF'
$checksumType  = 'sha256'
$checksum64    = 'D2880A6110C7A1A42AED7BB97F0BCB176F58427223EFF1C305A183382CFC1055'
$checksumType64= 'sha256'

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64" "$checksum" "$checksumType" "$checksum64" "$checksumType64"  -validExitCodes $validExitCodes