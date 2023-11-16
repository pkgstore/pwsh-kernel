function Move-Data() {
  <#
    .SYNOPSIS

    .DESCRIPTION
  #>

  param (
    [Alias('S')][string]$Src,
    [Alias('D')][string]$Dst
  )

  Move-Item -LiteralPath "${Src}" -Destination "${Dst}" -Force
}
