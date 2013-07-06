$StigSetting="The system must disable unnecessary or superfluous functions inside VMs (manual check)"
$stigid="ESXI5-VM-000032"
$description='The system must disable unnecessary or superfluous functions inside VMs'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
