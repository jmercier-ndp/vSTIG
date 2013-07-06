$StigSetting="Independent, nonpersistent disk (manual check) "
$stigid="ESXI5-VM-000010"
$description="The system must not use independent, nonpersistent disks"
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $description $Mode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
