function Print-Report ($status, $system, $message) {
	Write-Host "[REPORT]" -NoNewLine -foregroundcolor $status
	Write-Host " $system $message"

}
Set-Alias report Print-Report