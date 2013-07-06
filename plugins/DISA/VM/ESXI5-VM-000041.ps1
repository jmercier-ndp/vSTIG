$StigSetting="log.keepOld"
$stigid="ESXI5-VM-000041"
$description='The system must limit VM logging records'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="10"

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
