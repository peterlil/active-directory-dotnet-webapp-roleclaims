
# Login
Login-AzureRmAccount
$subscriptionId = 
    ( Get-AzureRmSubscription |
        Out-GridView `
          -Title "Select an Azure Subscription �" `
          -PassThru
    ).Id
Get-AzureRmSubscription -SubscriptionId $subscriptionId | Select-AzureRmSubscription

$rg = RoleClaims
$AppServicePlan = TestPlan

# Scale up Azure Service Plan to S1
Set-AzureRmAppServicePlan -ResourceGroupName $rg -Name $AppServicePlan -Tier Free


# Scale down Azure Service Plan to Free
Set-AzureRmAppServicePlan -ResourceGroupName $rg -Name $AppServicePlan -Tier Free
