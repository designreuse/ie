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
<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Welcome Tour</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
</head>

<body>
	<div class="wrapper">
		<header id="header">
			<div class="container "> 
				<div class="logo">
					<img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Logo" title="logo" />
				</div>
				
			</div>
		</header>
<%-- 		<section class="slider-inner">
			<img src="<%=request.getContextPath()%>/NewStyles/images/slider1.jpg" alt="Slider" />
		</section> --%>

		<section class="tehDsh-step1 mtop-5">
			<div class="containerSmall">
 				<h2>Welcome Tour</h2>
				<div class="green_line_btm"></div>
<%--				<h3>Path to First Track</h3>
				<div class="steplist">
					<img src="<%=request.getContextPath()%>/NewStyles/images/teacher-step1.png" alt="Steps" />
				</div> --%>
				<div class="clr"></div>
				<div class="techVideoSct techVideoSctCenter">
				 <iframe width="80%" height="340" src="https://www.youtube.com/embed/MMpHsUEo9Dc?enablejsapi=1&playerapiid=myvideo&version=3&rel=0" frameborder="0" allowfullscreen></iframe>
					<%-- <video width="400" controls>
					  <source src="<%=request.getContextPath()%>/NewStyles/images/movie.mp4" type="video/mp4">
					  <source src="<%=request.getContextPath()%>/NewStyles/images/movie.mp4" type="video/ogg">
					  Your browser does not support HTML5 video.
					</video> --%>
				</div>
				<div class="videobtn">
					<input type="button" value="Start"  class="blueBtn" onclick="location.href = '<%=request.getContextPath()%>/principal/dashboard';" />
				</div>
			</div>
		</section>
	</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %> 
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
   <script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
	});
	</script>
	
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>

   <script type="text/javascript">
    $(function(){
      SyntaxHighlighter.all();
    });
	
	$("#flexiselDemo3").flexisel({
        visibleItems: 5,
        animationSpeed: 1000,
        autoPlay: true,
        autoPlaySpeed: 3000,            
        pauseOnHover: true,
        enableResponsiveBreakpoints: true,
        responsiveBreakpoints: { 
            portrait: { 
                changePoint:480,
                visibleItems: 1
            }, 
            landscape: { 
                changePoint:640,
                visibleItems: 2
            },
            tablet: { 
                changePoint:768,
                visibleItems: 3
            }
        }
    });
    $(window).load(function(){
		
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
	  
	  
	  
});
	
</script>

</body>
</html>
