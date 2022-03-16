<?php
session_start();
    header("location: log.php");
    exit();
$fullname = $_SESSION['fullname'];
print_r($POST);
?>
<!DOCTYPE HTML>
<html>  
<body>

<form method="post">
Tên đăng nhập: <input type="text" name="username"><br>
Nhập mật khẩu cũ: <input type="password" name="passc"><br>
Nhập mật khẩu mới <input type="password" name="passm"><br>
Nhập lại mật khẩu mới: <input type="passord" name="passcm"><br>
<input type="submit">
</form>

</body>
</html>
