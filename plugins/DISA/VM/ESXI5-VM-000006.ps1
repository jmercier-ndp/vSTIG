$StigSetting="isolation.tools.paste.enable"
$stigid="ESXI5-VM-000006"
$description="The system must explicitly disable paste operations"
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $Mode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0

