<%-- 
  - Author(s): Platform Z
  - Date: 09/19/2016
  - Copyright Notice: Platform Z
  - @(#)
  - Description: This is for Login as role based (Teacher,Super Hero,Parent,Principal)
  --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
	response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
	response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>Login</title>
<link rel="icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/the-styles.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/NewStyles/css/inner-pages-style.css"
	rel="stylesheet">
</head>

<body class="img_full_get_started">
	<nav class="navbar navbar-default navbar-fixed-top navbar-transparent">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand ie-logo" href="#"><img
					src="<%=request.getContextPath()%>/NewStyles/images/ie-logo.png"></a>
			</div>
		</div>
	</nav>

	<section class="center_section_getstarted">
		<div class="container-fluid">
		<%-- <form:form  action="teacherSignUp" id ="teacher-register"
							method="post" novalidate="novalidate"> --%>
			<div cass="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="col-md-12 pull-left text-center">
						<h1 class="welcome_txt">Welcome to the Inner Explorer family</h1>
						<p class="welcome_p">Let us take you to a journey of
							mindfulness</p>
						<div class="clear50"></div>
						<div class="get_started_round">
							<button class="btn btn-default orange-circle-button" onclick="getStarted();">
								GET<br />STARTED
							</button>
						</div>
					</div>
				</div>
			</div>
			<%-- </form:form> --%>
		</div>
	</section>

	<nav
		class="navbar navbar-inverse navbar-fixed-bottom navbar-transparent"
		role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav footer_nav_nw">
					<li><a href="#!">About us</a></li>
					<li><a href="#!">Our Mission</a></li>
					<li><a href="#!">Help</a></li>
					<li><a href="#!">Contact Us</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
<script type="text/javascript"> 
function getStarted(){
	window.location.href="<%=request.getContextPath()%>/teacher/completeProfile";
}
</script>
</body>
</html>
