<html>
<head>
<title>Stores</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
var room = 2;
function patrs() {
      
    
    var objTo = document.getElementById('patrs')
    var divtest = document.createElement("div");
	divtest.setAttribute("class", "form-group removeclass"+room);
	var rdiv = 'removeclass'+room;
    divtest.innerHTML = '<div class="row" style="margin-left:5px;" >	   <div class="col-sm-1 nopadding"> <div class="form-group"><input type="text" class="form-control" id="sno" name="" value="" placeholder="sno"></div></div><div class="col-sm-2 nopadding"><div class="form-group"><textarea type="text" class="form-control" id="des'+room+'" name="" value="" placeholder="description"></textarea></div></div><div class="col-sm-1 nopadding"><div class="form-group"><input type="text" class="form-control" id="item'+room+'" name="Degree[]" value="" placeholder="item_no"></div></div><div class="col-sm-1 nopadding"><div class="form-group"><input type="text" class="form-control" id="unit'+room+'" name="" value="" placeholder="unit"></div></div><div class="col-sm-1 nopadding"><div class="form-group"><input type="text" class="form-control" id="total'+room+'" name="Degree[]" value="" placeholder="Quantity"></div></div><div class="col-sm-2 nopadding"><div class="form-group"><input type="text" class="form-control" id="issued'+room+'" name="Degree[]" value="" placeholder="issed_quantity"></div></div><div class="col-sm-2 nopadding"><div class="form-group">                 <input type="text" class="form-control" id="balance'+room+'" name="Degree[]" value="" placeholder="balance_quantity"></div></div><div class="col-sm-2 nopadding"><div class="form-group"> <div class="input-group"><div class="input-group-btn"><button class="btn btn-danger" type="button" onclick="remove_education_fields('+ room +');">  <span class="glyphicon glyphicon-minus" aria-hidden="true"></span> </button></div></div></div></div><div class="clear"></div></div>';
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
	
	
		    
	
	
	
});
</script>
</head>
<body> 
<br><br>
<div class="container" >

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
          <li class=""><a  href="#dashboard"><i class="fa fa-dashboard"></i> Reports</a></li>
          <li class="active"><a href="filed.html"><i class="fa fa-file"></i>Store </a></li>
          <li><a href="stores.html"><i class="fa fa-home"></i> Product</a></li>
          <li><a href="#contact"><i class="fa fa-user"></i> Logout</a></li>
         </ul>
      </div>
      </nav>
</div>
 <div class="panel panel-default">
<br>

<div class="row">
<div class="col-sm-4" id="logo"> <img src="e.png" alt="Smiley face" height="10%" width="70%"> </div>

<div class="col-sm-8">

<div class="row-sm-12" id="lname">

<h1><b>STORES ISSUE VOUCHER</b></h1>
</div>
</div><!--end row!-->
</div><!--end header!-->

<hr></hr>

<div class="row" ><!--second row!-->
<div class="col-sm-12">
       <div class="form-group col-sm-6">
          <label class="row-sm-6">Equipment No</label>
		  <div class="row-sm-6">
              <input type="text"  class="form-control" placeholder="equipment No">
            </div>
		</div>  
         <div class="form-group col-sm-6">
          <label class="row-sm-6">Date</label>
		  <div class="row-sm-6">
              <input type="date" placeholder="" class="form-control">
            </div>
		</div>    
</div>
</div><!--end second row!-->

<hr></hr>



<div class="row" style=""><!--eight row!-->



        <div id="patrs">
          
        </div>
       <div class="col-sm-1 nopadding">
           <div class="form-group">
               <input type="text" class="form-control" id="sno" name="" value="" placeholder="sno">
            </div>
        </div>
       <div class="col-sm-2 nopadding">
            <div class="form-group">
                <textarea  class="form-control" id="des" name="" value="" placeholder="description">
                 </textarea>
			 </div>
        </div>
         <div class="col-sm-1 nopadding">
               <div class="form-group">
                  <input type="text" class="form-control" id="item1" name="Degree[]" value="" placeholder="item_no">
              </div>
         </div>
		 
         <div class="col-sm-1 nopadding">
               <div class="form-group">
                  <input type="text" class="form-control" id="unit1" name="" value="" placeholder="unit">
              </div>
         </div>
		 
         <div class="col-sm-1 nopadding">
               <div class="form-group">
                  <input type="text" class="form-control" id="total1" name="Degree[]" value="" placeholder="Quantity">
              </div>
         </div>
		 
         <div class="col-sm-2 nopadding">
               <div class="form-group">
                  <input type="text" class="form-control" id="issued1" name="Degree[]" value="" placeholder="issed_quantity">
              </div>
         </div>
		 
         <div class="col-sm-2 nopadding">
               <div class="form-group">
                  <input type="text" class="form-control" id="balance1" name="Degree[]" value="" placeholder="balance_quantity">
              </div>
         </div>
		 
         <div class="col-sm-2 nopadding">
                     <div class="input-group-btn">
                         <button class="btn btn-success" type="button"  onclick="patrs();"> <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> </button>
                   </div>

         </div>
    </div><!--end eight row!-->
			
<hr></hr>

<div class="row" ><!--last before row!-->
<div class="col-sm-12">
       <div class="form-group col-sm-6">
          <label class="row-sm-6">Issue Approved</label>
		  <div class="row-sm-6">
              <select class="form-control" id="model" name="model">
				    <option value="yes">Yes</option>		   
                    <option value="No">No</option>					
              </select>
            </div>
		</div>  
         <div class="form-group col-sm-6">
          <label class="row-sm-6">Receiver Name</label>
		  <div class="row-sm-6">
              <input type="text" placeholder="Receiver Name" class="form-control">
            </div>
		</div>    
</div>
</div><!--end last before row>!-->

<div class="row" ><!--last row!-->
<div class="col-sm-12">
       <div class="form-group col-sm-6">
          <label class="row-sm-6">Store Keeper</label>
		  <div class="row-sm-6">
              <input type="text" placeholder="Store Keeper" class="form-control">
            </div>
		</div>  
         <div class="form-group col-sm-6">
          <label class="row-sm-6">Receiver Approved</label>
		  <div class="row-sm-6">
              <select class="form-control" id="model" name="model">
				    <option value="yes">Yes</option>		   
                    <option value="No">No</option>					
              </select>
            </div>
		</div>    
</div>
</div><!--end last row>!-->

<div class="row" style="margin-left:500px;"><!--button!-->

    <button type="button" class="btn btn-primary btn-lg" id="save">Request</button>
                
	    <br><br>
</div><!--end button!-->
<hr><hr>
<div class="row" style="margin-left:45%;">
    <label class="" style="font-size:10px;">&copy; Manlift India Pvt Ltd</label>
</div>

</div><!--end panel!-->
</div><!--end container!-->

</body>
</html>