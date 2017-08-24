

# Login
Login-AzureRmAccount
$subscriptionId = 
    ( Get-AzureRmSubscription |
        Out-GridView `
          -Title "Select an Azure Subscription" `
          -PassThru
    ).Id
Get-AzureRmSubscription -SubscriptionId $subscriptionId | Select-AzureRmSubscription

Set-Location .\ResourceGroup-RoleClaims

$ResourceGroupLocation = "West Europe"
$ResourceGroupName = "RoleClaims"
# No need for a storage account until the deployment is split up in multiple files.
# $StorageAccountName = "peterlildeploywe"
.\Deploy-AzureResourceGroup.ps1 -ResourceGroupLocation $ResourceGroupLocation `
    -ResourceGroupName $ResourceGroupName
