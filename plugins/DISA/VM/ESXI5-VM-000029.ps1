$StigSetting="isolation.tools.unity.windowContents.disable"
$stigid="ESXI5-VM-000029"
$description='The unexposed feature keyword "isolation.tools.unity.windowContents.disable" must be initialized to decrease the VMs potential attack vectors'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
