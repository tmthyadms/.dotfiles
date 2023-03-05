################################################################################
#                                  SETTINGS 2                                  #
################################################################################
. "$HOME\Documents\PowerShell\aliases.ps1"
. "$HOME\Documents\PowerShell\functions.ps1"

Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/pure.omp.json" | Invoke-Expression
# amro, avit, emodipt-extend, pure, robbyrusel, ys, & zash

Import-Module PoShFuck
Import-Module man-highlighting
# Import-Module syntax-highlighting
Import-Module ZLocation

# Invoke-Expression "& { $(Invoke-RestMethod https://aka.ms/install-powershell.ps1)  } -UseMSI"
# To update PowerShell if available

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
