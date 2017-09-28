Select-AzureRmSubscription -SubscriptionId 9167af2d-c13e-4d34-9a57-8f37dba6ff31
New-AzureRmResourceGroup -Name copySampleNICs -Location eastus2euap -Force

New-AzureRmResourceGroupDeployment -ResourceGroupName copySampleNICs -TemplateUri https://raw.githubusercontent.com/rjmax/IgniteUS2017/master/Chapter02.copySampleNICs.json -storageAccountName ryjonescopynic -adminUsername ryan -dnsNameforLBIP ryjonescopynic -vmSize Standard_D2_v2_Promo -nicCount 2

