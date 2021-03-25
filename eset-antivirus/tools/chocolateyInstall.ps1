$ErrorActionPreference = 'Stop';

$packageName= 'eset-antivirus'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = 'https://download.eset.com/com/eset/apps/business/eea/windows/latest/eea_nt32.msi'
  url64bit      = 'https://download.eset.com/com/eset/apps/business/eea/windows/latest/eea_nt64.msi'
  checksum      = '63DB41DD5400C03A572D9141488B2791D5A807CE8A173A4695F1AAE905939013'
  checksumType  = 'sha256'
  checksum64    = 'D8CB72E5A921262DD3C1FE8FE172090F46680F0657C250D21727FC5C79E647BF'
  checksumType64= 'sha256'

  silentArgs    = '/qn'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs