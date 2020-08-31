<?php 
    include 'database/connect.php';
    $l_admin = $_SESSION['logged_admin']; 
    $query = mysqli_query($connection,"select * from  admin WHERE adminid='$l_admin'"); 
    $college =  mysqli_fetch_array($query,MYSQLI_ASSOC);
    $college = $college['collegename'];
    $sql = mysqli_query($connection,"SELECT SUM(`boysrooms` * `boysperroom`) as 'total_boys', SUM(`girlsrooms` * `girlsperroom`) as 'total_girls' FROM `college_hostels` WHERE `collegename` = '$college'");
                    $data = mysqli_fetch_array($sql,MYSQLI_ASSOC); 
?>

                <h1>Welcome, Admin of College : <span style="color:red; font-weight:bold"><?php echo $college ?></span> </h1>
                <br />
                
                <div class="admin_tab" style="display:inline-block">    

                    <br />
                    <div style="background-color:#e3f2fd; padding:5px; box-shadow: 0px 0px 3px 0px #333;" align="left">
                         <button style="float:right">Edit</button>
                        <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-edit" style="font-weight:bold;"></i>  &nbsp; Instructions</h3>

                        <ul>
                            <li>Hostel allocation procedure will start on 31/12/2017.</li>
                            <li>Fresh Students who wish to take admissions in hostel must apply for new registration.</li>
                            <li>Registered users may Log In.</li>
                            <li>This portal is intended to be used by students who want to apply for hostels, others must refrain from using it.</li>
                            <li>Providing incorrect details may lead to legal action. Please provide correct details.</li>
                        </ul>
                    </div>
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;
                 <?php 
                        include 'database/connect.php';
                        $result=mysqli_query($connection,"SELECT * FROM `determining_factors` WHERE gender='male' AND college='$college' AND allot<2 ");
                        $applicants_b=mysqli_num_rows($result);
                        $result=mysqli_query($connection,"SELECT * FROM `determining_factors` WHERE gender='female' AND college='$college' AND allot<2");
                        $applicants_g=mysqli_num_rows($result);
                        mysqli_close($connection);
                    ?>
                <div class="admin_tab" style="display:inline-block">    
                    <br />
                    <div style="background-color:#e3f2fd; padding:5px; box-shadow: 0px 0px 3px 0px #333;" align="left">
                         <button style="float:right">Edit</button>
                        <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa fa-bullhorn" style="font-weight:bold;"></i>  &nbsp; Announcements</h3>

                        <ul>
                            <li>Hostel allocation procedure will start on 31/12/2017.</li>
                            <br />
                            <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
                            <br />
                            <li>Fusce tempus massa in facilisis fringilla.</li>
                            <br /><br /><br />
                        </ul>
                    </div>
                </div>
                
