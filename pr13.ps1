function peamenyy
  {
    Write-Host "`t`t`tKalkulaator" -ForegroundColor Green
    Write-Host "`n`t`t`tPeamenüü" -ForegroundColor Yellow
    Write-Host "`nPalun tee valik, et sooritada vastav ülesanne`n" -ForegroundColor Yellow

    Write-Host "1: Ruudu pindala" -ForegroundColor Green
    Write-Host "2: Ristküliku pindala" -ForegroundColor Green
    Write-Host "3: Ringi pindala" -ForegroundColor Green
    Write-Host "4: Kolmnurga pindala" -ForegroundColor Green

    Write-Host "5: Lahku.`n" -ForegroundColor Green

    $valik = Read-Host "Sisesta oma valik`n"
    return $valik
   }

function kinnitus
   {
    Write-Host "`n`nPalun tee järgmine valik." -ForegroundColor Yellow
    Write-Host "`n1: Mine tagasi peamenüüsse." -ForegroundColor Green
    Write-Host "2: Lahku`n" -ForegroundColor Green
    $valik2 = Read-Host "Tee oma valik"
    if($valik2 -eq "1")
      {
       continue
      }
    if($valik2 -eq "2")
      {
       exit
      }
     else
      {
        Write-Host "`nPalun kirjuta nõutud valik" -ForegroundColor Red
        kinnitus
      }

    function ruut
      {
        cls
        Write-Host "`t`t`tRuudu pindala`n" -ForegroundColor Green
        [int]$külg = Read-Host "Palun sisesta ruudu külje pikkus cm."
        $ala = $külg * $külg
        $ala = $ala.ToString() + " cm."
        Write-Host "`nRuudu pindala on: "$ala -ForegroundColor Green

        kinnitus
      }
    }

    function ristkülik
      {
        cls
        Write-Host "`t`tRistküliku pindala`n" -ForegroundColor Green
        [int]$pikkus = Read-Host "Palun sisesta ristküliku pikkus cm."
        [int]$laius = Read-Host "Palun sisesta ristküliku laius cm."
        $ala = $pikkus * $laius
        $ala = $ala.ToString() + " cm."
        Write-Host "`nRistküliku pindala on: "$ala -ForegroundColor Green

        kinnitus
      }
    function ring
      {
        cls
        Write-Host "`t`tRingi pindala`n" -ForegroundColor Green
        [int]$raadius = Read-Host "Palun sisesta ringi raadius cm."
        $ala = 3.14*$raadius*$raadius
        $ala = $ala.ToString() + " cm."
        Write-Host "`nRingi pindala on: "$ala -ForegroundColor Green

        kinnitus
      }
    function kolmnurk
      {
        cls
        Write-Host "`t`tKolmnurga pindala`n" -ForegroundColor Green
        [int]$kõrgus = Read-Host "Palun sisesta kolmnurga kõrgus cm."
        [int]$alus = Read-Host "Palun sisesta kolmnurga aluse laius cm."
        $ala = 0.5*$kõrgus*$alus
        $ala = $ala.ToString() + " cm."
        Write-Host "`nKolmnurga pindala on: "$ala -ForegroundColor Green

        kinnitus
      }
    do
     {
      cls
      $walik = peamenyy

      switch($walik)
       {
        1
          {
            cls
            ruut
            kinnitus
          }
        2 
          { 
            cls 
            ristkülik 
            kinnitus
          } 
        3 
          { 
            cls 
            ring
            kinnitus
          } 
        4 
          { 
            cls
            kolmnurk
            kinnitus
          }
 
        }

      }while($walik -ne "5")