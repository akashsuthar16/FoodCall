<?php
include("../connection/connect.php");
error_reporting(0);
session_start();


// sending query
mysqli_query($db,"DELETE FROM delivery_boy WHERE id = '".$_GET['del']."'");
header("location:all_deliveryboy.php");  

?>