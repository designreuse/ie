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
<title>Thank You</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</head>
<body>
<div class="wrapper">
	<%@include file="header.jsp" %>
		<section class="getStartSct mtop-5">
    <div class="steps_getstarted">
			<div class="containerSmall">
				<div class="pracProgress_hdr">
     <h2>Thank You</h2>
     <div class="green_line_btm"></div>
     </div>
     <div class="sub_heading_new_ty">
     	You have registered successfully, Login to Practice Mindfulness
     </div>
     <div class="new_ty-list">
     	<ul>
        	<li class="width100">
            	<div class="text-cntr-ty">
                    <ul>
                        <li>Verification request has been sent to the existing school Administrator</li>
                           <li>If there is an issue with your registration, we will notify you via email.</li>
                    </ul>
                </div>
            </li>
        </ul>
     </div>
			<div class="ty_spread_world margin-top-zero">
				<form action="teacherLogin" name="contForm" id="contForm">
					<input type="hidden" id="teacherUserId" name="teacherUserId"
						value="${teacherUserId}">
						<div>
						<div class="videobtn ">
							<input type="submit" class="blueBtn" value="Go To Dashboard"
								title="Go To Dashboard">
						</div>
					</div>
						</form>
					</div>

				</div>
      </div>
		</section>
	</div>


<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript">
function selectPlan(plan){
	document.getElementById("planId").value = plan;
	document.getElementById("subscriptionForm").submit();
}
</script>
<script>
jQuery(document).ready
(function($){
	
	  $("#login").click(function(e) {
	        $(".login_panel").toggle();
	        e.stopPropagation();
	    });

	    $(document).click(function(e) {
	        if (!$(e.target).is('.login_panel, .login_panel *')) {
	            $(".login_panel").hide();
	        }
	    });
	
	$("#header").sticky({ topSpacing: 0 });
	$(".fancybox").fancybox();
	
	$.daisyNav();
	
});
</script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/woco.accordion.min.js"></script> 
	<script>
	$(".accordion").accordion();
</script>
</body>
</html>
