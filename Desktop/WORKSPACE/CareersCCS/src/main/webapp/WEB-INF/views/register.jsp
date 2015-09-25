<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html lang="en">

<!-- Mirrored from 188.226.173.21/html/careers/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 08 Sep 2015 12:58:06 GMT -->
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<title>Sign Up - Careers</title>
	
	<spring:url value="/resources/" var="myroot" />

	<!-- Stylesheets -->
	<link href='http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic|Roboto+Condensed:400,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="${myroot}css/bootstrap.css">
	<link rel="stylesheet" href="${myroot}css/font-awesome.min.css">
	<link rel="stylesheet" href="${myroot}css/flexslider.css">
	<link rel="stylesheet" href="${myroot}css/style.css">
	<link rel="stylesheet" href="${myroot}css/responsive.css">

	<!--[if IE 9]>
		<script src="js/media.match.min.js"></script>
	<![endif]-->
</head>

<body>
<div id="main-wrapper">

	<header id="header" class="header-style-1"> <!-- end .header-top-bar --> <!-- end .header-nav-bar -->

		<div class="header-page-title">
			<div class="container">
				<h1>Sign Up</h1>

				<ul class="breadcrumbs">
					<li><a href="#">Home</a></li>
					<li><a href="#">Sign Up</a></li>
				</ul>
			</div>
		</div>
	</header> <!-- end #header -->

	<div id="page-content">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 page-content">
					<ul class="form-steps four clearfix">
						<li class="completed">Step 1</li>
						<li class="active">Step 2</li>
						<li>Step 3</li>
						<li>Step 4</li>
					</ul>
					<spring:url value="/register/candidate/step2" var="registerStep2" />
					<form:form class="white-container sign-up-form" action="${registerStep2}" modelAttribute="candidate" method="POST">
						<div>
							<h2>1. Fill in your profile</h2>

							<section>
								<h6 class="bottom-line">You are:</h6>
								<select class="form-control">
								  <option>Student</option>
								  <option>Professional</option>
								</select>
							</section>

							<section>
								<h6 class="bottom-line">Personal Info:</h6>

								<h6 class="label">Name</h6>

								<div class="row">
									<div class="col-sm-4">
										<form:input path="first_name" type="text" class="form-control" placeholder="Name" />
									</div>

									<div class="col-sm-4">
										<form:input path="last_name" type="text" class="form-control" placeholder="Surname" />
									</div>
								</div>

								<h6 class="label">Date of Birth</h6>

								<div class="row">
									<div class="col-sm-12">
										<input type="text" class="month-input" placeholder="MM">
										<input type="text" class="day-input" placeholder="DD">
										<input type="text" class="year-input" placeholder="YYYY">
									</div>
								</div>

								<h6 class="label">Phone</h6>

								<div class="row">
									<div class="col-sm-4">
										<input type="text" class="form-control" placeholder="Mobile">
									</div>

									<div class="col-sm-4">
										<input type="text" class="form-control" placeholder="Work">
									</div>

									<div class="col-sm-4">
										<input type="text" class="form-control" placeholder="Fax">
									</div>
								</div>

								<h6 class="label">Address</h6>

								<div class="row">
									<div class="col-sm-6">
										<input type="text" class="form-control" placeholder="Address 1">
									</div>

									<div class="col-sm-6">
										<input type="text" class="form-control" placeholder="Address 2">
									</div>
								</div>

								<div class="row">
									<div class="col-sm-3">
										<select>
											<option value="">Country</option>
											<option value="">1</option>
											<option value="">2</option>
											<option value="">3</option>
											<option value="">4</option>
											<option value="">5</option>
										</select>
									</div>

									<div class="col-sm-3">
										<select>
											<option value="">State/Province</option>
											<option value="">1</option>
											<option value="">2</option>
											<option value="">3</option>
											<option value="">4</option>
											<option value="">5</option>
										</select>
									</div>

									<div class="col-sm-3">
										<input type="text" class="form-control" placeholder="City">
									</div>

									<div class="col-sm-3">
										<input type="text" class="form-control" placeholder="ZIP Code">
									</div>
								</div>
							</section>

							<section>
								<h6 class="bottom-line">Expected Salary:</h6>

								<div class="row">
									<div class="col-sm-12">
										<div class="range-slider clearfix">
											<div class="slider" data-min="100" data-max="100000" data-current-min="500" data-current-max="50000"></div>
											<div class="first-value">$ <span>500</span></div>
											<div class="last-value">$ <span>50000</span></div>
										</div>
									</div>
								</div>
							</section>

							<section>
								<h6 class="bottom-line">Set Password:</h6>

								<div class="row">
									<div class="col-sm-4">
										<input type="password" class="form-control" placeholder="Password">
									</div>

									<div class="col-sm-4">
										<input type="password" class="form-control" placeholder="Repeat Password">
									</div>
								</div>
							</section>
						</div>

						<hr class="mt60">

						<div class="clearfix">
							<a href="#" class="btn btn-default btn-large pull-right">Continue to Step 2</a>
						</div>
					</form:form>
				</div> <!-- end .page-content -->
			</div>
		</div> <!-- end .container -->
	</div> <!-- end #page-content -->

	<footer id="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-3 col-md-4">
					<div class="widget">
						<div class="widget-content">
							<img class="logo" src="${myroot}img/header-logo.png" alt="">
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
<script>window.jQuery || document.write('<script src="${myroot}js/jquery-1.11.0.min.js"><\/script>')</script>
<script src="http://maps.google.com/maps/api/js?sensor=false&amp;libraries=geometry&amp;v=3.7"></script>
<script src="${myroot}js/maplace.min.js"></script>
<script src="${myroot}js/jquery.ba-outside-events.min.js"></script>
<script src="${myroot}js/jquery.responsive-tabs.js"></script>
<script src="${myroot}js/jquery.flexslider-min.js"></script>
<script src="${myroot}js/jquery.fitvids.js"></script>
<script src="${myroot}js/jquery-ui-1.10.4.custom.min.js"></script>
<script src="${myroot}js/jquery.inview.min.js"></script>
<script src="${myroot}js/script.js"></script>
<script src="${myroot}js/bootstrap.min.js"></script>
</body>

<!-- Mirrored from 188.226.173.21/html/careers/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 08 Sep 2015 12:58:06 GMT -->
</html>