function Run-VMplugin ($stigSetting, $enabled, $LocalMode, $stigValue){

	if (!(checkEnabled $enabled)) {
		warn "check $stigSetting is not enabled"
		return
	}

	if ($AllowOverrides) {
		$Mode=$LocalMode
	}

	foreach ($vm in $vms) {
		if ($stigValue.toString() -eq "manual") {
			warn "$vm - check must be run manually"
			continue
		}
		
		$setting=($vm | Get-AdvancedSetting -Name $stigSetting)
 		if ($setting) {
			if ($setting.value -ne $stigValue) {
				if ($Mode -eq "ENFORCE") {
					$vm.name
					Print-Action $vm "setting is not compliant, setting to $stigValue"
					$setting | Set-AdvancedSetting -value $stigValue -Confirm:$false | Out-Null
				} else {
					Print-Warn "$vm - NON-COMPLIANCE - but mode is $LocalMode" -foregroundcolor yellow
				}
			} else {
				Print-Report green $setting.Entity "is compliant"
			}
		} else {
			if ($Mode -eq "ENFORCE") {
				Print-Action $vm "setting does not exist, setting to $stigValue"
				$vm | New-AdvancedSetting -Name $stigSetting -value $stigValue -Confirm:$false | Out-Null
			} else {
				warn "$vm - Setting doesn't exist but mode is $LocalMode"
			}
		}
	}

}
