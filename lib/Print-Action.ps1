function Print-Action ($system, $message, $setting) {
	Write-Host "[ACTION]" -NoNewLine -foregroundcolor $actioncolor
	Write-Host " $system - $message"
}
Set-Alias action Print-Action