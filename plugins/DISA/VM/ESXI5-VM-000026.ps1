$StigSetting="isolation.tools.unity.push.update.disable"
$stigid="ESXI5-VM-000026"
$description='The unexposed feature keyword "isolation.tools.unity.push.update.disable" must be initialized to decrease the VMs potential attack vectors.'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
