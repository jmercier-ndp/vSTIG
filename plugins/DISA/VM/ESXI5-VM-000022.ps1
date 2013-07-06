$StigSetting="isolation.tools.trashFolderState.disable"
$stigid="ESXI5-VM-000022"
$description='The unexposed feature keyword "isolation.tools.trashFolderState.disable" must be initialized to decrease the VMs potential attack vectors'
$LocalMode="AUDIT"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
