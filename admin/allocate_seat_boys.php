
<?php 
    session_start();
    include '../database/connect.php';
    
    $_SESSION['action']="allocate";
    $l_admin = $_SESSION['logged_admin']; 
    
    $query = mysqli_query($connection,"select * from  admin WHERE adminid='$l_admin'"); 
    $data =  mysqli_fetch_array($query,MYSQLI_ASSOC);
    $college=$data['collegename'];

        $sql = mysqli_query($connection,"SELECT SUM(`boysperroom`) as 'boysperroom',SUM(`boysrooms` * `boysperroom`) as 'total_boys' FROM `college_hostels` WHERE `collegename` = '$college'");

      $data = mysqli_fetch_array($sql,MYSQLI_ASSOC);
      $boys_limit = $data['total_boys'];
      
      $result=mysqli_query($connection,"SELECT * FROM `determining_factors` WHERE gender='male' AND allot>0 AND college='$college'");
      $allotedseats=mysqli_num_rows($result);

      $query="SELECT AVG(`distance`) as `avgdist`, AVG(`merit`) as `avgmerit` FROM `determining_factors` WHERE gender='male' AND allot=0 AND college='$college'";
      $result = mysqli_query($connection,$query);
      $avg= mysqli_fetch_array($result,MYSQLI_ASSOC);
       $Dmean = $avg['avgdist'];
       $Mmean = $avg['avgmerit'];
       
       $limit = $boys_limit - $allotedseats;
       echo $limit;
       $query = mysqli_query($connection,"SELECT *, 0.65*(`distance`-'$Dmean')+ 0.35*('$Mmean'-`merit`) as `finalmerit` FROM `determining_factors` WHERE gender='male' AND allot=0 AND college='$college' ORDER BY `finalmerit` DESC LIMIT $limit;"); 
      
      $room = $data['boysperroom'];
      while($val =  mysqli_fetch_array($query,MYSQLI_ASSOC)){
           $formid = $val['formid'];
           mysqli_query($connection,"UPDATE `determining_factors` SET `allot` = '1' WHERE `formid` = '$formid'"); 
           $room_alloc= 100+ floor($room / $data['boysperroom']);
           $room = $room + 1;
           $room_allocate = 'B'.(string)$room_alloc;
           echo $room_allocate;

           $room = $room + 1;
           mysqli_query($connection,"UPDATE `determining_factors` SET `room` = '$room_allocate' WHERE `formid` = '$formid'"); 
           
    
      }            
    mysqli_close($connection); 
    header("location: ../admin.php");

?>
