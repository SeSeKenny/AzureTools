Get-NetFirewallRule | ? {$_.Name -eq 'WINRM-HTTP-In-TCP-PUBLIC'} | Set-NetFirewallRule -Enabled $true -RemoteAddress Any
