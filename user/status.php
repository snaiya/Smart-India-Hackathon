<div class="steps" style="margin:0px; text-align:center; ">
     <p id="s1" class="data" style="background-color:#ffffff; color:#202020">1. Fill Application Form</p>
     <p class="line"></p><i id="l2" class="fa fa-chevron-circle-right" style="font-size:20px; color:#202020; vertical-align: middle; "></i><p class="line"></p>
     <p id="s2" class="data" style="background-color:#ffffff; color:#202020">2. Application Status</p>
     <p class="line"></p><i id="l3" class="fa fa-chevron-circle-right" style="font-size:20px; color:#202020; vertical-align: middle;"></i><p class="line"></p>
     <p id="s3" class="data" style="background-color:#ffffff; color:#202020">3. Fees Payment</p>
</div>

<script>
	var n = "<?php echo $step; ?>";
	document.getElementById("s"+n).style.backgroundColor="#86b300"; 
	document.getElementById("s"+n).style.color="#cc0000";
</script>