$StigSetting="The system must disconnect unauthorized parallel devices (manual check)"
$stigid="ESXI5-VM-000036"
$description='The system must disconnect unauthorized parallel devices.'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
