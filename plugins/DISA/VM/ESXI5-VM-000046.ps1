$StigSetting="isolation.device.edit.disable"
$stigid="ESXI5-VM-000046"
$description='The system must prevent unauthorized removal, connection and modification of devices by setting the "isolation.device.edit.disable" keyword to true'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
