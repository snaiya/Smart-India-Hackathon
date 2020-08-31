
<?php 
   $formid = $_SESSION['formid'];
   include 'database/connect.php';
   $sql2 = mysqli_query($connection,"select * from determining_factors where formid = '$formid' ");
   $status = mysqli_fetch_array($sql2,MYSQLI_ASSOC);
   mysqli_close($connection);
?>


<div class="box"  style="height:303px; overflow:hidden">
    <div style="padding:1px 20px 1px 20px; margin:-20px; background-color:#e3f2fd">
        <h3 style="display:inline-block; width:25%;"><i class="fa fa-check-square" style="font-weight:bold">&nbsp;</i>Application Status</h3>
        <h3 align="right" style="display:inline-block; width:40%; color:#000000"><?php echo 'Welcome, '.$data['firstname'].' '.$data['surname'];?></h3>
        <h3 align="right" style="display:inline-block; width:30%; color:#cc0000">Form Number : <?php echo $data['formid']; ?></h3>        
    </div>
    
    <?php
        if($status['allot']==0)
        {   echo '
            <br />
            <div align="center" style="padding:20px; font-family:Saira;">
                    <h3 style="color: #00aa00">Aadhar Data Verified <i class="fa fa-check"></i></h3>
                    <h3 style="color: #00aa00">ACPC Data Verified <i class="fa fa-check"></i></h3>
                    <h3>Your Application has been successfully submitted. Please kindly wait for the results.</h3>
                    <br />
                    <div align="center">
                            <input type="button" class="btn" value="View Your Application" style="padding:5px; width:30%; font-size:20px"  onclick="window.open(\'hostel_form.php\',\'_blank\');"/>
                    </div>
            </div>';
        }

        else if($status['allot']==1)
        {  

            echo '
            <br /><br />
            <button align="right" style="display:inline-block; cursor:pointer" onclick="window.open(\'hostel_form.php\',\'_blank\');">My Hostel Application Form</button>
            <div align="center" style="padding:20px; font-family:Saira;">
                    <h3 style="color:#00aa00">Congratulations, your application is accepted and you have been sucessfully allocated to hostel.</h3>
                    <h3>Alloted Room Number is <span style="color:#cc0000">'.$status['room'].'</span>. Please confirm your seat by paying hostel fees.</h3>
                    <br />
                    <div align="center">
                            <input type="button" class="btn" value="Next Step" style="padding:5px; width:30%; font-size:20px"  onclick="location.href = \'user/step2to3.php\'"/>
                    </div>
            </div>';
        }

    ?>
</div>
