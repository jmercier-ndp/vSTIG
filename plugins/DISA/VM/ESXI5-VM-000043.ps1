$StigSetting="tools.setinfo.sizeLimit"
$stigid="ESXI5-VM-000043"
$description='The system must limit informational messages from the VM to the VMX file'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="1048576"

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
