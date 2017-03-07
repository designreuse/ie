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
<title>Dashboard</title>
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
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css"> --%>
<%-- <link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/> --%>
<%-- <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" /> --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" /> --%>
<%-- <link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/> --%>
<style type="text/css">
/* .fancybox-inner{
height: auto !important;
} */
.boston_btnn{    font-weight: 100 !important;
    font-size: 16px !important;
    padding: 10px 38px !important;     background: 0 none !important;    border: 2px solid #02a451 !important;
    background: 0 none !important;
    color: #02a451 !important;}
</style>
</head>

<body>
	<div class="wrapper">
		<%@include file="header.jsp"%>


		<section class="makeDonateSct">
			<div class="container">


				<div class="pracProgress_hdr">
					<h2>Practice Area</h2>
					<div class="green_line_btm"></div>

					<div class="daily_msg">
						
							<h3>
								<span><img
									src="<%=request.getContextPath()%>/NewStyles/images/msg-icon.png"></span>Message
								of the Day
								<div class="clr"></div>
							</h3>
							<p id="todayMessage"></p>
						

						<%-- <c:if test="${expiryStatusForStartPractice eq 'Y'}">
							<p id="todayMessageUpdate">Your Subscription has expired.
								Please contact to your school administrator</p>
								<c:if test="${promoCode eq 'IE10DAYS'}">
								<p>OR </p><input class="submit-btn grn-outr-lgr" type="button"
												value="Sign Up"
												onclick="teacherSignUp();" style="font-size: 15px !important;">
								</c:if>
						</c:if> --%>
					</div>
					<c:if test="${isChangedMonthlyToYearlyFromPrincipal eq 'Y'}">
						<h4 style="margin-left: 200px;">
							<b>Your subscription has been changed from monthly to yearly</b>
						</h4>
					</c:if>
					<c:if test="${isChangedMonthlyToYearly eq 'Y'}">
						<h4 style="margin-left: 200px;">
							<b>Your subscription has been changed from monthly to yearly</b>
						</h4>
					</c:if>
				</div>
				
				

				<div class="clr"></div>
				<c:if test="${showPractice eq 'Y'}">
				<div class="prac-prog-con">
					<c:forEach var="practiceProgress" items="${practiceProgresses}">

						<c:if
							test="${practiceProgress.classTeacherRelationId eq  classTeacherRelationId}">
							
								<div class="mtop20 position-relative ">

									<div class="strt-practice-btn">


										<div class="btns-outer mtop10 margin-bottom-ten">
											<input class="submit-btn grn-outr-lgr" type="button"
												value="START PRACTICE"
												onclick="startClass(${practiceProgress.classTeacherRelationId});" style="font-size: 15px !important;">
										</div>				
										<%-- <div class="btns-outer mtop10 margin-bottom-ten">
											<input class="submit-btn  boston_btnn" type="button"
												value="RUN FOR BOSTON"
												onclick="location.href ='<%=request.getContextPath()%>/teacher/bostonMarathon';">
										</div> --%>
								
				
				         
									</div>
								</div>
								
						</c:if>
					</c:forEach>


				</div>
				</c:if>
          
			</div>
		</section>
	</div>
	<form
		action="${pageContext.request.contextPath}/teacher/mindful-practice-new"
		method="GET" id="startClass">
		<input type="hidden" id="classTeacherRelationId"
			name="classTeacherRelationId" /> <input type="hidden" id="strtPrac"
			name="strtPrac" value="Y" />
	</form>
	<form
 		action="${pageContext.request.contextPath}/teacher/saveTeacherStep1"
 		method="POST" id="teacherSignUp">
 		<input type="hidden" id="classTeacherRelationId1"
 			name="classTeacherRelationId" /> <input type="hidden" id="strtPrac"
 			name="strtPrac" value="Y" />
 	</form>
	<input type="hidden" id="msgOfDay" name="msgOfDay"
		value="${todayMessage}" />
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%@include file="../footer.jsp"%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script> --%>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery-URI.js"></script>
	<script type="text/javascript">	
	function teacherSignUp()
	   {
		   $("#teacherSignUp").submit();
	   }
   function startClass(classTeacherRelationId){
	  // alert("For daily"+classTeacherRelationId)
	   $("#classTeacherRelationId").val(classTeacherRelationId);
	  
	   /* session.setAttribute("startPractice", "Y"); */
	   $("#startClass").submit();
   }
   function pendingFeedback(classTeacherRelationId){
	   $("#classTeacherRelationPendingFeedBackId").val(classTeacherRelationId);
	   $("#pendingFeedbackForm").submit();
   }
	jQuery(document).ready(function($){
		

		var source = $("#msgOfDay").val();
		source = source.replace(/\r?\n/g, '<br />');
		var result = URI.withinString(source, function(url) {
		    return "<a href='"+url+"' target='_blank'>" + url + "</a>";
		});
		
		$("#todayMessage").html(result);
		
		
		$("#header").sticky({ topSpacing: 0 });
		$.daisyNav();
	});
	</script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>

	<script type="text/javascript">
    /* $(function(){
      SyntaxHighlighter.all();
    }); */
	
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
	<script>
window.location.hash="";
window.location.hash="";//again because google chrome don't insert first hash into history
window.onhashchange=function(){window.location.hash="";}
</script>
</body>
</html>
