$StigSetting='All virtual switches must have a clear network label'
$stigid="ESXI5-VMNET-000003"
$severity="CAT III"
$description='All virtual switches must have a clear network label'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $severity $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
