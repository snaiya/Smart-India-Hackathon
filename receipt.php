 
<?php
session_start();
$formid = $_SESSION['formid'];
include 'database/connect.php';
$sql = mysqli_query($connection,"select * from determining_factors where formid = '$formid' ");
$data1 = mysqli_fetch_array($sql,MYSQLI_ASSOC);
$college=$data1['college'];        
$sql = mysqli_query($connection,"select * from `college_hostels` WHERE `collegename`='$college'");
$data2 = mysqli_fetch_array($sql,MYSQLI_ASSOC);       
mysqli_close($connection);   
?>


<?php
require('fpdf.php');

$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B',16);
$pdf->Cell(40,10,'Form Number : '.$data1['formid'],0,1);
$pdf->Cell(40,10,'Date : '.'dd/mm/yyyy',0,1);
$pdf->Cell(40,10,'Name : '.$data1['name'],0,1);
$pdf->Cell(40,10,'College : '.$data1['college'].','.$data2['location'],0,1);
$pdf->Cell(40,10,'Room Number : '.$data1['room'],0,1);
$pdf->Cell(40,10,'Fees Paid : '.'Rs 20,000',0,1);
$pdf->Cell(40,10,'AUTHORIZED',0,1);


$pdf->Output();
?>



<!DOCTYPE html>
<html>
 <body align="center" style="font-family:Arial; background-color:#aaa" >
 	<br /><br /><br />

 	<div align="center" >
 	<table border=2 width="60%" cellpadding="10" cellspacing="0" style="background-color:white; box-shadow: 0px 0px 10px 0px #fff">
 		<tr>
 			<td colspan="2" align="center" style="color:red"><h3>RECEIPT</h3></td>
 		</tr>
 		<tr>
 			<td><b>Form Number : </b><?php echo $data1['formid'];?></td>
 			<td><b>Date : </b><?php echo date("d/m/Y"); ?></td>
 		</tr>
 		<tr>
 			<td><b>Name : </b><?php echo $data1['name'];?></td>
 			<td><b>Room No : </b><?php echo $data1['room']; ?></td>
 		</tr>
 		<tr>
 			<td colspan="2"><b>College : </b><?php echo $data1['college'].','.$data2['location'];?></td>
 		</tr>
 		<tr>
 			<td width="70%" align="center"><b>Details</b></td>
 			<td align="center"><b>Rs</b></td>
 		</tr>
 		<tr>
 			<td align="center"><br />
 			Hostel Fees Payment
               <br /><br />
 		    </td>
 			<td ALIGN="center">20,000 /-</td>
 		</tr>
 		<tr>
 			<td valign="top"><b>Rupees : </b> Twenty Thousand only</td>
 			<td align="center" style="color:blue"><b>AUTHORIZED</b></td>
 		</tr>		
 	</table>
 	</div>
 	<br /><br />
 	<input type="button" class="btn" value="Print Receipt" style="padding:2px; display:inline-block; width:20%; cursor:pointer; font-size:20px; margin-right:2%"  onclick="window.print();"/>
    
 </body>
</html>

