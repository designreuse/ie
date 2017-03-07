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
<title>Self-Diagnostic</title>
<link rel="icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link id="style_components" rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/components.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/index.css"
	rel="stylesheet">
<style>
.contact-row {
	margin-left: -10px
}

#formdata {
	margin-top: 40px
}

.nwformm .form-group {
	float: left !important;
}

#showbt {
	background-color: #02a451 !important;
	border: medium none !important;
	border-radius: 3px;
	bottom: 40% !important;
	color: #fff !important;
	left: 40% !important;
	padding: 10px 30px !important;
	position: absolute !important;
}

#formdata {
	display: none
}

.largImgInc {
	background: url(NewStyles/images/speed.png) left top;
	background-size: 100% 100%;
	height: 330px
}

#demo>p {
	border: 1px solid #f8f8f8;
	box-shadow: 0 0 2px #d9d9d9;
	padding: 9px 10px;
}

#demo  span.badge {
	float: right !important
}

footer {
	margin-top: 150px
}

#result {
	background-color: #fff !important
}

.loginTopRight {
	float: left;
	margin: 0;
	padding: 0;
	width: 100%;
}

#diag-report {
	margin-top: 25px
}
</style>
</head>
<body>
	<div class="wrapper">
		<header id="header">
			<div class="container ">
				<div class="logo">
					<a href="<%=request.getContextPath()%>/" title=""> </a>
				</div>
				<div class="hdRight">
					<a href="<%=request.getContextPath()%>/" title="Home">
						<div class="searchBox">
							<input type="button" class="home_icon">
						</div>
					</a>
				</div>
			</div>
		</header>
		<br> <br>
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<div class="showdata largImgInc">
						<button id="showbt">Show</button>
					</div>
				</div>
				<div class="col-md-8 col-md-offset-2" id="formdata">
					<form:form method="post" action="sendDiagnosticReport"
						class="report-diag" id="sendDiagReport">
						<div id="demo"></div>
						<div class="loginTop">
							<!-- <div class="loginTopLeft">
									<label>User Name</label>
								</div> -->
							<div class="loginTopRight">
								<div class="contact-row nwformm">
									<div class="outer-field-wrap">
										<div class=" form-group col-md-5">

											<label for="name">User Name</label> <input type="text"
												placeholder="Username" id="username" name="username"
												class="form-control">
										</div>
										<div class="form-group col-md-5">
											<label for="email">Email Id</label> <input type="text"
												placeholder="Email" id="email" name="email"
												class="form-control">
										</div>
										<div class="form-group col-md-2">
											<input type="button" class="submit-btn fl"
												value="Send Report" id="diag-report" onclick="sendReport();">

										</div>
										<input type="hidden" placeholder="bCodeName" id="demo"
											value=""> <input type="hidden" placeholder="bName"
											id="bName" value="${navigator.appName}"> <input
											type="hidden" placeholder="bVersion" id="bVersion"
											value="${navigator.appVersion}"> <input type="hidden"
											placeholder="bCookieEnable" id="bCEnable"
											value="${navigator.cookieEnabled}"> <input
											type="hidden" placeholder="bLanguage" id="bLanguage"
											value="${navigator.language}"> <input type="hidden"
											placeholder="bOnlie" id="bOnlie" value="${navigator.onLine}">
										<input type="hidden" placeholder="bPlatform" id="bPlatform"
											value="${navigator.platform}"> <input type="hidden"
											placeholder="bAgent" id="bAgent"
											value="${navigator.userAgent}">
									</div>
								</div>
							</div>
						</div>




					</form:form>
				</div>
			</div>
		</div>

	</div>


	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%@include file="footer.jsp"%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>


	<script type="text/javascript">
		function sendReport(value) {
			
			
			var email = $("#email").val();
			var username = $("#username").val();
			var bCodeName = navigator.appCodeName;
			var bName = navigator.appName
			var bVersion = navigator.appVersion
			var bCookieEnable = navigator.cookieEnabled
			var bLanguage = navigator.language
			var bOnline = navigator.onLine
			var bAgent = navigator.userAgent
			var bPlatform = navigator.platform
			
			{
				if(email != null && username != null)
					{
				$.ajax({
					
					url : "<%=request.getContextPath()%>/sendDiagnosticReport",
								method : 'POST',
								async : false,

								data : {
									"bCodeName" : bCodeName,
									"bName" : navigator.appName,
									"bVersion" : navigator.appVersion,
									"bCookieEnable" : navigator.cookieEnabled,
									"bLanguage" : navigator.language,
									"bOnline" : navigator.onLine,
									"bAgent" : navigator.userAgent,
									"bPlatform" : navigator.platform,
									"username" : username,
									"email" : email

								},
								cache : false,

								success : function(response) {
									$("#sendDiagReport").submit();

								}

							});

				}

				if (response = "Success") {

					alert('Email has been sent successfully');
				} else {

					alert('Sending email failed');
				}
			}

			displayReport();
		}
	</script>




	<script>
		$(window).load(function() {
			$("#header").sticky({
				topSpacing : 0
			});
			displayReport();
		});
	</script>

	<script>
		function displayReport() {
			var txt = "";
			txt += "<p>Browser CodeName: <span  class='badge'>"
					+ navigator.appCodeName + "</span></p>"
			txt += "<p>Browser Name: <span  class='badge'>" + navigator.appName
					+ "</span></p>";
			txt += "<p>Browser Version: <span  class='badge'>"
					+ navigator.appVersion + "</span></p>";
			txt += "<p>Cookies Enabled: <span  class='badge'>"
					+ navigator.cookieEnabled + "</span></p>";
			txt += "<p>Browser Language: <span  class='badge'>"
					+ navigator.language + "</span></p>";
			txt += "<p>Browser Online: <span  class='badge'>"
					+ navigator.onLine + "</span></p>";
			txt += "<p>Platform: <span  class='badge'>" + navigator.platform
					+ "</span></p>";
			txt += "<p>User-agent header: <span  class='badge'>"
					+ navigator.userAgent + "</span></p>";
			document.getElementById("demo").innerHTML = txt;

		}
	</script>
	<script>
		$(document).ready(function() {

			$("#showbt").click(function() {
				$("#formdata").show();
			});
		});
	</script>
</body>
</html>