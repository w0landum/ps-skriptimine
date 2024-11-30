$ht1 = @{"Name" = "John", "Joe", "Mary"; "DaysWorked" = 12, 20, 18}
$ht2 = @{"Name" = "John", "Joe", "Mary"; "SalaryPerDay" = 100, 120, 150}

$JohnSalary = $ht1.DaysWorked[0] * $ht2.SalaryPerDay[0]
$JoeSalary = $ht1.DaysWorked[1] * $ht2.SalaryPerDay[1]
$MarySalary = $ht1.DaysWorked[2] * $ht2.SalaryPerDay[2]

$ht3 = @{Name=$ht1.Name[0], $ht1.Name[1], $ht3.Name[2]; Salary=$JohnSalary, $JoeSalary, $MarySalary}

$ht3