function Plugin-Header ($name, $stigid, $severity, $description, $LocalMode) {
	if ($AllowOverrides) {
		$Mode=$LocalMode
	} 
	Write-Host `n
	$myColors.BackgroundColor = $headerbgcolor
	$myColors.ForegroundColor = $headercolor
	"#"*79
	$myColors.ForegroundColor = $fgcolor
	$myColors.BackgroundColor = $bgcolor
	Write-Host "[STIG ID] "  -Backgroundcolor $headerbgcolor -foregroundcolor $headercolor -NoNewLine
	Write-Host " $stigid"
	Write-Host "[SETTING] "  -Backgroundcolor $headerbgcolor -foregroundcolor $headercolor -NoNewLine
	Write-Host " ($name)"
	Write-Host "[SEVERITY]"  -Backgroundcolor $headerbgcolor -foregroundcolor $headercolor -NoNewLine
	Write-Host " ($severity)"
	Write-Host "[MODE]    "  -Backgroundcolor $headerbgcolor -foregroundcolor $headercolor -NoNewLine
	if ($Mode -eq "ENFORCE") {
		Write-Host " $Mode" -foregroundcolor Green
	} else {
		Write-Host " $Mode" -foregroundcolor DarkYellow
	}
	Write-Host "[DESC]    "  -Backgroundcolor $headerbgcolor -foregroundcolor $headercolor -NoNewLine
	Write-Host " $description"`n
}

set-alias pluginbegin Plugin-Header