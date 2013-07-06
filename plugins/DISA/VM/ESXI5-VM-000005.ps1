$stigSetting="isolation.tools.setGUIOptions.enable"
$stigid="ESXI5-VM-000005"
$description="The system must explicitly disable any GUI functionality for copy/paste operations"
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$false


if ($AllowOverrides) {
	$Mode=$LocalMode
}

plugin-header $stigSetting $stigid $description $Mode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0