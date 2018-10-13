<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    ManLift
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
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
          ManLift
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
              <p>User Profile</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="field">
              <i class="material-icons">content_paste</i>
              <p>Field Report</p>
            </a>
          </li>
          <li class="nav-item active ">
            <a class="nav-link" href="./store.html">
              <i class="material-icons">library_books</i>
              <p>Store</p>
            </a>
          </li>
          <!--<li class="nav-item ">
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
            <a class="navbar-brand" href="#pablo">Typography</a>
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
                <a class="nav-link" href="#pablo">
                   <a class="nav-link" href="logout">
                  Logout
                   </a>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->	  
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
                                    <input type="text" class="form-control">
						       
                                </div></div>
							  <div class="col-sm-2 form-group">
							  
						      </div>
				              </div>							
				    
					  <table class="table">
                      <thead class=" text-primary">
                        <th>ID</th>
                        <th>Name</th>
                        <th>Products</th>
                        <th>Count</th>
                        <th>View</th>
                      </thead>
                      <tbody>
                        <tr>
                          <td>EMP011</td>
                          <td>Karthik</td>
                          <td>Machine,Wire</td>
                          <td>5</td>
                          <td class="btn btn-primary">
                            View
                          </td>
                        </tr>
                      </tbody>
                    </table>
                 
					
					
					
					
                    </div>
					
					
                    <div class="tab-pane" id="messages">
					
					          
						 <div class="row">
							  <div class="col-sm-3">
							        <div class="form-group">
                                       <label class="bmd-label-floating">Date</label>
                                       <input type="date" class="form-control">
						       
                                    </div>
							  </div>
							  <div class="col-sm-3">
							     <div class="form-group">
                                   
                                     <select class="form-control">
                                       <option value="volvo">Select VoucherNo</option>
  
                                    </select> 
						       
                                </div>
							 </div>
							 <div class="col-sm-3">
							    <div class="form-group">
                                  
                                    <select class="form-control">
                                       <option value="volvo">Select JobNo</option>
  
                                    </select> 
						       
                                </div>
							</div>
							  <div class="col-sm-3 form-group">
							   <button id="Search" class="btn btn-success"    style="font-size: 10px;">
										<i class="fa fa-fw fa-search"></i>Search
						       </button>
						      </div>
				           </div>

                        <div class="row" style="margin-left:500px">
							  <div class="col-sm-5"></div>
							  <div class="col-sm-5">
							  <div class="form-group">
                                    <label class="bmd-label-floating">Fillter</label>
                                    <input type="text" class="form-control">
						       
                                </div></div>
							  <div class="col-sm-2 form-group">
							  
						      </div>
				              </div>							
				    
					   <table class="table">
                      <thead class=" text-primary">
                        <th>ID</th>
                        <th>Name</th>
                        <th>Products</th>
                        <th>Count</th>
                        <th>View</th>
                      </thead>
                      <tbody>
                        <tr>
                          <td>EMP011</td>
                          <td>Karthik</td>
                          <td>Machine,Wire</td>
                          <td>5</td>
                          <td class="btn btn-primary">
                            View
                          </td>
                        </tr>
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
                <a href="https://www.creative-tim.com">
                  Creative Tim
                </a>
              </li>
              <li>
                <a href="https://creative-tim.com/presentation">
                  About Us
                </a>
              </li>
              <li>
                <a href="http://blog.creative-tim.com">
                  Blog
                </a>
              </li>
              <li>
                <a href="https://www.creative-tim.com/license">
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