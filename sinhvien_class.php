<?php
class sinhvien {
    public $mssv;
    public $hoten;
    public $namsinh;
}
    function __construct($mssv, $hoten, $namsinh)
    {
      $this->mssv = $mssv;
      $this->hoten = $hoten;
      $this->ngaysinh = $namsinh;
    }
    function __destruct() {
        echo "Mã số sinh viên là:  {$this->mssv}.";
    }
    function __destruct() {
        echo "Họ tên sinh viên là:  {$this->hoten}.";
      }
    public function __destruct() {
        echo "Ngày sinh của sinh viên là: {$this->ngaysinh}.";
      }
    function set_mssv ($mssv) {
        $this->mssv = $mssv;
    }
    function set_hoten($hoten) {
        $this->hoten = $hoten;
    }
    function set_ngaysinh($namsinh) {
        $this->ngaysinh = $namsinh;
    }

    function get_mssv() {
        return $this->mssv;
    }

    function get_hoten() {
        return $this->hoten;
      }
      function get_ngaysinh() {
        return $this->namsinh;
      }
    
    function tinhtuoi ($namsinh) {
      $tuoi = date("Y") - $namsinh;
      echo "$tuoi";
    }
    $oj = new sinhvien();
    $oj->mssv = "B1906358";
    $oj->hoten = "Hồ Thị Minh Tuyền";
    $oj->namsinh  = 2001;
    echo $oj->mssv;
    echo "<br>";
    echo $oj->hoten;
    echo "<br>";
    echo $oj->namsinh;
    echo "<br>";
    echo "Tuổi của bạn là ";
    tinhtuoi(2001);     
?>