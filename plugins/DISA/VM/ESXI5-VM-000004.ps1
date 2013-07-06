$stigSetting="isolation.tools.dnd.disable"
$stigid="ESXI5-VM-000004"
$description="The system must explicitly disable drag and drop operations"
$LocalMode="AUDIT"
$enabled=$true
$stigValue=$true


if ($AllowOverrides) {
	$Mode=$LocalMode
}

plugin-header $stigSetting $stigid $description $Mode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0