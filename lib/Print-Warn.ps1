function Print-Warn ($message) {
	Write-Host "[WARN]" -NoNewLine -foregroundcolor yellow
	Write-Host " $message"
}
Set-Alias warn Print-Warn