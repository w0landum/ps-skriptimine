$esimene = Read-Host "Palun vali esimene arv."
Write-Host "Valitud sai arv $esimene."

$teine = Read-Host "Palun vali teine arv."
Write-Host "Valitud sai arv $teine."

If($esimene -gt $teine)
 {
   Write-Host "Esimene arv on suurem kui teine."
 }
 Elseif($esimene -eq $teine)
 {
   Write-Host "Arvud on võrdsed."
 }
 Else
 {
   Write-Host "Teine arv on suurem kui esimene."
 }
 
 #Pealinna küsimine

 Write-Host "Nüüd on teie ees uus harjutus." -ForegroundColor Gray
 Write-Host "Eesti" -ForegroundColor DarkMagenta
 Write-Host "Läti " -ForegroundColor Magenta
 Write-Host "Leedu" -ForegroundColor White

 $valik = Read-Host "Palun vali üks riik nende hulgast."

 if($valik -eq "Eesti")
   {
     Write-Host "Eesti pealinn on Tallinn."
   }
   elseif($valik -eq "Läti")
   {
     Write-Host "Läti pealinn on Riia"
   }
   else
   {
     Write-Host "Leedu pealinn on Vilnius."
   }