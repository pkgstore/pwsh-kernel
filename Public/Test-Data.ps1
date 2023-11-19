function Test-Data() {
  <#
    .SYNOPSIS
    Checking data.

    .DESCRIPTION
    Checking data using the 'Test-Path' cmdlet with '-LiteralPath'.

    .PARAMETER Type
    Type of data being checked:
      'D' | Container.
      'F' | Leaf.

    .PARAMETER Path
    Path to the data being checked.

    .EXAMPLE
    Test-Data -Type 'F' -Path 'C:\File.TXT'
  #>

  param(
    [Alias('T')][string]$Type,
    [Alias('P')][string]$Path
  )

  switch ($Type) {
    'D' { $Type = 'Container' }
    'F' { $Type = 'Leaf' }
  }

  Test-Path -LiteralPath "${Path}" -PathType "${Type}"
}
