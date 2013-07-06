$stigSetting="Resource Limits (manual check)"
$stigid="ESXI5-VM-000001"
$severity="CAT I"
$description="The system must control virtual machine access to host resources"
$LocalMode="AUDIT"
$enabled=$true
$stigValue="manual"

plugin-header $stigSetting $stigid $severity $description $Mode 

Run-VMplugin  $stigSetting $enabled $localMode $stigValue

exit 0
	
