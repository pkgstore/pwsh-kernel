function Copy-Data() {
  <#
    .SYNOPSIS
    Copying data.

    .DESCRIPTION
    Copying data using the 'Copy-Item' cmdlet with '-LiteralPath'.

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

  Copy-Item -LiteralPath "${SRC}" -Destination "${DST}" -Force
}
