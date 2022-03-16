<?php
session_start();
if(isset($_SESSION['user']) && $_SESSION['user'] != NULL) {
    unset($_SESSION['user']);
    echo "Bạn đã đăng xuất thành công";
}
?>