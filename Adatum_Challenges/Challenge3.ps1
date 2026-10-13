<# 
Name:Brent Haven Dancel 
Challenge Number: 3
Purpose: Inspect Local Services
Location: Run on LON-CL1
#>

$services = @('EventLog', 'W32Time', 'Spooler')
foreach ($service in $services) {
    $service = Get-Service -Name $service
    Write-Output "$($service.Name) $($service.Status)"
}