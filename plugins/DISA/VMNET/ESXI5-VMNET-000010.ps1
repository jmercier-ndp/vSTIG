$StigSetting='All port groups must be configured to a value other than that of the native VLAN'
$stigid="ESXI5-VMNET-000010"
$severity="CAT II"
$description='All port groups must be configured to a value other than that of the native VLAN'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $severity $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
