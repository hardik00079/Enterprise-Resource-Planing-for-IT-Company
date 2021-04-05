<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
   <link rel="stylesheet" href="assets/css/validationEngine.jquery.css" type="text/css"/>
<script src="assets/js1/jquery-1.8.2.min.js" type="text/javascript"></script>
<script src="assets/js1/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8"></script>
<script src="assets/js1/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
<title>Login</title>
<script language="javascript">
	var mi = jQuery.noConflict();
	mi(document).ready(function s() {
		// binds form submission and fields to the validation engine
		mi("#registration").validationEngine();
	});
</script>
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/icon" href="assets/images/favicon.ico"/>
    <!-- Font Awesome -->
    <link href="assets/css/font-awesome.css" rel="stylesheet">
    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">    
    <!-- Slick slider -->
    <link rel="stylesheet" type="text/css" href="assets/css/slick.css"/> 
    <!-- Fancybox slider -->
    <link rel="stylesheet" href="assets/css/jquery.fancybox.css" type="text/css" media="screen" /> 
    <!-- Animate css -->
    <link rel="stylesheet" type="text/css" href="assets/css/animate.css"/> 
    <!-- Progress bar  -->
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap-progressbar-3.3.4.css"/> 
     <!-- Theme color -->
    <link id="switcher" href="assets/css/theme-color/default-theme.css" rel="stylesheet">

    <!-- Main Style -->
    <link href="style.css" rel="stylesheet">

    <!-- Fonts -->

    <!-- Open Sans for body font -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <!-- Lato for Title -->
    <link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>  
      
    
   <style>
  /* Note: Try to remove the following lines to see the effect of CSS positioning */
  .affix {
      top: 0;
      width: 100%;
  }

  .affix + .container-fluid {
      padding-top: 70px;
  }
  </style>
   
  </head>
  <body >
  <!-- BEGAIN PRELOADER -->
  <div id="preloader">
    <div id="status">&nbsp;</div>
  </div>
  <!-- END PRELOADER -->

  <!-- SCROLL TOP BUTTON -->
  <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
  <!-- END SCROLL TOP BUTTON -->

  <!-- Start header -->
  <header id="header">
    <!-- header top search -->
    <div class="header-top">
      <div class="container">
        <form action="">
          <div id="search">
          <input type="text" placeholder="Type your search keyword here and hit Enter..." name="s" id="m_search" style="display: inline-block;">
          <button type="submit">
            <i class="fa fa-search"></i>
          </button>
        </div>
        </form>
      </div>
    </div>
    <!-- header bottom -->
    <div class="header-bottom">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-sm-6 col-xs-6">
            <div class="header-contact">
              <ul>
                <li>
                  <div class="phone">
                    <i class="fa fa-phone"></i>
                    +91-9099039845
                  </div>
                </li>
                <li>
                  <div class="mail">
                    <i class="fa fa-envelope"></i>
                   info@maxgentechnologies.com 
                  </div>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-6">
            <div class="header-login">
              <a class="login modal-form"  href="Login.jsp">Login / Sign Up</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </header>
  <!-- End header -->
  
  
  <!-- End login modal window -->

  <!-- BEGIN MENU -->
  <section id="menu-area">      
    <nav class="navbar navbar-inverse"  role="navigation">  
      <div class="container">
        <div class="navbar-header">
          <!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- LOGO -->              
          <!-- TEXT BASED LOGO -->
        <a class="navbar-brand" href="Index.jsp"><img style="margin-top:-25px; margin-left:-40px;" src="images/max1 logo.png" height="70px;" width="100px;" alt="logo"></a> 
          <a class="navbar-brand" style=" margin-left:-20px;" href="Index.jsp">Maxgen Technologies</a>              
          <!-- IMG BASED LOGO  -->
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
            <li class="active"><a href="Index.jsp">Home</a></li>
            <li><a href="Index.jsp#feature">Feature</a></li>
            <li><a href="Index.jsp#about">About</a></li>
            <li><a href="Index.jsp#service">Service</a></li>
            <li><a href="Index.jsp#portfolio">Portfolio</a></li>
                           
            <li><a href="Index.jsp#contact">ContactUs</a></li>
          </ul>                     
        </div><!--/.nav-collapse -->
        <a href="#" id="search-icon">
          <i class="fa fa-search">            
          </i>
        </a>
      </div>     
    </nav>
  </section>
  <!-- END MENU --> 
  
  <!-- Start signup section -->
      <section id="menu-area">
 <div class="container">
 <div class="modal-dialog wow zoomIn">
      <!-- Start login section -->
      <div id="login-content" class="modal-content" style="width:400px; margin-left:100px; margin-top:50px;">
        <div class="modal-header">
          
          <h4 class="modal-title" align="center"><i class="fa fa-unlock-alt"></i>Login</h4>
        </div>
        <div class="modal-body">
          <form action="LoginServlet" name="registration" id="registration" method="post" >
            <div class="form-group">
              <input type="text" id="email" placeholder="User name" class="form-control and validate[required,custom[email]" name="email">
            </div>
            <div class="form-group">
              <input type="password" id="Password"  placeholder="Password" name="password" class="form-control and validate[required, minSize[7]]">
              
              <%
						if (request.getParameter("msg") != null) {
					%>
					<h4 id='loginerror' style="color: red">Login Failed-Invalid Details</h4>
					<%
						}
					%>
            </div>
             <div class="loginbox">
              <label><input type="checkbox"><span>Remember me</span></label>
              <button style="margin-left:150px; margin-top:-50px;"   class="btn signin-btn" type="submit">SIGN IN</button>
            </div>                    
          </form>
        </div>
        <div class="modal-footer footer-box">
          <a href="ForgotPassword.jsp">Forgot password ?</a>
          <span>No account ? <a href="Registration.jsp">Sign Up.</a></span>            
        </div>
      </div>
    </div>
    </div>
     </section>
  <!-- End login modal window -->
  <!-- Start footer -->
  <footer style="margin-bottom: auto;" id="footer">
    <div class="container" >
      <div class="row" >
        <div class="col-md-6 col-sm-6">
          <div class="footer-left">
           <h4  > Copyright @ 2013. <a href="http://www.infotechindia.co.in/" >   Maxgen Technologies Pvt. Ltd.</a></h4>
          </div>
        </div>
        <div class="col-md-6 col-sm-6">
          <div class="footer-right">
                     <a href="https://www.facebook.com/Maxgen-Technologies-PvtLtd-1714014815539092/?ref=aymt_homepage_panel"><i  class="fa fa-facebook"></i></a>
         
            <a href="https://twitter.com/max_tech"><i class="fa fa-twitter"></i></a>
           
            
            <a href="https://www.linkedin.com/hp/?dnr=jK1iIuw-2ysWp7WN4KgQZ43T9PPCp7ef8Dly&trk=hb_signin"><i class="fa fa-linkedin"></i></a>
            
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- End footer -->
  
   <jsp:include page="JqueryLib.jsp"></jsp:include>
   <script type="text/javascript">
      $( document ).ready(function() {
    	  $("#loginerror").show();
      	$("#email").on("focus",function(){
      		$("#loginerror").hide();
      	});
	});
      </script>
   
  </body>
</html>