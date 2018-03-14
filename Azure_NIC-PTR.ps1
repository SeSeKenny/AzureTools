Get-WMIobject -query "SELECT * FROM Win32_NetworkAdapterConfiguration WHERE IPEnabled = True" | % {
	$_.SetDynamicDNSRegistration($true,$true)
	}