function Copy-Data() {
  <#
    .SYNOPSIS

    .DESCRIPTION
  #>

  param(
    [Alias('S')][string]$SRC,
    [Alias('D')][string]$DST
  )

  Copy-Item -LiteralPath "${SRC}" -Destination "${DST}" -Force
}
