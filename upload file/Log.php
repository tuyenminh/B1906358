<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "qlbanhang";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

//$sql="SELECT * FROM customers WHERE password = 105; DROP TABLE Suppliers";
//$sql="SELECT fullname, email, password FROM customers WHERE fullname = 105 or 1=1";
//$sql="SELECT * FROM customers WHERE fullname = 105 OR 1=1";

$sql = "select id, fullname, email from customers where email = '".$_POST["email"]."' and password = '".md5($_POST["pass"])."'";

$result = $conn->query($sql);

if ($result->num_rows > 0) {
 
  $row = $result->fetch_assoc();
  session_start();
  $_SESSION['fullname'] = $row['fullname'];
  $_SESSION['password'] = $row['password'];
  // $fullname = $_POST['fullname'];
  // $password   = $_POST['password'];
  // $email      = $_POST['email'];
  // $cookies_name = "user";
  // $cookies_value = $row['email'] ;
  // setcookies($cookies_name, $cookies_value, time() + (86400 / 24), "/");
  // setcookies("fullname", $row['fullname'], time() + (86400 / 24), "/");
  // setcookies("id", $row['id'], time() + (86400 / 24), "/");
  
    header('Location: homepage.php');
  
  
  
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
  //Tro ve trang dang nhap sau 3 giay
  header('Refresh: 3;url=login.php');

}

$conn->close();
?>
