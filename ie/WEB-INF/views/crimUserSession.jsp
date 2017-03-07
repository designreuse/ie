<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%          response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server

            response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance

            response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
            response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility 
 %>
<spring:eval expression="@propertyConfigurer.getProperty('service.url')" var="baseURL" />
<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Inner Explorer</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/jquery-anyslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</head>
<body>
	<div class="wrapper">
		<%@include file="header.jsp" %>
		<section class="getStartSct mtop-5">
			<div class="steps_getstarted">
				<div class="containerSmall">
					<div class="pracProgress_hdr">
						<h2>Welcome to Inner Explorer</h2>
						<div class="green_line_btm"></div>
					</div>
					<div class="thankyou_content">
						<p>Inner Explorer would like to thank you.<br> 
						You may start your practice now.</p>
					</div>
				</div>
			</div>
			<form action="crimTeacherLogin" name="crimUserForm" id="crimUserForm" method="post">
				<input type="hidden" id="email" name="email" value="${param.email}">
				<div>
					<div class="videobtn ">
						<input type="submit" class="blueBtn" value="Go To Dashboard"
							title="Go To Dashboard">
					</div>
				</div>
			</form>

		</section>
	</div>
<script type="text/javascript">
		$(document).ready(function() {
			var email = "email";

		});
	</script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>

<%@include file="footer.jsp"%>
</body>
</html>