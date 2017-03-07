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
<c:if test="${companyName eq '1'}">
	<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
	<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
</head>

<body>
	<div class="wrapper">
		<%@include file="header.jsp" %>
		<section class="slider-inner">
			<img src="<%=request.getContextPath()%>/NewStyles/images/browse-donation-header.jpg" alt="Slider" />
		</section>
		<section class="tehDsh-step1 mtop-5">
			<div class="containerSmall">
				<h2>Edit Campaign</h2>
				<div class="bluetehDsh"></div>
				<div class="clr"></div>
				<div class="editcmp">
					<h4>How to Get Our Program into Your School</h4>
					<p>Have you been looking for a sustainable way to keep up with a daily mindful awareness practice in your classroom or local school? If youâre a parent or an educator with a mindful awareness practice of your own and you would like to learn more about bringing and supporting this program in your school or community, contact us at info@innerexplorer.org or 888-466-9732.</p>
					<p>Our Champions have been able to help us promote and implement our program across the US and in other countries. We know that there are schools out there that are looking for a program such as Inner Explorer and we are unable to be everywhere all the time (although weâd love to). So if you know of a school or want to promote us to a school, let us know.</p>
					<p>We look forward to hearing from you!</p>
				</div>
				<div class="getstartForm">
					<label>Add Testimonials</label>
					<ul>
						<li>
							<div class="getstart-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Add Picture" />
									</div>
								</div>
							</div>
							<div class="photoIcon"><a href="#" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/icon9.png" alt="Image" /></a></div>
						</li>
						
						<li>
							<div class="getstart-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Add Video" />
									</div>
								</div>
							</div>
							<div class="videoIcon"><a href="#" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/icon10.png" alt="Image" /></a></div>
						</li>
					</ul>
					<div class="AreaContact">
						<textarea placeholder="Enter Testimonial"></textarea>
					</div>
				</div>
				<div class="getstartForm">
					<label>Add Media</label>
					<ul>
						<li>
							<div class="getstart-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Add Picture" />
									</div>
								</div>
							</div>
							<div class="photoIcon"><a href="#" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/icon9.png" alt="Image" /></a></div>
						</li>
						<li>
							<div class="getstart-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Add Video" />
									</div>
								</div>
							</div>
							<div class="photoIcon"><a href="#" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/icon10.png" alt="Image" /></a></div>
						</li>
					</ul>
				</div>
				<div class="btns-outer mtop10">
					<input type="submit" value="FINISH EDITING" class="submit-btn fl" />
				</div>
			</div>
		</section>
	</div>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="../footer.jsp" %>
<script src="js/jquery.daisynav.min.js"></script> 
<script type="text/javascript">	
jQuery(document).ready
	(function($){
		$.daisyNav();
	});
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
</body>
</html>
