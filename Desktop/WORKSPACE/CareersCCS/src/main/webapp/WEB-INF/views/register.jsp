<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<title>Sign Up - CSS Careers</title>
	
	<spring:url value="/resources/" var="myroot" />

	<!-- Stylesheets -->
	<link href='http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic|Roboto+Condensed:400,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="${myroot}css/chosen.min.css">
	<link rel="stylesheet" href="${myroot}css/bootstrap.css">
	<link rel="stylesheet" href="${myroot}css/font-awesome.min.css">
	<link rel="stylesheet" href="${myroot}css/flexslider.css">
	<link rel="stylesheet" href="${myroot}css/style.css">
	<link rel="stylesheet" href="${myroot}css/responsive.css">
	<link rel="stylesheet" href="${myroot}css/my_style.css">

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
							<h2 class = "bottom-line">2. Fill in your profile</h2>
							<section>
							<h6 class="bottom-line">PERSONAL INFO:</h6>
								
								<h6 class="form-label">Specialization</h6>
								<select class="form-control">
									  <option>Student</option>
									  <option>Professional</option>
								</select>
								<h6 class="form-label">Birthday</h6>
								<div class="row">
									<div class="col-sm-12">
										<input type="text" class="month-input" placeholder="MM">
										<input type="text" class="day-input" placeholder="DD">
										<input type="text" class="year-input" placeholder="YYYY">
									</div>
								</div>
								<h6 class="form-label">Contact Number</h6>
								<div class="row">
									<div class="col-sm-4">
										<input type="text" class="form-control" placeholder="Mobile">
									</div>
								</div>
								<h6 class="form-label">Address</h6>
								<div class="row">
									<div class="col-sm-6">
										<input type="text" class="form-control" placeholder="Address 1">
									</div>

									<div class="col-sm-6">
										<input type="text" class="form-control" placeholder="Address 2">
									</div>
								</div>
								<h6 class="form-label">Resume</h6>
								<div id="resume">
								  <input type="checkbox" id="upload-resume"><label for="check1">&nbsp;Upload Resume</label>
								  <input type="checkbox" id="create-resume "><label for="check2">&nbsp;Create Resume</label>
								</div>
								
								<h6 class="form-label">Describe Yourself</h6>
								<div class="form-group">
								  <textarea class="form-control" rows="5" id="comment"></textarea>
								</div>
							</section>
							<section>
								<h6 class="bottom-line">Expected Salary:</h6>
								<h6 class="form-label"></h6>
								<div class="row">
									<div class="col-sm-12">
										<div class="range-slider clearfix">
											<div class="slider" data-min="100" data-max="100000" data-current-min="500" data-current-max="50000"></div>
											<div class="first-value">PHP <span>500</span></div>
											<div class="last-value">PHP <span>50000</span></div>
										</div>
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
							<img class="logo" src="${myroot}img/ccs-logo.png" alt="">
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
				<p>&copy; Copyright 2015 <a href="#">Careers CCS</a> | All Rights Reserved | Powered by <a href="#">PDK</a></p>

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
<script src="${myroot}js/chosen.jquery.min.js"></script>
<script src="${myroot}js/script.js"></script>
<script src="${myroot}js/my_script.js"></script>
<script src="${myroot}js/bootstrap.min.js"></script>
</body>
</html>