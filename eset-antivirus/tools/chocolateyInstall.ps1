$ErrorActionPreference = 'Stop';

$packageName= 'eset-antivirus'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = 'https://download.eset.com/com/eset/apps/business/eea/windows/latest/eea_nt32.msi'
  url64bit      = 'https://download.eset.com/com/eset/apps/business/eea/windows/latest/eea_nt64.msi'
  checksum      = '1B0E50372A2AD7B752363E30EAA3A83367B1D5A880C4C6338C4E30E91F248141'
  checksumType  = 'sha256'
  checksum64    = 'CB0A61ECE14C753074F94FC0302DAD875148391001A43265F52395D918129D1C'
  checksumType64= 'sha256'

  silentArgs    = '/qn'
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs