<#PSScriptInfo
  .VERSION      0.1.0
  .GUID         58655ac6-8750-4397-a15f-29f9e18e257d
  .AUTHOR       Kitsune Solar
  .AUTHOREMAIL  mail@kitsune.solar
  .COMPANYNAME  iHub.TO
  .COPYRIGHT    2023 Kitsune Solar. All rights reserved.
  .LICENSEURI   https://github.com/pkgstore/pwsh-kernel/blob/main/LICENSE
  .PROJECTURI
#>

function Write-Msg() {
  <#
    .SYNOPSIS

    .DESCRIPTION
  #>

  param (
    [Alias('T')][string]$Type,
    [Alias('M')][string]$Message,
    [Alias('A')][string]$Action = 'Continue'
  )

  switch ($Type) {
    'HL'    { Write-Host "${NL}--- ${Message}".ToUpper() -ForegroundColor Blue }
    'I'     { Write-Information -MessageData "${Message}" -InformationAction "${Action}" }
    'W'     { Write-Warning -Message "${Message}" -WarningAction "${Action}" }
    'E'     { Write-Error -Message "${Message}" -ErrorAction "${Action}" }
    default { Write-Host "${Message}" }
  }
}

function Test-Module() {
  <#
    .SYNOPSIS

    .DESCRIPTION
  #>

  Param(
    [Parameter(Mandatory)][Alias('N')][string[]]$Names
  )

  $Names | ForEach-Object {
    if (-not (Get-Module -ListAvailable -Name "${_}")) {
      Write-Error -Message "Module '${_}' not installed!" -ErrorAction 'Stop'
    }
  }
}

function Test-Data() {
  <#
    .SYNOPSIS

    .DESCRIPTION
  #>

  param (
    [Alias('T')][string]$Type,
    [Alias('P')][string]$Path
  )

  switch ($Type) {
    'D' { $Type = 'Container' }
    'F' { $Type = 'Leaf' }
  }

  Test-Path -LiteralPath "${Path}" -PathType "${Type}"
}

function New-Data() {
  <#
    .SYNOPSIS

    .DESCRIPTION
  #>

  param (
    [Alias('T')][string]$Type,
    [Alias('P')][string]$Path,
    [Alias('N')][string]$Name,
    [Alias('A')][string]$Action = 'SilentlyContinue'
  )

  switch ($Type) {
    'D' { $Type = 'Directory' }
    'F' { $Type = 'File' }
  }

  New-Item -Path "${Path}" -Name "${Name}" -ItemType "${Type}" -ErrorAction "${Action}"
}

function Copy-Data() {
  <#
    .SYNOPSIS

    .DESCRIPTION
  #>

  param (
    [Alias('S')][string]$Src,
    [Alias('D')][string]$Dst
  )

  Copy-Item -LiteralPath "${Src}" -Destination "${Dst}" -Force
}

function Move-Data() {
  <#
    .SYNOPSIS

    .DESCRIPTION
  #>

  param (
    [Alias('S')][string]$Src,
    [Alias('D')][string]$Dst
  )

  Move-Item -LiteralPath "${Src}" -Destination "${Dst}" -Force
}

function Remove-Data() {
  <#
    .SYNOPSIS

    .DESCRIPTION
  #>

  param (
    [Alias('P')][string]$Path
  )

  Remove-Item -LiteralPath "${Path}" -Force
}
