function Test-Module() {
  <#
    .SYNOPSIS

    .DESCRIPTION
  #>

  Param(
    [Alias('N')][string[]]$Names
  )

  $Names | ForEach-Object {
    if (-not (Get-Module -ListAvailable -Name "${_}")) {
      Write-Error -Message "Module '${_}' not installed!" -ErrorAction 'Stop'
    }
  }
}
