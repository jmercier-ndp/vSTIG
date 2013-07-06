$StigSetting='Virtual Switch VLANs must be fully documented and have only required VLANs'
$stigid="ESXI5-VMNET-000004"
$severity="CAT III"
$description='Virtual Switch VLANs must be fully documented and have only required VLANs'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $severity $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
