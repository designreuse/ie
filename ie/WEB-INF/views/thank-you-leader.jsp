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
<spring:eval expression="@propertyConfigurer.getProperty('service.url')" var="baseURL" />
<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Thank You</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/jquery-anyslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</head>
<body>
<spring:eval var="bucketPath" expression="@propertyConfigurer.getProperty('bucket_path')" />
	<div class="wrapper">
		<%@include file="header.jsp" %>
		<section class="getStartSct mtop-5">
			<div class="steps_getstarted">
				<div class="containerSmall">
					<div class="pracProgress_hdr">
						<h2>Thank You</h2>
						<div class="green_line_btm"></div>
					</div>
					<div class="thankyou_content">
						<p>Inner Explorer would like to thank you for your generous
							contribution.<br> Contributions from donors like you provide the
							financial and moral support needed to continue our mission to
							provide mindfulness. We look forward to a continuing partnership
							with you.</p>
					</div>
					<audio preload="none" class="mp3_playerbar_notes_rgt music_full"
						controls>
						<source
							src="${bucketPath}/audioFiles/getStarted.mp3"
							type="audio/mpeg">
					</audio>
					<div class="thankyou_sharing margin-top-thnq">
						<div class="SocialSct">
							<div class="steps-act follow_us_sec">
							<p>Help us Spread the Word</p>
								<ul>
									<li>
										<div class="act-sharing-new"
											style="padding-left: 0px !important">
											<a
												href="http://www.linkedin.com/shareArticle?mini=true&url=${baseURL}"
												onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"
												title="Linkedin"><img
												src="<%=request.getContextPath()%>/NewStyles/images/act-link.png"></a>
											<a
												href="http://www.facebook.com/sharer.php?u=${baseURL}"
												onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"
												title="Facebook"><img
												src="<%=request.getContextPath()%>/NewStyles/images/act-fb.png"></a>
											<a
												href="https://twitter.com/share?url=${baseURL}"
												onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"
												title="Twitter"><img
												src="<%=request.getContextPath()%>/NewStyles/images/act-twt.png"></a>
												<a href="http://smile.amazon.com/ref=smi_ge_rl_rd_gw?_encoding=UTF8&newts=1&pldnNewCustomer=1&ref_=smi_ge_rsr_btnr1_setch#" title="Amazon Smile" target="_blank"><img src="<%=request.getContextPath()%>/NewStyles/images/amazon.png"></a>
										</div>
									</li>
								</ul>
								<p>Download <a href="<%=request.getContextPath()%>/NewStyles/pdf/inner-explorer-grant-application-sample.pdf"  title="Skip" style="color:green;" download>501C3</a></p>
							</div>
						</div>
						<form action="contributorLogin" name="contForm" id="contForm">
							<input type="hidden" id="contUserId" name="contUserId"
								value="${contUserId}">
							<div></div>
						</form>
					</div>
						<c:if test="${mailSend eq 'N'}">
							<div class="info_btn thnkupg-btn"> 
								<input value="Claim Your Free Membership" class="home_act_btn" type="button">
								</a>
							</div>
						</c:if> 
				</div>
			</div>
		</section>
	</div>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
<%@include file="footer.jsp"%>
</body>
</html>