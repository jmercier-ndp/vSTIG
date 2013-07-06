$StigSetting='All port groups must not be configured to VLAN values reserved by upstream physical switches'
$stigid="ESXI5-VMNET-000012"
$severity="CAT II"
$description='All port groups must not be configured to VLAN values reserved by upstream physical switches'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $severity $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
