function Remove-Data() {
  <#
    .SYNOPSIS
    Deleting data.

    .DESCRIPTION
    Removing data using the 'Remove-Item' cmdlet with '-LiteralPath'.

    .PARAMETER Path
    Path to the data to be deleted.

    .EXAMPLE
    Remove-Data -Path 'C:\File.TXT'
  #>

  param(
    [Alias('P')][string]$Path
  )

  Remove-Item -LiteralPath "${Path}" -Force
}
