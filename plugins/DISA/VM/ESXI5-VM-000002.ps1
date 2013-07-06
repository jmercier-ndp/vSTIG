$stigSetting="isolation.tools.autoInstall.disable"
$stigid="ESXI5-VM-000002"
$severity="CAT III"
$description="The system must disable tools auto install"
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$true

if ($AllowOverrides) {
	$Mode=$LocalMode
}

plugin-header $stigSetting $stigid $description $Mode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0


