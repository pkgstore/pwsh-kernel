@{
  RootModule = 'PkgStore.Kernel.psm1'
  ModuleVersion = '0.1.0'
  GUID = '58655ac6-8750-4397-a15f-29f9e18e257d'
  Author = 'Kitsune Solar'
  CompanyName = 'iHub.TO'
  Copyright = '(c) 2023 Kitsune Solar. All rights reserved.'
  Description = 'A kernel for PowerShell modules from Package Store.'
  PowerShellVersion = '7.2'
  FunctionsToExport = @(
    'Write-Msg', 'Test-Module', 'Test-Data', 'New-Data', 'Copy-Data', 'Move-Data', 'Remove-Data'
  )
  PrivateData = @{
    PSData = @{
      Tags = @('pwsh', 'kernel')
      LicenseUri = 'https://choosealicense.com/licenses/mit/'
      ProjectUri = 'https://github.com/pkgstore/pwsh-kernel'
    }
  }
}
