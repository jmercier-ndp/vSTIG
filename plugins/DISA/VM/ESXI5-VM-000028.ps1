$StigSetting="isolation.tools.unityActive.disable"
$stigid="ESXI5-VM-000028"
$description='The unexposed feature keyword "isolation.tools.unityActive.disable" must be initialized to decrease the VMs potential attack vectors'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
