$StigSetting="The system must control access to VMs through VMsafe CPU/memory APIs"
$stigid="ESXI5-VM-000052"
$description='The system must control access to VMs through VMsafe CPU/memory APIs'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
