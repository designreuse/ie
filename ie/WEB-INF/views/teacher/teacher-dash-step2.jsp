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
<title>Step-2</title>
    <c:if test="${companyName eq '1'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
    <c:if test="${companyName eq '1'}">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</c:if>
<c:if test="${companyName eq '2'}">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</c:if>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
</head>

<body>
	<div class="wrapper">
		<header id="header">
			<div class="container "> 
				<div class="logo">
					<a href="<%=request.getContextPath()%>/teacher/endTour" title="">
<%-- 					<img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Logo" title="logo" /> --%>
					</a>
				</div>
				<div class="hdRight">
	                <div class="startRight">
	                	<p>Welcome, ${loginName}</p>
							<%-- <input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout';" class="startBtn hdr-btn-clr"/> --%>
							 	<c:if test="${companyName eq '1'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teacher&userIdForLogout=${userIdForLogout}';" class="startBtn hdr-btn-clr"/>
						</c:if>
						<c:if test="${companyName eq '2'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teachercrim';" class="startBtn hdr-btn-clr"/>
						</c:if>
					</div>
            	</div>
			</div>
		</header>
		<%-- <section class="slider-inner">
			<img src="<%=request.getContextPath()%>/NewStyles/images/slider1.jpg" alt="Slider" />
		</section> --%>

		<%-- <section class="tehDsh-step1 mtop-5">
			<div class="containerSmall">
				<h2>Teacher Dashboard</h2>
				<div class="green_line_btm"></div>
				<h3>Path to First Track</h3>
				<div class="steplist">
					<img src="<%=request.getContextPath()%>/NewStyles/images/teacher-step2.png" alt="Steps" />
				</div>
				<div class="clr"></div>
				<div class="techcont">
					<h4>Have you Introduced the IE Concept to the Class?</h4>
				</div>
				
				<div class="videobtn">
					<input type="button" value="PROCEED TO NEXT STEP"  class="blueBtn" onclick="location.href = '<%=request.getContextPath()%>/teacher/teacher-dash-step3';"/>
				</div>
			</div>
		</section> --%>
		
		<section class="tehDsh-step1 ">
			<div class="containerSmall">

         		 <div class="pracProgress_hdr">
                    <h2>Training Resources</h2>
                    <div class="green_line_btm"></div>
                 </div>
        
				<!-- <h3>Training Resources</h3> -->
				<%-- <div class="steplist-new">
					<img src="<%=request.getContextPath()%>/NewStyles/images/teacher-step2.png" alt="Steps" />
				</div> --%>
				<div class="round-steps-outer">
				<div class="chain">
			    	<ul>
			        	<li>
			            	<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step1">
			            		<h3>1</h3>
			                	<p>Go through Training Video</p>
			                </a>
			            </li>
			            <li class="chain-clr-grn">
			            	<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step2">
			            		<h3>2</h3>
			                	<p>Introduce the Concept to Class</p>
			                </a>
			            </li>
			            <li>
			            	<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step5">
			            		<h3>3</h3>
			                	<p>Training Resources</p>
			                </a>
			            </li>
<%-- 			            <c:if test="${firstLogin == 'N'}">
			            <li>
			            	<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step3">
			            		<h3>4</h3>
			                	<p>Letters to Parents</p>
			                </a>
			            </li>
			            </c:if> --%>
			            <c:if test="${companyName eq '1'}">
			            <li>
			            	<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step4">
<%-- 			            		<c:if test="${firstLogin == 'N'}">
			            			<h3>5</h3>
			            		</c:if>
			            		<c:if test="${firstLogin == 'Y'}"> --%>
			            			<h3>4</h3>
			            		<%-- </c:if> --%>
			                	<p>Join the Community</p>
			                </a>
			            </li>
			            </c:if>
			             <li>
			            	<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step6">
			            		<h3>
			            		<c:if test="${companyName eq '1'}">
			            		5
			            		</c:if>
			            		<c:if test="${companyName eq '2'}">
			            		4
			            		</c:if>
			            		</h3>
			                	<p>Recommended Best Practices</p>
			                </a>
			            </li>
			        </ul>
			    </div>
			    </div>
				<div class="clr"></div>
				<div class="techcont">
					<h4 class="padding-top-zero">Learning about the Daily Practice Concept</h4>
				</div>
                
                <div class="tech-dash-cntnt padding-btm-zero">
                	<div class="tech-step-2-right">
                    <img src="<%=request.getContextPath()%>/NewStyles/images/tech-2.jpg">
                    </div>
                	
                    <div class="tech-step-2-left">
                    	<h3>Overview</h3>
                        <p>Mindful awareness is experiential based learning. It is conceptualized as paying attention to the present moment, with curiosity and kindness. Mindful awareness Based Social Emotional Learning (MBSEL) programs involve the repeated practice of bringing one’s attention to the present moment and include various practices of self-awareness and self-control. These practices are designed to enhance social and behavioral aptitude, but are organized in a bottom-to-top fashion where the teacher is guided by the collective experiences of the children. This mindful teaching method is nonlinear and often organic. In this type of learning environment the students may explore specific concepts, for example kindness, through a guided or silent contemplative period. Often, this organic process allows for an increase in self-awareness and an embodiment of the trait. This approach is a departure from traditional teaching methods. The consistent formal practice of mindful awareness naturally builds the students’ awareness so the lessons are more self-evident as time goes on. </p>
                        <!-- <p>Students become more resilient and self-reliant</p>
                        <div class="btns-outer mtop10">
<input class="submit-btn fl" type="submit" value="LEARN MORE">
</div> -->
                    </div>
                
                
                
                
                
				</div>
				<div class="videobtn">
                <input type="button" class="blueBtn" onclick="location.href = '<%=request.getContextPath()%>/teacher/teacher-dash-step5';" value='PROCEED TO NEXT STEP' title="PROCEED TO NEXT STEP">

				</div>
			</div>
		</section>
	</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %> 
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script> 
   <script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$("#header").sticky({ topSpacing: 0 });
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
