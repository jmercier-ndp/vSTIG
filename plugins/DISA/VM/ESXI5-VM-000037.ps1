$StigSetting="The system must disconnect unauthorized serial devices (manual check)"
$stigid="ESXI5-VM-000037"
$description='The system must disconnect unauthorized serial devices.'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
