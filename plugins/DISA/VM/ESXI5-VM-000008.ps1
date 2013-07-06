$StigSetting="isolation.tools.diskWiper.disable"
$stigid="ESXI5-VM-000008"
$description="The system must disable virtual disk erasure"
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $Mode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
