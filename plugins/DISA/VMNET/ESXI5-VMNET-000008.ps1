$StigSetting='All physical switch ports must be configured with spanning tree disabled'
$stigid="ESXI5-VMNET-000008"
$severity="CAT III"
$description='All physical switch ports must be configured with spanning tree disabled'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $severity $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
