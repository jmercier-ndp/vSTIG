$StigSetting='Only authorized administrators must have access to virtual networking components.'
$stigid="ESXI5-VMNET-000007"
$severity="CAT III"
$description='Only authorized administrators must have access to virtual networking components.'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $severity $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
