<# 
Name:Brent Haven Dancel 
Challenge Number: 5
Purpose: Read the domain computer inventory
Location: Run on LON-CL1
#>

Import-Module ActiveDirectory
$computers = @('LON-CL1', 'LON-DC1', 'LON-SVR1')

foreach ($computer in $computers) {
    Get-ADComputer -Identity $computer -Server LON-DC1.Adatum.com -Properties OperatingSystem | Select-Object Name, DNSHostName, OperatingSystem
}