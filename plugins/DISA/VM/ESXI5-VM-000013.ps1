$StigSetting="isolation.monitor.control.disable"
$stigid="ESXI5-VM-000013"
$description="The system must disable VM Monitor Control"
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $Mode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0