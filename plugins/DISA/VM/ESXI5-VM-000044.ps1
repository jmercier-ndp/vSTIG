$StigSetting="tools.setinfo.sizeLimit (manual check)"
$stigid="ESXI5-VM-000044"
$description='The system must limit informational messages from the VM to the VMX file'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
