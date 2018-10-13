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

$(document).ready(function(){
           
		       $("#save").click(function(){
                    		   
			   
			   });
		   
		   
     $("#clientRow").hide();
    $("#client").change(function(){
        if($("#client").val()=="cy")
		{
		$("#clientRow").show();
		
		}
		else
		{
		  $("#clientRow").hide();
   
		}
    });
	
	
	
    $(".time").keypress(function(){
       $this = $(this);       
       if($this.val().length == 4){
           $this.val($this.val() + ":");
       }
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
          <li class="active"><a  href="reportpage"><i class="fa fa-dashboard"></i> Report</a></li>
          <li class=""><a href="storepagel"><i class="fa fa-file"></i> Store</a></li>
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


<div class="row" ><!--first row!-->
<form   modelAttribute="Field" action="reportCreation" method="post" commandname="Field1">
<div class="col-sm-12">
       <div class="form-group col-sm-4">
          <label class="row-sm-6">Date call Received</label>
		  <div class="row-sm-6">
              <input type="date" placeholder="" class="form-control" id="date_call" name="date_call" required="required">
            </div>
		</div>  
         <div class="form-group col-sm-4">
          <label class="row-sm-6">Time call Received</label>
		  <div class="row-sm-6">
              <input type="time" placeholder="" class="form-control" id="time_call" name="time_call" required="required">
            </div>
		</div>  
		<div class="form-group col-sm-4">
          <label class="row-sm-6">Site Contact</label>
		  <div class="row-sm-6">
              <input type="text" placeholder="mobile number" pattern="[789][0-9]{9}" class="form-control" id="mobile" name="mobile" required="required">
            </div>
		</div>  

</div>

</div><!--end first row!-->


<div class="row" ><!--second row!-->
   <div class="col-sm-12">
   <div class="form-group col-sm-4">
           <label class="row-sm-6" id="company">Company/Customer Name</label>
		  <div class="row-sm-6">
              <input type="text" placeholder="Name" class="form-control" id="customer_name" name="customer_name" required="required">
            </div>
		</div>  
       
         
        <div class="form-group col-sm-4">
                    <label class="row-sm-6">Hour Meter Reading:</label>
		             <div class="row-sm-6">	    
				              <input type="text" id="hour_meter" name="hour_meter"  placeholder="Reading" class="form-control col-sm-1 time" required="required">

					 </div>
		       </div> 
			    <div class="form-group col-sm-4">
                    <label class="row-sm-6">Total" Down Time" of Machine(Hrs):</label>
		            <div class="row-sm-6">
                       <input type="text" placeholder="" class="form-control time" id="down_time" name="down_time" required="required">
                     </div>
		       </div> 
			   
</div>


</div><!--end second row!-->



<div class="row" style="margin-left:20px;margin-right:20px;"><!--therid row!-->
           <div class="form-group col-sm-4">
                    <label class="row-sm-6">Total Travel Time:</label>
		            <div class="row-sm-6">
                       <input type="time" placeholder="Location" class="form-control" id="total_time" name="total_time" required="required">
                     </div>
		       </div>	
              <div class="form-group col-sm-4">
                    <label class="row-sm-6">Model:</label>
		            <div class="row-sm-6">
                       <select class="form-control" id="model" name="model">
						        
  <!--Electric Scissor Lift-->
  <option value="1932 ES">1932 ES</option>
  <option value="2646 ES">2646 ES</option>
  <option value="3246 ES">3246 ES</option>
  <option value="4047 ES">4047 ES</option>
  
  <!--Diesel Scissor Lift-->
  <option value="5390 RT">5390 RT</option>
  
  <!--Diesel Boom Lift--> 	
  <option value="Z 45/25">Z 45/25</option>
  <option value="Z 60/34">Z 60/34</option>
  <option value="Z 80/60">Z 80/60</option>
  <option value="S-65">S-65</option>
  <option value="S-85">S-85</option>
  <option value="S-125">S-125</option>
  
  <!--Diesel Scissor Lift--> 	
  <option value="H12 DX">H12 DX</option>
  <option value="H15 SDX">H15 SDX</option>
  <option value="H15SX">H15SX</option>
  <option value="H18 SDX">H18 SDX</option>
  <option value="H18 SX">H18 SX</option>
  <option value="H18 SXL">H18 SXL</option>
  
  <!--Diesel Boom Lift--> 	
  <option value="HA12 PX">HA12 PX</option>
  <option value="HA16 PX">HA16 PX</option>
  <option value="HA18 PX">HA18 PX</option>
  <option value="HA20 PX">HA20 PX</option>
  <option value="HA16 TPX">HA16 TPX</option>
  <option value="H21 TX">H21 TX</option>
  <option value="H23 TPX">H23 TPX</option>
  
  <!--Electric Scissor Lift-->
  <option value="1930 ES">1930 ES</option>
  <option value="2030 ES">2030 ES</option>
  <option value="2032 ES">2032 ES</option>
  <option value="2646 ES">2646 ES</option>
  <option value="3246 ES">3246 ES</option>
  <option value="4069 RE">4069 RE</option>
  
  <!--Diesel Scissor Lift-->
  <option value="260 MRT">260 MRT</option>
  <option value="3394 RT">3394 RT</option>
  <option value="4394 RT">4394 RT</option>
  <option value="500 RTS">500 RTS</option>
  
  <!--Diesel Boom Lift-->
  <option value="450 AJ">450 AJ</option>
  <option value="510 AJ">510 AJ</option>
  <option value="600 AJ">600 AJ</option>
  <option value="800 AJ">800 AJ</option>
  <option value="460 SJ">460 SJ</option>
  <option value="600 S">600 S</option>
  <option value="600 SC">600 SC</option>
  <option value="660 SJ">660 SJ</option>
  <option value="660 SJC">660 SJC</option>
  <option value="680 S">680 S</option>
  <option value="800 S">800 S</option>
  <option value="860 SJ">860 SJ</option>
  <option value="110 SX">110 SX	</option>
  <option value="1200 SJP">1200 SJP</option>
  <option value="1350 SJP">1350 SJP</option>
  
  <!--Electric Boom  lift-->
  <option value="E-400 AJPN">E-400 AJPN</option>
  <option value="E-450 AJ">E-450 AJ</option>
  <option value="E-600 JP">E-600 JP</option>
  <option value="E-600 JP(M)">E-600 JP(M)</option>
  
  <!--Telehandler/Fork Lift-->
  <option value="3508 PS">3508 PS</option>
  <option value="3509 PS">3509 PS</option>
  <option value="3513 PS">3513 PS</option>
  <option value="4017 PS">4017 PS</option>
  <option value="530-110">530-110</option>
  
  <!--Electric Scissor Lift--> 
  <option value="2033 ES">2033 ES</option>
  <option value="2633 ES">2633 ES</option>
  <option value="2647 ES">2647 ES</option>
  <option value="3247 ES">3247 ES</option>
  
  <!--Diesel Scissor Lift-->   
  <option value="3772 RT">3772 RT</option>
  <option value="TITAN 40S">TITAN 40S</option>
  
  <!--Electric Personal Lift-->   
  <option value="SJ 16">SJ 16</option>
  

  <!--Electric Scissor Lift-->
  <option value="SJ 3219">SJ 3219</option>
  <option value="SJ 3220">SJ 3220</option>
  <option value="SJ 3226">SJ 3226</option>
  <option value="SJ 4626">SJ 4626</option>
  <option value="SJ 4632">SJ 4632</option>
                          </select>
                     </div>
		       </div>
          <div class="form-group col-sm-4">
                    <label class="row-sm-6">Fleet Serial Number</label>
		            <div class="row-sm-6">
                       <input type="number" placeholder="Serial Number" class="form-control" name="fleet_serial" id="fleet_serial" required="required">
                     </div>
		       </div>
			   

</div><!--end therid row!-->




<div class="row" style="margin-left:20px;margin-right:20px;"><!--fourth row!-->

               <div class="form-group col-sm-4">
                    <label class="row-sm-6">Date On Site</label>
		            <div class="row-sm-6">
                       <input type="date" placeholder="Serial Number" class="form-control" id="date_site" name="date_site" required="required">
                     </div>
		       </div>
			    <div class="form-group col-sm-4">
                    <label class="row-sm-6">Time arrived:</label>
					 <label class="row-sm-6">Job Start Time:</label>
		            <div class="row-sm-6">
                       <input type="time" placeholder="" class="form-control" id="start_time" name="start_time" required="required">
                     </div>
		       </div>
			   <div class="form-group col-sm-4">
			        <label class="row-sm-6">Job End Time:</label>
                    <label class="row-sm-6">Time Time Departed:</label>
		            <div class="row-sm-6">
                       <input type="time" placeholder="" class="form-control" id="end_time" name="end_time" required="required">
                     </div>
		       </div>


</div><!--end fourth row!-->


<div class="row" style="margin-left:20px;margin-right:20px;"><!--fifth row!-->

    <div class="col-sm-6">
      <div class="form-group"  style="margin-right:10px;">
        <label for="comment">Site Address:</label>
         <textarea class="form-control" rows="2" col="1" id="site_address" name="site_address" placeholder="Address" required="required"></textarea>
       </div> 
	</div>
     <div class="col-sm-6">
      <div class="form-group"  style="margin-right:60px;">
        <label for="comment">Job Carried out </label>
         <textarea class="form-control" rows="2" col="1" id="job_carriout" name="job_carriout" required="required"></textarea>
       </div> 
	</div>

</div><!--end fifth row!-->

 
 

  <div class="row" style="margin-left:5px;"><!-- seven row!-->
  
         <div class="form-group col-sm-4">    
		       <label class="col-sm-6">Problem Solved:</label>
                 <select class="form-control" class="col-sm-6" id="problem" name="problem" >
      
                   <option value="cs">NO</option>
                    <option value="cy">YES</option>
                  
				</select>
	      </div>
		<div class="form-group col-sm-4">    
		       <label class="col-sm-6">Client informed:</label>
                 <select class="form-control" class="col-sm-6" id="client_inform" name="client_inform">
      
                   <option value="cs">NO</option>
                    <option value="cy">YES</option>
                  
				</select>
	      </div>
		<div class="form-group col-sm-4">    
		       <label class="col-sm-6">OrientationPerformed:</label>
                 <select class="form-control" class="col-sm-6" id="orient" name="oriant">
      
                   <option value="cs">NO</option>
                    <option value="cy">YES</option>
                  
				</select>
	      </div>
  </div><!--end seven row!-->
	
<div class="row" style="margin-left:30px;"><!--eight row!-->



    <div class="row">
      <div class="form-group"  style="margin-right:60px;">
        <label for="comment">Customer Comments: </label>
         <textarea class="form-control" rows="3" col="1" id="customer_comment" name="customer_comment" required="required"></textarea>
       </div> 
	</div>



</div><!--end eight row!-->

<div class="row" style="margin-right:60px;"><!--nine row!-->

  <div class="col-sm-6">
  
             <div class="form-group col-sm-12">
                    <label class="row-sm-6">OperatorName:</label>
		            <div class="row-sm-6">
                       <input type="text" placeholder="Names" class="form-control" name="operator" name="operator" required="required">
                     </div>
		       </div>
		
  
  
  </div>
  
   <div class="col-sm-6">
         <div class="form-group col-sm-6">
                    <label class="row-sm-6">Technician Name:</label>
		            <div class="row-sm-6">
                       <input type="text" placeholder="Names" class="form-control" id="tech" name="tech" required="required">
                     </div>
		       </div>
			 <div class="form-group col-sm-4">    
		       <label class="col-sm-12">EMP-ID:</label>
                  <div class="row-sm-12">
                       <input type="text" placeholder="Names" class="form-control" id="emp_id" name="emp_id" required="required">
                     </div>
                  
				</select>
	      </div>
  
   
   
   
   
   </div>
   

</div><!--end nine row!-->


<div class="row hide" style="margin-right:60px;"><!--nine row!-->

     <div class="form-group col-sm-4">    
		       <label class="col-sm-12">EMP-ID:</label>
                  <div class="row-sm-12">
                       <input type="text" placeholder="Names" class="form-control" id="femp_id" name="femp_id">
                     </div>
                  
				</select>
	      </div>
  

</div>

<div class="row" style="margin-left:1000px;"><!--button!-->

    <button type="submit" class="btn btn-primary btn-lg" id="save">Next</button>
                
	    <br><br>
</div><!--end button!-->
</form>
</div><!--end panel!-->
</div><!--end container!-->
</body>




</html>
