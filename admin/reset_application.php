<?php
 include '../database/connect.php';
  mysqli_query($connection,"TRUNCATE table determining_factors");
  mysqli_query($connection,"TRUNCATE table hostel_application");
  mysqli_query($connection,"TRUNCATE table registered_student");
  mysqli_query($connection,"TRUNCATE table admin");
  mysqli_query($connection,"INSERT INTO `admin` (`adminid`, `adminpass`, `collegename`, `location`, `boysrooms`, `boysperroom`, `girlsrooms`, `girlsperroom`, `status`) VALUES ('admin', 'admin', '', '', '0', '0', '0', '0', '0');");
  include '../database/log_out.php';
 
?>
