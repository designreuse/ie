<%@ taglib prefix="c" 			uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" 		uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" 			uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" 			uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" 			uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring"      uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%          response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server

            response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance

            response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
            response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility 
 %>
<jsp:useBean id="now" class="java.util.Date" />
<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Payment Not Confirmed</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
</head>

<body>
<!-- <div class="wrapper"> -->
<div class="wrapper">
   <header id="header">
			<div class="container "> 
				<div class="logo">
					<a href="#" title="">
<%-- 					<img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Logo" title="logo" /> --%>
					</a>
				</div>
				<div class="hdRight">
	                <div class="startRight">
	                	<p>Welcome, ${loginName}</p>
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout';" class="startBtn hdr-btn-clr"/>
					</div>
            	</div>
			</div>
		</header>
    
    
    
    
    
    <section class="tehDsh-step1">
			<div class="containerSmall">
			<div class="pracProgress_hdr">
				<h2>Payment Not Confirmed</h2>
				<div class="green_line_btm"></div>
				</div>

				<div class="payment-txt" align="center">
				<!-- Your payment is not confirmed yet, once payment is confirmed you are able to access your dashboard. -->
				We are confirming the payment. Please login post 24 hours to begin practicing.<br>
				For any inconvenience, Please contact to the Inner Explorer Team on <a href="mailto:admin@innerexplorer.org">admin@innerexplorer.org</a>
				</div>
				
				<div class="clr"></div>
				
				
				
			</div>
		</section>
</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
		<footer>
		<div class="container">
			<div class="footerLeft">
				<p>Copyright © 2015 Inner Explorer</p>
			</div>
			<div class="footerRight">
				<ul>
					<li><a href="javascript:;">Privacy Policy</a></li>
					<li><a href="javascript:;">Terms & Conditions</a></li>
				</ul>
			</div>
		</div>
	</footer>

<!--tab end -->
<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$("#header").sticky({ topSpacing: 0 });
	});
	</script>
</body>
</html>

