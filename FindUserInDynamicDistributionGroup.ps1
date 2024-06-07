#################################################
#поиск участника в динамических группах рассылки Echange#
#################################################
cls
$Login = Read-Host 'Please type username alias'
$ddgs = Get-DynamicDistributionGroup
foreach ($ddg in $ddgs){
$current = Get-Recipient -RecipientPreviewFilter $DDG.RecipientFilter -OrganizationalUnit $DDG.RecipientContainer
foreach ($user in $current)
{if ($user.alias -eq $login) {Write-Host $ddg}
}
}
