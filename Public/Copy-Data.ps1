function Copy-Data() {
  <#
    .SYNOPSIS

    .DESCRIPTION
  #>

  param (
    [Alias('S')][string]$Src,
    [Alias('D')][string]$Dst
  )

  Copy-Item -LiteralPath "${Src}" -Destination "${Dst}" -Force
}
