<?php
$a = array (344,224,223,7737,9922,-828);
$b = array (-344,-324,123,773,-9922,828);
// $a = array(33, 34, 45);
// $b = array(33, 34, 45);

if(array_diff($a, $b))
    echo "2 mảng không trùng nhau";
else {
    $c = array_sum($a);
    $d = array_sum($a);
    $f = $c + $d;
    echo "$f";
}
?>