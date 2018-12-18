<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Report</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  @page { size: auto;  margin: 0mm; }
  </style>
<script>

$(document).ready(function(){

var username='${user}';
var date_site='${date}';

var id=1;

$.ajax({
	type: 'GET',
	dataType: 'json',
	contentType: 'application/json',
	url: "/report/"+username+"/"+date_site+"",

	success: function(data, textStatus ){
	console.log(data);
	
	 $.each(data,function( i,j ) {
		  $("#tech").text(': '+j.tech);
	       $("#date_call").text(': '+j.date_call);
	       $("#time_call").text(': '+j.time_call);
	       $("#site_contact").text(': '+j.mobile);

	       $("#customer_name").text(': '+j.customer_name);
	       $("#hour_meter_reading").text(': '+j.hour_meter);
	       $("#down_time").text(': '+j.down_time);
	       $("#travel_time").text(': '+j.total_time);

	       $("#model").text(': '+j.model);
	       $("#fleet_serial_number").text(': '+j.fleet_serial);
	       $("#date_on_site").text(': '+j.date_site);
	       $("#job_start_time").text(': '+j.start_time);


	       $("#job_end_time").text(': '+j.end_time);
	       $("#time_arrived").text(': '+j.arrived_time);
	       $("#job_carried_out").text(': '+j.job_carriout);
	       $("#site_address").text(': '+j.site_address);

	       $("#problem_solved").text(': '+j.problem);
	       $("#client_informed").text(': '+j.client_inform);
	       $("#operation_performed").text(': '+j.oriant);
	       $("#customer_comments").text(': '+j.customer_comment);


	       $("#operator_name").text(': '+j.operator);
	       $("#emp_id").text(': '+j.emp_id);
	       $("#component").text(': '+j.component);
	       $("#time_departed").text(': '+j.departed_time);

	       $("#fault_des").text(': '+j.fault_des);
	       



	       var parts=j.parts;
	       var qun=j.quantity;
	       var p_n=j.part_number;

	       var p=new Array();
	       p=parts.split(",");

	       var q=new Array();
	       q=qun.split(",");

	       var n=new Array();
	       n=p_n.split(",");


	       for(var i=0;i<p.length-1;i++)
	       {
	    	   var row = '<tr>' 
		    	    + '<td value="'+id+'">'+ id + '</td>'
					+ '<td>'+p[i]+'</td>'
					+ '<td>'+q[i]+'</td>'
					+ '<td>'+n[i]+'</td>'
					
					+'</tr>';
						
		    	 $("#td1").append(row); 
		    	id++;
	       }
	      
	       
			 
   	  });	
	
	},
	error: function(xhr, textStatus, errorThrown){
	//alert('request failed'+errorThrown);
	}
	
	});

});
function printPage() {

	$("#p").hide();
    window.print();
}
</script>
</head>

<body>
<br>
<div class="container"> 	

<div class = "panel panel-default panel-body col-sm-12">
 <img src="../assets/img/logo.jpg" alt="Smiley face" height="50%" width="70%" class="col-sm-2"> 
 
<center> <label class="col-sm-8" style="font-size:25px;margin-top:15px;">Field Service Report</label>

</center>

<br><br>


<hr>
 <label class="col-sm-5">Technician Name</label>
 <label class="col-sm-5" id="tech"></label> 
 
 <label class="col-sm-5">Date call Received </label>
 <label class="col-sm-5" id="date_call"></label> 
 <br>
 <label class="col-sm-5">Time call Received </label>
 <label class="col-sm-5" id="time_call">  </label>
 <br>
 <label class="col-sm-5">Site Contact  </label>
 <label class="col-sm-5" id="site_contact"></label>
 <br>
 <label class="col-sm-5">Company/Customer Name  </label>
 <label class="col-sm-5" id="customer_name"></label>
 <br>
 <label class="col-sm-5">Hour Meter Reading  </label>
 <label class="col-sm-5" id="hour_meter_reading"> </label>
 <br>
 <label class="col-sm-5">Total "Down Time" of Machine(Hrs)   </label>
 <label class="col-sm-5" id="down_time"></label>
 <br>
 <label class="col-sm-5">Total Travel Time   </label>
 <label class="col-sm-5" id="travel_time"> </label>
 <br>
 <label class="col-sm-5">Model   </label>
 <label class="col-sm-5" id="model"> </label>
 <br>
 <label class="col-sm-5">Fleet Serial Number   </label>
 <label class="col-sm-5" id="fleet_serial_number"></label>
 <br>
 <label class="col-sm-5">Date On Site   </label>
 <label class="col-sm-5" id="date_on_site"></label>
 <br>
 <label class="col-sm-5">Job Start Time   </label>
 <label class="col-sm-5" id="job_start_time"></label>
 <br>
 <label class="col-sm-5">Job End Time   </label>
 <label class="col-sm-5" id="job_end_time"></label>
 <br>
 <label class="col-sm-5">Time Arrived   </label>
 <label class="col-sm-5" id="time_arrived"></label>
 <br>
 <label class="col-sm-5">Time Departed   </label>
 <label class="col-sm-5" id="time_departed"></label>
 <br>
 <label class="col-sm-5">Site Address   </label>
 <label class="col-sm-5" id="site_address"></label>
 <br>
 <label class="col-sm-5">Job Carried Out   </label>
 <label class="col-sm-5" id="job_carried_out"></label>
 <br>
 <label class="col-sm-5">Problem Solved   </label>
 <label class="col-sm-5" id="problem_solved"></label>
 <br>
 <label class="col-sm-5">Client Informed   </label>
 <label class="col-sm-5" id="client_informed"></label>
 <br>
 <label class="col-sm-5">Operation Performed   </label>
 <label class="col-sm-5" id="operation_performed"></label>
 <br>
 <label class="col-sm-5">Customer Comments   </label>
 <label class="col-sm-5" id="customer_comments"></label>
 <br>
 <label class="col-sm-5">Operator Name   </label>
 <label class="col-sm-5" id="operator_name"></label>
 <br>
 
 <label class="col-sm-5">Emp ID   </label>
 <label class="col-sm-5" id="emp_id"></label>
 <br>
 <label class="col-sm-5">Component   </label>
 <label class="col-sm-5" id="component"></label>
 
 <br>
 <label class="col-sm-5">Fault(Brief Description)   </label>
 <label class="col-sm-5" id="fault_des"></label>
 
 <br>
  
  <div class="row">
       <div class="col-sm-5"></div>
       
        <div class="col-sm-5">
        
                	  <table class="table">
                      <thead class=" text-primary">
                        <th>S.NO</th>
                   
                        <th>Parts(used)</th>
                        <th>Quantity</th>
                        <th>Part Number</th>
                       </thead>
                      <tbody id="td1">
                       
                      </tbody>
                    </table>
        
        
        
        </div>
        
       <div class="col-sm-2"></div>
  </div>
 
 
 
<hr>
 
<center> <label class="col-sm-12" style=";">&copy;Manlift india Pvt Ltd</label></center>
 
 <div class="col" id="p">
      <div class="col-sm-6"></div>
       <div class="col-sm-4"></div>
       <div class="col-sm-2">
          <a href="/field" class="btn btn-primary btn-lg">Back</a>
         <button type="button"  onclick="printPage()"  class="btn btn-primary btn-lg" >Print</button>             
 
       </div>
 </div>

</div>

</div>

 
</body>
</html>