$StigSetting="isolation.tools.dispTopoRequest.disable"
$stigid="ESXI5-VM-000021"
$description='The unexposed feature keyword "isolation.tools.dispTopoRequest.disable" must be initialized to decrease the VMs potential attack vectors'
$LocalMode="AUDIT"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
