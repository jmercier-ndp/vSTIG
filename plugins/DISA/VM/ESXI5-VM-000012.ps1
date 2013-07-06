$StigSetting="The system must enable VM logging (manual check) "
$stigid="ESXI5-VM-000012"
$description="The system must enable VM logging"
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $description $Mode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
