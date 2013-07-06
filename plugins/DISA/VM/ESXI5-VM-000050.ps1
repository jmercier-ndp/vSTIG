$StigSetting="The system must use templates to deploy VMs whenever possible"
$stigid="ESXI5-VM-000050"
$description='The system must use templates to deploy VMs whenever possible'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
