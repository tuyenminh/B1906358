<?php 
$a = 10;
function tinhGiaithua($n) {
    if ($n > 0) {
        return $n * tinhGiaithua ( $n - 1 );
    } else {
        return 1;
    }
}
 
// tính giai thừa
echo ("Giai thừa của " . $a . " là: " . tinhGiaithua ( $a ) . "<br>");
?>