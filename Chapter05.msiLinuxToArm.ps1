New-AzureRmResourceGroup -Name msiLinux -Location WestEurope -Force

$deployment = New-AzureRmResourceGroupDeployment -ResourceGroupName msiLinux -TemplateUri https://raw.githubusercontent.com/rjmax/IgniteUS2017/master/Chapter05.msiLinuxToArm.json

$deployment

$deployment.Outputs.commandToLogin.Value

Remove-AzureRmResourceGroup -Name msiLinux