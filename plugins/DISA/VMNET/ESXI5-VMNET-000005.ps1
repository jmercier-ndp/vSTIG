$StigSetting='All vSwitch and VLAN IDs must be fully documented'
$stigid="ESXI5-VMNET-000005"
$severity="CAT III"
$description='All vSwitch and VLAN IDs must be fully documented'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $severity $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
