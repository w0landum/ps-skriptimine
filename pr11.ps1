[int]$n1 = Read-Host "Palun sisesta esimene number"
[int]$n2 = Read-Host "Palun sisesta teine number"

if($n1 -notmatch '^[0-9]+$' -or $n2 -notmatch '^[0-9]+$'){
   Write-Host 'Kasuta ainult numbreid' -ForegroundColor Red
} else {
   Write-Host 'Kalkulaator' -ForegroundColor Green

   $calcMenu = @('Liitmine', 'Lahutamine', 'Jagamine', 'Korrutamine')
   for($i = 0; $i -lt $calcMenu.Count; $i++){
   write-Host "$($i + 1). $($calcMenu[$i])" -ForegroundColor Yellow
   }
}

$operatsioon = Read-Host "Palun vali number: "

switch($operatsioon){
    1{
        Write-Host "Summa on $([int]$n1 + [int]$n2)."
    }
    2{
        Write-Host "Vahe on $([int]$n1 - [int]$n2)."
    }
    3{
        Write-Host "Jagatis on $([int]$n1 / [int]$n2)."
    }
    4{
        Write-Host "Korrutis on $([int]$n1 * [int]$n2)."
    }
    default{
        Write-Host "Kasuta numbreid 1-4" -ForegroundColor Red
    }
}