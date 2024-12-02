Get-Process | where{$_.ProcessName -eq "notepad"} | Select ProcessName, Id

#Teine võimalus, 
#"where" võib esimeses asendada ka "?"-ga

#Get-Process Notepad | Select ProcessName, Id

#Teine küsimus

Get-ChildItem -Path "C:\Temp\Test"

$fail = Get-ChildItem -Path "C:\Temp\Test" | Where {$_.Name -like "*.csv"} | Select Name, Length
$SuurusKB = $fail.Length/1KB
$SuurusMB = $fail.Length/1MB

Write-Host "`nFilename : "$fail.Name
Write-Host "Suurus kilobaitides : "$SuurusKB
Write-Host "Suurus megabaitides : "$SuurusMB