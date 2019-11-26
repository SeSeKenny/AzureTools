Get-NetFirewallRule -DisplayGroup "Windows Remote Management" `
  | Where-Object Profile -eq 'Public' `
  | Set-NetFirewallRule -Enabled True -RemoteAddress Any

Set-Service WinRM -StartupType Automatic
Start-Service WinRM
