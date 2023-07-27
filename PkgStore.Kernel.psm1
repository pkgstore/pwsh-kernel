function Write-Msg() {
  <#
    .SYNOPSIS
      Message function.

    .DESCRIPTION

    .PARAMETER Type
      Message type.
      Alias: '-T'.

    .PARAMETER Message
      Message body.
      Alias: '-M'.

    .PARAMETER Action
      Action type.
      Alias: '-A'.

    .EXAMPLE
      Write-Msg -T 'E' -M "'curl.exe' not found!" -A 'Stop'

    .LINK
      Package Store: https://github.com/pkgstore

    .NOTES
      Author: Kitsune Solar <mail@kitsune.solar>
  #>

  [CmdletBinding()]

  param (
    [Alias('T')]
    [string]${Type},

    [Alias('M')]
    [string]${Message},

    [Alias('A')]
    [string]${Action} = 'Continue'
  )

  switch ( ${Type} ) {
    'HL' {
      Write-Host $( "${NL}--- ${Message}" ).ToUpper() -ForegroundColor Blue
    }
    'I' {
      Write-Information -MessageData "${Message}" -InformationAction "${Action}"
    }
    'W' {
      Write-Warning -Message "${Message}" -WarningAction "${Action}"
    }
    'E' {
      Write-Error -Message "${Message}" -ErrorAction "${Action}"
    }
    default {
      Write-Host "${Message}"
    }
  }
}

function Test-Module() {
  <#
    .SYNOPSIS
      Checking if a PowerShell module is installed.

    .DESCRIPTION

    .PARAMETER Names
      Module names.
      Alias: '-N'.

    .EXAMPLE
      Test-Module -N 'PkgStore.Kernel'

    .LINK
      Package Store: https://github.com/pkgstore

    .NOTES
      Author: Kitsune Solar <mail@kitsune.solar>
  #>

  [CmdletBinding()]

  Param(
    [Parameter(Mandatory)]
    [Alias('N')]
    [string[]]${Names}
  )

  ForEach ( ${N} in ${Names} ) {
    if ( -not ( Get-Module -ListAvailable -Name "${N}" ) ) {
      Write-Error -Message "Module '${N}' not installed!" -ErrorAction "Stop"
    }
  }
}
