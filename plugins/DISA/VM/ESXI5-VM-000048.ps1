$StigSetting="The system must secure virtual machines as it would secure physical machines"
$stigid="ESXI5-VM-000048"
$description='The system must secure virtual machines as it would secure physical machines'
$LocalMode="ENFORCE"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $description $LocalMode

Run-VMplugin $stigSetting $enabled $localMode $stigValue

exit 0
