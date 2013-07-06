$StigSetting="isolation.tools.memSchedFakeSampleStats.disable"
$stigid="ESXI5-VM-000018"
$description='The unexposed feature keyword "isolation.tools.memSchedFakeSampleStats.disable" must be initialized to decrease the VMs potential attack vectors'
$LocalMode="AUDIT"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $Mode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
