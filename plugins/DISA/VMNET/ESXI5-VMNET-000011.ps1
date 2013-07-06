$StigSetting='All port groups must not be configured to VLAN 4095 except for Virtual Guest Tagging (VGT)'
$stigid="ESXI5-VMNET-000011"
$severity="CAT II"
$description='All port groups must not be configured to VLAN 4095 except for Virtual Guest Tagging (VGT)'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $severity $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
