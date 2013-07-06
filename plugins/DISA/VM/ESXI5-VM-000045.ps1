$StigSetting="isolation.device.connectable.disable"
$stigid="ESXI5-VM-000045"
$description='The system must prevent unauthorized removal, connection and modification of devices by setting the "isolation.device.connectable.disable" keyword to true'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$true

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
