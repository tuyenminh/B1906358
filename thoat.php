<?php session_start(); 
 
if (isset($_SESSION['fullname'])){
    unset($_SESSION['fullname']); // xóa session login
}
?>
<a href="Login.php">Đang nhap lai</a>