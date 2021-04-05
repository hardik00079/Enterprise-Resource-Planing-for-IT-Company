<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Maxgen : Home</title>
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
  <body>
  
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
            <li><a href="#about">About</a></li>
            <li><a href="#service">Service</a></li>
            <li><a href="#portfolio">Portfolio</a></li>
            <li><a href="#our-team">Team</a></li>
            <!-- <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <span class="fa fa-angle-down"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a href="blog-archive.html">Blog Archive</a></li>                
                <li><a href="blog-single-with-left-sidebar.html">Blog Single with Left Sidebar</a></li>
                <li><a href="blog-single-with-right-sidebar.html">Blog Single with Right Sidebar</a></li>
                <li><a href="blog-single-with-out-sidebar.html">Blog Single with out Sidebar</a></li>           
              </ul>
            </li> -->              
            <li><a href="#contact">ContactUs</a></li>
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

  <!-- Start slider -->
  <section id="slider">
    <div class="main-slider">
      <div class="single-slide">
        <img src="assets/images/slider-1.jpg" alt="img">
        <div class="slide-content">
          <div class="container">
            <div class="row">
              <div class="col-md-6 col-sm-6">
                <div class="slide-article">
                  <h1 class="wow fadeInUp" data-wow-duration="0.5s" data-wow-delay="0.5s">Creative Design & Best Feature</h1>
                  
                  <!-- <a class="read-more-btn wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s" href="#">Read More</a> -->
                </div>
              </div>
              <div class="col-md-6 col-sm-6">
                <div class="slider-img wow fadeInUp">
                  <img src="assets/images/person1.png" alt="business man">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="single-slide">
        <img src="assets/images/slider-3.jpg" alt="img">
        <div class="slide-content">
          <div class="container">
            <div class="row">
              <div class="col-md-6 col-sm-6">
                <div class="slide-article">
                  <h1 class="wow fadeInUp" data-wow-duration="0.5s" data-wow-delay="0.5s">We are Best Team & Support you always</h1>
                 
                  <!-- <a class="read-more-btn wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s" href="#">Read More</a> -->
                </div>
              </div>
              <div class="col-md-6 col-sm-6">
                <div class="slider-img wow fadeInUp">
                  <img src="assets/images/person2.png" alt="business man">
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>          
    </div>
  </section>
  <!-- End slider -->

   <!-- Start Feature -->
 <!-- <section id="feature">
    <div class="container">
      <div class="row wow zoomIn">
        <div class="col-md-12">
          <div class="title-area">
            <h2 class="title">Features</h2>
            <span class="line"></span>
            <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour</p>
          </div>
        </div>
        <div class="col-md-12">
          <div class="feature-content">
            <div class="row">
              <div class="col-md-4 col-sm-6">
                <div class="single-feature wow zoomIn">
                  <i class="fa fa-leaf feature-icon"></i>
                  <h4 class="feat-title">Creative Design</h4>
                  <p>User Interface (UI) Design focuses on anticipating what
											users might need to do and ensuring that the interface has
											elements that are easy to access, understand, and use to
											facilitate those actions.</p>
                </div>
              </div>
              <div class="col-md-4 col-sm-6">
                <div class="single-feature wow zoomIn">
                  <i class="fa fa-mobile feature-icon"></i>
                  <h4 class="feat-title">Responsive Layouts</h4>
                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
                </div>
              </div>
              <div class="col-md-4 col-sm-6">
                <div class="single-feature wow zoomIn">
                  <i class="fa fa-thumbs-o-up feature-icon"></i>
                  <h4 class="feat-title">Great Features</h4>
                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
                </div>
              </div>
              <div class="col-md-4 col-sm-6">
                <div class="single-feature wow zoomIn">
                  <i class="fa fa-gears feature-icon"></i>
                  <h4 class="feat-title">Multiple Options</h4>
                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
                </div>
              </div>
              <div class="col-md-4 col-sm-6">
                <div class="single-feature wow zoomIn">
                  <i class="fa fa-code feature-icon"></i>
                  <h4 class="feat-title">Quality Code</h4>
                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
                </div>
              </div>
              <div class="col-md-4 col-sm-6">
                <div class="single-feature wow zoomIn">
                  <i class="fa fa-smile-o feature-icon"></i>
                  <h4 class="feat-title">Awesome Support</h4>
                  <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>-->
  <!-- End Feature -->

  <!-- Start about  -->
  <section id="about">
    <div class="container">
      <div class="row">
        <div class="col-md-12 wow zoomIn">
          <div class="title-area">
            <h2 class="title">About us</h2>
            <span class="line"></span>
            <h3 class="tittle">
								Welcome to Maxgen Technologies
							</h3>
            <p>Our dedication towards our work, distinguished reputation,
								countless success stories and huge customer base makes us a
								steadfast company
          </div>
        </div>
        <div class="col-md-12 wow zoomIn">
          <div class="about-content">
            <div class="row">
              <div class="col-md-6 wow zoomIn">
                <div class="our-skill">
                  <h3>Our Skills</h3>                  
                  <div class="our-skill-content">
                 <!--  <p>Skills represents our logics, creativity & strength.  </p> -->
                    <div class="progress">
                      <div class="progress-bar six-sec-ease-in-out" role="progressbar" data-transitiongoal="100">
                        <span class="progress-title">Html5</span>
                      </div>
                  </div>
                  <div class="progress">
                      <div class="progress-bar six-sec-ease-in-out" role="progressbar" data-transitiongoal="85">
                        <span class="progress-title">Css3</span>
                      </div>
                  </div>
                  <div class="progress">
                      <div class="progress-bar six-sec-ease-in-out" role="progressbar" data-transitiongoal="60">
                        <span class="progress-title">JQuery</span>
                      </div>
                  </div>
                  <div class="progress">
                      <div class="progress-bar six-sec-ease-in-out" role="progressbar" data-transitiongoal="60">
                        <span class="progress-title">wordPress</span>
                      </div>
                  </div>
                  <div class="progress">
                      <div class="progress-bar six-sec-ease-in-out" role="progressbar" data-transitiongoal="80">
                        <span class="progress-title">Asp.Net</span>
                      </div>
                  </div>
                  <div class="progress">
                      <div class="progress-bar six-sec-ease-in-out" role="progressbar" data-transitiongoal="80">
                        <span class="progress-title">Php</span>
                      </div>
                  </div>
                   <div class="progress">
                      <div class="progress-bar six-sec-ease-in-out" role="progressbar" data-transitiongoal="90">
                        <span class="progress-title">Java</span>
                      </div>
                  </div>
                  </div>                  
                </div>
              </div>
              <div class="col-md-6 wow zoomIn">
                <div class="why-choose-us">
                  <h3>Why Choose Us?</h3>
                  <div class="panel-group why-choose-group" id="accordion">
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                            Creative concept <span class="fa fa-minus-square"></span>
                          </a>
                        </h4>
                      </div>
                      <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                       <!--  <img class="why-choose-img" src="assets/images/testi1.jpg" alt="img"> -->
                         <p>The creative concept helps to define the very core of
											your marketing message. It underpins your campaign content,
											and encapsulates the major themes to be communicated to your
											target audiance.</p>
                        </div>
                      </div>
                    </div>
                    <div class="panel panel-default ">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                            Interface design<span class="fa fa-plus-square"></span>
                          </a>
                        </h4>
                      </div>
                      <div id="collapseTwo" class="panel-collapse collapse">
                        <div class="panel-body">
                         User Interface (UI) Design focuses on anticipating what
											users might need to do and ensuring that the interface has
											elements that are easy to access, understand, and use to
											facilitate those actions.
                        </div>
                      </div>
                    </div>
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                            Strategy <span class="fa fa-plus-square"></span>
                          </a>
                        </h4>
                      </div>
                      <div id="collapseThree" class="panel-collapse collapse">
                        <div class="panel-body">
                          <p>Strategy Analytics helps clients build defensible,
											distinctive strategies to win in complex technology markets.
											We excel in those aspects and guarantee you the satisfaction.</p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>              
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end about -->

  <!-- Start counter -->
  <section id="counter">
    <div class="counter-overlay">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="counter-area">
              <div class="row">
                <!-- Start single counter -->
                <div class="col-md-3 col-sm-6">
                  <div class="single-counter">
                    <div class="counter-icon">
                      <i class="fa fa-bus"></i>
                    </div>
                    <div class="counter-no counter">
                      350
                    </div>
                    <div class="counter-label">
                      Projects Delivery
                    </div>
                  </div>
                </div>
                <!-- End single counter -->
                <!-- Start single counter -->
                <div class="col-md-3 col-sm-6">
                  <div class="single-counter">
                    <div class="counter-icon">
                      <i class="fa fa-tasks"></i>
                    </div>
                    <div class="counter-no counter">
                      400
                    </div>
                    <div class="counter-label">
                      Projects Done
                    </div>
                  </div>
                </div>
                <!-- End single counter -->
                <!-- Start single counter -->
                <div class="col-md-3 col-sm-6">
                 <div class="single-counter">
                    <div class="counter-icon">
                      <i class="fa fa-twitter"></i>
                    </div>
                    <div class="counter-no counter">
                      1000
                    </div>
                    <div class="counter-label">
                      Followers
                    </div>
                  </div>
                </div>
                <!-- End single counter -->
                <!-- Start single counter -->
                <div class="col-md-3 col-sm-6">
                  <div class="single-counter">
                    <div class="counter-icon">
                      <i class="fa fa-users"></i>
                    </div>
                    <div class="counter-no counter">
                      320
                    </div>
                    <div class="counter-label">
                     Happy Clients
                    </div>
                  </div>
                </div>
                <!-- End single counter -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End counter -->


  <!-- Start Service -->
  <section id="service">
    <div class="container">
      <div class="row">
        <div class="col-md-12 wow zoomIn">
          <div class="title-area">
            <h2 class="title">Service we offer</h2>
            <span class="line"></span>
            <p> Maxgen Technologies Pvt. Ltd. Conducts Web Design &
								Development and corporate training of PHP/MySql , WordPress,
								Asp.Net , Java framework technology and Android Mobile
								Application.Maxgen Technologies India provide Web Development,
								Ecommerce & SEO (Search Engine Optimization) & maintenance
								services for Existing Sites. So You can Stand alone in the crowd
								to grow your business.</p>
          </div>
        </div>
        <div class="col-md-12">
          <div class="service-content">
            <div class="row">
              <!-- Start single service -->
              <div class="col-md-4 col-sm-6">
                <div class="single-service wow zoomIn">
                  <i class="fa fa-desktop service-icon"></i>
                  <h4 class="service-title">Web Design</h4>
                  <p class="scroll">We Maxgen Technologies Pvt. Ltd.
											as Best Web design and Development Company understands the
											website requirements from clients and aims to provide peace
											in customers.</p>
                </div>
              </div>
              <!-- End single service -->
              <!-- Start single service -->
              <div class="col-md-4 col-sm-6">
                <div class="single-service wow zoomIn">
                  <i class="fa fa-paw service-icon"></i>
                  <h4 class="service-title">GraphicsDesign</h4>
                  <p> Graphic design is the process of visual communication ,  and
						problem-solving through the correct use of typography, space,
						image and color.</p>
                </div>
              </div>
              <!-- End single service -->
              <!-- Start single service -->
              <div class="col-md-4 col-sm-6">
                <div class="single-service wow zoomIn">
                  <i class="fa fa-sitemap service-icon"></i>
                  <h4 class="service-title">ERP</h4>
                  <p>We Maxgen Technologies developing the
											ERP Systems in-house, companies will have the freedom in
											choosing the software such as databases, front end tools and
											report writers. The satisfaction levels for clients is very
											important while Developing ERP.</p>
                </div>
              </div>
              <!-- End single service -->
              <!-- Start single service -->
              <div class="col-md-4 col-sm-6" >
                <div class="single-service wow zoomIn">
                  <i class="fa fa-shopping-cart service-icon"></i>
                  <h4 class="service-title">E-Commerce</h4>
                  <p>Electronic commerce (ecommerce) is a
											type of business model, or segment of a larger business
											model, that enables a firm or individual to conduct business
											over an electronic network, typically the internet.
											</p>
                </div>
              </div>
              <!-- End single service -->
              <!-- Start single service -->
              <div class="col-md-4 col-sm-6" >
                <div class="single-service wow zoomIn">
                  <i class="fa fa-adn service-icon"></i>
                  <h4 class="service-title" >AutoCAD</h4>
                  <p> Computer-aided design (CAD) is the use of computer systems to aid 
					in the creation, modification, analysis, or optimization of a design.
					CAD  software  is  used to increase the productivity of the designer, 
					improve the quality of design,improve communication through documentation,
					and to create a database for manufacturing</p>
                </div>
              </div>
              <!-- End single service -->
              <!-- Start single service -->
              <div class="col-md-4 col-sm-6" >
                <div class="single-service wow zoomIn">
                  <i class="fa fa-rocket service-icon"></i>
                  <h4 class="service-title">S.E.O</h4>
                  <p>Are you looking for the ways through
											which you can stand out with unique image among thousands of
											competitors among billions of users for the never ending time
											duration?? Are you thinking about how to make policies that
											creates undisputable presence on internet ? Robonet Infotech
											India Pvt. Ltd. </p>
                </div>
              </div>
              <!-- End single service -->
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End Service -->
<!-- Start Portfolio section -->
	<section id="portfolio">
		<div class="container">                  
			<div class="row wow zoomIn">
				<div class="col-md-12">
					<div class="title-area">
           			 <h2 class="title">Portfolio</h2>
          			  <span class="line"></span>
							<p>Our work is distinguished amongst wide variety. Below are
								few of our websites which may help you to trust us better.</p>
						</div>
						<!-- Portfolio content -->
						<div class="portfolio-content">
							<!-- portfolio menu -->
							<div class="portfolio-menu">
								<ul>
									<li class="filter" data-filter="all">All</li>
									<li class="filter" data-filter=".branding">Branding</li>
									<li class="filter" data-filter=".design">Design</li>
									<li class="filter" data-filter=".development">Development</li>
									<li class="filter" data-filter=".photography">Photography</li>
								</ul>
							</div>
							<!-- Portfolio container -->
							<div id="mixit-container" class="portfolio-container">
								<div class="single-portfolio mix branding">
									<div class="single-item">
										<img src="images/EAgg.jpg" alt="img">
										<div class="single-item-content">
											<div class="portfolio-social-icon">
												<a class="fancybox" data-fancybox-group="gallery"
													href="images/EAgg.jpg"><i class="fa fa-eye"></i></a>

											</div>
											<!-- <div class="portfolio-title">
                          <h4>Mobile application</h4>
                          <span>UI Design</span>
                        </div>-->
										</div>
									</div>
								</div>
								<div class="single-portfolio mix design">
									<div class="single-item">
										<img src="images/emusic.jpg" alt="img">
										<div class="single-item-content">
											<div class="portfolio-social-icon">
												<a class="fancybox" data-fancybox-group="gallery"
													href="images/emusic.jpg"><i class="fa fa-eye"></i></a>

											</div>
											<!-- <div class="portfolio-title">
                          <h4>Mobile application</h4>
                          <span>UI Design</span>
                        </div>-->
										</div>
									</div>
								</div>
								<div class="single-portfolio mix development">
									<div class="single-item">
										<img src="images/hotel.jpg" alt="img">
										<div class="single-item-content">
											<div class="portfolio-social-icon">
												<a class="fancybox" data-fancybox-group="gallery"
													href="images/hotel.jpg"><i class="fa fa-eye"></i></a>

											</div>
											<!-- <div class="portfolio-title">
                          <h4>Mobile application</h4>
                          <span>UI Design</span>
                        </div>-->
										</div>
									</div>
								</div>
								<div class="single-portfolio mix photography">
									<div class="single-item">
										<img src="images/RealEstate1.jpg" alt="img">
										<div class="single-item-content">
											<div class="portfolio-social-icon">
												<a class="fancybox" data-fancybox-group="gallery"
													href="images/RealEstate1.jpg"><i class="fa fa-eye"></i></a>

											</div>
											<!-- <div class="portfolio-title">
                          <h4>Mobile application</h4>
                          <span>UI Design</span>
                        </div>-->
										</div>
									</div>
								</div>
								<div class="single-portfolio mix photography">
									<div class="single-item">
										<img src="images/tour.jpg" alt="img">
										<div class="single-item-content">
											<div class="portfolio-social-icon">
												<a class="fancybox" data-fancybox-group="gallery"
													href="images/tour.jpg"><i class="fa fa-eye"></i></a>

											</div>
											<!-- <div class="portfolio-title">
                          <h4>Mobile application</h4>
                          <span>UI Design</span>
                        </div>-->
										</div>
									</div>
								</div>
								<div class="single-portfolio mix photography">
									<div class="single-item">
										<img src="images/zxc.jpg" alt="img">
										<div class="single-item-content">
											<div class="portfolio-social-icon">
												<a class="fancybox" data-fancybox-group="gallery"
													href="images/zxc.jpg"><i class="fa fa-eye"></i></a>

											</div>
											<!-- <div class="portfolio-title">
                          <h4>Mobile application</h4>
                          <span>UI Design</span>
                        </div>-->
										</div>
									</div>
								</div>
								<div class="single-portfolio mix photography">
									<div class="single-item">
										<img src="images/Screenshot.jpg" alt="img">
										<div class="single-item-content">
											<div class="portfolio-social-icon">
												<a class="fancybox" data-fancybox-group="gallery"
													href="images/Screenshot.jpg"><i class="fa fa-eye"></i></a>

											</div>
											<!-- <div class="portfolio-title">
                          <h4>Mobile application</h4>
                          <span>UI Design</span>
                        </div>-->
										</div>
									</div>
								</div>
								<div class="single-portfolio mix photography">
									<div class="single-item">
										<img src="images/home.png" alt="img">
										<div class="single-item-content">
											<div class="portfolio-social-icon">
												<a class="fancybox" data-fancybox-group="gallery"
													href="images/home.png"><i class="fa fa-eye"></i></a>

											</div>
											<!-- <div class="portfolio-title">
                          <h4>Mobile application</h4>
                          <span>UI Design</span>
                        </div>-->
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		
	</section>
	<!-- End Portfolio section -->
  

  <!-- Start team table -->
  <section id="our-team">
    <div class="container">
      <div class="row wow zoomIn">
        <div class="col-md-12">
          <div class="title-area">
            <h2 class="title">Our Team</h2>
            <span class="line"></span>
            <p>          Unity is strength..
            	When there is teamwork and collaboration,
            	  wonderful things can be achieved.</p>
          </div>
        </div>
        <div class="col-md-12" style="margin-left:150px;">
          <div class="our-team-content">
            <div class="row">
              <!-- Start single team member -->
              <div class="col-md-3 col-sm-6 col-xs-12  wow fadeInLeft">
                <div class="single-team-member">
                 <div class="team-member-img">
                   <img src="images/hardik.jpg"  height="255px;" alt="team member img">
                 </div>
                 <div class="team-member-name">
                   <p>Hardik Patel</p>
                   <span>Java Developer</span>
                 </div>
                </div>
              </div>
              <!-- Start single team member -->
               <!-- Start single team member -->
              <div class="col-md-3 col-sm-6 col-xs-12 wow fadeInRight">
                <div class="single-team-member">
                 <div class="team-member-img">
										<img src="images/jigo.jpg" height="255px;" alt="team member img">
									</div>
                 <div class="team-member-name">
                   <p>Jignesh Parmar</p>
                   <span>Java Developer</span>
                 </div>
                </div>
              </div>
              <!-- Start single team member -->
              <!-- Start single team member -->
               <div class="col-md-3 col-sm-6 col-xs-12  wow fadeInRight">
                <div class="single-team-member">
                 <div class="team-member-img">
                   <img src="images/nirav.jpg"  height="255px;" alt="team member img">
                 </div>
                 <div class="team-member-name">
                   <p>Nirav Karad</p>
                   <span>Android Developer</span>
                 </div>
                </div>
              </div> 
              <!-- Start single team member -->
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End team table -->
  
  <!-- Start Testimonial section -->
  <!-- <section id="testimonial">
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="row">
            <div class="col-md-12">
              <div class="title-area">
                <h2 class="title">Whats Client Say</h2>
                <span class="line"></span>           
              </div>
            </div>
            <div class="col-md-12">
              Start testimonial slider
              <div class="testimonial-slider">
                Start single slider
                <div class="single-slider">
                  <div class="testimonial-img">
                    <img src="assets/images/testi1.jpg" alt="testimonial image">
                  </div>
                  <div class="testimonial-content">
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
                    <h6>Bernice Neumann, <span>Designer</span></h6>
                  </div>
                </div>
                Start single slider
                <div class="single-slider">
                  <div class="testimonial-img">
                    <img src="assets/images/testi3.jpg" alt="testimonial image">
                  </div>
                  <div class="testimonial-content">
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
                    <h6>John Dow, <span>CEO</span></h6>
                  </div>
                </div>
                Start single slider
                <div class="single-slider">
                  <div class="testimonial-img">
                    <img src="assets/images/testi2.jpg" alt="testimonial image">
                  </div>
                  <div class="testimonial-content">
                    <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
                    <h6>Michel, <span>Developer</span></h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6"></div>        
      </div>
    </div>
  </section> -->
  <!-- End Testimonial section -->

  <!-- Start Clients brand -->
  <section id="clients-brand">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="clients-brand-area">
            <ul class="clients-brand-slide">
              <li class="col-md-3">
                <div class="single-brand">
                  <img src="assets/images/amazon.png" alt="img">
                </div>
              </li>
              <li class="col-md-3">
                <div class="single-brand">
                  <img src="assets/images/discovery.png" alt="img">
                </div>
              </li>
              <li class="col-md-3">
                <div class="single-brand">
                  <img src="assets/images/envato.png" alt="img">
                </div>
              </li>
              <li class="col-md-3">
                <div class="single-brand">
                  <img src="assets/images/tuenti.png" alt="img">
                </div>
              </li>
               <li class="col-md-3">
                <div class="single-brand">
                  <img src="assets/images/amazon.png" alt="img">
                </div>
              </li>
              <li class="col-md-3">
                <div class="single-brand">
                  <img src="assets/images/discovery.png" alt="img">
                </div>
              </li>
              <li class="col-md-3">
                <div class="single-brand">
                  <img src="assets/images/envato.png" alt="img">
                </div>
              </li>
              <li class="col-md-3">
                <div class="single-brand">
                  <img src="assets/images/tuenti.png" alt="img">
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End Clients brand -->

  
<!-- Start Contact section -->
	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
				 
          <div class="title-area">
            <h2 class="title">Contact Us</h2>
            <span class="line"></span>
           </div>
          </div>
       <div class="col-md-4 col-sm-6 col-xs-12">
					<div class="contact-left wow fadeInLeft">
			
						<address class="single-address">
							<h4>Corporate Office:</h4>
							<p># 608 & # 401 J.B. TOWER, Near Sal Hospital, Opp. T.V.
								Tower, Drive in Road Memnagar Ahmedabad.</p>
						</address>
						<address class="single-address">
							<h4>Headquarters:</h4>
							<p># 301, Above Axis Bank Nr. Mezza 9 Hotel, Phase-1,
								Hinjewadi,Pune.</p>
						</address>
						<address class="single-address">
							<h4>Phone</h4>
							<p>Phone Number: +91-9558216969, +91-9099039845,
								+91-9909163651</p>
							<p></p>
						</address>
						<address class="single-address">
							<h4>E-Mail</h4>
							<p>info@maxgentechnologies.com </p>
							<p>Inquiry@maxgentechnologies.com</p>
						</address>
					</div>
				</div>
				<div class="col-md-8 col-sm-6 col-xs-12">
					<div class="contact-right wow fadeInRight">
						<h2>Send a message</h2>
						<form action="ContactServlet" class="contact-form" method="post">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Name"
									required name="name">
							</div>
							<div class="form-group">
								<input type="email" class="form-control"
									placeholder="Enter Email" required name="email">
							</div>
							<div class="form-group">
								<textarea class="form-control" placeholder="Description" name="description"></textarea>
							</div>
							<div class="loginbox">
							<button style="margin-left:325px;" type="submit" data-text="SUBMIT"
								class="btn signin-btn">
								<span>SUBMIT</span>
							</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Contact section -->
	<!-- Start Google Map -->
	<section id="google-map">
		<iframe
			src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3671.323246275565!2d72.52154831443313!3d23.048607921139553!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e84adab61b9df%3A0xd1bca3569e216ba9!2sRobonet+Infotech+India+Pvt+.Ltd!5e0!3m2!1sen!2sin!4v1455624212766" 
			width=100% height="500" frameborder="0" style="border: 0"
			allowfullscreen></iframe>
		</iframe>
	</section>
	<!-- End Google Map -->
  <!-- Start subscribe us -->
 <!--  <section id="subscribe">
    <div class="subscribe-overlay">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="subscribe-area">
              <h2 class="wow fadeInUp">Subscribe Newsletter</h2>
              <form action="" class="subscrib-form wow fadeInUp" data-wow-duration="0.5s" data-wow-delay="0.5s">
                <input type="text" placeholder="Enter Your E-mail..">
                <button class="subscribe-btn" type="submit">Submit</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section> -->
  <!-- End subscribe us -->

  <!-- Start footer -->
  <footer id="footer">
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-sm-6">
          <div class="footer-left">
           <h4  > Copyright @ 2013. <a href="http://www.maxgentechnologies.com/" >   Maxgen Technologies Pvt. Ltd.</a></h4>
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

  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>    
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <!-- Bootstrap -->
  <script src="assets/js/bootstrap.js"></script>
  <!-- Slick Slider -->
  <script type="text/javascript" src="assets/js/slick.js"></script>    
  <!-- mixit slider -->
  <script type="text/javascript" src="assets/js/jquery.mixitup.js"></script>
  <!-- Add fancyBox -->        
  <script type="text/javascript" src="assets/js/jquery.fancybox.pack.js"></script>
 <!-- counter -->
  <script src="assets/js/waypoints.js"></script>
  <script src="assets/js/jquery.counterup.js"></script>
  <!-- Wow animation -->
  <script type="text/javascript" src="assets/js/wow.js"></script> 
  <!-- progress bar   -->
  <script type="text/javascript" src="assets/js/bootstrap-progressbar.js"></script>  
  
 
  <!-- Custom js -->
  <script type="text/javascript" src="assets/js/custom.js"></script>
  
  </body>
</html>