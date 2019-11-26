Get-NetFirewallRule -DisplayGroup "Windows Remote Management" `
  | Where-Object Profile -eq 'Public' `
  | Set-NetFirewallRule -Enabled True -RemoteAddress Any
