
<div class="box"  >
    <div style="padding:1px 20px 1px 20px; margin:-20px; background-color:#e3f2fd">
        <h3 style="display:inline-block; width:25%;"><i class="fa fa-credit-card" style="font-weight:bold">&nbsp;</i>Fees Payment</h3>
        <h3 align="right" style="display:inline-block; width:40%; color:#000000"><?php echo 'Welcome, '.$data['firstname'].' '.$data['surname'];?></h3>
        <h3 align="right" style="display:inline-block; width:30%; color:#cc0000">Form Number : <?php echo $data['formid']; ?></h3>
    </div>
    <br /><br />
    <button align="right" style="display:inline-block; margin-bottom:0px; cursor:pointer" onclick="window.open('hostel_form.php','_blank');">My Hostel Application Form</button>
    <div style="padding:10px; padding-top:0px; font-family:'Saira'; font-weight:bold">
            <div style="padding:10px; padding-top:0px">
                <h3 style="margin-bottom:0px">Please read this carefully</h3>
                <ul style="margin:0px; padding-top:0px">
                    <li>In order to confirm hostel allocation, student must pay hostel fees.</li>
                    <li>The total amount payable is <i class="fa fa-inr"></i>20,000/-, which is non-refundable under any circumstances.</li>
                    <li>The alloction will be effective over the term of one year.</li>
                    <li>If student is found trying unfair means during the process, then he/she may be subjected to legal action along with levision of fine and rejection of application.</li>
                </ul>
            </div>

            <div align="center">
                    <form action="payment_gateway">
                    <input type="submit" class="btn" value="Proceed to Payment" style="padding:5px; width:30%; font-size:20px"  /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </form>
            </div>
    </div>
</div>