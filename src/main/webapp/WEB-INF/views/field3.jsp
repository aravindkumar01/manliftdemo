<html>
<head>
<title>Service</title>
<link rel="stylesheet" href="bootstrap.min.css">

<!-- jQuery library -->
<script src="jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="bootstrap.min.js"></script>

 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 

<style>
#logo{
margin-top: 20px;
 margin-left: 0px;
}

#lname
{
margin-top: 0px;
}
#second{
margin-left:1px;

}
#company
{
margin-top:10px;
}
body{
background-color:#eeeeee;
}
#ca
{
background-color:red;
}
</style>

<script>

var room = 1;
function patrs() {
     
    room++;
    var objTo = document.getElementById('patrs')
    var divtest = document.createElement("div");
	divtest.setAttribute("class", "form-group removeclass"+room);
	var rdiv = 'removeclass'+room;
    divtest.innerHTML = '<div class="row" style="margin-left:30px;"><div class="col-sm-3 nopadding"><div class="form-group"> <input type="text" class="form-control" id="part'+room+'" name="" value="" placeholder="parts used(Description)"></div></div><div class="col-sm-3 nopadding"><div class="form-group"> <input type="text" class="form-control" id="q'+room+'" name="" value="" placeholder="Quantity"></div></div><div class="col-sm-3 nopadding"><div class="form-group"> <input type="text" class="form-control" id="p_num'+room+'" name="" value="" placeholder="Part Number"></div></div><div class="col-sm-3 nopadding"><div class="form-group"><div class="input-group"> <div class="input-group-btn"> <button class="btn btn-danger" type="button" onclick="remove_education_fields('+ room +');"> <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> </button></div></div></div></div><div class="clear"></div></div>';
   
    objTo.appendChild(divtest)
}
   function remove_education_fields(rid) {
	   $('.removeclass'+rid).remove();
   }

 function printPage() {
    window.print();
}
$(document).ready(function(){
           
		       $("#save").click(function(){
                     
                            var component="";
				    
				
               
		if($("#Wires").prop("checked") == true){
                
                component=component+",Wires&Cables";

            }
            if($("#toggle").prop("checked") == true){
                
                component=component+",Toggle_Switches";

            }			
			  if($("#level").prop("checked") == true){
                
                component=component+",Level Sensors";

            }	
		
			  if($("#drive").prop("checked") == true){
                
                component=component+",Drive_Steer_JoystickJoystick";

            }			
			 			  if($("#fuse").prop("checked") == true){
                
                component=component+",fuse";

            }	

              if($("#relays").prop("checked") == true){
                
                component=component+",Relays";

            }	
              if($("#hydraulic").prop("checked") == true){
                
                component=component+",Hydraulic_House";

            }	
              if($("#wiring").prop("checked") == true){
                
                component=component+",Wiring_Harness_&_Contact_BlocksBlocks";

            }	
             if($("#starter").prop("checked") == true){
                
                component=component+",Starter_Motor";

            }	

			
			
			
			
			

             if($("#connection").prop("checked") == true){
                
                component=component+",Connection_on_valve_coils";

            }	
             if($("#limit").prop("checked") == true){
                
                component=component+",Limit_Switch";

            }	
             if($("#cylinder").prop("checked") == true){
                
                component=component+",Cylinder_Seal";

            }	
             if($("#battery").prop("checked") == true){
                
                component=component+",Battery_Charger";

            }	
             if($("#tilt").prop("checked") == true){
                
                component=component+",Tilt_Sensor";

            }	
             if($("#throttle").prop("checked") == true){
                
                component=component+",Throttle_Solenoid";

            }	
             if($("#foot").prop("checked") == true){
                
                component=component+",Foot_Switch";

            }	
             if($("#manifolds").prop("checked") == true){
                
                component=component+",o-ring_From_Valve_Block_Manifolds";

            }	
             if($("#stering").prop("checked") == true){
                
                component=component+",Starter_Motor";

            }	
             if($("#starter").prop("checked") == true){
                
                component=component+",Stering_Cylinder_And_Torque_Hub";

            }	


              
			   if($("#creep").prop("checked") == true){
                
                component=component+", Creep_Switch";

            }	 if($("#key").prop("checked") == true){
                
                component=component+",Key_Switch";

            }	
			 if($("#proximity").prop("checked") == true){
                
                component=component+",Proximity_Swtich";

            }	
			 if($("#batteryA").prop("checked") == true){
                
                component=component+",Battery";

            }	
			 if($("#lift").prop("checked") == true){
                
                component=component+", Lift_swing_joystick";

            }	
			 if($("#fasteners").prop("checked") == true){
                
                component=component+",Fasteners";

            }	
			 if($("#emergency").prop("checked") == true){
                
                component=component+",Emergency_Switches";

            }	
              if($("#functional").prop("checked") == true){
                
                component=component+",Functional_valvess";

            }	
			 if($("#others").prop("checked") == true){
                
                component=component+",Others";

            }	
		
       var field3={"component":component};
 	 
			

               $.ajax({
		      type: "POST",
		      contentType : 'application/json; charset=utf-8',
		      dataType : 'json',
		      url: "field3",
		      data: JSON.stringify(field3), // Note it is important
		      success :function(s) {
		    	  
		    	 
		    	
		     },
               error: function(e){
            	   
            	   window.location.href = "field1";
            	   
            	   	        }
              
		  });
		       
		       
		       });


});



