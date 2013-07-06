$StigSetting="tools.guestlib.enableHostInfo"
$stigid="ESXI5-VM-000047"
$description='The system must not send host information to guests'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue=$false

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
