<?php
require 'conn.php';
$sql_update="INSERT INTO user(id,name,lastname,address,phone) VALUES ('$_POST[id]','$_POST[name]','$_POST[lastname]' ,'$_POST[address]' ,'$_POST[phone]')";

$result= $conn->query($sql_update);

if(!$result) {
    die("Error God Damn it : ". $conn->error);
} else {

echo "Insert Success <br>";
header("refresh: 1; url=http://localhost/earth/mainmenu.php");
}

?>