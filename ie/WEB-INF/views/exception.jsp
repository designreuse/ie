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
 <spring:eval expression="@propertyConfigurer.getProperty('service.url')" var="baseURL" />
<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Oops! Something went wrong</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</head>

<body>
	<div class="wrapper">
	  <header id="header">
    <div class="container ">
        <div class="logo"> <a href="http://innerexplorer.org" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Inner Explorer" title="Inner Explorer" /></a> </div>
        <div class="hdRight">
           
           <a href="http://innerexplorer.org" title="Home">
            <div class="searchBox">
			<input type="button" class="home_icon">
		  </div>
           </a>
           
            <div class="searchBox">
			<input type="button" id="login" title="Search" class="search_icon login">
			<div class="login_panel">
			  <form id="searchForm" role="search" action="<%=request.getContextPath()%>/searchUser" method="get">
				<input type="button" class="searchbar_btn">
				<input type="text" name="s" class="searchbar" placeholder="Search ...">
			  </form>
			</div>
		  </div>
           
            <div class="startRight b4-login-mrgn"> <a href="<%=request.getContextPath()%>/j_spring_security_logout">
                <input type="button" title="Login" class="startBtn" value="Logout">
                </a> </div>
        </div>
    </div>
</header>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-73908394-1', 'auto');
  ga('send', 'pageview');

</script>
	  <!--<section class="slider-inner">
			<img src="images/browse-donation-header.jpg" alt="Slider" />
		</section>-->

		<section class="pagefndSct mtop-5">
			<div class="containerSmall">
					<h2>404</h2>
					<h4>Sorry but the page you are looking for cannot be found</h4>
					<p>It may have been deleted or moved. You can try to search again or go back to <a href="<%=request.getContextPath()%>/j_spring_security_logout" title="">Home.</a></p>
        
			</div>
		</section>
	</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="footer.jsp" %>
    <script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$("#login").click(function(e) {
	          $(".login_panel").toggle();
	          e.stopPropagation();
	      });
		/* $.daisyNav(); */
	});
	</script>

</body>
</html>
