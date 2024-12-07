$csv = Import-Csv C:\temp\opilased.csv

$tulemus = @()

 foreach($r in $csv)
    {
      if([int]$r.Vanus -ge 4 -and [int]$r.Vanus -le 10)
       {
         $kool = "Noorem"
       }
      elseif([int]$r.Vanus -ge 11 -and [int]$r.Vanus -le 17)
       {
         $kool = "Vanem"
       }
      $vorm = [PSCustomObject]@{
          Nimi = $r.Nimi
          Kool = $kool
           }
      $tulemus += $vorm
    }

$tulemus

