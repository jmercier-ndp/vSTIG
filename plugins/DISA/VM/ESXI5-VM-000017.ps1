$StigSetting="isolation.tools.ghi.launchmenu.change"
$stigid="ESXI5-VM-000017"
$description='The unexposed feature keyword "isolation.tools.ghi.launchmenu.change" must be initialized to decrease the VMs potential attack vectors'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $Mode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
