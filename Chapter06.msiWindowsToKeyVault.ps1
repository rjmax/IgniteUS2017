New-AzureRmResourceGroup -Name msiWindows -Location westus -Force

$deployment = New-AzureRmResourceGroupDeployment -ResourceGroupName msiWindows -TemplateUri https://raw.githubusercontent.com/rjmax/IgniteUS2017/master/Chapter06.msiWindowsToKeyvault.json

$deployment

$deployment.Outputs.powerShellCommandToGetKeyVaultSecret.Value

Remove-AzureRmResourceGroup -Name msiWindows