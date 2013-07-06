$StigSetting='All dvPortgroup VLAN IDs must be fully documented'
$stigid="ESXI5-VMNET-000001"
$severity="CAT III"
$description='All dvPortgroup VLAN IDs must be fully documented'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $severity $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
