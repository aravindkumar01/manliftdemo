<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   Manlift
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />


<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<script>
$(document).ready(function(){
	
	var today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!

	var yyyy = today.getFullYear();
	if(dd<10){
	    dd='0'+dd;
	} 
	if(mm<10){
	    mm='0'+mm;
	} 
	var today =yyyy+'-'+ mm+'-'+dd;
	//alert(today);
	var id=1;
	
$.ajax({
	type: 'GET',
	dataType: 'json',
	contentType: 'application/json',
	url: "fieldReport",

	success: function(data, textStatus ){
	console.log(data);
	
	 $.each(data,function( i,j ) {
		 if(today==j.date_call)
			 {
			 var username=j.username+","+today;
    	      var row = '<tr>' 
		    	    + '<td value="'+id+'">'+ id + '</td>'
					+ '<td>'+j.tech+'</td>'
					+ '<td>'+j.model+'</td>'
					+ '<td>'+j.fleet_serial+'</td>'
					+ '<td>'+j.hour_meter+'</td>'
					+ '<td>'+j.job_carriout+'</td>'
					+ '<td  ><a class="btn btn-primary" href="/test?uname='+username+'">view</a></td>'
					+'</tr>';
						
		    	 $("#td").append(row); 
		    	
		    	 id++; 
			 }
			 
   	  });	
	
	},
	error: function(xhr, textStatus, errorThrown){
	//alert('request failed'+errorThrown);
	}
	
	});
	
$("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#td tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
  
$("#myInput1").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#td1 tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
  
  

$("#d1").hide();
$("#d2").hide();
$("#d3").hide();


var item=0;
$("#schange").change(function(){
    
	  
	    $("#date").empty();
      $("#emp_name").empty();
		$("#emp_id").empty();
	  if($("#schange").val()=="date")
	  {
          $("#d1").show();	
          $("#d2").hide();
           $("#d3").hide();
           item=1;
	  }
	  else if($("#schange").val()=="emp_name")
	  {
	   $("#d2").show();
	   $("#d1").hide();
	   $("#d3").hide();
	   item=2;
	  }
	  else if($("#schange").val()=="emp_id")
	  {
	   $("#d3").show();
	    $("#d1").hide();
       $("#d2").hide();
       item=3;
	  }
	  else if($("#schange").val()=="Select")
	  {
	   $("#d3").hide();
	    $("#d1").hide();
       $("#d2").hide();
       
	  }
});


$("#SearchEmp").click(function(){
	  var search="";
	  var option="";
	  if(item==1)
		  {
		  search=$("#dateField").val();
		  option="date";
		  }
	  else if(item==2)
		  {
		  search=$("#tech_name").val();
		  option="tech_name";
		  }
	  else if(item==3)
		  {
		  search=$("#emp_id").val();
		  option="emp_id";
		  }
	  $("#td1").empty();    
  var id=1;
	   $.ajax({
			type: 'GET',
			dataType: 'json',
			contentType: 'application/json',
			url: "fieldReport",
		
			success: function(data, textStatus ){
			console.log(data);
			
			 $.each(data,function( i,j ) {
				 if(option=="date")
					 {
					       if(j.date_call==search)
					    	   {
					    	       var username=j.username+","+today;
					    	   var row = '<tr>' 
						    	    + '<td value="'+id+'">'+ id + '</td>'
									+ '<td>'+j.tech+'</td>'
									+ '<td>'+j.model+'</td>'
									+ '<td>'+j.fleet_serial+'</td>'
									+ '<td>'+j.hour_meter+'</td>'
									+ '<td>'+j.job_carriout+'</td>'
									+ '<td  ><a class="btn btn-primary" href="/test?uname='+username+'">view</a></td>'
												+'</tr>';
										
						    	 $("#td1").append(row); 
						    	
						    	 id++; 
					    	   }
					 
					 }
				 if(option=="tech_name")
				 {
				       if(j.tech==search)
				    	   {	
				    	   var username=j.username+","+today
				    	   alert(username);		    	       
				    	   var row = '<tr>' 
					    	    + '<td value="'+id+'">'+ id + '</td>'
								+ '<td>'+j.tech+'</td>'
								+ '<td>'+j.model+'</td>'
								+ '<td>'+j.fleet_serial+'</td>'
								+ '<td>'+j.hour_meter+'</td>'
								+ '<td>'+j.job_carriout+'</td>'
								+ '<td  ><a class="bt btn-primary" href="/test?uname='+username+'">View All</a> </td>'
								+'</tr>';
									
					    	 $("#td1").append(row); 
					    	
					    	 id++; 
				    	   }
				 
				 }		   	 
				  });	
			
			},
			error: function(xhr, textStatus, errorThrown){
			//alert('request failed'+errorThrown);
			}
			
			});

 
   });


  
});



</script>


</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo">
        <a href="" class="simple-text logo-normal">
          Manlift
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item  ">
            <a class="nav-link" href="dashboard">
              <i class="material-icons">dashboard</i>
              <p>Dashboard</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="user">
              <i class="material-icons">person</i>
              <p>Employee Report</p>
            </a>
          </li>
          <li class="nav-item  active">
            <a class="nav-link" href="field">
              <i class="material-icons">content_paste</i>
              <p>Field Report</p>
            </a>
          </li>
             <li class="nav-item ">
            <a class="nav-link" href="store">
              <i class="material-icons">library_books</i>
              <p>Store</p>
            </a>
          </li>
          <!-- <li class="nav-item ">
            <a class="nav-link" href="./icons.html">
              <i class="material-icons">bubble_chart</i>
              <p>Icons</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./map.html">
              <i class="material-icons">location_ons</i>
              <p>Maps</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./notifications.html">
              <i class="material-icons">notifications</i>
              <p>Notifications</p>
            </a>
          </li>
       <li class="nav-item active-pro ">
                <a class="nav-link" href="./upgrade.html">
                    <i class="material-icons">unarchive</i>
                    <p>Upgrade to PRO</p>
                </a>
            </li> -->
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="#pablo">Employee Profile</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            <form class="navbar-form">
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <button type="submit" class="btn btn-white btn-round btn-just-icon">
                  <i class="material-icons">search</i>
                  <div class="ripple-container"></div>
                </button>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="material-icons">dashboard</i>
                  <p class="d-lg-none d-md-block">
                    Stats
                  </p>
                </a>
              </li>

              <li class="nav-item">
                 <a class="nav-link" href="logout">
                  Logout
                   </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>

	  
	         <div class="row content">
            <div class="col-lg-12">
              <div class="card">
                <div class="card-header card-header-tabs card-header-primary">
                  <div class="nav-tabs-navigation">
                    <div class="nav-tabs-wrapper">
                      <span class="nav-tabs-title">Reports:</span>
                      <ul class="nav nav-tabs" data-tabs="tabs">
                        <li class="nav-item">
                          <a class="nav-link active" href="#profile" data-toggle="tab">
                            <i class="material-icons">bug_report</i> DAY
                            <div class="ripple-container"></div>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" href="#messages" data-toggle="tab">
                            <i class="material-icons">code</i> Search
                            <div class="ripple-container"></div>
                          </a>
                        </li>
                   
				   </ul>
                    </div>
                  </div>
                </div>
                <div class="card-body">
                  <div class="tab-content">
                    <div class="tab-pane active" id="profile">
                            <div class="row" style="margin-left:500px">
							  <div class="col-sm-5"></div>
							  <div class="col-sm-5">
							  <div class="form-group">
                                    <label class="bmd-label-floating">Fillter</label>
                                    <input type="text" class="form-control" id="myInput">
						       
                                </div></div>
							  <div class="col-sm-2 form-group">
							  
						      </div>
				              </div>							
				    
					  <table class="table">
                      <thead class=" text-primary">
                        <th>ID</th>
                        <th>NAME</th>
                        <th>MODEL</th>
                        <th>SR-NO</th>
                        <th>HourMeter</th>
                        <th>WorkCarriedOut</th>
                        <th>View</th>
                      </thead>
                      <tbody id="td">
                       
                      </tbody>
                    </table>
                 
					
					
					
					
                    </div>
					
					
                    <div class="tab-pane" id="messages">
					
						          
						 <div class="row">
						   <div class="col-sm-3">
							     <div class="form-group">
                         
                                     <select class="form-control" id="schange">
									 <option value="Select">Select Category</option>
                                       <option value="date">Date</option>
                                       <option value="emp_name">Technisian_Name</option>
                                      
  
                                    </select> 
						       
                                </div>
							</div>
							  <div class="col-sm-3" id="d1">
							        <div class="form-group">
                                       <label class="bmd-label-floating">Date of Report</label>
                                       <input type="date" class="form-control" id="dateField">
						       
                                    </div>
							  </div>
							  <div class="col-sm-3" id="d2">
							     <div class="form-group">
                                         <input type="text" class="form-control" id="tech_name">
                           
						       
                                </div>
							 </div>
							 <div class="col-sm-3" id="d3">
							    <div class="form-group">
                               <input type="text" class="form-control" id="">					       
                                </div>
							</div>
							  <div class="col-sm-3 form-group" >
							   <button id="SearchEmp" class="btn btn-success" style="font-size: 10px;">
										<i class="fa fa-fw fa-search"></i>Search
						       </button>
						      </div>
				           </div>

                        <div class="row" style="margin-left:500px">
							  <div class="col-sm-5"></div>
							  <div class="col-sm-5">
							  <div class="form-group">
                                    <label class="bmd-label-floating">Fillter</label>
                                    <input type="text" class="form-control" id="myInput1">
						       
                                </div></div>
							  <div class="col-sm-2 form-group">
							  
						      </div>
				              </div>							
				    
					  <table class="table">
                      <thead class=" text-primary">
                       <th>ID</th>
                        <th>NAME</th>
                        <th>MODEL</th>
                        <th>SR-NO</th>
                        <th>HourMeter</th>
                        <th>WorkCarriedOut</th>
                        <th>View</th>
                      </thead>
                      <tbody id="td1">
                        
                      </tbody>
                    </table>
                 
											   
							   
					
                    </div>
     
                  </div>
                </div>
              </div>
            </div>
       
          </div>
	  
	  
	  
	  
      <footer class="footer">
        <div class="container-fluid">
          <nav class="float-left">
            <ul>
              <li>
                <a href="">
                  Manlift
                </a>
              </li>
              <li>
                <a href="">
                  About Us
                </a>
              </li>
              <li>
                <a href="">
                  Blog
                </a>
              </li>
              <li>
                <a href="">
                  Licenses
                </a>
              </li>
            </ul>
          </nav>
          <div class="copyright float-right">
            &copy;
            <script>
              document.write(new Date().getFullYear())
            </script>, made with <i class="material-icons">favorite</i> by
            <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a> for a better web.
          </div>
        </div>
      </footer>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="../assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/material-dashboard.min.js?v=2.1.0" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
</body>

</html>