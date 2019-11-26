Get-NetFirewallRule -DisplayGroup "Windows Remote Management" `
  | Where-Object Profile -eq 'Public' `
  | Set-NetFirewallRule -Enabled $true -RemoteAddress Any
