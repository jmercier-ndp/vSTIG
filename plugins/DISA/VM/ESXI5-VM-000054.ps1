$StigSetting='The system must control access to VMs through the VMsafe CPU/memory "vmsafe.enable" API.'
$stigid="ESXI5-VM-000054"
$description='The system must control access to VMs through the VMsafe CPU/memory "vmsafe.enable" API'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
