# Custom files {{{ 

. "$HOME\Documents\PowerShell\Custom\aliases.ps1"
. "$HOME\Documents\PowerShell\Custom\functions.ps1"

#}}}


# Oh My Posh themes {{{ 

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/space.omp.json" | Invoke-Expression
# amro, avit, emodipt-extend, neko, patriksvensson
# pure, robbyrussel, stelbent-compact.minimal, ys, zash

#}}}


# PSReadlineKeyHandler {{{

# Substring serach
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# Tab menu
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

#}}}


# Modules {{{

Import-Module man-highlighting
Import-Module PoShFuck
Import-Module ZLocation

$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

#}}}
