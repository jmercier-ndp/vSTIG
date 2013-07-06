$StigSetting="isolation.ghi.host.shellAction.disable"
$stigid="ESXI5-VM-000020"
$description='The unexposed feature keyword "isolation.ghi.host.shellAction.disable" must be initialized to decrease the VMs potential attack vectors'
$LocalMode="AUDIT"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
