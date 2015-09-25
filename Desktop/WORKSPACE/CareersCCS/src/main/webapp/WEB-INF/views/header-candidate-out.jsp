<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
