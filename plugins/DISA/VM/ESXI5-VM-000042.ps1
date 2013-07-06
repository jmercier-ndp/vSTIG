$StigSetting="log.rotateSize"
$stigid="ESXI5-VM-000042"
$description='The system must limit VM logging record contents'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="10000"

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
