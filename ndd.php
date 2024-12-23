<?php
include 'db_connection.php'; // Kết nối cơ sở dữ liệu

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $ten_san_pham = $_POST['ten_san_pham'];
    $gia = $_POST['gia'];
    $mo_ta = $_POST['mo_ta'];
    $so_luong = $_POST['so_luong'];

    $sql = "INSERT INTO ndd_San_Pham (ten_san_pham, gia, mo_ta, so_luong) 
            VALUES ('$ten_san_pham', '$gia', '$mo_ta', '$so_luong')";
    
    if (mysqli_query($conn, $sql)) {
        echo "Sản phẩm đã được thêm thành công!";
    } else {
        echo "Lỗi: " . $sql . "<br>" . mysqli_error($conn);
    }
}
?>
