$StigSetting="RemoteDisplay.maxConnections"
$stigid="ESXI5-VM-000039"
$description='The system must limit sharing of console connections'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="1"

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
