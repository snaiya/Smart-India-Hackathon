<?php
    session_start();
    $formid = $_SESSION['formid'];
	include '../database/connect.php';
	mysqli_query($connection,"UPDATE `registered_student` SET `step` = '3' WHERE formid = '$formid' ");
    mysqli_close($connection);
    header ("location: ../user.php");
?>