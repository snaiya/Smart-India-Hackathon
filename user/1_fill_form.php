
<div class="box"  style=" margin-bottom:20px">
    <div style="padding:1px 20px 1px 20px; margin:-20px; background-color:#e3f2fd">
                    <h3 style="display:inline-block; width:25%;"><i class="fa fa-file-text-o" style="font-weight:bold">&nbsp;</i>Hostel Application Form</h3>
                    <h3 align="right" style="display:inline-block; width:40%; color:#000000"><?php echo 'Welcome, '.$data['firstname'].' '.$data['surname'];?></h3>
                    <h3 align="right" style="display:inline-block; width:30%; color:#cc0000">Form Number : <?php echo $data['formid']; ?></h3>
    </div>
    <br />

    <div style="padding:20px; font-family:'Saira'; font-weight:bold">
        <form id="student_details" action="database/hostel_application.php" method="POST" style="color:#333333" >
            <br />
            <h3 style="display:inline; padding-left:20%">ACPC Id : <span style="font-family:'Roboto'; color:red"><?php echo $data['acpcid']; ?></span> </h3> 
            <h3 style="display:inline; padding-left:20%">Form Number : <span style="font-family:'Roboto'; color:red"><?php echo $data['formid']; ?></span> </h3>
            
                    <p style="color:#31708f;">Student Details </p>
                    <div style="padding-left:20px; margin-top:-10px; border: 1px solid #31708f;" >
                        <table width="100%" cellspacing="10">
                            <tr>
                            <td width="50%">
                                <label for="name">Name</label><br />
                                <input type="text" name="name" readonly value="<?php echo $data['firstname'].' '.$data['surname']; ?>" />
                                <span class="fa fa-check" style="font-size:20px; color:#4caf50"></span><br /><br />
                                
                                <label for="email">Email Address</label><br />
                                <input type="text" name="email" readonly value="<?php echo $data['email']; ?>" />
                                <span class="fa fa-check" style="font-size:20px; color:#4caf50"></span><br />
                                
                                <label for="contact">Contact number</label><br />
                                <input type="text" readonly value="+91" style="width:32px"/>
                                <input type="text" name="contact" class="student_form"   required autocomplete="off" title="Must be numeric of 10 digits" style="width:68%">
                                <span class="icon-validation fa" data-icon="&#xf00c"></span> <br /><br />

                                <label for="dob">Date of Birth</label><br />
                                <input type="date"  name="dob"   required autocomplete="off" onchange="valid_date()">
                                <span class="fa fa-check" id="valid_date" style="font-size:20px; color:#4caf50; display:none"></span><br /><br />
                                    <script>
                                        function valid_date() {
                                            document.getElementById('valid_date').style.display="inline-block";
                                        }
                                    </script>
                                <label for="aadhar">Aadhar Number</label><br />
                                <input type="text" class="student_form" name="aadhar" autocomplete="off"   required title="Aadhar No. must be of 12 digits">
                                <span class="icon-validation fa" data-icon="&#xf00c"></span> <br / >

                                <label for="merit">Merit Rank</label><br />
                                <input type="text" class="student_form" name="merit"    required autocomplete="off" title="Merit Rank Must be numeric">
                                <span class="icon-validation fa" data-icon="&#xf00c"></span> <br /><br />    
                            </td>

                            <td height="100%" style="padding-top:-30px">
                                
                                <div style="padding:0px; margin-top:-25px">
                                    <label style="padding-top:-30px" for="photo">Upload your photo (Recommended size 3.5cm x 4.5cm)</label><br />
                                    <img id="photo" src="images/photo.jpg" style="margin:16px; margin-left:110px; height:180px; width:132px; border: 1px solid #31708f;  box-shadow: 0px 0px 5px 0px #bbb;" /><br />
                                    <input type="hidden" id="hidden_photo" name="hide_photo" src="" />
                                    <p id="photo_status" style="margin:-10px 0px 0px 0px; color:#333333">Only jpeg or jpg format is allowed.</p>
                                
                                    <input type="file" id="choose_file" accept="image/jpeg" required height="180" width="130" style="width:330px;" onchange="preview_image(event);" />
                                    <span class="fa fa-check" id="valid_image" style="font-size:20px; color:#4caf50; display:none"></span><br /><br />
                                </div>
                                    
                                    <script>
                                        function preview_image(event) 
                                        {
                                            var reader = new FileReader();
                                            reader.onload = function(){
                                                var output = document.getElementById('photo');                                                 
                                                var newImageObj = new Image();                                                
                                                newImageObj.src = reader.result;                              
                            
                                                newImageObj.onload = function () {
                                                    var size = parseInt((reader.result).replace(/=/g,"").length * 0.75)/1024;
                                                    var height = this.height;
                                                    var width = this.width;

                                                    if(size>50) {
                                                        document.getElementById('choose_file').value="";
                                                        output.src="photo.jpg"
                                                        document.getElementById('valid_image').style.display="none";
                                                        document.getElementById('photo_status').style.color="red";
                                                        document.getElementById('photo_status').innerHTML="Image size should be less than 50kb."
                                                        return false;
                                                    }
                                                    
                                                    else if (width>140 || width<120 || height>190 || height<160) {
                                                         document.getElementById('choose_file').value=""; 
                                                         output.src="images/photo.jpg" 
                                                         document.getElementById('valid_image').style.display="none";
                                                         document.getElementById('photo_status').style.color="red";
                                                         document.getElementById('photo_status').innerHTML="Dimensions must be approximately 3.5cm x 4.5cm."
                                                         return false;
                                                    }

                                                    document.getElementById('photo_status').style.color="#333333";
                                                    document.getElementById('photo_status').innerHTML="Only jpeg or jpg format is allowed.";
                                                    output.src = reader.result;
                                                    document.getElementById('hidden_photo').value=output.src;
                                                    document.getElementById('valid_image').style.display="inline-block";
                                                };                                              
                                               
                                            }   
                                                reader.readAsDataURL(event.target.files[0]);
                                        }
                                    </script>
                            
                                <label for="gender">Gender</label><br />
                                <select required name="gender" >
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                </select>
                                <span class="fa fa-check" style="font-size:20px; color:#4caf50"></span><br />
                                
                                
                                <label for="category">Category:</label><br />
                                <select required name="category" >
                                    <option value="general">General</option>
                                    <option value="sebc">SEBC</option>
                                    <option value="sc">SC</option>
                                    <option value="st">ST</option>
                                    <option value="other">Other</option>
                                </select>
                                <span class="fa fa-check" style="font-size:20px; color:#4caf50"></span><br /> 
                            </td>
                            </tr>
                        </table>
                    </div>
        
                    
                    <table width="100%">
                        <tr>
                            <td style="padding-right:20px" width="50%">
                                <p style="color:#31708f;">Student Address Details </p>
                                <div style="padding-left:20px; margin-top:-10px; border: 1px solid #31708f;" >
                                <table width="100%" cellspacing="10">
                                <tr><td>
                                
                                <label for="address">Your Address</label><br />
                                <input type="text" id="address1" name="address1" required placeholder="Address Line 1" oninput="valid_address()"/>
                                <input type="hidden" id="distance" name="distance" />
                                <span id="valid_address" class="fa fa-check" style="font-size:20px; color:#4caf50; display:none;"></span><br />
                                <input type="text" id="address2" name="address2" placeholder="Address Line 2" style="margin-top:2px"  oninput="valid_address()"/><br /><br />
                                
                                    <script>
                                        function valid_address() {
                                            if(document.getElementById('address1').value != "" )
                                            {
                                                document.getElementById('valid_address').style.display="inline-block";
                                            } 
                                            else 
                                            {
                                              document.getElementById('valid_address').style.display="none";  
                                            }
                                        }
                                    </script>
                                    <script src="user/state_city.js"></script>
                
                                <label for="state">State</label><br />
                                <select  name="state" id="state" style="width:87%" onchange="setCities();">
                                </select>
                                <span class="fa fa-check" style="font-size:20px; color:#4caf50"></span><br />
                               
                                <label for="city">City</label><br />
                                <select name="city"  id="city" style="width:87%">
                                </select>
                                <span class="fa fa-check" style="font-size:20px; color:#4caf50"></span><br />
            
                                <label for="country">Country</label><br />
                                <select  name="country" style="width:87%" id="country" onchange="setStates();">
                                    <option value="India">India</option>
                                </select>
                                <span class="fa fa-check" style="font-size:20px; color:#4caf50"></span><br />
                               
                                <label for="pincode">Pincode</label><br />
                                <input type="text" class="student_form" name="pincode" autocomplete="off"   required title="must be numeric of size 6 digits">
                                <span class="icon-validation fa" data-icon="&#xf00c"></span> <br>
                                
                                </td></tr>
                                </table>
                                </div>
                            </td>  
                            
                            <td style="padding-left:20px;" width="50%" >
                                <p style="color:#31708f;">Parent's Details </p>
                                <div style="padding-left:20px; margin-top:-10px; border: 1px solid #31708f; height:120%" >
                                <table width="100%" cellspacing="10" >
                                <tr><td>
                                
                                <label for="parentname">Parent's Name</label><br />
                                <input type="text" name="parentname" class="student_form" autocomplete="off"   required title="must be alhabetic">
                                <span class="icon-validation fa" data-icon="&#xf00c"></span><br />
                                
                                <label for="relation">Relation</label><br />
                                <input type="text" name="relation" class="student_form"   required title="must be alhabetic">
                                <span class="icon-validation fa" data-icon="&#xf00c"></span><br />

                                <label for="parentocc">Occupation:</label><br />
                                <input type="text" name="occupation" class="student_form"   required title="must be alhabetic">
                                <span class="icon-validation fa" data-icon="&#xf00c"></span><br />
            
                                <label for="parentincome">Annual Household Income (In Lakhs)</label><br />
                                <input type="text" name="income" class="student_form" autocomplete="off"   required title="must be in digits">
                                <span class="icon-validation fa" data-icon="&#xf00c"></span><br />

                                <label for="tel">Telephone No(R) (Optional)</label><br />
                                <input type="text" name="hometelephone" class="student_form" autocomplete="off"   title="must be valid">
                                <span class="icon-validation fa" data-icon="&#xf00c"></span><br />
            
                                <label for="pamob">Parent's Mobile No(M):</label><br />
                                <input type="text" readonly value="+91" style="width:32px"/>
                                <input type="text" name="parentmobile" class="student_form"   required autocomplete="off" title="Must be numeric of 10 digits" style="width:67%">
                                <span class="icon-validation fa" data-icon="&#xf00c"></span><br />
                                
                                </td></tr>
                                </table>
                                </div>
                            </td>
                        </tr>
                    </table>

                    <p style="color:#31708f;">Guardian Details </p>
                    <div style="padding-left:20px; margin-top:-10px; border: 1px solid #31708f;" >
                        <table width="100%" cellspacing="10">
                            <tr>
                                <td width="50%">
                                <label for="localguname">Local Guardian Name:</label><br />
                                <input type="text" name="localguname" class="student_form"   required title="must be alhabetic">
                                <span class="icon-validation fa" data-icon="&#xf00c"></span><br />
                            
                                <label for="localmobile">Local Guardian Mobile No.(M)</label><br />
                                <input type="text" readonly value="+91" style="width:30px"/>
                                <input type="text" name="localmobile" class="student_form"   required autocomplete="off" title="Must be numeric of 10 digits" style="width:294px">
                                <span class="icon-validation fa" data-icon="&#xf00c"></span>
                                </td>
                                
                                <td>

                                <label for="localaddress">Local Guardian Address:</label>
                                <span id="valid_localaddress" class="fa fa-check" style="font-size:20px; color:#4caf50; display:none;"></span>
                                <textarea id="laddress" name="localaddress" style="height:100px" oninput="valid_localaddress();"></textarea>
                                    <script>
                                        function valid_localaddress() {

                                            if(document.getElementById('laddress').value != "" )
                                            {
                                                document.getElementById('valid_localaddress').style.display="inline-block";
                                            } 
                                            else 
                                            {
                                              document.getElementById('valid_localaddress').style.display="none";  
                                            }
                                        }
                                    </script>
                                </td>
                            </tr>
                        </table>  
                    </div>

                    <div align="center">
                        <br />
                        <input type="checkbox" required  style="cursor:pointer;" /><label >I have read all the Terms and Conditions and I agree to it.</label>
                        <br /><br />
                        <input type="submit" class="btn" style="padding:5px; width:200px; font-size:20px"  /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" class="btn" style="padding:5px; width:200px; font-size:20px" />
                    </div>

        </form>
    </div>
</div>

<script>

    $(document).ready(function(){
        $("#student_details input[name=contact]").attr("pattern", "[0-9]{10}");
        $("#student_details input[name=aadhar]").attr("pattern", "[0-9]{12}");
        $("#student_details input[name=merit]").attr("pattern", "[0-9]{1,8}");
            
        $("#student_details input[name=pincode]").attr("pattern", "[0-9]{6}");
                  
                  
        $("#student_details input[name=parentname]").attr("pattern", "([A-Za-z]( [A-Za-z])*){1,60}");
        $("#student_details input[name=relation]").attr("pattern", "[A-Za-z]{1,60}");
        $("#student_details input[name=occupation]").attr("pattern", "[A-Za-z]{1,60}");                  
        $("#student_details input[name=income]").attr("pattern", "[0-9]{1,10}");
        $("#student_details input[name=hometelelephone]").attr("pattern", "[0-9]{6,12}");
        $("#student_details input[name=parentmobile]").attr("pattern", "[0-9]{10}");

        $("#student_details input[name=localguname]").attr("pattern", "([A-Za-z]( [A-Za-z])*){1,60}");
        $("#student_details input[name=localmobile]").attr("pattern", "[0-9]{10}");              
    });
</script>