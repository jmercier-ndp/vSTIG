function Check-Enabled ($enabled) {
	if ($enabled) {
		return $true
	}
}
Set-Alias checkenabled Check-Enabled