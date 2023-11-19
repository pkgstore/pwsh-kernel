function New-Data() {
  <#
    .SYNOPSIS
    Creating data.

    .DESCRIPTION
    Creating data using the 'New-Item' cmdlet.

    .PARAMETER Type
    The type of data to be created:
      'D' | Directory.
      'F' | File.

    .PARAMETER Path
    The path of the data being created.

    .PARAMETER Name
    The name of the data to be created.

    .PARAMETER Action
    Action when creating data.

    .EXAMPLE
    New-Data -Type 'F' -Path 'C:\DATA' -Name 'File.TXT'
  #>

  param(
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
