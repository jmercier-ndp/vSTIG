# vstig.ps1
# STIG Execution script for VMware vSphere 5.1
# 
# Justin Mercier
# NDP,LLC (www.ndpgroup.com)
#
# VERSION HISTORY
# 1.0 (14 June 2013) - Standalone ESXi 5.1 Hosts
#
# Settings go in .\etc\vstig-settings.ini
# Funtions go in .\lib\vstig-functions.ps1

cls

#generate timestamped transcript
$timestamp=$(get-date -f yyyy-MM-dd-HHmm)
$outfile = "logs\vstig-output-$timestamp.log"

Start-Transcript $outfile | Out-Null

$ScriptPath = (Split-Path ((Get-Variable MyInvocation).Value).MyCommand.Path)
$StigSettings = "$ScriptPath\etc\vstig-settings.ini"

# Read and instantiate variables from settings
Get-Content $StigSettings | Where-Object { $_ -ne '' } | Foreach-Object {
   $var = $_.Split('=')
   if ( $var[1] -eq "true" ) {
	New-Variable -Name $var[0] -Value $true
   } elseif ( $var[1] -eq "false" ) {
	New-Variable -Name $var[0] -Value $false
   } else {
	New-Variable -Name $var[0] -Value $var[1]
   }
}


# Create relative directory structure

$StigPluginsFolder = $ScriptPath + "\Plugins\" + $policy 
$StigFunctionsFolder =  $ScriptPath + "\lib\"
$StigFunctions = Get-ChildItem -Path $StigFunctionsFolder -filter "*.ps1" | Sort Name

#import settings and functions
Foreach ($StigFunction in $StigFunctions) {
	. $StigFunctionsFolder\$StigFunction
}

# Set console colors are dictated in settings
$myColors = (Get-Host).UI.RawUI
$myColors.BackgroundColor = $bgcolor
$myColors.ForegroundColor = $fgcolor

# Make sure we are connected to vCenter or a ESXi host
if ($global:DefaultVIServer -eq $Null) { 
	Write-Host -foregroundcolor red `n"[ERROR] " -NoNewLine
	Write-Host "You must first connect to a standalone host or vCenter" `n -foregroundcolor yellow
	exit
}

# Print runtime info
Write-Host "[BEGIN] Running vSTIG in $Mode mode" -foregroundcolor Cyan
if ($AllowOverrides) {
	$orcolor = "Yellow"
} else {
	$orcolor = "Green"
}
Write-Host "[POLICY] Policy set is $policy" -foregroundcolor Cyan
Write-Host "[OVERRIDE] Plugin Overrides set to $AllowOverrides `n" -foregroundcolor $orcolor

# Execute VM plugins
$vms = @(Get-VM)
$VMPluginsFolder = $StigPluginsFolder + "\VM\"
$StigVMPlugins = Get-ChildItem -Path $VMPluginsFolder -filter "*.ps1" | Sort Name
$VMNETPluginsFolder = $StigPluginsFolder + "\VMNET\"
$StigVMNETPlugins = Get-ChildItem -Path $VMNETPluginsFolder -filter "*.ps1" | Sort Name

Foreach ($StigPlugin in $StigVMPlugins) {
	& $VMPluginsFolder\$StigPlugin
}

Foreach ($StigPlugin in $StigVMNETPlugins) {
	& $VMNETPluginsFolder\$StigPlugin
}


Stop-Transcript  | Out-Null