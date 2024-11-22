$env:EDITOR = "nvim"
$env:YAZI_FILE_ONE = "C:\Program Files\Git\usr\bin\file.exe"
$env:YAZI_CONFIG_HOME = Join-Path $env:HOME ".config/yazi/"
$env:XDG_CONFIG_HOME = Join-Path $env:HOME ".config"

Invoke-Expression (&starship init powershell)

carapace git powershell | Out-String | Invoke-Expression
carapace _carapace powershell | Out-String | Invoke-Expression
carapace gh powershell | Out-String | Invoke-Expression
carapace go powershell | Out-String | Invoke-Expression

Set-Alias ls eza
Set-Alias cat bat

