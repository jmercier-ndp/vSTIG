$StigSetting="vmci0.unrestricted"
$stigid="ESXI5-VM-000011"
$description="The system must disable VM-to-VM communication through VMCI"
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$false

plugin-header $stigSetting $stigid $description $Mode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
