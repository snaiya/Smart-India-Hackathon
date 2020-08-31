<script>
    document.getElementById("s1").style.backgroundColor="#86b300"; 
    document.getElementById("s1").style.color="#cc0000";
    document.getElementById("s2").style.backgroundColor="#86b300"; 
    document.getElementById("s2").style.color="#cc0000";
    document.getElementById("s3").style.backgroundColor="#86b300"; 
    document.getElementById("s3").style.color="#cc0000";
</script>
<div class="box"  >
    <div style="padding:1px 20px 1px 20px; margin:-20px; background-color:#e3f2fd">
        <h3 style="display:inline-block; width:25%;"><i class="fa fa-credit-card" style="font-weight:bold">&nbsp;</i>Fees Payment Receipt</h3>
        <h3 align="right" style="display:inline-block; width:40%; color:#000000"><?php echo 'Welcome, '.$data['firstname'].' '.$data['surname'];?></h3>
        <h3 align="right" style="display:inline-block; width:30%; color:#cc0000">Form Number : <?php echo $data['formid']; ?></h3>
    </div>
    <br /><br />
    <?php 
        $formid = $_SESSION['formid'];
        include 'database/connect.php';
        $sql2 = mysqli_query($connection,"select * from determining_factors where formid = '$formid' ");
        $status = mysqli_fetch_array($sql2,MYSQLI_ASSOC);
        mysqli_close($connection);
    ?>
    <button align="right" style="display:inline-block; margin-bottom:0px; cursor:pointer" onclick="window.open('hostel_form.php','_blank');">My Hostel Application Form</button>
    <div style="padding:10px; font-family:'Saira'; font-weight:bold">
            <div style="padding:10px;"  align="center">
                <h3 style="color:green">Fees Payment sucessfully done. Your allocation to hostel is sucessfully completed.</h3>
                <h3>Your Room Number is <span style="color:#cc0000"><?php echo $status['room']; ?></span></h3>
            </div>

            <div align="center">
                    <form action="receipt.php">
                    <input type="submit" class="btn" value="Payment Receipt" style="padding:5px; width:30%; font-size:20px"  /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </form>
            </div>
        <br />
    </div>
</div>