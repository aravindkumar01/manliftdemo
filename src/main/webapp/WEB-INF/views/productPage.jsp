<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style>
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
</style>
</head>
<body>
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
          <li ><a href="storepagel"><i class="fa fa-file"></i> Store</a></li>
          <li class="active"><a href="productpage"><i class="fa fa-home"></i> Product</a></li>
          <li><a href="logout"><i class="fa fa-user"></i> Logout</a></li>
         </ul>
      </div>
      </nav>
</div>

  <div class="panel panel-default" style="margin-left:50px;margin-right:30px">
    <div class="panel-heading">Return Products</div>
    <div class="panel-body">
	
	      
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">

<table id="myTable">
  <tr class="header">
    <th style="width:40%;">Date</th>
    <th style="width:40%;">Name</th>
	<th style="width:40%;">Return</th>
  </tr>
  <tr>
    <td>10-8-2018</td>
    <td>Machine</td>
	<td class="btn btn-primary" >Return</td>
	
  </tr>
  <tr>
    <td>10-8-2018</td>
    <td>Wire</td>
	<td class="btn btn-success">Returned</td>
	<td class=""></td>
  </tr>
</table>

	
	</div>
  </div>
<script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>

</body>
</html>