</script>
</head>
<body>

<br><br>

<div class="container fluid" id="ca">
  <nav class="navbar navbar-default navbar-fixed-top c">
    <div class="container-fluid">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#" >Manlift</a>
      </div>
     
       <div id="navbar" class="navbar-collapse collapse">
        
       <ul class="nav navbar-nav navbar-right ">
          <li class=""><a  href="reportpage"><i class="fa fa-dashboard"></i> Report</a></li>
          <li class="active"><a href="storepagel"><i class="fa fa-file"></i> Store</a></li>
          <li><a href="productpage"><i class="fa fa-home"></i> Product</a></li>
          <li><a href="logout"><i class="fa fa-user"></i> Logout</a></li>
         </ul>
      </div>
      </nav>
</div> 
<div class="container" >
 <div class="panel panel-default">
<br>

<div class="row">
<div class="col-sm-4" id="logo"> <img src="assets/img/e.png" alt="Smiley face" height="10%" width="70%"> </div>

<div class="col-sm-5">

<div class="row-sm-12" id="lname">

<h1>Field Service Report</h1>

</div>

<div class="row-sm-12">
<h5>Doc-IMA/F-08-08 Rev -01 </h5>
</div>


</div><!--end row!-->
<div class="row-sm-3">
<h3 class="col-sm-1"></h3>

</div>


</div><!--end header!-->
<hr/><hr>





