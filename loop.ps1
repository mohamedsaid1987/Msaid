docker container ls -a
$interval = 3300
echo $interval
$present = [int](Get-Date -Date ((Get-Date).DateTime) -UFormat %s)
Get-Date
echo $present
$max = $present + [int]$interval
echo $max
while ($present -lt $max)
{
	$present = [int](Get-Date -Date ((Get-Date).DateTime) -UFormat %s)
	Start-Sleep  -Seconds 1
}
Write-Host "completed"
Get-Date
