function vimconf {
  vim $HOME/.vimrc
}

function profileconf {
  vim $profile
}

function soprofile {
  . $profile
}

function aliasesconf {
  vim "$HOME\Documents\PowerShell\aliases.ps1"
}

function functionsconf {
  vim "$HOME\Documents\PowerShell\functions.ps1"
}

function lsdir {
  Get-ChildItem -directory
}

function openpwd {
  open $(pwd)
}

function cheat {
  curl cheat.sh/tldr:$args
}

function mariadb {
  z bin && .\mariadb -u root
}

function cowgreets {
  $cows = "default", "deno", "flaming-sheep", "satanic", "skeleton", "small", "tux", "vader"
  $random_cow = $cows | Get-Random
  
  cowsay -f $random_cow "Greetings, " $env:UserName"!`n"
}

function New-HardLink($target, $link) {
  New-Item -Path $link -ItemType HardLink -Value $target
}

# function mklink($target, $link) {
#   cmd.exe /c mklink /d $target $link
# }
