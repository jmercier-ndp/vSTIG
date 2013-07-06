$StigSetting="isolation.bios.bbs.disable"
$stigid="ESXI5-VM-000015"
$description='The unexposed feature keyword "isolation.bios.bbs.disable" must be initialized to decrease the VMs
potential attack vectors'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $Mode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
