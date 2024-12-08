#mitteautonoomne

function jooksvad
{
$t66s = Get-Service | ?{$_.Status -eq "Running"}
Write-Host "Töös teenused = "$t66s.count
}
function l6ppenud
{
$eit66ta = Get-Service | ?{$_.Status -eq "Stopped"}
Write-Host "Teenused, mis ei tööta = "$eit66ta.count
}

#autonoomne

function teenused
  {
   param
     (
        [string]$seis
     )
   if($seis -eq "Running")
   {
      $t66s = Get-Service | ?{$_.Status -eq "Running"}
      Write-Host "Kõik töös olevad teenused = "$t66s.count
   }
  elseif($seis -eq "Stopped")
   {
      $l6ppenud = Get-Service | ?{$_.Status -eq "Stopped"}
      Write-Host "Kõik töö lõpetanud teenused = "$l6ppenud.count
   }
 }
#teenused -seis Running
#teenused -seis Stopped