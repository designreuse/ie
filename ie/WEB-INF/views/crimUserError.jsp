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
<style>
.startBtn {
    background: rgba(0, 71, 127, 0.7) !important;
    border-radius: 25px !important;
    cursor: pointer !important;
    padding: 7px 18px !important;
    border: none !important;
    text-transform: uppercase !important;
    color: #fff !important;
    font-size: 14px !important;
    font-weight: 400 !important;
    float: right !important;
    margin: 5px 0 0 0 !important;
    line-height: 20px !important;
}
.crimheader.active-livingheader {
    background: rgba(0, 71, 127, 0.7) !important;
    width: 100% !important;
    float: left !important;
}
.crimheader {
    background: rgba(0, 71, 127, 0.7) !important;
   
    top: 0px !important;
    left: 0px !important;
    width: 100% !important;
    border-bottom: none !important;
    z-index: 99 !important;
}
.crimLogout{
background: #fff !important;
color:rgba(0, 71, 127, 0.7) !important;
}
.crimwrapper {
    width: 1024px !important;
    margin: 0 auto !important;
}
.blue_line_btm {
    background: url("/ie/NewStyles/images/blue-line.png") no-repeat center center;
    width: 100%;
    text-align: center;
    height: 30px;
    margin-bottom: 25px;
}
</style>
<body>

<div class="wrapper">
		 
	<header class="crimheader active-livingheader">
		<div class="crimwrapper">
			<section>
				<a href="http://crim.org" class="col-md-3"><img
					src="http://crim.org/wp-content/themes/crime/images/logo.png" /></a>
					</section>
					
			<div class="col-md-3" style="float: right; padding-bottom: 10px;">
				
				<input type="button" value="Login"
					onClick="location.href='/ie/crimLogin';"
					class="startBtn crimLogout" />
			</div>
		</div>
	</header>
		<section class="getStartSct mtop-5">
			<div class="steps_getstarted">
				<div class="containerSmall">
					<div class="pracProgress_hdr">
						<h2>Thank You for coming to Crim</h2>
						<div class="blue_line_btm"></div>
					</div>
					<div class="thankyou_content">
						<p>Your login credentials are incorrect.<br> 
						Please contact your administrator.</p>
					</div>
				</div>
			</div>
			

		</section>
	</div>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
<%@include file="footer.jsp"%>
</body>
</html>