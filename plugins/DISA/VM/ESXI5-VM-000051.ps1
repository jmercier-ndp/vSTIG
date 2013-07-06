$StigSetting="ethernetn.filtern.name"
$stigid="ESXI5-VM-000051"
$description='The system must not send host information to guests'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
