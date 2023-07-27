@{
  RootModule = 'PkgStore.Kernel.psm1'
  ModuleVersion = '0.0.1'
  GUID = '58655ac6-8750-4397-a15f-29f9e18e257d'
  Author = 'Kitsune Solar'
  CompanyName = 'iHub TO'
  Copyright = '(c) 2023 iHub TO. All rights reserved.'
  Description = 'A kernel for PowerShell modules from Package Store.'
  PowerShellVersion = '7.1'
  FunctionsToExport = @('Write-Msg', 'Test-Module')
  PrivateData = @{
    PSData = @{
      Tags = @('pwsh', 'kernel')
      LicenseUri = 'https://github.com/pkgstore/pwsh-kernel/blob/main/LICENSE'
      ProjectUri = 'https://github.com/pkgstore/pwsh-kernel'
    }
  }
}
