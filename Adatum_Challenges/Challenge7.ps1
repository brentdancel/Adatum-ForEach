<# 
Name: Brent Haven Dancel 
Challenge Number: 7
Purpose: Apply foreach and if to AD user objects and two counters
Location: Run on LON-CL1
#>

Import-Module ActiveDirectory
$users = Get-ADUser -Filter * -DistinguishedName "OU=" -Server LON-DC1.Adatum.com
$enabledCount = 0
$disabledCount = 0
foreach ($user in $users) {
    Write-Output "$($user.SamAccountName) $($user.Enabled)"
    if ($user.Enabled) {
        $enabledCount++
    } else {
        $disabledCount++
    }
}
$totalCount = $enabledCount + $disabledCount
Write-Output "Total Count: $($totalCount)"
Write-Output "Enabled Count: $($enabledCount)"
Write-Output "Disabled Count: $($disabledCount)"