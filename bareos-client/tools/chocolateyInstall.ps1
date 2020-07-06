$packageName = 'bareos-client'
$installerType = 'exe'
$url = 'https://download.bareos.org/bareos/release/18.2/windows/winbareos-18.2.5-release-32-bit-r127.2.exe'
$url64 = 'https://download.bareos.org/bareos/release/18.2/windows/winbareos-18.2.5-release-64-bit-r127.2.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes