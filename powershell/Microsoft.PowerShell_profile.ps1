$env:XDG_CONFIG_HOME = Join-Path $env:HOME ".config"

Invoke-Expression (&starship init powershell)

carapace git powershell | Out-String | Invoke-Expression
carapace _carapace powershell | Out-String | Invoke-Expression
carapace gh powershell | Out-String | Invoke-Expression

