Select-AzureRmSubscription -SubscriptionId 9167af2d-c13e-4d34-9a57-8f37dba6ff31
New-AzureRmResourceGroup -Name ifAvailabilitySet -Location eastus2euap -Force

New-AzureRmResourceGroupDeployment -ResourceGroupName ifAvailabilitySet -TemplateUri https://raw.githubusercontent.com/rjmax/IgniteUS2017/master/Chapter03.if.AvailabilitySet.json -adminUsername ryan -dnsLabelPrefix ryjonesifavailabilityset -availabilitySet yes