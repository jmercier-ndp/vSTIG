$StigSetting="isolation.tools.hgfsServerSet.disable"
$stigid="ESXI5-VM-000009"
$description="The system must disable HGFS file transfers."
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $Mode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
