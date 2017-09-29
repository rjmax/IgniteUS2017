New-AzureRmResourceGroup -Name EventGrid -Location westus -Force

New-AzureRmResourceGroupDeployment -ResourceGroupName EventGrid -TemplateFile https://raw.githubusercontent.com/rjmax/IgniteUS2017/master/Chapter20.EventGrid.json

New-AzureRmStorageAccount -ResourceGroupName EventGrid -Location westus -Name ryjonesegtest2 -SkuName Standard_LRS

