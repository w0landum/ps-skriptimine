$ktl = 0
do
{
$k = $n
$k = Get-Process | ?{$_.name -like "note*"}
if($k -ne $null)
{$kt2 = 2
Write-Host "Notepad töötab."
Start-Sleep -Seconds 1
$kt1++
}
else
{$kt2 = 1}
}while($kt2 -ne 1)
$kt1