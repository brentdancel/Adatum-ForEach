<# 
Name:Brent Haven Dancel 
Challenge Number: 6
Purpose: Introduce if and else without changing service configuration
Location: Run on LON-CL1
#>

$services = @('EventLog', 'W32Time', 'Spooler')
$countOK = 0
$countReview = 0
foreach ($service in $services) {
    $service = Get-Service -Name $service
    if ($service.Status -eq "Running") {
        $countOK++
        Write-Output "OK $($service.Name)"
    } else {
        $countReview++
        Write-Output "REVIEW $($service.Name)"
    }
}
Write-Output "Count Review: $($countReview)"