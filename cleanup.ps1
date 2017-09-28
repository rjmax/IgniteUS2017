Select-AzureRmSubscription -SubscriptionId 9167af2d-c13e-4d34-9a57-8f37dba6ff31
Remove-AzureRmResourceGroup -Name localRG -Force
Remove-AzureRmResourceGroup -Name copySampleNICs -Force
Remove-AzureRmResourceGroup -Name ifAvailabilitySet -Force

Select-AzureRmSubscription -SubscriptionId 623d50f1-4fa8-4e46-a967-a9214aed43ab
Remove-AzureRmResourceGroup -Name crossSubscriptionDeployment -Force

