<# 
Name:Brent Haven Dancel 
Challenge Number: 2
Purpose: Build domain qualified names
Location: Run on LON-CL1
#>

$computers = @('LON-CL1', 'LON-DC1', 'LON-SVR1')
$domain = "Adatum.com"
foreach ($computer in $computers) {
    Write-Output "$computer.$domain"
}