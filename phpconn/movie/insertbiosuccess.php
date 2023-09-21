<?php
require 'conn.php';
$sql_update="INSERT INTO member(mid,mname,mlastname,maddress,mtelephone) VALUES ('$_POST[mid]','$_POST[mname]','$_POST[mlastname]' ,'$_POST[maddress]' ,'$_POST[mtelephone]')";

$result= $conn->query($sql_update);

if(!$result) {
    die("Error God Damn it : ". $conn->error);
} else {

echo "Insert Success <br>";
header("refresh: 1; url=http://localhost/movie/mainmenu.php");
}

?>