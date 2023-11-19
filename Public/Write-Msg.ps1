function Write-Msg() {
  <#
    .SYNOPSIS
    Display messages.

    .DESCRIPTION
    Display messages depending on their type.

    .PARAMETER Type
    The type of message to be displayed:
      'HL' | Write-Host (Title).
      'I'  | Write-Information.
      'W'  | Write-Warning.
      'E'  | Write-Error.

    .PARAMETER Message
    Contents of the message to be displayed.

    .PARAMETER Action
    Action when a message is displayed.

    .EXAMPLE
    Write-Msg -Type 'HL' -Message 'Title message'

    .EXAMPLE
    Write-Msg -Type 'E' -Message 'File not found!' -Action 'Stop'
  #>

  param(
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
