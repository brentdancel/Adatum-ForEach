<# 
Name:Brent Haven Dancel 
Challenge Number: 1
Purpose: List the lab comptuers
Location: Run on LON-CL1
#>

$computers = @('LON-CL1', 'LON-DC1', 'LON-SVR1')
foreach ($computer in $computers) {
    Write-Output "Computer: $computer"
}