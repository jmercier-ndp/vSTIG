$StigSetting="isolation.tools.diskShrink.disable"
$stigid="ESXI5-VM-000007"
$description="The system must disable virtual disk shrinking"
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $Mode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
