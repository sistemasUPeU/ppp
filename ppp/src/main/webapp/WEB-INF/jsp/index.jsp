<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>

   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Root - Bootstrap 4 Admin Template">
    <meta name="author" content="Łukasz Holeczek">
    <meta name="keyword" content="Bootstrap,Admin,Template,Open,Source,AngularJS,Angular,Angular2,jQuery,CSS,HTML,RWD,Dashboard">
    <link rel="shortcut icon" href="img/favicon.png">

    <title> Gestion de PPP </title>


<!--  Style -->
    <%@include file="../../jspf/head.jspf"%>


</head>

<body class="app header-fixed sidebar-fixed aside-menu-fixed aside-menu-hidden">
    <header class="app-header navbar">
        <button class="navbar-toggler mobile-sidebar-toggler hidden-lg-up" type="button">☰</button>
        <a class="navbar-brand" href="#"></a>
        <ul class="nav navbar-nav hidden-md-down">
            <li class="nav-item">
                <a class="nav-link navbar-toggler sidebar-toggler" href="#">☰</a>
            </li>

            <li class="nav-item px-1">
                <a class="nav-link" href="#">Gestion de Practicas Pre-Profesionales - <strong>PPP</strong></a>
            </li>
            
        </ul>
        <ul class="nav navbar-nav ml-auto">
            <li class="nav-item dropdown hidden-md-down">
                <a class="nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    <i class="icon-bell"></i>
                    <span class="badge badge-pill badge-danger">5</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg">

                    <div class="dropdown-header text-center">
                        <strong>You have 5 notifications</strong>
                    </div>

                    <a href="#" class="dropdown-item">
                        <i class="icon-user-follow text-success"></i> New user registered
                    </a>
                    <a href="#" class="dropdown-item">
                        <i class="icon-user-unfollow text-danger"></i> User deleted
                    </a>
                    <a href="#" class="dropdown-item">
                        <i class="icon-chart text-info"></i> Sales report is ready
                    </a>
                    <a href="#" class="dropdown-item">
                        <i class="icon-basket-loaded text-primary"></i> New client
                    </a>
                    <a href="#" class="dropdown-item">
                        <i class="icon-speedometer text-warning"></i> Server overloaded
                    </a>

                    <div class="dropdown-header text-center">
                        <strong>Server</strong>
                    </div>

                    <a href="#" class="dropdown-item">
                        <div class="text-uppercase mb-q">
                            <small><b>CPU Usage</b>
                            </small>
                        </div>
                        <span class="progress progress-xs">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                        </span>
                        <small class="text-muted">348 Processes. 1/4 Cores.</small>
                    </a>
                    <a href="#" class="dropdown-item">
                        <div class="text-uppercase mb-q">
                            <small><b>Memory Usage</b>
                            </small>
                        </div>
                        <span class="progress progress-xs">
                            <div class="progress-bar bg-warning" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                        </span>
                        <small class="text-muted">11444GB/16384MB</small>
                    </a>
                    <a href="#" class="dropdown-item">
                        <div class="text-uppercase mb-q">
                            <small><b>SSD 1 Usage</b>
                            </small>
                        </div>
                        <span class="progress progress-xs">
                            <div class="progress-bar bg-danger" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"></div>
                        </span>
                        <small class="text-muted">243GB/256GB</small>
                    </a>

                </div>
            </li>
            <li class="nav-item dropdown hidden-md-down">
                <a class="nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    <i class="icon-list"></i>
                    <span class="badge badge-pill badge-warning">15</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg">

                    <div class="dropdown-header text-center">
                        <strong>You have 5 pending tasks</strong>
                    </div>

                    <a href="#" class="dropdown-item">
                        <div class="small mb-q">Upgrade NPM &amp; Bower
                            <span class="float-right">
                                <strong>0%</strong>
                            </span>
                        </div>
                        <span class="progress progress-xs">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 0%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
                        </span>
                    </a>
                    <a href="#" class="dropdown-item">
                        <div class="small mb-q">ReactJS Version
                            <span class="float-right">
                                <strong>25%</strong>
                            </span>
                        </div>
                        <span class="progress progress-xs">
                            <div class="progress-bar bg-danger" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                        </span>
                    </a>
                    <a href="#" class="dropdown-item">
                        <div class="small mb-q">VueJS Version
                            <span class="float-right">
                                <strong>50%</strong>
                            </span>
                        </div>
                        <span class="progress progress-xs">
                            <div class="progress-bar bg-warning" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                        </span>
                    </a>
                    <a href="#" class="dropdown-item">
                        <div class="small mb-q">Add new layouts
                            <span class="float-right">
                                <strong>75%</strong>
                            </span>
                        </div>
                        <span class="progress progress-xs">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                        </span>
                    </a>
                    <a href="#" class="dropdown-item">
                        <div class="small mb-q">Angular 2 Cli Version
                            <span class="float-right">
                                <strong>100%</strong>
                            </span>
                        </div>
                        <span class="progress progress-xs">
                            <div class="progress-bar bg-success" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                        </span>
                    </a>

                    <a href="#" class="dropdown-item text-center">
                        <strong>View all tasks</strong>
                    </a>
                </div>
            </li>
            <li class="nav-item dropdown hidden-md-down">
                <a class="nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    <i class="icon-envelope-letter"></i>
                    <span class="badge badge-pill badge-info">7</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right dropdown-menu-lg">

                    <div class="dropdown-header text-center">
                        <strong>You have 4 messages</strong>
                    </div>

                    <a href="#" class="dropdown-item">
                        <div class="message">
                            <div class="py-1 mr-1 float-left">
                                <div class="avatar">
                                    <img src="<c:url value='resources/plugin/img/avatars/7.jpg'/>" class="img-avatar" alt="admin@bootstrapmaster.com">
                                    <span class="avatar-status badge-success"></span>
                                </div>
                            </div>
                            <div>
                                <small class="text-muted">John Doe</small>
                                <small class="text-muted float-right mt-q">Just now</small>
                            </div>
                            <div class="text-truncate font-weight-bold">
                                <span class="fa fa-exclamation text-danger"></span>Important message</div>
                            <div class="small text-muted text-truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt...</div>
                        </div>
                    </a>
                    <a href="#" class="dropdown-item">
                        <div class="message">
                            <div class="py-1 mr-1 float-left">
                                <div class="avatar">
                                    <img src="<c:url value='resources/plugin/img/avatars/6.jpg'/>" class="img-avatar" alt="admin@bootstrapmaster.com">
                                    <span class="avatar-status badge-warning"></span>
                                </div>
                            </div>
                            <div>
                                <small class="text-muted">John Doe</small>
                                <small class="text-muted float-right mt-q">5 minutes ago</small>
                            </div>
                            <div class="text-truncate font-weight-bold">Lorem ipsum dolor sit amet</div>
                            <div class="small text-muted text-truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt...</div>
                        </div>
                    </a>
                    <a href="#" class="dropdown-item">
                        <div class="message">
                            <div class="py-1 mr-1 float-left">
                                <div class="avatar">
                                    <img src="<c:url value='resources/plugin/img/avatars/5.jpg'/>" class="img-avatar" alt="admin@bootstrapmaster.com">
                                    <span class="avatar-status badge-danger"></span>
                                </div>
                            </div>
                            <div>
                                <small class="text-muted">John Doe</small>
                                <small class="text-muted float-right mt-q">1:52 PM</small>
                            </div>
                            <div class="text-truncate font-weight-bold">Lorem ipsum dolor sit amet</div>
                            <div class="small text-muted text-truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt...</div>
                        </div>
                    </a>
                    <a href="#" class="dropdown-item">
                        <div class="message">
                            <div class="py-1 mr-1 float-left">
                                <div class="avatar">
                                    <img src="<c:url value='resources/plugin/img/avatars/4.jpg'/>" class="img-avatar" alt="admin@bootstrapmaster.com">
                                    <span class="avatar-status badge-info"></span>
                                </div>
                            </div>
                            <div>
                                <small class="text-muted">John Doe</small>
                                <small class="text-muted float-right mt-q">4:03 PM</small>
                            </div>
                            <div class="text-truncate font-weight-bold">Lorem ipsum dolor sit amet</div>
                            <div class="small text-muted text-truncate">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt...</div>
                        </div>
                    </a>

                    <a href="#" class="dropdown-item text-center">
                        <strong>View all messages</strong>
                    </a>
                </div>
            </li>
           
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle nav-link" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                    <img src="<c:url value='resources/plugin/img/avatars/6.jpg'/>" class="img-avatar" alt="admin@bootstrapmaster.com">
                    <span class="hidden-md-down">Usuario Brandux</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right">

                    <div class="dropdown-header text-center">
                        <strong>Account</strong>
                    </div>

                    <a class="dropdown-item" href="#"><i class="fa fa-bell-o"></i> Updates<span class="badge badge-info">42</span></a>
                    <a class="dropdown-item" href="#"><i class="fa fa-envelope-o"></i> Messages<span class="badge badge-success">42</span></a>
                    <a class="dropdown-item" href="#"><i class="fa fa-tasks"></i> Tasks<span class="badge badge-danger">42</span></a>
                    <a class="dropdown-item" href="#"><i class="fa fa-comments"></i> Comments<span class="badge badge-warning">42</span></a>

                    <div class="dropdown-header text-center">
                        <strong>Settings</strong>
                    </div>

                    <a class="dropdown-item" href="#"><i class="fa fa-user"></i> Profile</a>
                    <a class="dropdown-item" href="#"><i class="fa fa-wrench"></i> Settings</a>
                    <a class="dropdown-item" href="#"><i class="fa fa-usd"></i> Payments<span class="badge badge-default">42</span></a>
                    <a class="dropdown-item" href="#"><i class="fa fa-file"></i> Projects<span class="badge badge-primary">42</span></a>
                    <div class="divider"></div>
                    <a class="dropdown-item" href="#"><i class="fa fa-shield"></i> Lock Account</a>
                    <a class="dropdown-item" href="#"><i class="fa fa-lock"></i> Logout</a>
                </div>
            </li>
            <li class="nav-item hidden-md-down">
                <a class="nav-link navbar-toggler aside-menu-toggler" href="#">☰</a>
            </li>

        </ul>
    </header>

    <div class="app-body">
        <div class="sidebar">


            <div class="sidebar-header">
               <br>
                <img src="<c:url value='resources/plugin/img/avatars/8.jpg'/>" class="img-avatar" alt="Avatar">
                <div>
                    <strong>JOHN DOE</strong>
                </div>
                <div class="text-muted">
                    <small>Founder &amp; CEO</small>
                </div>
             </div>


            <nav class="sidebar-nav">
                <ul class="nav">
                    <li class="nav-title">
                        Dashboard
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.html"><i class="icon-speedometer"></i> Dashboard <span class="badge badge-info">NEW</span></a>
                    </li>

                    <li class="divider"></li>
                    <li class="nav-title">
                        UI Elements
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-puzzle"></i> Components</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link" href="components-buttons.html"><i class="icon-puzzle"></i> Buttons</a>
                            </li>
                         </ul>
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-note"></i> Forms</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link" href="forms-basic-forms.html"><i class="icon-note"></i> Basic Forms</a>
                            </li>
                         </ul>
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-star"></i> Icons</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link" href="icons-font-awesome.html"><i class="icon-star"></i> Font Awesome</a>
                            </li>
                         </ul>
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-energy"></i> Plugins</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link" href="plugins-calendar.html"><i class="icon-calendar"></i> Calendar</a>
                            </li>
                          </ul>
                    </li>
                    
                    <li class="nav-item">
                        <a class="nav-link" href="charts.html"><i class="icon-pie-chart"></i> Charts</a>
                    </li>
                    <li class="divider"></li>
                    <li class="nav-title">
                        Extras
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-star"></i> Pages</a>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item">
                                <a class="nav-link" href="pages-login.html" target="_top"><i class="icon-star"></i> Login</a>
                            </li>
                         </ul>
                    </li>
                    <li class="nav-item nav-dropdown">
                        <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-layers"></i> UI Kits</a>

                        <ul class="nav-dropdown-items">
                            <li class="nav-item nav-dropdown">
                                <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-speech"></i> Invoicing</a>
                                <ul class="nav-dropdown-items">
                                    <li class="nav-item">
                                        <a class="nav-link" href="UIkits-invoicing-invoice.html"><i class="icon-speech"></i> Invoice</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                        <ul class="nav-dropdown-items">
                            <li class="nav-item nav-dropdown">
                                <a class="nav-link nav-dropdown-toggle" href="#"><i class="icon-speech"></i> Email</a>
                                <ul class="nav-dropdown-items">
                                    <li class="nav-item">
                                        <a class="nav-link" href="UIkits-email-inbox.html"><i class="icon-speech"></i> Inbox</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="UIkits-email-message.html"><i class="icon-speech"></i> Message</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="UIkits-email-compose.html"><i class="icon-speech"></i> Compose</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="divider m-h"></li>
                    <li class="nav-title">
                        Labels
                    </li>
                    <li class="nav-item hidden-cn">
                        <a class="nav-label" href="#"><i class="fa fa-circle text-danger"></i> Label danger</a>
                    </li>
                    <li class="nav-item hidden-cn">
                        <a class="nav-label" href="#"><i class="fa fa-circle text-info"></i> Label info</a>
                    </li>
                    <li class="nav-item hidden-cn">
                        <a class="nav-label" href="#"><i class="fa fa-circle text-warning"></i> Label warning</a>
                    </li>
                    <li class="divider"></li>
                    <li class="nav-title">
                        System Utilization
                    </li>
                    <li class="nav-item px-1 hidden-cn">
                        <div class="text-uppercase mb-q">
                            <small><b>CPU Usage</b>
                            </small>
                        </div>
                        <div class="progress progress-xs">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <small class="text-muted">348 Processes. 1/4 Cores.</small>
                    </li>
                    <li class="nav-item px-1 hidden-cn">
                        <div class="text-uppercase mb-q">
                            <small><b>Memory Usage</b>
                            </small>
                        </div>
                        <div class="progress progress-xs">
                            <div class="progress-bar bg-warning" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <small class="text-muted">11444GB/16384MB</small>
                    </li>
                    <li class="nav-item px-1 hidden-cn">
                        <div class="text-uppercase mb-q">
                            <small><b>SSD 1 Usage</b>
                            </small>
                        </div>
                        <div class="progress progress-xs">
                            <div class="progress-bar bg-danger" role="progressbar" style="width: 95%" aria-valuenow="95" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <small class="text-muted">243GB/256GB</small>
                    </li>
                    <li class="divider"></li>

                </ul>
            </nav>
        </div>

        <!-- Main content -->
        <main class="main">

            <!-- Breadcrumb -->
            <ol class="breadcrumb">
                <li class="breadcrumb-item">Home</li>
                <li class="breadcrumb-item"><a href="#">Admin</a>
                </li>
                <li class="breadcrumb-item active">Dashboard</li>

             </ol>
            <div class="container-fluid">
                <div class="animated fadeIn">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-header">
                                    <i class="fa fa-edit"></i> Area build
                                    <div class="card-actions">
                                        <a href="#">
                                            <small class="text-muted">NaN</small>
                                        </a>
                                    </div>
                                </div>
                                <div class="card-block">
                                    <h1>LLENAMOS AQUI SI ES QUE QUIEREN</h1>
                                    <h2>Sabrina Vuelve</h2>
                                 </div>
                            </div>
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>

            </div>
            <!-- /.conainer-fluid -->
        </main>

    </div>

    <!--  footer -->
    <%@include file="../../jspf/footer.jspf"%>

<!-- script's -->

    <%@include file="../../jspf/jsGeneral.jspf"%>

</body>


</html>