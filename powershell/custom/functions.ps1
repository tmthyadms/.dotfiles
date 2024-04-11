# Aliases {{{

function vimconf { vim $HOME/.vimrc }
function profileconf { vim $profile }
function aliasconf { vim "$HOME/Documents/PowerShell/Custom/aliases.ps1" }
function fxconf { vim "$HOME/Documents/PowerShell/Custom/functions.ps1" }
# function aliasconf { vim "$env:OneDrive/Documents/PowerShell/Custom/aliases.ps1" }
# function fxconf { vim "$env:OneDrive/Documents/PowerShell/Custom/functions.ps1" }
# function soprofile { . $profile }
function opend { open $(pwd) }

# }}}

# Functions {{{

function New-HardLink($target, $link) {
  New-Item -Path $link -ItemType HardLink -Value $target
}

function mklink($target, $link) {
  cmd.exe /c mklink /d $target $link
}

function cheat {
  curl cht.sh/tldr:$args
}

function cowgreets {
  $username = $env:UserName
  $cows = "default", "deno", "small"
  $cow = $cows | Get-Random
  
  cowsay -f $cow "Welcome back, ${username}!"
}

# }}}
