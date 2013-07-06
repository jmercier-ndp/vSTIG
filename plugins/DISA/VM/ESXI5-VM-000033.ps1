$StigSetting="isolation.tools.vixMessage.disable"
$stigid="ESXI5-VM-000033"
$description='The system must disable VIX messages from the VM.'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
