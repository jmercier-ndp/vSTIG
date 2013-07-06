$StigSetting='All IP-based storage traffic must be isolated'
$stigid="ESXI5-VMNET-000006"
$severity="CAT III"
$description='All IP-based storage traffic must be isolated'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $severity $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
