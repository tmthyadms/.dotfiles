# Aliases {{{

function aliasconf { vim "$HOME\Documents\PowerShell\Custom\aliases.ps1" }
function fxconf { vim "$HOME\Documents\PowerShell\Custom\functions.ps1" }
function vimconf { vim $HOME/.vimrc }
function profileconf { vim $profile }
function soprofile { . $profile }

function lsd { Get-ChildItem -directory }
function opend { open $(pwd) }

#}}}


# Functions {{{

function cht { curl cheat.sh/tldr:$args }

function cowgreets {
  $cows = "default", "deno", "flaming-sheep", "satanic", "skeleton", "small", "tux", "vader"
  $random_cow = $cows | Get-Random
  
  cowsay -f $random_cow "Greetings, " $env:UserName"!`n"
}

function New-HardLink($target, $link) {
  New-Item -Path $link -ItemType HardLink -Value $target
}

function mklink($target, $link) {
  cmd.exe /c mklink /d $target $link
}

#}}}
