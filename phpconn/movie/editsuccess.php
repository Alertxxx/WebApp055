<?php
require 'conn.php';
$sql_update="UPDATE member SET mname='$_POST[mname]',mlastname='$_POST[mlastname]' ,maddress='$_POST[maddress]' ,mtelephone='$_POST[mtelephone]' WHERE mid='$_POST[mid]' ";

$result= $conn->query($sql_update);

if(!$result) {
    die("Error God Damn it : ". $conn->error);
} else {

echo "Edit Success <br>";
header("refresh: 1; url=http://localhost/movie/mainmenu.php");
}

?>