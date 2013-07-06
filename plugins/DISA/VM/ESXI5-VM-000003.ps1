$stigSetting="isolation.tools.copy.disable"
$stigid="ESXI5-VM-000003"
$severity="CAT III"
$description="The system must explicitly disable copy operations"
$LocalMode="AUDIT"
$enabled=$true
$stigValue=$true


if ($AllowOverrides) {
	$Mode=$LocalMode
}

plugin-header $stigSetting $stigid $description $Mode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0