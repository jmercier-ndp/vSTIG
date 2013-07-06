$StigSetting="The system must use secure protocols for virtual serial port access"
$stigid="ESXI5-VM-000049"
$description='The system must use secure protocols for virtual serial port access'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
