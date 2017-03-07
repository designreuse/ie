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
<title>Inner Explorer </title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
</head>

<body>
<div class="wrapper">
    <%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper">
    
    <!--inner_header starts-->
    <div class="inner_header">
     <img src="<%=request.getContextPath()%>/NewStyles/images/about-us-header.jpg"  alt=""/> 
     </div>
     
     <!--about_us starts-->
     <div class="about_us">
     <div class="content_inner">
     <h2>About the Plan </h2>
     <div class="content_ab_wrapper">
    <form action="signup" method="GET" id="subscriptionForm">
    <input type="hidden" name="planId" id="planId"/>
     <div class="content_ab_col_1">
     <h3>Teaching Mindful Awareness-Based Social 
EmotionalLearning Practicesâ¦</h3>

<p>Lorem ipsum dolor sit amet, eam eu habemus tractatos, iusto nihil verterem mei no, epicurei insolens cum id. Vel regione alienum cu, atomorum signiferumque te vim, his decore option adipiscing no. Novum essent honestatis ei cum, sit nisl magna consulatu in, per te discere adolescens. </p>

<p>In cetero mentitum molestie quo, semper dolores salutandi ei sit, brute periculis definiebas mel an. Te nam viris utinam deleniti, harum accusamus mel ad. Suas velit an per. Vim vocibus vivendo propriae te mei ea dolorum facilisis persequeris.</p>

<a href="<%=request.getContextPath()%>/signup-step1" class="getstarted_btn">Get Started</a>
     </div>
     
     <div class="content_ab_col_2">
     <div class="about_vimeo_video">
                                                 <video width="400" controls>
										  <source src="https://s3.amazonaws.com/sharpquestion-contentdata/VideoFiles/SampleVideo_1080x720_1mb.mp4" type="video/mp4">
										</video> </div>
     </div>
     </form>
     </div>
     </div>
     </div>
     <!--about_us ends-->
     
    <!--inner_header ends-->
    
    
    </div>
    <!--inner_wrapper ends-->
</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="footer.jsp" %>
<script src="js/jquery.daisynav.min.js"></script> 
<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
	});
	</script> 
	<script>
function selectPlan(plan){
	document.getElementById("planId").value = plan;
	document.getElementById("subscriptionForm").submit();
}
</script>
<script type="text/javascript" src="js/jquery.flexisel.js"></script> 
<script defer src="js/jquery.flexslider.js"></script> 
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
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
  <script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
    });
  </script>
</body>
</html>
