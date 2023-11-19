function Move-Data() {
  <#
    .SYNOPSIS
    Moving data.

    .DESCRIPTION
    Moving data using the 'Move-Item' cmdlet with '-LiteralPath'.

    .PARAMETER SRC
    Source data.

    .PARAMETER DST
    Destination.

    .EXAMPLE
    Copy-Data -SRC 'C:\File.TXT' -DST 'D:\File.TXT'
  #>

  param(
    [Alias('S')][string]$SRC,
    [Alias('D')][string]$DST
  )

  Move-Item -LiteralPath "${SRC}" -Destination "${DST}" -Force
}
