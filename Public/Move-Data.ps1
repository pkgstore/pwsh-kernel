function Move-Data() {
  <#
    .SYNOPSIS

    .DESCRIPTION
  #>

  param (
    [Alias('S')][string]$SRC,
    [Alias('D')][string]$DST
  )

  Move-Item -LiteralPath "${SRC}" -Destination "${DST}" -Force
}
