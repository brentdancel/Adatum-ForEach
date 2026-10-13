<# 
Name:Brent Haven Dancel 
Challenge Number: 4
Purpose: Count Local Services
Location: Run on LON-CL1
#>

$services = @(Get-Service)
$counter = 0
foreach ($service in $services) {
    $counter++
    Write-Output "$($service.Name)"
}
Write-Output $counter