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

var room = 2;
function patrs() {
     
    
    var objTo = document.getElementById('patrs')
    var divtest = document.createElement("div");
	divtest.setAttribute("class", "form-group removeclass"+room);
	var rdiv = 'removeclass'+room;
    divtest.innerHTML = '<div class="row" style="margin-left:30px;"><div class="col-sm-3 nopadding"><div class="form-group"> <input type="text" class="form-control" id="part'+room+'" name="" value="" placeholder="parts used(Description)"></div></div><div class="col-sm-3 nopadding"><div class="form-group"> <input type="text" class="form-control" id="q'+room+'" name="" value="" placeholder="Quantity"></div></div><div class="col-sm-3 nopadding"><div class="form-group"> <input type="text" class="form-control" id="p_num'+room+'" name="" value="" placeholder="Part Number"></div></div><div class="col-sm-3 nopadding"><div class="form-group"><div class="input-group"> <div class="input-group-btn"> <button class="btn btn-danger" type="button" onclick="remove_education_fields('+ room +');"> <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> </button></div></div></div></div><div class="clear"></div></div>';
   room++;
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
                   
                   var fault_des=$("#fault_des").val();
				    
					var fault="";
               
		if($("#esf").prop("checked") == true){
                
                fault=fault+",ESF";

            }
			
			if($("#lfl").prop("checked") == true){
                
                fault=fault+",LFL";

            }
            if($("#csf").prop("checked") == true){
                
                fault=fault+",CSF";

            }
			if($("#hsl").prop("checked") == true){
                
                fault=fault+",HSL";

            }
				
           if($("#pfq").prop("checked") == true){
                
                fault=fault+",PFQ";

            }				
			   if($("#srf").prop("checked") == true){
                
                fault=fault+",SRF";

            }
			if($("#cfc").prop("checked") == true){
                
                fault=fault+",CFC";

            }
			if($("#lol").prop("checked") == true){
                
                fault=fault+",LOL";

            }
			if($("#hcf").prop("checked") == true){
                
                fault=fault+",HCF";

            }
			if($("#msf").prop("checked") == true){
                
                fault=fault+",MSF";

            }
			if($("#lcl").prop("checked") == true){
                
                fault=fault+",LCL";

            }
			if($("#lss").prop("checked") == true){
                
                fault=fault+",LSS";

            }
			if($("#lbv").prop("checked") == true){
                
                fault=fault+",LBV";

            }
			if($("#wsl").prop("checked") == true){
                
                fault=fault+",WSL";

            }
			if($("#uef").prop("checked") == true){
                
                fault=fault+",UEF";

            }
			if($("#fsl").prop("checked") == true){
                
                fault=fault+",FSL";

            }
			if($("#eol").prop("checked") == true){
                
                fault=fault+",EOL";

            }
			if($("#hts").prop("checked") == true){
                
                fault=fault+",HTS";

            }
	     	
          
		  var parts="";
		  var quantity="";
		  var part_number="";
		
	      for (var i = 1; i <=room-1; i++) {
		   
		     parts=parts+$("#part"+i).val()+",";
			 quantity=quantity+$("#q"+i).val()+",";
			 part_number=part_number+$("#p_num"+i).val()+",";
                
		  }
	       
	
	       	var tech_name="";
	      for (var i = 1; i <=$("#tech_count").val(); i++) {
	            
				tech_name=tech_name+$("#tech_name"+i).val()+",";
	          
			  }

	    var username='${user}';
	    var today = new Date();
	  	var dd = today.getDate();
	  	var mm = today.getMonth()+1; //January is 0!
	  	var yyyy = today.getFullYear();

	  	if(dd<10) {
	  	    dd = '0'+dd
	  	} 

	  	if(mm<10) {
	  	    mm = '0'+mm
	  	} 

	  	today =  yyyy + '-' + mm + '-' + dd;
	    var date_site=today;
	    alert(date_site);
		  
		  var field={"fault_des":fault_des,"fault_parts":fault,"parts":parts,"quantity":quantity,"part_number":part_number,"username":username,"date_site":date_site};
		 
		    // alert(username);
		  sessionStorage.setItem("id",username);
		  $.ajax({
		      type: "POST",
		      contentType : 'application/json; charset=utf-8',
		      dataType : 'json',
		      url: "field2",
		      data: JSON.stringify(field), // Note it is important
		      success :function(result) {
		       // do what ever you want with data
		     },
             error: function(e){
          	   
          	   window.location.href = "field3";
          	   
          	   	        }
		  });
		       
		       
		       });
		   
		
	
	
	$("#tech_count").change(function(){
         $("#Technician").empty();
	    var count=$("#tech_count").val();
		for (i = 1; i <= count; i++) { 

		$("#Technician").append('<div class="form-group"><div class="col-sm-4"><input type="text" placeholder="Technician Name" class="form-control" id="tech_name'+i+'"></div></div>');
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
<h3 class="col-sm-1">${user}</h3>

</div>


</div><!--end header!-->
<hr/><hr>
<%-- 
${{user}} --%>

<form> 

<div class="row" style="margin-left:10px;margin-right:30px;"><!--eight row!-->

         <div class="form-group row">
          <label class="col-sm-3" id="company">Fault(Brief Description)</label>
		  <div class="col-sm-5">
              <input type="text" placeholder="Description" class="form-control" id="fault_des" name="fault_des">
            </div>
	    </div> 
 </div><!--end eight row!-->
 

     
         
		
		<div class="row" style="margin-left:20px;"><!--check row!-->
		   
			  <div class="form-check COL-SM-2">
                  <input class="form-check-input" type="checkbox" value="" id="esf" name="esf">
                  <label class="form-check-label" for="defaultCheck1">
                   ESF
                  </label>
               </div>
			    <div class="form-check COL-SM-2">
                  <input class="form-check-input" type="checkbox" value="" id="hsl" name="hsl">
                  <label class="form-check-label" for="defaultCheck1">
                   HSL
                  </label>
               </div>
			    <div class="form-check COL-SM-2">
                  <input class="form-check-input" type="checkbox" value="" id="cfc" name="cfc">
                  <label class="form-check-label" for="defaultCheck1">
                   CFC
                  </label>
               </div>
			    <div class="form-check COL-SM-2">
                  <input class="form-check-input" type="checkbox" value="" id="msf" name="msf">
                  <label class="form-check-label" for="defaultCheck1">
                   MSF
                  </label>
               </div>
			    <div class="form-check COL-SM-2">
                  <input class="form-check-input" type="checkbox" value="" id="lbv" name="lbv">
                  <label class="form-check-label" for="defaultCheck1">
                   LBV
                  </label>
               </div> 
			   <div class="form-check COL-SM-2">
                  <input class="form-check-input" type="checkbox" value="" id="fsl" name="fsl">
                  <label class="form-check-label" for="defaultCheck1">
                   FSL
                </label>
               </div>
			   
               </div><!--end check row!-->
			   
		 <div class="row" style="margin-left:20px;"><!--check row!-->
			 
              <div class="form-check COL-SM-2">
                  <input class="form-check-input" type="checkbox" value="" id="lfl" name="lfl">
                  <label class="form-check-label" for="defaultCheck1">
                   LFL
                </label>
              </div> 	
               <div class="form-check COL-SM-2">
                  <input class="form-check-input" type="checkbox" value="" id="pfq" name="pfq">
                  <label class="form-check-label" for="defaultCheck1">
                   PFQ
                </label>
              </div> 	
               <div class="form-check COL-SM-2">
                  <input class="form-check-input" type="checkbox" value="" id="lol" name="lol">
                  <label class="form-check-label" for="defaultCheck1">
                   LOL
                </label>
              </div> 
               <div class="form-check COL-SM-2">
                  <input class="form-check-input" type="checkbox" value="" id="lcl" name="lcl">
                  <label class="form-check-label" for="defaultCheck1">
                   LCL
                </label>
              </div> 
              <div class="form-check COL-SM-2">
                  <input class="form-check-input" type="checkbox" value="" id="wsl" name="wsl">
                  <label class="form-check-label" for="defaultCheck1">
                   WSL
                </label>
              </div> 
               <div class="form-check COL-SM-2">
                  <input class="form-check-input" type="checkbox" value="" id="eol" name="eol">
                  <label class="form-check-label" for="defaultCheck1">
                   EOL
                </label>
              </div> 			  
			   
			   
		</div><!--end check row!-->
		
		<div class="row" style="margin-left:20px;"><!--check row!-->
		
		    
			   <div class="form-check COL-SM-2">
                  <input class="form-check-input" type="checkbox" value="" id="csf" name="csf">
                  <label class="form-check-label" for="defaultCheck1">
                   CSF
                </label>
              </div> 
			   <div class="form-check COL-SM-2">
                  <input class="form-check-input" type="checkbox" value="" id="srf" name="srf">
                  <label class="form-check-label" for="defaultCheck1">
                   SRF
                </label>
              </div> 
			   <div class="form-check COL-SM-2">
                  <input class="form-check-input" type="checkbox" value="" id="hcf" name="hsf">
                  <label class="form-check-label" for="defaultCheck1">
                   HCF
                </label>
              </div> 
			   <div class="form-check COL-SM-2">
                  <input class="form-check-input" type="checkbox" value="" id="lss" name="lss">
                  <label class="form-check-label" for="defaultCheck1">
                   LSS
                </label>
              </div> 
			   <div class="form-check COL-SM-2">
                  <input class="form-check-input" type="checkbox" value="" id="uef" name="uef">
                  <label class="form-check-label" for="defaultCheck1">
                   UEF
                </label>
              </div> 
			   <div class="form-check COL-SM-2">
                  <input class="form-check-input" type="checkbox" value="" id="hts" name="hts">
                  <label class="form-check-label" for="defaultCheck1">
                   HTS
                </label>
              </div> 	
		
		</div><!--end check row!-->

 
 
<div class="row" style="margin-left:30px;margin-right:30px;"><!--eight row!-->



        <div id="patrs">
          
        </div>
       <div class="col-sm-3 nopadding">
           <div class="form-group">
               <input type="text" class="form-control" id="part1" name="parts" value="" placeholder="parts used(Description)">
            </div>
        </div>
       <div class="col-sm-3 nopadding">
            <div class="form-group">
                <input type="number" class="form-control" id="q1" name="quantity" value="" placeholder="Quantity">
             </div>
        </div>
         <div class="col-sm-3 nopadding">
               <div class="form-group">
                  <input type="text" class="form-control" id="p_num1" name="part_number" value="" placeholder="Part Number">
              </div>
         </div>
		 
         <div class="col-sm-3 nopadding">
                     <div class="input-group-btn">
                         <button class="btn btn-success" type="button"  onclick="patrs();"> <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> </button>
                   </div>

         </div>
    </div><!--end eight row!-->

 



<div class="row" style="margin-left:10px;margin-right:30px;"><!--eight row!-->

       <div class="col-sm-3">
	            <div class="form-group col-sm-12">
                    <label class="row-sm-6">Select Technicians</label>
		            <div class="row-sm-6">
                          <select class="form-control" id="tech_count" name="tech_count">
						        
                                <option value="0">0</option>
                                
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
                          </select>
						 
						 
                     </div>
		       </div>	  
		  
       </div>
       <div class="col-sm-9" id="tech_name">
	       
		      <div id="Technician">
                 
				   
               </div>
			   
		  
		</div>		  
		
 </div><!--end eight row!-->
 
 <div class="row" style=""><!--button!-->

 <div class="col-sm-6"></div>
 
 <div class="col-sm-4"></div>
 
 <div class="col-sm-2">
       <button type="button" class="btn btn-primary btn-lg" id="save">Next</button>
   <br><br>
</form>  
 </div>

</div><!--end button!-->

 

</div><!--end panel!-->
</div><!--end container!-->
</body>




</html>
