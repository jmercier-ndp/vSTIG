$StigSetting="isolation.tools.ghi.trayicon.disable"
$stigid="ESXI5-VM-000023"
$description='The unexposed feature keyword "isolation.tools.ghi.trayicon.disable" must be initialized to decrease the VMs potential attack vectors'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
