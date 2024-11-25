$groups = @('Red', 'Green', 'Yellow', 'Blue')
$studentGroups = @()

for ($i = 1; $i -le 20; $i++){
    $group = $groups | Get-Random
    $studentGroups += @{'RollNumber' =$i;  'Group'=$group}
}

$studentGroups