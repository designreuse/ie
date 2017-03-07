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

<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Campaign</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
</head>

<body>
	<div class="wrapper">
		<header id="header">
			<div class="container ">
				<div class="logo"
					onclick="location.href='<%=request.getContextPath()%>/donor';">
					<img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg"
						alt="Logo" title="logo" />
				</div>
				<div class="hdRight">
					<nav>
						<div class="menu-toggle-button" data-menu-id="demo-menu">
							<img alt=""
								src="<%=request.getContextPath()%>/NewStyles/images/toggle-menu.png">
						</div>
						<ul id="demo-menu" class="menu-list">
							<li><a href="<%=request.getContextPath()%>/donor"
								class="font_strong dk_black" title="">Dashboard</a></li>
							<!--  <li><a href="#" class="font_strong" title="">My Account</a></li> -->
							<li class="divider">|</li>
							<li><a href="#" class="font_strong dk_black" title="">Welcome
									${loginName}</a></li>
						</ul>
					</nav>
					<div class="startRight">
						<input type="button" value="Logout" class="startBtn"
							onclick="location.href='<%=request.getContextPath()%>/j_spring_security_logout';" />
					</div>
				</div>
			</div>
		</header>

		<!--inner_wrapper starts-->
		<div class="inner_wrapper">

			<!--inner_header starts-->
			<div class="inner_header">
				<img
					src="<%=request.getContextPath()%>/NewStyles/images/browse-donation-header.jpg"
					alt="" />
			</div>

			<!--brow_don_camp starts-->
			<div class="brow_don_camp">

				<h2>Contribute Now</h2>
				<p>​With your help we are able to make changes for children
					worldwide that will enable them to become more compassionate,
					sincere children who are ready to learn!</p>
				<c:forEach var="currentName" items="${campaignsList}">
					<div class="get_program_school">
						<h3>${currentName.title}</h3>
						<div class="gps_wrapper">
							<div class="content_inner">
								<div class="gps_img">
									<div class="frame_gps">
										<img
											src="<%=request.getContextPath()%>/fileupload/${currentName.imageUrl}"
											alt="" />
									</div>
								</div>
								<div class="gps_content">
									<p>${currentName.description}</p>

								</div>
								<a href="<%=request.getContextPath()%>/donor/donate"
									class="donate_now_btn">CONTRIBUTE NOW</a>
							</div>
						</div>
					</div>
			</div>
			</c:forEach>

		</div>
		<!--brow_don_camp ends-->

		<!--inner_header ends-->

	</div>
	<!--inner_wrapper ends-->
	</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<%@include file="../footer.jsp"%>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
	<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
	});
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
