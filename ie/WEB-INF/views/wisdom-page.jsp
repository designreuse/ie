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
<title>Wisdom</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</head>
<body>
<div class="wrapper">
<%-- <%@include file="header.jsp" %> --%>
<header id="header">
        <div class="container ">
           <div class="logo">
					<a href="http://innerexplorer.org" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Inner Explorer" title="Inner Explorer" /></a>
				</div>
			<div class="wisdomLogo">
				<a href="http://www.wisdom2summit.com/Speakers/myriad_single_element/2325" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/wisdom-logo.png" alt="wisdom 2.0" title="wisdom 2.0" /></a>
			</div>
        </div>
    </header>
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        <!--inner_header starts-->
         <div class="wisdom-onWhite">
		 <div class="content_inner">
		 	<div class="pracProgress_hdr mtop20">
				<h2>5 ways you can Support Inner Explorer </h2>
				<div class="green_line_btm"></div>
            </div>
			 <div class="wisdom-form">
				 <ul>
				 	<li><a href="<%=request.getContextPath()%>/brandAmbassadorStep1" title="">
						<div class="wisdomImg wisImg1">
							<div class="wisImg1-Inner">
								<img alt="Image" src="<%=request.getContextPath()%>/NewStyles/images/wisdom-icon1.png">
							</div>
							<div class="betatopRadius">1</div>
						</div>
						<div class="wisdomText">
							<h4>GIFT YOUR SCHOOL</h4>
							<p>Bring Mindful Awareness Program to school of your choice. <br/>No payment required for WISDOM2016 participants</p>
						</div>
						</a>
					</li>
					<li><a href="<%=request.getContextPath()%>/sponsorStep1" title="">
						<div class="wisdomImg wisImg1">
							<div class="wisImg1-Inner">
								<img alt="Image" src="<%=request.getContextPath()%>/NewStyles/images/wisdom-icon2.png">
							</div>
							<div class="betatopRadius">2</div>
						</div>
						<div class="wisdomText">
							<h4>SPONSOR A SCHOOL</h4>
							<p>For $100, you can sponsor a school of your choice for LIFETIME access to our programs</p>
						</div>
						</a>
					</li>
					<li>
					<a href="https://www.booster.com/launch_innerexplorer_in_all_50_states" title="">
						<div class="wisdomImg wisImg1">
							<div class="wisImg1-Inner">
								<img alt="Image" src="<%=request.getContextPath()%>/NewStyles/images/wisdom-icon3.png">
							</div>
							<div class="betatopRadius">3</div>
						</div>
						<div class="wisdomText">
							<h4>booster campaign</h4>
							<p>Buy our logo t-shirt & support the campaign to launch programs in 50 new schools, who need it the most</p>
						</div>
						</a>
					</li>
					<li><a href="http://smile.amazon.com/ref=smi_ge_rl_rd_gw?_encoding=UTF8&newts=1&pldnNewCustomer=1&ref_=smi_ge_rsr_btnr1_setch#" title="">
						<div class="wisdomImg wisImg1">
							<div class="wisImg1-Inner">
								<img alt="Image" src="<%=request.getContextPath()%>/NewStyles/images/wisdom-icon4.png">
							</div>
							<div class="betatopRadius">4</div>
						</div>
						<div class="wisdomText">
							<h4>amazon smile</h4>
							<p>Join Amazon Smile program to make little contribution for every dollar you spend on Amazon</p>
						</div>
						</a>
					</li>
					<li><a href="http://innerexplorer.org/ie/act-now" title="">
						<div class="wisdomImg wisImg1">
							<div class="wisImg1-Inner">
								<img alt="Image" src="<%=request.getContextPath()%>/NewStyles/images/wisdom-icon5.png">
							</div>
							<div class="betatopRadius">5</div>
						</div>
						<div class="wisdomText">
							<h4>spread word</h4>
							<p>Tell Your Friends and Family about Inner Explorer</p>
						</div>
						</a>
					</li>
				 </ul>
			 </div>
		 </div>
     </div>
        <!--inner_header ends--> 
    </div>
    <!--inner_wrapper ends--> 
</div>
<form action="signup" method="GET" id="subscriptionForm">
    <input type="hidden" name="planId" id="planId"/>
</form>
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
</body>
</html>
