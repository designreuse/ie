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
<title>Training Step-1</title>
<c:if test="${companyName eq '1'}">
	<link rel="icon"
		href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
		type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
	<link rel="icon"
		href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
		type="image/x-icon">
</c:if>
<c:if test="${companyName eq '1'}">
	<link rel="stylesheet" type="text/css"
		href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</c:if>
<c:if test="${companyName eq '2'}">
	<link rel="stylesheet" type="text/css"
		href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</c:if>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
</head>

<body>
	<div class="wrapper">
		<%@include file="header.jsp"%>
		<%-- <header id="header">
			<div class="container "> 
				<div class="logo">
					<a href="<%=request.getContextPath()%>/principal/endTour" title="">
					<img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Logo" title="logo" />
					</a>
				</div>
				<div class="hdRight">
	                <div class="startRight">
	                	<p>Welcome, ${loginName}</p>
						 <input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout';" class="startBtn hdr-btn-clr"/> 
							 	<c:if test="${companyName eq '1'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teacher&userIdForLogout=${userIdForLogout}';" class="startBtn hdr-btn-clr"/>
						</c:if>
						<c:if test="${companyName eq '2'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teachercrim';" class="startBtn hdr-btn-clr"/>
						</c:if>
					</div>
            	</div>
			</div>
		</header> --%>


		<section class="tehDsh-step1 ">
			<div class="containerSmall">
				<div class="pracProgress_hdr">
					<h2>Training</h2>
					<div class="green_line_btm"></div>
				</div>

				<div class="round-steps-outer">
					<div class="chain">
						<ul>
							<li><a
								href="<%=request.getContextPath()%>/teacher/onboarding">
									<h3>1</h3>
									<p>Welcome to Inner Explorer</p>
							</a></li>
							<li><a href="<%=request.getContextPath()%>/teacher/step2">
									<h3>2</h3>
									<p>Questionnaire</p>
							</a></li>
							<li><a href="<%=request.getContextPath()%>/teacher/step3">
									<h3>3</h3>
									<p>Training Video</p>
							</a></li>

							<li><a href="<%=request.getContextPath()%>/teacher/step4">
									<h3>4</h3>
									<p>Classroom Tools</p>
							</a></li>
						</ul>
					</div>
				</div>


				<div class="clr"></div>
				<div class="techVideoSct" align="center">
					<iframe width="77%" height="335"
						src="http://voice.adobe.com/a/9Yd9V/embed/"
						frameborder="0" allowfullscreen></iframe>
					<%-- <video width="400" controls>
					  <source src="<%=request.getContextPath()%>/NewStyles/images/movie.mp4" type="video/mp4">
					  <source src="<%=request.getContextPath()%>/NewStyles/images/movie.mp4" type="video/ogg">
					  Your browser does not support HTML5 video.
					</video> --%>
				</div>
				<div class="videobtn">
					<input type="button" title="PROCEED TO NEXT STEP"
						value="PROCEED TO NEXT STEP" class="blueBtn"
						onclick="location.href = '<%=request.getContextPath()%>/teacher/step2';" />
				</div>
			</div>
		</section>
	</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%@include file="../footer.jsp"%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$("#header").sticky({
				topSpacing : 0
			});
			$.daisyNav();
		});
	</script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>

	<script type="text/javascript">
		$(function() {
			SyntaxHighlighter.all();
		});

		$("#flexiselDemo3").flexisel({
			visibleItems : 5,
			animationSpeed : 1000,
			autoPlay : true,
			autoPlaySpeed : 3000,
			pauseOnHover : true,
			enableResponsiveBreakpoints : true,
			responsiveBreakpoints : {
				portrait : {
					changePoint : 480,
					visibleItems : 1
				},
				landscape : {
					changePoint : 640,
					visibleItems : 2
				},
				tablet : {
					changePoint : 768,
					visibleItems : 3
				}
			}
		});
		$(window).load(function() {

			$('.flexslider').flexslider({
				animation : "slide",
				start : function(slider) {
					$('body').removeClass('loading');
				}
			});

		});
	</script>

</body>
</html>
