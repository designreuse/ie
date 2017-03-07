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
<title>Parent Sign On</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>

<body>
<div class="wrapper">
    <%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper">
     
     <!--about_us starts-->
     <div class="sign-on-parent">
     <div class="content_inner">
     <div class="signon_title_hdr">
     <h2>Parent Sign On</h2>
     <div class="white_line_btm"></div>
     </div>
     <div class="signon-head">
     	<h3>Bringing peace to the world through mindful awareness one classroom at a time</h3>
     </div>
     <div class="signon-form">
     	<div class="signon-main">
        	<div class="signon-down">
            	<ul>
                	<li>
                    	<a href="javascript:;">Exploring Me™ <br>Pre-k–Kindergarten</a>
                    </li>
                    <li>
                    	<a href="javascript:;">Exploring Originality™<br>Elementary School</a>
                    </li>
                    <li>
                    	<a href="javascript:;">Exploring Potential™<br>Middle School</a>
                    </li>
                    <li>
                    	<a href="javascript:;">Exploring Relevance™<br>High School</a>
                    </li>
                </ul>
            </div>
        	<div class="signon-up">
            	<div class="sign-on-1"><label>Experience Inner Explorer for 45 days. <a href="javascript:;" data-toggle="tooltip" title="Fill out a simple form to start Inner Explorer today. No Payment needed to experience it for 15 days."><img src="<%=request.getContextPath()%>/NewStyles/images/qus.png"></a><br>No Credit Card</label></div>
                <div class="sign-on-2"><div class="outer-field-signon">
					<input type="text" placeholder="Email Address">
				</div></div>
                <div class="sign-on-3"><input class="submit-btn btn-right" type="submit" value="LAUNCH PROGRAM"></div>
            </div>
            
        </div>
     </div>
     </div>
     </div>
     <!--about_us ends-->
     
    </div>
    <!--inner_wrapper ends-->
</div>
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
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrapcdn.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$('[data-toggle="tooltip"]').tooltip();
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
 