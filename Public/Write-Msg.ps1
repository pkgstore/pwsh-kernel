function Write-Msg() {
  <#
    .SYNOPSIS

    .DESCRIPTION
  #>

  param (
    [string]$Type,
    [string]$Message,
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
