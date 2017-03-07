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
     
     <!--about_us starts-->
     <div class="about_us">
     <div class="content_inner">
     <div class="pracProgress_hdr">
     <h2>About the Plan </h2>
     <div class="green_line_btm"></div>
     </div>
     
     <div class="content_ab_wrapper">
    <form action="signup" method="GET" id="subscriptionForm">
    <input type="hidden" name="planId" id="planId"/>
     <div class="content_ab_container">
     <div class="content_ab_col_1">
     <h3>Just Press Play</h3>

<p>The Inner Explorer Programs follow the world-renowned MBSR protocol, and have been tailored to specific age groups. The developers, Laura Bakosh, PhD and Janice Houlihan, MEd, have over 25 years of combined experience in this field. The programs provide daily consistency, within the regular curriculum, with existing classroom teachers! </p>


<a href="<%=request.getContextPath()%>/signup-step1" class="getstarted_btn" >Start</a>
     </div>
     
     <div class="content_ab_col_2">
     <div class="about_vimeo_video">
            <div class="cw_videowrap">
									 <iframe width="100%" height="315" src="https://www.youtube.com/embed/XyP8h7rkp38?enablejsapi=1&playerapiid=myvideo&version=3&rel=0" frameborder="0" allowfullscreen></iframe>
									</div>
         </div>
     </div>
     </form>
     </div>
     <div class="about_programs">
     <h4>Our Programs</h4>
     <div class="ourprograms">
					 <ul>
                    <li> <img src="<%=request.getContextPath()%>/NewStyles/images/img1.jpg" alt="Image"/>
                        <div class="greyText">
                            
                             <p>Exploring Me&trade;</p>
                            <p> Pre-K-Kindergarten</p>
                        </div>
                    </li>
                    <li> <img src="<%=request.getContextPath()%>/NewStyles/images/img2.jpg" alt="Image"/>
                        <div class="greyText">
                            <p>Exploring Originality&trade;</p>
                            <p>Elementary School</p>
                        </div>
                    </li>
                    <li> <img src="<%=request.getContextPath()%>/NewStyles/images/img3.jpg" alt="Image"/>
                        <div class="greyText">
                            <p>Exploring Potential&trade;</p>
                            <p>Middle School</p>
                        </div>
                    </li>
                    <li> <img src="<%=request.getContextPath()%>/NewStyles/images/img4.jpg" alt="Image"/>
                        <div class="greyText">
                            <p>Exploring Relevance&trade;</p>
                            <p>High School</p>
                        </div>
                    </li>
                </ul>
				</div>
   
     </div>
     
     
     
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
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
	});
	function selectPlan(plan){
		document.getElementById("planId").value = plan;
		document.getElementById("subscriptionForm").submit();
	}
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
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
  <script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
    });
  </script>
</body>
</html>
