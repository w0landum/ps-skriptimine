$eesnimi = Read-Host 'Palun sisesta oma eesnimi '
$perekonnanimi = Read-Host 'Palun sisesta oma perekonnanimi '

$kasutajanimi = $eesnimi.ToLower() + "." + $perekonnanimi.ToLower()
$parool = 'Parool1!'
$taisnimi = $eesnimi, $perekonnanimi
$kirje = "Lokaalne kasutaja"

Write-Host 'Loodav kasutajanimi on' $kasutajanimi

$kasutajaeksisteerib = Get-LocalUser $kasutajanimi -ErrorAction SilentlyContinue

if(($kasutajanimi | Select Name).Name.Count -ge 1){
    Write-Host 'Ei ole võimalik kasutajat luua - sama nimega konto juba eksisteerib.'
    Exit
}else {
   echo "Teie kasutajanimi: " $kasutajanimi "Teie parool: " $parool "Teie täisnimi: " $taisnimi "Teine kasutajatüüp: " $kirje
}