<div class="row" style="margin-left:30px;margin-right:20px;"><!--sixth row!-->

         <label class="row-sm-12">Component:</label>
		 
		 
		 <div class="row"><!--component row!-->
		 
		          <div class="col-sm-4">
				           <div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="Wires" name="wires">
                                <label class="form-check-label" for="defaultCheck1">
                                 Wires & Cables
                                </label>
                            </div> 
							<div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="toggle" name="toggle">
                                <label class="form-check-label" for="defaultCheck1">
                                 Toggle Switches
                                </label>
                            </div> 
							<div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="level" name="level">
                                <label class="form-check-label" for="defaultCheck1">
                                 Level Sensors
                                </label>
                            </div> 
							 <div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="drive" name="drive">
                                <label class="form-check-label" for="defaultCheck1">
                                 Drive Steer Joystick
                                </label>
                            </div> 
							<div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="fuse" name="fuse">
                                <label class="form-check-label" for="defaultCheck1">
                                 Fuse
                                </label>
                            </div> 
							<div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="relays" name="relays">
                                <label class="form-check-label" for="defaultCheck1">
                                 Relays
                                </label>
                            </div> 
							<div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="hydraulic" name="hydraulic">
                                <label class="form-check-label" for="defaultCheck1">
                                 Hydraulic House
                                </label>
                            </div> 
							<div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="wiring" name="wiring">
                                <label class="form-check-label" for="defaultCheck1">
                                 Wiring Harness & Contact Blocks
                                </label>
                            </div> 
                            
							<div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="starter" name="starter">
                                <label class="form-check-label" for="defaultCheck1">
                                 Starter motor
                                </label>
                            </div> 
                            
                            							
				  
				  </div>
				  
				  <div class="col-sm-4">
				  
				                <div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="connection" name="connection">
                                <label class="form-check-label" for="defaultCheck1">
                                 Connection on valve coils
                                </label>
                            </div> 
							<div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="limit" name="limit">
                                <label class="form-check-label" for="defaultCheck1">
                                 Limit Switch
                                </label>
                            </div> 
							<div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="cylinder" name="cylinder">
                                <label class="form-check-label" for="defaultCheck1">
                                 Cylinder Seal 
                                </label>
                            </div> 
							 <div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="battery" name="battery">
                                <label class="form-check-label" for="defaultCheck1">
                                 Battery Charger
                                </label>
                            </div> 
							<div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="tilt" name="tilt">
                                <label class="form-check-label" for="defaultCheck1">
                                 Tilt Sensor
                                </label>
                            </div> 
							<div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="throttle" name="throttle">
                                <label class="form-check-label" for="defaultCheck1">
                                 Throttle Solenoid 
                                </label>
                            </div> 
							<div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="foot" name="foot">
                                <label class="form-check-label" for="defaultCheck1">
                                 Foot Switch
                                </label>
                            </div> 
                            <div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="manifolds" name="manifolds">
                                <label class="form-check-label" for="defaultCheck1">
                                 o-ring from valve block Manifolds
                                </label>
                            </div> 
                            <div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="stering" name="stering">
                                <label class="form-check-label" for="defaultCheck1">
                                 Stering cylinder and torque hub
                                </label>
                            </div> 
                            							
							
				  				  
				  </div>
				  
				  <div class="col-sm-4">
				          <div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="creep" name="creep">
                                <label class="form-check-label" for="defaultCheck1">
                                 Creep Switch
                                </label>
                            </div> 
							<div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="key" name="key">
                                <label class="form-check-label" for="defaultCheck1">
                                 Key Switch
                                </label>
                            </div> 
							<div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="proximity" name="proximity">
                                <label class="form-check-label" for="defaultCheck1">
                                 Proximity Switch 
                                </label>
                            </div> 
							 <div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="batteryA" name="batteryA">
                                <label class="form-check-label" for="defaultCheck1">
                                 Battery 
                                </label>
                            </div> 
							<div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="lift" name="lift">
                                <label class="form-check-label" for="defaultCheck1">
                                    Lift swing joystick
                                </label>
                            </div> 
							<div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="fasteners">
                                <label class="form-check-label" for="defaultCheck1">
                                 Fasteners
                                </label>
                            </div> 
							<div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="emergency" name="emergency">
                                <label class="form-check-label" for="defaultCheck1">
                                    Emergency Switches 
                                </label>
                            </div> 
							<div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="functional" name="functional">
                                <label class="form-check-label" for="defaultCheck1">
                                 Functional valves
                                </label>
                            </div> 
                            <div class="form-check">
                               <input class="form-check-input" type="checkbox" value="" id="others" name="others">
                                <label class="form-check-label" for="defaultCheck1">
                                 Others
                                </label>
                            </div>                           
             	  
				  </div>
		 
		 
		 </div><!--end component row!-->

</div><!--end sixth row!-->


 <br><br>
 
 <div class="row" style="margin-left:500px;"><!--button!-->

    <button type="button" class="btn btn-primary" id="save">Submit</button>
                
	    <br><br>
</div><!--end button!-->

 

</div><!--end panel!-->
</div><!--end container!-->
</body>




</html>
