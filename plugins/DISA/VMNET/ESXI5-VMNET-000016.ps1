$StigSetting='The system must ensure that the virtual switches MAC Address Change is set to reject'
$stigid="ESXI5-VMNET-000016"
$severity="CAT I"
$description='The system must ensure that the virtual switches MAC Address Change is set to reject (Note:  Boulder Labs has a check for this that can be merged into vSTIG)'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $severity $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
