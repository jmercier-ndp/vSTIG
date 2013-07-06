$StigSetting="isolation.tools.unity.disable"
$stigid="ESXI5-VM-000024"
$description='The unexposed feature keyword "isolation.tools.unity.disable" must be initialized to decrease the VMs potential attack vectors'
$LocalMode="AUDIT"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
