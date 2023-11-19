function Test-Module() {
  <#
    .SYNOPSIS
    Checking the module.

    .DESCRIPTION
    Checking that the module is loaded correctly.

    .PARAMETER Names
    Names of the modules being checked.

    .EXAMPLE
    Test-Module -Names 'Module.Name01', 'Module.Name02', 'Module.Name03'
  #>

  param(
    [Alias('N')][string[]]$Names
  )

  $Names | ForEach-Object {
    if (-not (Get-Module -ListAvailable -Name "${_}")) {
      Write-Error -Message "Module '${_}' not installed!" -ErrorAction 'Stop'
    }
  }
}
