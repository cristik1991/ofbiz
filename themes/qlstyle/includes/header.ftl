<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>AdminLTE 2 | Fixed Layout</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    
    <script src="<@ofbizContentUrl>/qlstyle/adminlte/plugins/jQuery/jQuery-2.1.4.min.js</@ofbizContentUrl>"></script>
    <script src="<@ofbizContentUrl>/qlstyle/adminlte/plugins/slimScroll/jquery.slimscroll.min.js</@ofbizContentUrl>"></script>
    <script src="<@ofbizContentUrl>/qlstyle/adminlte/plugins/fastclick/fastclick.min.js</@ofbizContentUrl>"></script>
    <script src="<@ofbizContentUrl>/qlstyle/adminlte/plugins/datatables/jquery.dataTables.min.js</@ofbizContentUrl>"></script>
	<script src="<@ofbizContentUrl>/qlstyle/adminlte/plugins/datatables/dataTables.bootstrap.min.js</@ofbizContentUrl>"></script>
    <script src="<@ofbizContentUrl>/qlstyle/adminlte/bootstrap/js/bootstrap.min.js</@ofbizContentUrl>"></script>
    <script src="<@ofbizContentUrl>/qlstyle/adminlte/dist/js/app.min.js</@ofbizContentUrl>"></script>
    <script src="<@ofbizContentUrl>/qlstyle/adminlte/plugins/iCheck/icheck.min.js</@ofbizContentUrl>"></script>
    
    <link rel="stylesheet" href="<@ofbizContentUrl>/qlstyle/adminlte/bootstrap/css/bootstrap.min.css</@ofbizContentUrl>">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="<@ofbizContentUrl>/qlstyle/adminlte/dist/css/AdminLTE.min.css</@ofbizContentUrl>">
    <link rel="stylesheet" href="<@ofbizContentUrl>/qlstyle/adminlte/dist/css/skins/_all-skins.min.css</@ofbizContentUrl>">
    <link rel="stylesheet" href="<@ofbizContentUrl>/qlstyle/adminlte/plugins/datatables/dataTables.bootstrap.css</@ofbizContentUrl>">
    <link rel="stylesheet" href="<@ofbizContentUrl>/qlstyle/adminlte/plugins/iCheck/square/blue.css</@ofbizContentUrl>">
  </head>
    <body class="hold-transition skin-blue fixed sidebar-mini">
    <!-- Site wrapper -->
    <div class="wrapper">

      <header class="main-header">
        <a href="../../index2.html" class="logo">
          <span class="logo-mini"><b>OFBiz</b></span>
          <span class="logo-lg"><b>OFBiz</b></span>
        </a>
        <nav class="navbar navbar-static-top" role="navigation">
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-envelope-o"></i>
                  <span class="label label-success">4</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 4 messages</li>
                  <li>
                    <ul class="menu">
                      <li>
                        <a href="#">
                          <div class="pull-left">
                            <img src="<@ofbizContentUrl>/images/adminlte/dist/img/user2-160x160.jpg</@ofbizContentUrl>" class="img-circle" alt="User Image">
                          </div>
                          <h4>
                            Support Team
                            <small><i class="fa fa-clock-o"></i> 5 mins</small>
                          </h4>
                          <p>Why not buy a new awesome theme?</p>
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer"><a href="#">See All Messages</a></li>
                </ul>
              </li>
              <!-- Notifications: style can be found in dropdown.less -->
              <li class="dropdown notifications-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-bell-o"></i>
                  <span class="label label-warning">10</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 10 notifications</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li>
                        <a href="#">
                          <i class="fa fa-users text-aqua"></i> 5 new members joined today
                        </a>
                      </li>
                    </ul>
                  </li>
                  <li class="footer"><a href="#">View all</a></li>
                </ul>
              </li>
              <!-- Tasks: style can be found in dropdown.less -->
              <li class="dropdown tasks-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <i class="fa fa-flag-o"></i>
                  <span class="label label-danger">9</span>
                </a>
                <ul class="dropdown-menu">
                  <li class="header">You have 9 tasks</li>
                  <li>
                    <!-- inner menu: contains the actual data -->
                    <ul class="menu">
                      <li><!-- Task item -->
                        <a href="#">
                          <h3>
                            Design some buttons
                            <small class="pull-right">20%</small>
                          </h3>
                          <div class="progress xs">
                            <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                              <span class="sr-only">20% Complete</span>
                            </div>
                          </div>
                        </a>
                      </li><!-- end task item -->
                    </ul>
                  </li>
                  <li class="footer">
                    <a href="#">View all tasks</a>
                  </li>
                </ul>
              </li>
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                  <img src="<@ofbizContentUrl>/images/adminlte/dist/img/user2-160x160.jpg</@ofbizContentUrl>" class="user-image" alt="User Image">
                  <span class="hidden-xs">Alexander Pierce</span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
                    <img src="<@ofbizContentUrl>/images/adminlte/dist/img/user2-160x160.jpg</@ofbizContentUrl>" class="img-circle" alt="User Image">
                    <p>
                      Alexander Pierce - Web Developer
                      <small>Member since Nov. 2012</small>
                    </p>
                  </li>
                  <!-- Menu Body -->
                  <li class="user-body">
                    <div class="col-xs-4 text-center">
                      <a href="#">Followers</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Sales</a>
                    </div>
                    <div class="col-xs-4 text-center">
                      <a href="#">Friends</a>
                    </div>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" class="btn btn-default btn-flat">Profile</a>
                    </div>
                    <div class="pull-right">
                      <a href="<@ofbizUrl>logout</@ofbizUrl>" class="btn btn-default btn-flat">${uiLabelMap.CommonLogout}</a>
                    </div>
                  </li>
                </ul>
              </li>
              <!-- Control Sidebar Toggle Button -->
              <li>
                <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
              </li>
            </ul>
          </div>
        </nav>
      </header>