$packageName = 'bareos-client'
$installerType = 'exe'
$url = 'https://download.bareos.org/bareos/release/17.2/windows/winbareos-17.2.4-postvista-32-bit-r8.1.exe'
$url64 = 'https://download.bareos.org/bareos/release/17.2/windows/winbareos-17.2.4-postvista-64-bit-r8.1.exe'
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes