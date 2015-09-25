<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from 188.226.173.21/html/careers/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 08 Sep 2015 12:52:25 GMT -->
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<title>Homepage - Careers</title>

	<!-- Stylesheets -->
	<link href='http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic|Roboto+Condensed:400,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="<spring:url value="/resources/css/bootstrap.css" />">
	<link rel="stylesheet" href="<spring:url value="/resources/css/font-awesome.min.css" />">
	<link rel="stylesheet" href="<spring:url value="/resources/css/flexslider.css" />">
	<link rel="stylesheet" href="<spring:url value="/resources/css/style.css" />">
	<link rel="stylesheet" href="<spring:url value="/resources/css/responsive.css" />">
	<link rel="stylesheet" href="<spring:url value="/resources/css/my_style.css" />">

	<!--[if IE 9]>
		<script src="js/media.match.min.js"></script>
	<![endif]-->
</head>

<body>
<div id="main-wrapper">
	
	<header id="header" class="header-style-1">
		<div class="header-top-bar">
			<div class="container">

				<!-- Header Register -->
				<div class="header-register">
					<a href="#" class="btn btn-link">Register</a>
					<div>
						<!-- REGISTER -->
						<spring:url value="/register/candidate/validate" var="registerForm"/>
						<form:form action="${registerForm}" method="POST" modelAttribute="candidate">
							<form:errors path="first_name" cssClass="error-message" />
							<form:input path = "first_name" type = "text" cssClass="form-control" cssErrorClass="form-control error" placeholder="First Name" />
							<form:errors path="last_name" cssClass="error-message" />
							<form:input path = "last_name" type = "text" cssClass="form-control" cssErrorClass="form-control error" placeholder="Last Name" />
							<form:errors path="email" cssClass="error-message" />
							<form:input path = "email" cssClass="form-control" cssErrorClass="form-control error" placeholder="Email" />
							<form:errors path="password" cssClass="error-message" />
							<form:input path = "password"  type = "password" cssClass="form-control" cssErrorClass="form-control error" placeholder="Password" />
							<input type="submit" class="btn btn-default" value="Register" />
						</form:form>
					</div>
				</div> <!-- end .header-register -->

				<!-- Header Login -->
				<div class="header-login">
					<a href="#" class="btn btn-link">Login</a>
					<div>
						<form action="#">
							<input type="text" class="form-control" placeholder="Username">
							<input type="password" class="form-control" placeholder="Password">
							<input type="submit" class="btn btn-default" value="Login">
							<a href="#" class="btn btn-link">Forgot Password?</a>
						</form>
					</div>
				</div> <!-- end .header-login -->

			</div> <!-- end .container -->
		</div> <!-- end .header-top-bar -->

		<div class="header-nav-bar">
			<div class="container">

				<!-- Logo -->
				<div class="css-table logo">
					<div class="css-table-cell">
						<a href="index-2.html">
							<spring:url value="/resources/img/ccs-logo.png" var="logoImg"/>
							<img src="${logoImg}" alt="">
						</a> <!-- end .logo -->
					</div>
				</div>

				<!-- Mobile Menu Toggle -->
				<a href="#" id="mobile-menu-toggle"><span></span></a>

				<!-- Primary Nav -->
				<nav>
					<!-- <ul class="primary-nav has-submenu"> -->
					<ul class="primary-nav">	
						<li class="active">
							<a href="index-2.html">Home</a>
							<!--
							<ul>
								<li><a href="index-2.html">Home with Boxes</a></li>
								<li><a href="homepage-slider.html">Home with Slider</a></li>
							</ul>
							-->
						</li>
						<!-- 
						<li class="has-submenu">
							<a href="jobs.html">Jobs</a>
							<ul>
								<li><a href="jobs.html">Jobs Listings</a></li>
								<li><a href="jobs-single.html">Jobs Details</a></li>
							</ul>
						</li>
						-->
						<!--
						<li class="has-submenu">
							<a href="candidates.html">Candidates</a>
							<ul>
								<li><a href="candidates.html">Candidates Listings</a></li>
								<li><a href="candidates-sidebar.html">Candidates Listings Sidebar</a></li>
								<li><a href="candidates-single.html">Candidates Details</a></li>
							</ul>
						</li>
						-->
						<li>
							<a href="about-us.html">About Us</a>
						</li>
						<li>
							<a href="about-us.html">Partners</a>
						</li>
						<li>
							<a href="contact-us.html">Contact Us</a>
						</li>
					</ul>
				</nav>
			</div> <!-- end .container -->

			<div id="mobile-menu-container" class="container">
				<div class="login-register"></div>
				<div class="menu"></div>
			</div>
		</div> <!-- end .header-nav-bar -->

		<div class="header-search-bar">
			<div class="container">
				<form>
					<div class="basic-form clearfix">
						<a href="#" class="toggle"><span></span></a>

						<div class="hsb-input-1">
							<input type="text" class="form-control" placeholder="I'm looking for a ...">
						</div>

						<div class="hsb-text-1">in</div>

						<div class="hsb-container">
							<div class="hsb-input-2">
								<input type="text" class="form-control" placeholder="Location">
							</div>

							<div class="hsb-select">
								<select class="form-control">
									<option value="0">Select Category</option>
									<option value="">Category</option>
									<option value="">Category</option>
									<option value="">Category</option>
									<option value="">Category</option>
								</select>
							</div>
						</div>

						<div class="hsb-submit">
							<input type="submit" class="btn btn-default btn-block" value="Search">
						</div>
					</div>

					<div class="advanced-form">
						<div class="container">
							<div class="row">
								<label class="col-md-3">Distance</label>

								<div class="col-md-9">
									<div class="range-slider">
										<div class="slider" data-min="1" data-max="200" data-current="100"></div>
										<div class="last-value"><span>100</span> km</div>
									</div>
								</div>
							</div>

							<div class="row">
								<label class="col-md-3">Rating</label>

								<div class="col-md-9">
									<div class="range-slider">
										<div class="slider" data-min="1" data-max="100" data-current="20"></div>
										<div class="last-value">&gt; <span>20</span> %</div>
									</div>
								</div>
							</div>

							<div class="row">
								<label class="col-md-3">Days Published</label>

								<div class="col-md-9">
									<div class="range-slider">
										<div class="slider" data-min="1" data-max="60" data-current="30"></div>
										<div class="last-value">&lt; <span>30</span></div>
									</div>
								</div>
							</div>

							<div class="row">
								<label class="col-md-3">Location</label>

								<div class="col-md-9">
									<input type="text" class="form-control" placeholder="Switzerland">
								</div>
							</div>

							<div class="row">
								<label class="col-md-3">Industry</label>

								<div class="col-md-9">
									<select class="form-control">
										<option value="">Select Industry</option>
										<option value="">Option 1</option>
										<option value="">Option 2</option>
										<option value="">Option 3</option>
										<option value="">Option 4</option>
										<option value="">Option 5</option>
									</select>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div> <!-- end .header-search-bar -->

		<div class="header-banner">
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="header-banner-box register">
							<div class="counter-container">
								<ul class="counter clearfix">
									<li class="zero">0</li>
									<li>3</li>
									<li>5</li>
									<li>1</li>
									<li>0</li>
									<li>9</li>
								</ul>

								<div><span>Jobs</span></div>
							</div>

							<a href="#" class="btn btn-default">Register Now</a>
						</div>
					</div>

					<div class="col-sm-6">
						<div class="header-banner-box post-job">
							<img src="<spring:url value="/resources/img/verified.png" />" alt="">

							<a href="#" class="btn btn-red">Post a Job</a>
						</div>
					</div>
				</div>
			</div>
		</div> <!-- end .header-banner -->
	</header> <!-- end #header -->

	<div id="page-content">
		<div class="container">
			<div class="row">
				<div class="col-sm-8 page-content">
					<div class="title-lines">
						<h3 class="mt0">Find a Job Per</h3>
					</div>

					<div class="find-job-tabs responsive-tabs">
						<ul class="nav nav-tabs">
							<li class="active"><a href="#find-job-tabs-map">Map</a></li>
							<li><a href="#find-job-tabs-industry">Industry</a></li>
							<li><a href="#find-job-tabs-role">Type</a></li>
							<li><a href="#find-job-tabs-country">Country</a></li>
						</ul>

						<div class="tab-content">
							<div class="tab-pane active" id="find-job-tabs-map">
								<div id="find-job-map-tab" class="p5"></div>

								<hr class="m0 primary">

								<div class="row p30">
									<div class="col-sm-6">
										<ul class="filter-list">
											<li><a href="#">Asia <span>(1234)</span></a></li>
											<li><a href="#">Africa <span>(5678)</span></a></li>
											<li><a href="#">Europe <span>(910)</span></a></li>
											<li><a href="#">North America <span>(347)</span></a></li>
										</ul>
									</div>

									<div class="col-sm-6">
										<ul class="filter-list">
											<li><a href="#">Central America <span>(52)</span></a></li>
											<li><a href="#">South America <span>(117)</span></a></li>
											<li><a href="#">Oceania <span>(736)</span></a></li>
										</ul>
									</div>
								</div>
							</div>

							<div class="tab-pane" id="find-job-tabs-industry">
								<div class="row p30">
									<div class="col-sm-6">
										<h6 class="mt0">Administrative and Support Services</h6>

										<ul class="filter-list">
											<li><a href="#">Support Services <span>(34)</span></a></li>
											<li><a href="#">Consulting Services <span>(142)</span></a></li>
											<li><a href="#">Customer Service <span>(67)</span></a></li>
											<li><a href="#">Employment Placement <span>(24)</span></a></li>
											<li><a href="#">Agencies/Recruiting <span>(113)</span></a></li>
											<li><a href="#">Human Resources <span>(27)</span></a></li>
											<li><a href="#">Administration <span>(57)</span></a></li>
											<li><a href="#">Contracts/Purchasing <span>(29)</span></a></li>
											<li><a href="#">Secretarial <span>(22)</span></a></li>
											<li><a href="#">Security <span>(26)</span></a></li>
											<li><a href="#">Telemarketing <span>(4)</span></a></li>
											<li><a href="#">Translation <span>(12)</span></a></li>
											<li><a href="#">Management <span>(70)</span></a></li>
											<li><a href="#">Business Support <span>(29)</span></a></li>
										</ul>

										<h6>Healthcare and Science</h6>

										<ul class="filter-list">
											<li><a href="#">Pharmaceutical <span>(42)</span></a></li>
											<li><a href="#">Manufacturing <span>(149)</span></a></li>
											<li><a href="#">Mechanical <span>(28)</span></a></li>
											<li><a href="#">Technical/Maintenance <span>(40)</span></a></li>
											<li><a href="#">Lubricants/Greases Blending <span>(10)</span></a></li>
											<li><a href="#">Textiles <span>(10)</span></a></li>
											<li><a href="#">Aerospace and Defense <span>(14)</span></a></li>
										</ul>
									</div>

									<div class="col-sm-6">
										<h6 class="mt0">Manufacturing and Industrial</h6>

										<ul class="filter-list">
											<li><a href="#">Agriculture/Forestry/Fishing <span>(42)</span></a></li>
											<li><a href="#">Installation/Maintenance <span>(37)</span></a></li>
											<li><a href="#">Manufacturing and Production <span>(96)</span></a></li>
											<li><a href="#">Mining <span>(9)</span></a></li>
											<li><a href="#">Safety/Environment <span>(21)</span></a></li>
											<li><a href="#">Industrial <span>(184)</span></a></li>
											<li><a href="#">Manufacturing <span>(149)</span></a></li>
											<li><a href="#">Mechanical <span>(28)</span></a></li>
											<li><a href="#">Technical/Maintenance <span>(40)</span></a></li>
											<li><a href="#">Lubricants/Greases Blending <span>(10)</span></a></li>
											<li><a href="#">Textiles <span>(10)</span></a></li>
											<li><a href="#">Aerospace and Defense <span>(14)</span></a></li>
										</ul>

										<h6>Healthcare and Science</h6>

										<ul class="filter-list">
											<li><a href="#">Pharmaceutical <span>(42)</span></a></li>
											<li><a href="#">Manufacturing <span>(149)</span></a></li>
											<li><a href="#">Mechanical <span>(28)</span></a></li>
											<li><a href="#">Technical/Maintenance <span>(40)</span></a></li>
											<li><a href="#">Lubricants/Greases Blending <span>(10)</span></a></li>
											<li><a href="#">Textiles <span>(10)</span></a></li>
											<li><a href="#">Aerospace and Defense <span>(14)</span></a></li>
										</ul>
									</div>
								</div>
							</div>

							<div class="tab-pane" id="find-job-tabs-role">
								<div class="p30">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum, harum, optio, repudiandae voluptatum illum et ipsam quisquam at dolore illo eaque odio inventore quos esse reiciendis laudantium nobis aperiam iure!</p>

									<div class="row">
										<div class="col-sm-6">
											<ul class="filter-list">
												<li><a href="#">Accounting/Banking/Finance Jobs <span>(581)</span></a></li>
												<li><a href="#">Administration Jobs <span>(406)</span></a></li>
												<li><a href="#">Art/Design/Creative Jobs <span>(176)</span></a></li>
												<li><a href="#">Customer Service Jobs <span>(334)</span></a></li>
												<li><a href="#">Education/Training Jobs <span>(180)</span></a></li>
												<li><a href="#">Engineering Jobs <span>(978)</span></a></li>
												<li><a href="#">Healthcare/Medical Jobs <span>(131)</span></a></li>
												<li><a href="#">Human Resources/Personnel Jobs <span>(318)</span></a></li>
												<li><a href="#">Law/Legal Jobs <span>(61)</span></a></li>
												<li><a href="#">Logistics Jobs <span>(144)</span></a></li>
												<li><a href="#">Management Jobs <span>(743)</span></a></li>
												<li><a href="#">Law/Legal Jobs <span>(61)</span></a></li>
												<li><a href="#">Logistics Jobs <span>(144)</span></a></li>
												<li><a href="#">Management Jobs <span>(743)</span></a></li>
											</ul>
										</div>

										<div class="col-sm-6">
											<ul class="filter-list">
												<li><a href="#">Marketing/PR Jobs <span>(329)</span></a></li>
												<li><a href="#">Other Jobs <span>(326)</span></a></li>
												<li><a href="#">Purchasing/Procurement Jobs <span>(130)</span></a></li>
												<li><a href="#">Quality Control Jobs <span>(93)</span></a></li>
												<li><a href="#">Research Jobs <span>(33)</span></a></li>
												<li><a href="#">Safety Jobs <span>(72)</span></a></li>
												<li><a href="#">Sales Jobs <span>(1061)</span></a></li>
												<li><a href="#">Secretarial Jobs <span>(155)</span></a></li>
												<li><a href="#">Support Services Jobs <span>(744)</span></a></li>
												<li><a href="#">Technology/IT Jobs <span>(546)</span></a></li>
												<li><a href="#">Writing/Editing Jobs <span>(19)</span></a></li>
												<li><a href="#">Support Services Jobs <span>(744)</span></a></li>
												<li><a href="#">Technology/IT Jobs <span>(546)</span></a></li>
												<li><a href="#">Writing/Editing Jobs <span>(19)</span></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>

							<div class="tab-pane" id="find-job-tabs-country">
								<div class="row p30">
									<div class="col-sm-6">
										<ul class="country-list">
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Afghanistan.png" />" alt=""> Afghanistan <span>(7)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/African%20Union.png" />" alt=""> African Union <span>(6)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Aland.png" />" alt=""> Aland <span>(2)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Albania.png" />" alt=""> Albania <span>(7)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Alderney.png" />" alt=""> Alderney <span>(3)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Algeria.png" />" alt=""> Algeria <span>(4)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/American%20Samoa.png" />" alt=""> American Samoa <span>(3)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Andorra.png" />" alt=""> Andorra <span>(5)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Angola.png" />" alt=""> Angola <span>(3)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Anguilla.png" />" alt=""> Anguilla <span>(8)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Antarctica.png" />" alt=""> Antarctica <span>(3)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Antigua%20Barbuda.png" />" alt=""> Antigua &amp; Barbuda <span>(6)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Arab%20League.png" />" alt=""> Arab League <span>(3)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Argentina.png" />" alt=""> Argentina <span>(2)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Armenia.png" />" alt=""> Armenia <span>(3)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Aruba.png" />" alt=""> Aruba <span>(8)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/ASEAN.png" />" alt=""> ASEAN <span>(3)</span></a></li>
										</ul>
									</div>

									<div class="col-sm-6">
										<ul class="country-list">
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Kenya.png" />" alt=""> Kenya <span>(3)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Kiribati.png" />" alt=""> Kiribati <span>(4)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Kosovo.png" />" alt=""> Kosovo <span>(2)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Kuwait.png" />" alt=""> Kuwait <span>(6)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Kyrgyzstan.png" />" alt=""> Kyrgyzstan <span>(1)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Laos.png" />" alt=""> Laos <span>(3)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Latvia.png" />" alt=""> Latvia <span>(4)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Lebanon.png" />" alt=""> Lebanon <span>(2)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Lesotho.png" />" alt=""> Lesotho <span>(5)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Liberia.png" />" alt=""> Liberia <span>(7)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Libya.png" />" alt=""> Libya <span>(1)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Liechtenstein.png" />" alt=""> Liechtenstein <span>(6)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Lithuania.png" />" alt=""> Lithuania <span>(2)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Luxembourg.png" />" alt=""> Luxembourg <span>(8)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Macao.png" />" alt=""> Macao <span>(5)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Macedonia.png" />" alt=""> Macedonia <span>(2)</span></a></li>
											<li><a href="#"><img src="<spring:url value="/resources/img/flag-icons/Madagascar.png" />" alt=""> Madagascar <span>(1)</span></a></li>
										</ul>
									</div>
								</div>
                  			</div>
						</div>
					</div> <!-- end .find-job-tabs -->

					<div class="title-lines">
						<h3>Latest Jobs</h3>
					</div>

					<div class="latest-jobs-section white-container">
						<div class="flexslider clearfix">
							<ul class="slides">
								<li>
									<div class="image">
										<img src="<spring:url value="/resources/img/content/face-0.png" />" alt="">
										<a href="#" class="btn btn-default fa fa-search"></a>
										<a href="#" class="btn btn-default fa fa-link"></a>
									</div>

									<div class="content">
										<h6>Front-End Developer at Envato</h6>
										<span class="location">Sydney, Australia</span>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum, hic corrupti nobis consequuntur nam praesentium dolorem quo accusamus laborum ab. <a href="#" class="read-more">Read More</a></p>
									</div>
								</li>

								<li>
									<div class="image">
										<img src="<spring:url value="/resources/img/content/face-2.png" />" alt="">
										<a href="#" class="btn btn-default fa fa-search"></a>
										<a href="#" class="btn btn-default fa fa-link"></a>
									</div>

									<div class="content">
										<h6>Front-End Developer at Envato</h6>
										<span class="location">Sydney, Australia</span>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum, hic corrupti nobis consequuntur nam praesentium dolorem quo accusamus laborum ab. <a href="#" class="read-more">Read More</a></p>
									</div>
								</li>

								<li>
									<div class="image">
										<img src="<spring:url value="/resources/img/content/face-4.png" />" alt="">
										<a href="#" class="btn btn-default fa fa-search"></a>
										<a href="#" class="btn btn-default fa fa-link"></a>
									</div>

									<div class="content">
										<h6>Front-End Developer at Envato</h6>
										<span class="location">Sydney, Australia</span>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum, hic corrupti nobis consequuntur nam praesentium dolorem quo accusamus laborum ab. <a href="#" class="read-more">Read More</a></p>
									</div>
								</li>

								<li>
									<div class="image">
										<img src="<spring:url value="/resources/img/content/face-6.png" />" alt="">
										<a href="#" class="btn btn-default fa fa-search"></a>
										<a href="#" class="btn btn-default fa fa-link"></a>
									</div>

									<div class="content">
										<h6>Front-End Developer at Envato</h6>
										<span class="location">Sydney, Australia</span>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum, hic corrupti nobis consequuntur nam praesentium dolorem quo accusamus laborum ab. <a href="#" class="read-more">Read More</a></p>
									</div>
								</li>
							</ul>
						</div>
					</div> <!-- end .latest-jobs-section -->

					<div class="title-lines">
						<h3>Our Partners</h3>
					</div>

					<div class="our-partners-section white-container">
						<ul class="clearfix">
							<li>
								<div class="css-table">
									<div class="css-table-cell">
										<a href="#"><img src="<spring:url value="/resources/img/content/logo-1.png" />" alt=""></a>
									</div>
								</div>
							</li>

							<li>
								<div class="css-table">
									<div class="css-table-cell">
										<a href="#"><img src="<spring:url value="/resources/img/content/logo-2.png" />" alt=""></a>
									</div>
								</div>
							</li>

							<li>
								<div class="css-table">
									<div class="css-table-cell">
										<a href="#"><img src="<spring:url value="/resources/img/content/logo-3.png" />" alt=""></a>
									</div>
								</div>
							</li>

							<li>
								<div class="css-table">
									<div class="css-table-cell">
										<a href="#"><img src="<spring:url value="/resources/img/content/logo-2.png" />" alt=""></a>
									</div>
								</div>
							</li>

							<li>
								<div class="css-table">
									<div class="css-table-cell">
										<a href="#"><img src="<spring:url value="/resources/img/content/logo-3.png" />" alt=""></a>
									</div>
								</div>
							</li>

							<li>
								<div class="css-table">
									<div class="css-table-cell">
										<a href="#"><img src="<spring:url value="/resources/img/content/logo-1.png" />" alt=""></a>
									</div>
								</div>
							</li>
						</ul>
					</div> <!-- end .our-partners-section -->

					<div class="title-lines">
						<h3>Our Prices</h3>
					</div>

					<div class="pricing-tables tables-3">
						<div class="pricing-tables-column">
							<div class="white-container">
								<h5 class="title">Bronze</h5>

								<span class="price">$ 15</span>

								<ul class="features">
									<li>1 Job Ad</li>
									<li>30 Days</li>
									<li>Standard Positioning</li>
									<li>1 Lorem Ipsum</li>
								</ul>

								<a href="#" class="btn btn-default">Choose</a>
							</div>
						</div>

						<div class="pricing-tables-column">
							<div class="white-container">
								<h5 class="title">Silver</h5>

								<span class="price">$ 49</span>

								<ul class="features">
									<li>5 Job Ad</li>
									<li>45 Days</li>
									<li>Extended Positioning</li>
									<li>5 Lorem Ipsum</li>
								</ul>

								<a href="#" class="btn btn-default">Choose</a>
							</div>
						</div>

						<div class="pricing-tables-column">
							<div class="white-container">
								<h5 class="title">Gold</h5>

								<span class="price">$ 99</span>

								<ul class="features">
									<li>10 Job Ad</li>
									<li>60 Days</li>
									<li>Extra Positioning</li>
									<li>5 Lorem Ipsum</li>
								</ul>

								<a href="#" class="btn btn-default">Choose</a>
							</div>
						</div>
					</div> <!-- end .pricing-tables -->
				</div> <!-- end .page-content -->

				<div class="col-sm-4 page-sidebar">
					<aside>
						<div class="widget sidebar-widget white-container social-widget">
							<h5 class="widget-title">Share Us</h5>

							<div class="widget-content">
								<div class="row row-p5">
									<div class="col-xs-6 col-md-3 share-box facebook">
										<div class="count">86</div>
										<a href="#">Facebook</a>
									</div>

									<div class="col-xs-6 col-md-3 share-box twitter">
										<div class="count">2.2k</div>
										<a href="#">Twitter</a>
									</div>

									<div class="col-xs-6 col-md-3 share-box google">
										<div class="count">324</div>
										<a href="#">Google +</a>
									</div>

									<div class="col-xs-6 col-md-3 share-box linkedin">
										<div class="count">1.5k</div>
										<a href="#">LinkedIn</a>
									</div>
								</div>
							</div>
						</div>

						<div class="widget sidebar-widget text-center">
							<a href="#"><img src="<spring:url value="/resources/img/content/sidebar-ad.png" />" alt=""></a>
						</div>

						<div class="white-container">
							<div class="widget sidebar-widget">
								<h5 class="widget-title">5 Tips To Pass Your Interview!</h5>

								<div class="widget-content">
									<div class="fitvidsjs">
										<iframe src="" frameborder="0" allowfullscreen></iframe>
									</div>
								</div>
							</div>

							<div class="widget sidebar-widget">
								<h5 class="widget-title">The Poll</h5>

								<div class="widget-content">
									<p>Are you satisfied with your current employer?</p>
									<div class="radio">
										<label>
											<input type="radio" name="sidebarpoll" value="" checked>
											Definitely Yes
										</label>
									</div>

									<div class="radio">
										<label>
											<input type="radio" name="sidebarpoll" value="">
											Rather Yes
										</label>
									</div>

									<div class="radio">
										<label>
											<input type="radio" name="sidebarpoll" value="">
											I'm not sure
										</label>
									</div>

									<div class="radio">
										<label>
											<input type="radio" name="sidebarpoll" value="">
											Rather Not
										</label>
									</div>

									<div class="radio">
										<label>
											<input type="radio" name="sidebarpoll" value="">
											Not at all
										</label>
									</div>
								</div>
							</div>
						</div>
					</aside>
				</div> <!-- end .page-sidebar -->
			</div>
		</div> <!-- end .container -->

		<div class="success-stories-section">
			<div class="container">
				<h5 class="mt10">Success Stories</h5>

				<div>
					<div class="flexslider">
						<ul class="slides">
							<li>
								<a href="#">
									<img class="thumb" src="<spring:url value="/resources/img/content/face-0.png" />" alt="">
								</a>
							</li>

							<li>
								<a href="#">
									<img class="thumb" src="<spring:url value="/resources/img/content/face-1.png" />" alt="">
								</a>
							</li>

							<li>
								<a href="#">
									<img class="thumb" src="<spring:url value="/resources/img/content/face-2.png" />" alt="">
								</a>
							</li>

							<li>
								<a href="#">
									<img class="thumb" src="<spring:url value="/resources/img/content/face-3.png" />" alt="">
								</a>
							</li>

							<li>
								<a href="#">
									<img class="thumb" src="<spring:url value="/resources/img/content/face-4.png" />" alt="">
								</a>
							</li>

							<li>
								<a href="#">
									<img class="thumb" src="<spring:url value="/resources/img/content/face-5.png" />" alt="">
								</a>
							</li>

							<li>
								<a href="#">
									<img class="thumb" src="<spring:url value="/resources/img/content/face-6.png" />" alt="">
								</a>
							</li>

							<li>
								<a href="#">
									<img class="thumb" src="<spring:url value="/resources/img/content/face-7.png" />" alt="">
								</a>
							</li>

							<li>
								<a href="#">
									<img class="thumb" src="<spring:url value="/resources/img/content/face-8.png" />" alt="">
								</a>
							</li>

							<li>
								<a href="#">
									<img class="thumb" src="<spring:url value="/resources/img/content/face-9.png" />" alt="">
								</a>
							</li>

							<li>
								<a href="#">
									<img class="thumb" src="<spring:url value="/resources/img/content/face-3.png" />" alt="">
								</a>
							</li>

							<li>
								<a href="#">
									<img class="thumb" src="<spring:url value="/resources/img/content/face-4.png" />" alt="">
								</a>
							</li>

							<li>
								<a href="#">
									<img class="thumb" src="<spring:url value="/resources/img/content/face-5.png" />" alt="">
								</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div> <!-- end #page-content -->

	<footer id="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-md-4">
					<div class="widget">
						<div class="widget-content">
							<img class="logo" src="<spring:url value="/resources/img/header-logo.png" />" alt="">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. In, sunt illum dolore dolor vel perferendis nisi sequi laudantium porro blanditiis!</p>
						</div>
					</div>
				</div>

				<div class="col-sm-3 col-md-4">
					<div class="widget">
						<h6 class="widget-title">Navigation</h6>

						<div class="widget-content">
							<div class="row">
								<div class="col-xs-6 col-sm-12 col-md-6">
									<ul class="footer-links">
										<li><a href="#">Home</a></li>
										<li><a href="#">Jobs</a></li>
										<li><a href="#">Candidates</a></li>
										<li><a href="#">Partners</a></li>
									</ul>
								</div>

								<div class="col-xs-6 col-sm-12 col-md-6">
									<ul class="footer-links">
										<li><a href="#">About Us</a></li>
										<li><a href="#">Contact Us</a></li>
										<li><a href="#">Terms &amp; Conditions</a></li>
										<li><a href="#">Privacy Policy</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-sm-3 col-md-2">
					<div class="widget">
						<h6 class="widget-title">Follow Us</h6>

						<div class="widget-content">
							<ul class="footer-links">
								<li><a href="#">Blog</a></li>
								<li><a href="#">Twitter</a></li>
								<li><a href="#">Facebook</a></li>
								<li><a href="#">Youtube</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="col-sm-3 col-md-2">
					<div class="widget">
						<h6 class="widget-title">Popular Jobs</h6>

						<div class="widget-content">
							<ul class="footer-links">
								<li><a href="#">Web Developer</a></li>
								<li><a href="#">Web Designer</a></li>
								<li><a href="#">UX Engineer</a></li>
								<li><a href="#">Account Manager</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="copyright">
			<div class="container">
				<p>&copy; Copyright 2014 <a href="#">Careers</a> | All Rights Reserved | Powered by <a href="#">UOU Apps</a></p>

				<ul class="footer-social">
					<li><a href="#" class="fa fa-facebook"></a></li>
					<li><a href="#" class="fa fa-twitter"></a></li>
					<li><a href="#" class="fa fa-linkedin"></a></li>
					<li><a href="#" class="fa fa-google-plus"></a></li>
					<li><a href="#" class="fa fa-pinterest"></a></li>
					<li><a href="#" class="fa fa-dribbble"></a></li>
				</ul>
			</div>
		</div>
	</footer> <!-- end #footer -->

</div> <!-- end #main-wrapper -->

<!-- Scripts -->
<script src="<spring:url value="/resources/js/jquery-1.11.0.min.js"/>"></script>
<script src="http://maps.google.com/maps/api/js?sensor=false&amp;libraries=geometry&amp;v=3.7"></script>
<script src="<spring:url value="/resources/js/maplace.min.js" />"></script>
<script src="<spring:url value="/resources/js/jquery.ba-outside-events.min.js"/>"></script>
<script src="<spring:url value="/resources/js/jquery.responsive-tabs.js"/>"></script>
<script src="<spring:url value="/resources/js/jquery.flexslider-min.js"/>"></script>
<script src="<spring:url value="/resources/js/jquery.fitvids.js"/>"></script>
<script src="<spring:url value="/resources/js/jquery-ui-1.10.4.custom.min.js"/>"></script>
<script src="<spring:url value="/resources/js/jquery.inview.min.js"/>"></script>
<script src="<spring:url value="/resources/js/script.js"/>"></script>
<script src="<spring:url value="/resources/js/my_script.js"/>"></script>

</body>

<!-- Mirrored from 188.226.173.21/html/careers/ by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 08 Sep 2015 12:54:30 GMT -->
</html>