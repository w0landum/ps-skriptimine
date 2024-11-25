do {
    Write-Host "Notepad is running"
    Start-sleep -Seconds 1
} while(Get-Process | Where{$_.ProcessName -eq "notepad"})