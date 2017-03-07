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
<title>Training Overview</title>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
</head>

<body>
	<%@include file="header.jsp"%>
	<%-- <header id="header">
			<div class="container ">
				<div class="logo">
					<a href="<%=request.getContextPath()%>/teacher/endTour" title="">
											<img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Logo" title="logo" />
					</a>
				</div>
				<div class="hdRight">
					<div class="startRight">
						<p>Welcome, ${loginName}</p>
						<input type="button" value="Logout"
							onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout';"
							class="startBtn hdr-btn-clr" />
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
				<h2>Overview</h2>
				<div class="green_line_btm"></div>
			</div>

			<style>
.clr11 {
	margin-bottom: 12px
}
</style>

			<div class="tech-dash-cntnt padding-btm-zero">

				<div class="launch-text subsc_bull" align="center">
					<p align="center">
						<b>Hello Teachers</b><br></br>
					<ul class="fa-ul">

						<li class=clr11><i class="fa-li fa fa-square"></i>We are
							delighted that you will soon begin using the Inner Explorer
							Program with your students. We are also aware that kids in middle
							and high school need to understand the relevance of what they are
							learning in order to make it meaningful.</li>
						<li class=clr11><i class="fa-li fa fa-square"></i>Before
							launching our daily mindfulness audio program (10 minutes daily),
							we suggest you use our pre-launch pilot program. Each lesson is
							between 3 - 5 minutes long and will provide students with an
							understanding about how they will benefit from engaging in the
							Inner Explorer Program.</li>
						<li class=clr11><i class="fa-li fa fa-square"></i>We are not
							asking you to lead discussions or explain anything. You can
							simply use each day's program. The pre-launch is designed to get
							students thinking about their lives so when they start the
							following week they have 'bought in' to the importance of the
							Inner Explorer Program.</li>
						<li class=clr11><i class="fa-li fa fa-square"></i>Please note
							that beginning Day 11 of this entire process, there is a
							journaling aspect to the program. It would be fabulous for your
							kids to have some kind of journal or notebook that sits on the
							desk so that they can begin writing as soon as the audio period
							ends.</li>

						<li><i class="fa-li fa fa-square"></i>There is a bell at the
							end of the two minutes indicating closure for the day. (The total
							daily program including journaling is 10 minutes long).</li>
					</ul>
					 
				</div>

			</div>
			<div class="videobtn">
				<input type="button" class="blueBtn"
					onclick="location.href = '<%=request.getContextPath()%>/teacher/training1';"
					value='PROCEED TO NEXT STEP' title="PROCEED TO NEXT STEP">

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



	<a href="#" id="btnShow">this link</a>
	<div id="dialog" style="display: none;">
		<div>
			<iframe id="frame"></iframe>
		</div>
	</div>
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
