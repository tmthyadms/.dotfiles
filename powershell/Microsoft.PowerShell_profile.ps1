# Custom {{{ 

. "$HOME\Documents\PowerShell\Custom\aliases.ps1"
. "$HOME\Documents\PowerShell\Custom\aliases.ps1"
# . "$env:OneDrive\Documents\PowerShell\Custom\functions.ps1"
# . "$env:OneDrive\Documents\PowerShell\Custom\functions.ps1"

# }}}

# Features {{{

# Substring Search
Set-PSReadlineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadlineKeyHandler -Key DownArrow -Function HistorySearchForward

# Tab Menu
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# }}}

# Modules {{{

Import-Module man-highlighting
Import-Module ZLocation

#}}}

# Oh My Posh {{{ 

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/tiwahu.omp.json" | Invoke-Expression

#}}}

cowgreets
