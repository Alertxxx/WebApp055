<?php
    $actor_name = $_GET['a_name'];
    $actor_surname = $_GET['a_lastname'];
    // สร้างการเชื่อมต่อกับฐานข้อมูล
    $conn = new mysqli('localhost','root','','shopdvd');
    $conn->query("SET NAMES utf8");
    // ตรวจสอบการเชื่อมต่อ
    if($conn->connect_error){
        die("Connection Fail God damn it ". $conn->$conn_error);
    }

    $sql = "SELECT a_name, a_lastname, a_movie
    FROM actor
    INNER JOIN movie
    ON a_movie = m_name
    WHERE a_name = '$actor_name' AND
        a_lastname = '$actor_surname'";
    

    
    $result = $conn->query($sql);


    if ($result->num_rows > 0) {
        // แสดงข้อมูล
        while ($row = $result->fetch_assoc()) {
            echo "นักแสดง: " . $row["a_name"] . " ".$row["a_lastname"].", หนังที่แสดง : " . $row["a_movie"] . "<br>";
            
        }
} else {
    echo "ไม่พบข้อมูล";
}

// ปิดการเชื่อมต่อฐานข้อมูล
$conn->close();

?>