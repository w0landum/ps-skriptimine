$ht1 = @{"Name" = "John", "Joe", "Mary"; "DaysWorked" = 12, 20, 18}
$ht2 = @{"Name" = "John", "Joe", "Mary"; "SalaryPerDay" = 100, 120, 150}

$salary = @()

for($i = 0; $i -lt $ht1.Name.Count; $i++){
    $salary += $ht1.DaysWorked[$i] * $ht2.SalaryPerDay[$i]
}

$ht3 = @{"Name"=$ht1.Name; "Salary"=$salary}

$ht3

#PSCustomObject'iga

$ht1 = [PSCustomObject]@{
Name = "John","Joe","Mary"
DaysWorked = 12,20,18
}
$ht2 = [PSCustomObject]@{
Name = "John","Joe","Mary"
SalaryPerDay = 100,120,150
}
$ht3 = @()
$sal1 = $ht1.DaysWorked[0] * $ht2.SalaryPerDay[0]
$sal2 = $ht1.DaysWorked[1] * $ht2.SalaryPerDay[1]
$sal3 = $ht1.DaysWorked[2] * $ht2.SalaryPerDay[2]

$ht = [PSCustomObject]@{
Name = $ht1.Name[0]
Salary = $sal1
}
$ht3 += $ht
$ht = [PSCustomObject]@{
Name = $ht2.Name[1]
Salary = $sal2
}
$ht3 += $ht
$ht = [PSCustomObject]@{
Name = $ht1.Name[2]
Salary = $sal3
}
$ht3 += $ht
$ht3