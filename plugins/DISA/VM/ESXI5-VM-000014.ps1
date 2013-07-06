$StigSetting="isolation.tools.ghi.autologon.disable"
$stigid="ESXI5-VM-000014"
$description="The unexposed feature keyword isolation.tools.ghi.autologon.disable must be initialized to decrease the VMs potential attack vectors"
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $Mode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
