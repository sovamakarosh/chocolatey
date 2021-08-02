$ErrorActionPreference = 'Stop';

$packageName= 'eset-antivirus'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = 'https://download.eset.com/com/eset/apps/business/eea/windows/latest/eea_nt32.msi'
  url64bit      = 'https://download.eset.com/com/eset/apps/business/eea/windows/latest/eea_nt64.msi'
  checksum      = '057fbab8e49f3f888e61dca7ccd7f19892b25212aa64afa00b5258e43f73f146'
  checksumType  = 'sha256'
  checksum64    = '1c3ab920c06553350157e4c4e209c28753e3ef496ef593b02b35352ea580186c'
  checksumType64= 'sha256'

  silentArgs    = '/qn'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
