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
