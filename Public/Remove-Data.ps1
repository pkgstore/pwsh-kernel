function Remove-Data() {
  <#
    .SYNOPSIS

    .DESCRIPTION
  #>

  param(
    [Alias('P')][string]$Path
  )

  Remove-Item -LiteralPath "${Path}" -Force
}
