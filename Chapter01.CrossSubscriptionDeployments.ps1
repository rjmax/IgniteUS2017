#Select "local" subscription + create RG
Select-AzureRmSubscription -SubscriptionId 9167af2d-c13e-4d34-9a57-8f37dba6ff31
New-AzureRmResourceGroup -Name localRG -Location eastus2euap -Force

#Select "remote" subscription + create RG
Select-AzureRmSubscription -SubscriptionId 623d50f1-4fa8-4e46-a967-a9214aed43ab
New-AzureRmResourceGroup -Name crossSubscriptionDeployment -Location eastus2euap -Force

#Select "local" subscription + create deployment
Select-AzureRmSubscription -SubscriptionId 9167af2d-c13e-4d34-9a57-8f37dba6ff31
New-AzureRmResourceGroupDeployment -ResourceGroupName localRG -TemplateUri https://raw.githubusercontent.com/rjmax/IgniteUS2017/master/Chapter01.CrossSubscriptionDeployments.json -StorageAccountName1 ryjoneslocalrg1 -StorageAccountName2 ryjonescrosssubsa

#Get storage account in local RG
(Get-AzureRmStorageAccount -ResourceGroupName localRG).Id

#Get storage account in remote RG
Select-AzureRmSubscription -SubscriptionId 623d50f1-4fa8-4e46-a967-a9214aed43ab
(Get-AzureRmStorageAccount -ResourceGroupName CrossSubscriptionDeployment).Id
