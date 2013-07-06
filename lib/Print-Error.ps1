function Print-Error ($message) {
	Write-Host "[ERROR]" -NoNewLine -backgroundcolor red -foregroundcolor yellow
	Write-Host " $message"
}
Set-Alias error Print-Error