$StigSetting="isolation.tools.guestDnDVersionSet.disable"
$stigid="ESXI5-VM-000031"
$description='The unexposed feature keyword "isolation.tools.guestDnDVersionSet.disable" must be initialized to decrease the VMs potential attack vectors'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
