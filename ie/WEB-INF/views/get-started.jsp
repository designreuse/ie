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


<script>(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)})(window,document,'script','https://www.google-analytics.com/analytics.js','ga'); ga('create', 'UA-73908394-1', 'auto');ga('send', 'pageview');</script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<meta name="description" content="Sign-up for Inner Explorer’s Mindfulness Programs for Classrooms, Schools, and Your Community">

<meta name="keywords" content="Inner Explorer | Sign up for Classroom Mindfulness">

<title>Inner Explorer | Changing the world, one student at a
	time…</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/jquery-anyslider.css">
<%-- <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css"> --%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link
	href="<%=request.getContextPath()%>/NewStyles/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
<!-- Custom styles for this template -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/animate.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/lightning.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/NewStyles/css/get-started.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/NewStyles/css/autocomplete/main.css"
	rel="stylesheet">
<script
	src="<%=request.getContextPath()%>/NewStyles/js/jssor.slider-21.1.5.min.js"
	type="text/javascript"></script>
<style type="text/css">
.danger {
	border-color: red;
}

.psec {
	height: 12px !important
}

.poutnw {
	float: left !important;
	margin-right: 14px !important
}

.poutdiv {
	padding: 12px 0 !important;
	float: left !important;
}

.danger {
	border-color: red;
}
</style>

<script type="text/javascript">
	jssor_1_slider_init = function() {

		var jssor_1_SlideoTransitions = [ [ {
			b : -1,
			d : 1,
			o : -1
		}, {
			b : 0,
			d : 1000,
			o : 1
		} ], [ {
			b : 1900,
			d : 2000,
			x : -379,
			e : {
				x : 7
			}
		} ], [ {
			b : 1900,
			d : 2000,
			x : -379,
			e : {
				x : 7
			}
		} ], [ {
			b : -1,
			d : 1,
			o : -1,
			r : 288,
			sX : 9,
			sY : 9
		}, {
			b : 1000,
			d : 900,
			x : -1400,
			y : -660,
			o : 1,
			r : -288,
			sX : -9,
			sY : -9,
			e : {
				r : 6
			}
		}, {
			b : 1900,
			d : 1600,
			x : -200,
			o : -1,
			e : {
				x : 16
			}
		} ] ];

		var jssor_1_options = {
			$AutoPlay : true,
			$AutoPlayInterval : 8000,
			$SlideDuration : 1000,
			$SlideEasing : $Jease$.$OutQuint,
			$CaptionSliderOptions : {
				$Class : $JssorCaptionSlideo$,
				$Transitions : jssor_1_SlideoTransitions
			},
			$ArrowNavigatorOptions : {
				$Class : $JssorArrowNavigator$
			},
			$BulletNavigatorOptions : {
				$Class : $JssorBulletNavigator$
			}
		};

		var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

		//responsive code begin
		//you can remove responsive code if you don't want the slider scales while window resizing
		function ScaleSlider() {
			var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
			if (refSize) {
				refSize = Math.min(refSize, 1920);
				jssor_1_slider.$ScaleWidth(refSize);
			} else {
				window.setTimeout(ScaleSlider, 30);
			}
		}
		ScaleSlider();
		$Jssor$.$AddEvent(window, "load", ScaleSlider);
		$Jssor$.$AddEvent(window, "resize", ScaleSlider);
		$Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
		//responsive code end
	};
</script>

<script type="text/javascript">
	_linkedin_data_partner_id = "27286";
</script>
<script type="text/javascript">
	(function() {
		var s = document.getElementsByTagName("script")[0];

		var b = document.createElement("script");

		b.type = "text/javascript";
		b.async = true;

		b.src = "https://snap.licdn.com/li.lms-analytics/insight.min.js";

		s.parentNode.insertBefore(b, s);
	})();
</script>

<script>
	!function(f, b, e, v, n, t, s) {
		if (f.fbq)
			return;
		n = f.fbq = function() {
			n.callMethod ?

			n.callMethod.apply(n, arguments) : n.queue.push(arguments)
		};
		if (!f._fbq)
			f._fbq = n;

		n.push = n;
		n.loaded = !0;
		n.version = '2.0';
		n.queue = [];
		t = b.createElement(e);
		t.async = !0;

		t.src = v;
		s = b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t, s)
	}(window,

	document, 'script', 'https://connect.facebook.net/en_US/fbevents.js');

	fbq('init', '1249183021800237', {

		em : 'insert_email_variable,'

	});

	fbq('track', 'PageView');
</script>

<noscript>
	<img height="1" width="1" style="display: none"
		src="https://www.facebook.com/tr?id=1249183021800237&ev=PageView&noscript=1" />
</noscript>

<!-- DO NOT MODIFY -->

<!-- End Facebook Pixel Code -->
<style type="text/css">
.carousel-caption-getStarted {
	position: absolute;
	left: 0;
	bottom: 0px; /* left: 15%; */
	z-index: 10;
	padding-bottom: 20px;
	color: #fff;
	text-align: center;
	text-shadow: 0 1px 2px rgba(0, 0, 0, .6);
	background: rgba(255, 255, 255, 0.3) !important;
	padding: 15px;
	height: auto;
	bottom: auto !important;
	height: 100%;
	width: 100%
}

.btnstartGetStart {
	background: #02a451 none repeat scroll 0 0;
	border-radius: 25px;
	color: #fff;
	display: block;
	font-size: 24px;
	font-weight: 400 !important;
	line-height: 26px;
	margin: 0 auto;
	max-width: 130px;
	padding: 7px 18px;
}

.pT18 {
	padding-top: 18px !important
}

.mL10 {
	margin-left: 10px !important
}

.bR2 {
	border-radius: 2px !important;
	margin-left: 10px
}

.planDiv {
	display: none
}

.clear10 {
	width: 100%;
	float: left;
	height: 10px
}

#schoolForm, #homeForm, #classform {
	display: none;
}

.activeGreen {
	background-color: #02a451;
	color: #fff
}

.mr10gstPage {
	margin-right: 10px
}

.fs20 {
	font-size: 20px
}

p.error {
	bottom: -12px !important;
	font-size: 11px !important;
	padding: 0 7px !important;
	position: absolute !important;
	z-index: 9999 !important;
	background-color: #f2dede !important;
	border-color: #ebccd1 !important;
	color: #a94442 !important;
	border: 1px solid transparent !important;
	border-radius: 1px !important;
}
</style>
</head>

<body>

	<nav class="navbar navbar-inverse navbar-fixed-top" id="menuTop">
		<div class="container p0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand logo-ie" href="http://innerexplorer.org/">
					<img
					src="<%=request.getContextPath()%>/NewStyles/images/ie-logo.png"
					alt="inner-explorer">
				</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<ul class="nav navbar-nav pull-right">
					<li><a href="http://innerexplorer.org/"><i
							class="fa fa-home fs20"></i></a></li>

					<li class="login-btn"><a class="btn btn-success btn-logion"
						href="/ie/login">Login</a></li>
					<li class="socialTop"><a class="in-new-shr"
						href="https://www.facebook.com/innerexplorer"
						onclick="javascript:window.open(this.href,'' , 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;">
							<!-- <img src="images/new-fb-shr.png" alt="facebook"> --> <i
							class="fa fa-facebook facebookHover"></i>
					</a></li>

					<li class="socialTop"><a class="in-new-shr"
						href="https://twitter.com/inner_explorer"
						onclick="javascript:window.open(this.href,'' , 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;">
							<!-- <img src="images/new-twt-shr.png" alt="twitter"> --> <i
							class="fa fa-twitter twtHover"></i>
					</a></li>
					<li class="socialTop"><a class="in-new-shr"
						href="https://www.linkedin.com/company/inner-explorer-inc-"
						onclick="javascript:window.open(this.href,'' , 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;">
							<!-- <img src="images/new-in-shr.png" alt="linkedin"> --> <i
							class="fa fa-linkedin lkndHover"></i>
					</a></li>
					<li class="socialTop"><a class="in-new-shr"
						href="https://smile.amazon.com/"
						onclick="javascript:window.open(this.href,'' , 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;">
							<!-- <img src="images/new-amzn-shr.png" alt="amazon"> --> <i
							class="fa fa-amazon amazonHover"></i>
					</a></li>
				</ul>
			</div>
		</div>
	</nav>



	<div id="jssor_1"
		style="position: relative; margin: 0px auto; top: 80px; left: 0px; width: 1500px; height: 650px; overflow: hidden; visibility: hidden;">
		<!-- Loading Screen -->
		<!-- <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
            <div style="position:absolute;display:block;background:url('images/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
        </div> -->
		<div data-u="slides"
			style="cursor: default; position: relative; top: 0px; left: 0px; width: 1500px; height: 650px; overflow: hidden;">
			<div data-p="225.00" style="display: none;">
				<img data-u="image"
					src="<%=request.getContextPath()%>/NewStyles/get_started/images/home-bnr-new3.jpg" />
				<div class="container">
					<div class="carousel-caption capfour">
						<div class="col-md-12 col-sm-12">
							<h1
								style="font-family: 'Raleway', sans-serif; font-weight: 200 !important">It’s
								amazing how much time 10 minutes can give you</h1>

						</div>
					</div>
				</div>
			</div>
			
			<div data-p="225.00" data-po="80% 55%" style="display: none;">
				<img data-u="image"
					src="<%=request.getContextPath()%>/NewStyles/get_started/images/home-bnr-new4.jpg" />
				<div class="container">
					<div class="carousel-caption caplast">
						<div class="col-md-12 col-sm-12">
							<h1
								style="font-family: 'Raleway', sans-serif; font-weight: 200 !important">Let’s
								change the way they feel about bullies…</h1>

						</div>
					</div>
				</div>
			</div>
			

			<div data-p="225.00" data-po="80% 55%" style="display: none;">
				<img data-u="image"
					src="<%=request.getContextPath()%>/NewStyles/get_started/images/home-bnr-new2.jpg" />
				<div class="container">
					<div class="carousel-caption captwo">
						<div class="col-md-12 col-sm-12">
							<h1
								style="font-family: 'Raleway', sans-serif; font-weight: 200 !important">If
								you want more time to teach, take 10 minutes out of your day</h1>

						</div>
					</div>
				</div>
			</div>
			<div data-p="225.00" data-po="80% 55%" style="display: none;">
				<img data-u="image"
					src="<%=request.getContextPath()%>/NewStyles/get_started/images/home-bnr-new1.jpg" />
				<div class="container">
					<div class="carousel-caption capthree">
						<div class="col-md-12 col-sm-12">
							<h1
								style="font-family: 'Raleway', sans-serif; font-weight: 200 !important">Getting
								kids to focus is easier than you think</h1>


						</div>
					</div>
				</div>
			</div>

		</div>

		<div class="mailBox">
			<div class="col-md-12">

				<div class="col-md-7 p0">

					<div class="form-group text-left lhEmail">
						<input type="email" class="form-control" placeholder="Enter email"
							id="email" value="${email}" required>
					</div>
					<!-- <label style="display: none; color: red; font-size: smaller; margin-bottom:0px; margin-right: 130px;"
							id="error">Please enter your Email</label> -->
				</div>
				<div class="col-md-5 pT18 pL0" id="gts">
					<a class="gs_lg_btn fl btn-gt-strt center-block mL10 bR2 grbtne"
						href="javascript:;" id="buyPlan"
						style="padding: 5px 17px !important;">Get Started</a>
				</div>

			</div>
		</div>
		<!-- Bullet Navigator -->
		<div data-u="navigator" class="jssorb05"
			style="bottom: 16px; right: 16px;" data-autocenter="1">
			<!-- bullet navigator item prototype -->
			<div data-u="prototype" style="width: 16px; height: 16px;"></div>
		</div>
		<!-- Arrow Navigator -->
		<!--     <span data-u="arrowleft" class="jssora22l" style="top:0px;left:12px;width:40px;height:58px;" data-autocenter="2"></span>
        <span data-u="arrowright" class="jssora22r" style="top:0px;right:12px;width:40px;height:58px;" data-autocenter="2"></span> -->
	</div>
	<script type="text/javascript">
		jssor_1_slider_init();
	</script>
	<!-- /.carousel -->


	<section class="prog-sec-outer" id="secTw">
		<div class="container">
			<div class="row">

				<div id="PlanFormOuter1"></div>
				<div id="PlanFormOuter2"></div>
				<div class="col-md-12 planDiv gtstrtSec" id="PlanFormOuter">
					<p class="copygtstratd">Select Your Program</p>

					<a
						class="gs_lg_btn11 fl btn-gt-strt center-block bR2 pull-left col-md-4"
						href="javascript:;" id="classroom"><img height="50" width="50"
						alt="gt-invo-1" class="attachment-full wp-post-image mr10gstPage"
						id="iblack"
						src="<%=request.getContextPath()%>/NewStyles/get_started/images/program1-b.png">
						<img height="50" width="50" alt="gt-invo-1"
						class="attachment-full wp-post-image mr10gstPage" id="iwhite"
						src="<%=request.getContextPath()%>/NewStyles/get_started/images/program1-w.png"
						style="display: none"> Classroom EDITION</a> <a
						class="gs_lg_btn11 fl btn-gt-strt center-block bR2 pull-left col-md-4"
						href="javascript:;" id="school"> <img height="50" width="50"
						alt="gt-invo-2" class="attachment-full wp-post-image mr10gstPage"
						id="iblack1"
						src="<%=request.getContextPath()%>/NewStyles/get_started/images/program2-b.png">
						<img height="50" width="50" alt="gt-invo-1"
						class="attachment-full wp-post-image mr10gstPage" id="iwhite1"
						src="<%=request.getContextPath()%>/NewStyles/get_started/images/program2-w.png"
						style="display: none"> SCHOOL EDITION
					</a> <a
						class="gs_lg_btn11 fl btn-gt-strt center-block bR2 pull-left col-md-4"
						href="javascript:;" id="home"> <img height="50" width="50"
						alt="gt-invo-3" class="attachment-full wp-post-image mr10gstPage"
						id="iblack2"
						src="<%=request.getContextPath()%>/NewStyles/images/program3-b.png">
						<img height="50" width="50" alt="gt-invo-1"
						class="attachment-full wp-post-image mr10gstPage" id="iwhite2"
						src="<%=request.getContextPath()%>/NewStyles/images/program3-w.png"
						style="display: none"> COMMUNITY EDITION
					</a>

					<div class="col-md-12 mt20 plan-dsc">
						<div class="col-md-12" id="copyOuterGS">

							<div class="col-md-4 col-xs-4">Implement a mindfulness
								practice in your classroom.</div>
							<div class="col-md-4 col-xs-4">Implement a mindful
								awareness program in your entire school.</div>
							<div class="col-md-4 col-xs-4">Be mindful as a community,
								at school and home</div>
						</div>
						<form:form class="contact-form" modelAttribute="dtoUser"
							method="post" action="teacherSignUp" id="classform">
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" id="username"
										placeholder="Name" name="username" required="" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group poutdiv">

									<!--  <input type="text" class="form-control" name="mobile" id="mobile" placeholder="Mobile Number"> -->

									<p class="poutnw">
										<input type="radio" class="psec" name="programIds" value="1"
											id="p1"> Pre-k–Kindergarten
									</p>

									<p class="poutnw">
										<input type="radio" class="psec" name="programIds" value="2"
											id="p2"> Elementary School
									</p>

									<p class="poutnw">
										<input type="radio" class="psec" name="programIds" value="3"
											id="p3"> Middle School
									</p>

									<p class="poutnw">
										<input type="radio" class="psec" name="programIds" value="4"
											id="p4"> High School
									</p>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="email" class="form-control" name="email"
										id="email1" placeholder="Email" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="password" class="form-control" name="password"
										id="password" placeholder="Password" />
								</div>
							</div>
							<!-- <div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" name="school" id="school" placeholder="School">	
								</div>
							</div> -->
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" name="zipCode"
										id="zipcode" placeholder="Zip Code" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" name="pCode" id="pCode"
										placeholder="Promo Code" />
								</div>
							</div>

							<div id="planclassrom">
								<div class="col-md-4 col-sm-4 cutsomP" id="classRoomM">
									<div class="" id="smCircleCM" class="smCircleCM"
										style="display: none">
										<i class="fa fa-check-circle" aria-hidden="true"></i>
									</div>
									<div class="popularEmpty">
										<strong></strong>
									</div>
									<div class="price_card alpha monthlyOne monthlyLeftRightH">
										<div class="header">
											<!-- 	<strong class="Plan-title-New font-2">Classroom EDITION</strong> -->
											<div class="img-and-title  text-center">
												<strong class="font-2">MONTHLY</strong>
											</div>
											<span class="price"><abbr>$</abbr>10</span>

											<!-- <span class="renew-fea">Auto-Renewal Feature</span> -->
										</div>
										<ul class="features">
											<li>Practice Mindfulness in Classroom with Students</li>
											<li>Limited to One Classroom</li>
											<li>Grade-level based Tracks</li>
											<li>Online Training & Launch Toolkit</li>
											<li>Access to Tune-In Feature for Parents</li>
											<!-- <li>Yearly journey for 90 tracks - at a glance</li>
											<li>Video history of launch event</li>
											<li>30 days & 5 milestones - Celebration for milestone
												achievement</li> -->
											<li>No Hidden Charges</li>
											<li>Auto Renewal of Subscription</li>
										</ul>
									</div>
								</div>
								<div class="col-md-4 col-sm-4 cutsomP" id="classRoomA">
									<div class="" id="smCircleCA" class="smCircleCM">
										<i class="fa fa-check-circle" aria-hidden="true"></i>
									</div>
									<input type="radio" class="hidden" name="paymentType" value="0"
										id="classroomMCheckBox"> <input type="radio"
										class="hidden" name="paymentType" value="1"
										id="classroomACheckBox" checked> <input type="radio"
										class="hidden" name="paymentType" id="classroomPCheckBox">
									<div class="popularEmpty">
										<strong></strong>
									</div>
									<div class="price_card alpha monthlyOne price_cardHome">
										<div class="header">
											<div class="img-and-title text-center">
												<strong class="font-2">ANNUAL</strong>
											</div>
											<span class="price"> <!-- <strike>$120</strike> --> <abbr>$</abbr>90
											</span>

										</div>
										<ul class="features">

											<li><b>All Features of Monthly plan</b></li>
											<li>Auto-renewal of Subscription</li>


										</ul>
									</div>
								</div>
								<div class="col-md-4 col-sm-4 cutsomP" id="classRoomP">
									<!-- <div class="" id="smCircleCP" class="smCircleCM" style="display:none"><i class="fa fa-check-circle" aria-hidden="true"></i></div> -->
									<div class="popularEmpty">
										<strong></strong>
									</div>
									<div class="price_card alpha  price_cardHome pB0">
										<div class="header orderSummary">
											<div class="text-center">
												<strong class="font-2">Order Summary</strong>
											</div>
										</div>

										<ul class="features cursor">
											<table class="table table-striped getstartedTable mBB0">
												<thead>
													<tr>
														<th colspan="2"><center>
																<b>Classroom Edition</b>
															</center></th>

													</tr>
												</thead>
												<tbody>
													<tr>
														<th valign="middle" scope="row" width="70%">Subscription
															plan</th>
														<td id="AnnualClassA">Annual</td>
													</tr>
													<tr>
														<th valign="middle" scope="row" width="70%">Amount</th>
														<td id="AmountClassA" align="center"><b>$90</b></td>
													</tr>
													<tr>
														<th valign="middle" scope="row" width="70%"
															style="line-height: 35px">Promo Code Discount</th>
														<td id="PromoClassA" align="center"><b id="pCodeA">$0</b></td>
													</tr>
													<tr>
														<th valign="middle" scope="row" width="70%"
															style="line-height: 42px">Amount Due</th>
														<td align="center"><span
															class="table-price pricespan"><b id="DueClassA">$90</b></span></td>
													</tr>

												</tbody>
											</table>
										</ul>
										<div class="col-md-12 p0 text-center center-block">
											<button type="submit"
												class="green_btn_home learnclass paymentGetstart">Proceed
												to pay</button>
										</div>
									</div>
								</div>
							</div>


						</form:form>

						<form:form class="contact-form" modelAttribute="dtoSignUp"
							method="post" action="principalSignUp" id="schoolForm">



							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" id="firstName"
										placeholder="Name" name="name" required=""
										value="${schoolDetailTemp.principalName}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" name="mobile"
										id="mobile" placeholder="Mobile Number"
										value="${schoolDetailTemp.principalMob}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="email" class="form-control" id="emailSchool"
										placeholder="Email" name="email" required=""
										value="${schoolDetailTemp.principalEmail}">
								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">
									<input type="password" class="form-control" name="password"
										id="password" placeholder="Password"
										value="${schoolDetailTemp.principalPass}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" name="schoolName"
										id="schoolName" placeholder="School"
										value="${schoolDetailTemp.schoolName}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" name="zipCode"
										id="zipCode" placeholder="Zip Code"
										value="${schoolDetailTemp.postalCode}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" name="teacherCount"
										id="teacherCount" placeholder="No. of Teachers"
										value="${schoolDetailTemp.teacherCount}">
								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" name="pCode" id="pCode1"
										placeholder="Promo Code" value="${schoolDetailTemp.promoCode}">
								</div>
							</div>
							<div class="col-md-12">
								<div class="clear10"></div>
								<!-- End Button -->
								<div id="school">
									<div class="col-md-4 col-sm-4 cutsomP" id="schoolM">
										<div class="" id="smCircleS" style="display: none">
											<i class="fa fa-check-circle" aria-hidden="true"></i>
										</div>
										<div class="popularEmpty">
											<strong></strong>
										</div>
										<div class="price_card alpha monthlyOne monthlyLeftRightH">
											<div class="header">
												<!-- 	<strong class="Plan-title-New font-2">Classroom EDITION</strong> -->
												<div class="img-and-title  text-center">
													<strong class="font-2">MONTHLY</strong>
												</div>
												<span class="price"><abbr>$</abbr>50</span>

												<!-- <span class="renew-fea">Auto-Renewal Feature</span> -->
											</div>
											<ul class="features">
												<li>Unlimited Access for all Classrooms</li>
												<li>Practice Progress Dashboard</li>
												<li>Grade-level based Tracks</li>
												<li>Online Training & Launch Toolkit</li>
												<li>Access to Tune-In Feature for Parents</li>
												<!-- <li>Video history of launch event</li>
												<li>30 days & 5 milestones for every classroom -
													Celebration for milestone achievement</li>
												<li>Yearly journey for 90 tracks - at a glance</li> -->
												<li>GPS View, Calendar View, List view</li>
												<li>No Hidden Charges</li>
												<li>Auto-renewal of Subscription</li>
											</ul>
										</div>
									</div>
									<div class="col-md-4 col-sm-4 cutsomP" id="schoolA">
										<div class="" id="smCircleA">
											<i class="fa fa-check-circle" aria-hidden="true"></i>
										</div>


										<input type="radio" class="hidden" name="paymentType"
											value="0" id="schoolMCheckBox"> <input type="radio"
											class="hidden" name="paymentType" value="1"
											id="schoolACheckBox" checked> <input type="radio"
											class="hidden" name="paymentType" id="schoolPCheckBox">
										<div class="popularEmpty">
											<strong></strong>
										</div>
										<div class="price_card alpha monthlyOne price_cardHome">
											<div class="header">
												<div class="img-and-title text-center">
													<strong class="font-2">ANNUAL</strong>
												</div>
												<span class="price"> <!-- <strike>$120</strike> --> <abbr>$</abbr>450
												</span>

											</div>
											<ul class="features">

												<li><b>All Features of Monthly plan</b></li>
												<li>Option to Switch to ‘Home Edition’ in Summer for
													every student</li>
												<li>Auto-renewal of Subscription</li>


											</ul>
										</div>
									</div>
									<div class="col-md-4 col-sm-4 cutsomP" id="schoolP">
										<div class="" id="smCircleP" style="display: none">
											<i class="fa fa-check-circle" aria-hidden="true"></i>
										</div>
										<div class="popularEmpty">
											<strong></strong>
										</div>
										<div class="price_card alpha  price_cardHome pB0">
											<div class="header orderSummary">
												<div class="text-center">
													<strong class="font-2">Order Summary</strong>
												</div>
											</div>

											<ul class="features cursor">
												<table class="table table-striped getstartedTable mBB0">
													<thead>
														<tr>
															<th colspan="2"><center>
																	<b>School Edition</b>
																</center></th>

														</tr>
													</thead>
													<tbody>
														<tr>
															<th valign="middle" scope="row" width="70%">Subscription
																plan</th>

															<td id="AnnualSchool">Annual</td>
														</tr>
														<tr>
															<th valign="middle" scope="row" width="70%">Amount</th>
															<td id="AmountSchool" align="center"><b>$450</b></td>
														</tr>
														<tr>
															<th valign="middle" scope="row" width="70%"
																style="line-height: 35px">Promo Code Discount</th>
															<td align="center"><b id="pCodeSchool">$0</b></td>
														</tr>
														<tr>
															<th valign="middle" scope="row" width="70%"
																style="line-height: 42px">Amount Due</th>
															<td align="center"><span
																class="table-price pricespan"><b id="DueSchool">$450</b></span></td>
														</tr>

													</tbody>
												</table>
											</ul>
											<div class="col-md-12 p0 text-center center-block">
												<button type="submit"
													class="green_btn_home learnclass paymentGetstart">Proceed
													to pay</button>
											</div>
										</div>
									</div>

								</div>


							</div>
						</form:form>

						<form:form class="contact-form" method="post" action="ptoSignUp"
							modelAttribute="dtoSignUp" id="homeForm">

							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" id="name"
										placeholder="Name" name="Name" required="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" name="mobile"
										id="mobile" placeholder="Mobile Number" required="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="email" class="form-control" id="email2"
										placeholder="Email" name="Email" required="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="password" class="form-control" name="password"
										id="pwd" placeholder="Password" required="">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" name="ptoname"
										id="ptoname" placeholder="PTO Name" required="">
								</div>
							</div>
							<!-- <div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" name="nptoM" id="nptoM"
										placeholder="no. of PTO Members">
								</div>
							</div> -->
							<!-- <div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" name="Schoolname"
										id="Schoolname" placeholder="School Name">
								</div>
							</div> -->
							<div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" name="zip" id="zip"
										placeholder="Zip Code">
								</div>
							</div>
							<!-- <div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" name="teacherpto"
										id="teacherpto" placeholder="No. of Teachers">
								</div>
							</div> -->
							<!-- <div class="col-md-6">
								<div class="form-group">
									<input type="text" class="form-control" name="pcodepto"
										id="pcodepto" placeholder="Promo Code">
								</div>
							</div> -->
<div class="col-md-12">
								<div class="form-group">
									<input type="text" class="form-control" name="pCode" id="pCode2"
										placeholder="Promo Code" value="${schoolDetailTemp.promoCode}">
								</div>
							</div>
							<div id="yearly1">
								<input type="radio" class="hidden" name="paymentType" value="0"
									id="communityMCheckBox"> <input type="radio"
									class="hidden" name="paymentType" value="1"
									id="communityACheckBox" checked>



								<div class="col-md-4 col-sm-4 cutsomP" id="homeM">
									<div class="" id="smCircleHM" class="smCircleCM"
										style="display: none">
										<i class="fa fa-check-circle" aria-hidden="true"></i>
									</div>
									<div class="popularEmpty">
										<strong></strong>
									</div>
									<div class="price_card alpha monthlyOne monthlyLeftRightH">
										<div class="header">
											<!-- 	<strong class="Plan-title-New font-2">Classroom EDITION</strong> -->
											<div class="img-and-title  text-center">
												<strong class="font-2">TRIAL SUBSCRIPTION</strong>
											</div>
											<span class="price"><abbr>$</abbr>99</span>

											<!-- <span class="renew-fea">Auto-Renewal Feature</span> -->
										</div>
										<ul class="features communityNw">
											<li>One-Time Fee for 90 Days</li>
											<li>Access to all Classrooms and Parents of the PTO</li>
											<li>Administrator level Dashboard</li>
											<li>Grade-level based Tracks for School</li>
											<li>Online Training & Launch Toolkit for Teachers</li>
											<li>Home Edition license for all parents</li>
											<li>No hidden charges</li>
														<!-- <li>Subscription ends 31 December 2016</li>
											<li>Access to all Classrooms and Parents of the PTO</li>
											<li>Administrator level Dashboard</li>
											<li>Grade-level based Tracks for School</li>
											<li>Online Training & Launch Toolkit for Teachers</li>
											<li>Yearly journey for 90 tracks - at a glance</li>
											<li>Video history of launch event</li>
											<li>Celebration for milestone achievement</li>
											<li>Home Edition license for all parents</li>
											<li>No hidden charges</li>
											<li>Auto renewal of subscription post 31 Dec @$99/Month</li> -->

										</ul>
									</div>
								</div>
								<div class="col-md-4 col-sm-4 cutsomP" id="homeA">
									<div class="" id="smCircleHA" class="smCircleCA">
										<i class="fa fa-check-circle" aria-hidden="true"></i>
									</div>
									<div class="popularEmpty">
										<strong></strong>
									</div>
									<div class="price_card alpha monthlyOne price_cardHome">
										<div class="header">
											<div class="img-and-title text-center">
												<strong class="font-2">ANNUAL</strong>
											</div>
											<span class="price"> <!-- <strike>$120</strike> --> <abbr>$</abbr>990
											</span>

										</div>
										<ul class="features communityNw">
											<li><b>Yearly - All features of Monthly plan</b></li>
											<li>Auto renewal of subscription</li>
											<li>Access to all Classrooms and Parents of the PTO</li>
											<li>Administrator level Dashboard</li>
											<li>Grade-level based Tracks for School</li>
											<li>Online Training & Launch Toolkit for Teachers</li>
											<li>Home Edition license for all parents</li>
											<li>No hidden charges</li>
										</ul>
									</div>
								</div>
								<div class="col-md-4 col-sm-4 cutsomP">
									<div class="popularEmpty">
										<strong></strong>
									</div>
									<div class="price_card alpha  price_cardHome pB0">
										<div class="header orderSummary">
											<div class="text-center">
												<strong class="font-2">Order Summary</strong>
											</div>
										</div>

										<ul class="features cursor communityNw">
											<table class="table table-striped getstartedTable mBB0">
												<thead>
													<tr>
														<th colspan="2"><center>
																<b>COMMUNITY EDITION</b>
															</center></th>

													</tr>
												</thead>
												<tbody>
													<tr>
														<th valign="middle" scope="row" width="70%">Subscription
															plan</th>
														<td id="AnnualCommunity">Annual</td>
													</tr>
													<tr>
														<th valign="middle" scope="row" width="70%">Amount</th>
														<td align="center"><b id="AmountCommunity">$990</b></td>
													</tr>
													<tr>
														<th valign="middle" scope="row" width="70%"
															style="line-height: 35px">Promo Code Discount</th>
														<td align="center"><b id="pCodeHome">$0</b></td>
													</tr>
													<tr>
														<th valign="middle" scope="row" width="70%"
															style="line-height: 42px">Amount Due</th>
														<td align="center"><span
															class="table-price pricespan"><b id="DueCommunity">$990</b></span></td>
													</tr>

												</tbody>
											</table>
										</ul>
										<div class="col-md-12 p0 text-center center-block">
											<button type="submit"
												class="green_btn_home learnclass paymentGetstart">Proceed
												to pay</button>
										</div>
									</div>
								</div>

							</div>

						</form:form>
					</div>
				</div>

			</div>
		</div>
	</section>

	<!-- Our Programs -->

	<!-- /END THE FEATURETTES -->





	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/libs/jquery/1.12.4/jquery.min.js"></script>
	<%-- / <script>window.jQuery || document.write('<script src="<%=request.getContextPath()%>/NewStyles/js/vendor/jquery.min.js"><\/script>')</script>
 --%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder NewStyles/images work. Don't actually copy the next line! -->
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/vendor/holder.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/ie10-viewport-bug-workaround.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script type="text/javascript">
		$(document).ready(
				function() {
					$(".btn-pref .btn").click(
							function() {
								$(".btn-pref .btn").removeClass("btn-primary")
										.addClass("btn-default");
								// $(".tab").addClass("active"); // instead of this do the below 
								$(this).removeClass("btn-default").addClass(
										"btn-primary");
							});
				});
	</script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.smoove.js"></script>
	<script>
		$('.block').smoove({
			offset : '40%'
		});
	</script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/wow.min.js"></script>
	<script>
		new WOW().init();
	</script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/lightning.js"></script>
	<script type="text/javascript">
		$('.carousel').carousel({
			interval : 7000,
			pause : "false"
		});
	</script>
	<script>
		$(function() {
			$(".video-link").jqueryVideoLightning({
				autoplay : 1,
				backdrop_color : "#ddd",
				backdrop_opacity : 0.8,
				glow : 20,
				glow_color : "#000"
			});
		});
	</script>

	<script type="text/javascript">
		$(window).load(function() {

			$("#flexiselDemo3").flexisel({
				visibleItems : 3,
				itemsToScroll : 1,
				visibleItems : 4,
				animationSpeed : 1000,
				infinite : true,
				autoPlay : {
					enable : true,
					interval : 5000,
					pauseOnHover : true
				}
			});

		});
	</script>
	<script>
		$(document).ready(function() {
			// Add scrollspy to <body>
			$('body').scrollspy({
				target : ".navbar",
				offset : 50
			});

			// Add smooth scrolling on all links inside the navbar
			$("#navbar a").on('click', function(event) {
				// Make sure this.hash has a value before overriding default behavior
				if (this.hash !== "") {
					// Prevent default anchor click behavior
					event.preventDefault();

					// Store hash
					var hash = this.hash;

					// Using jQuery's animate() method to add smooth page scroll
					// The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
					$('html, body').animate({
						scrollTop : $(hash).offset().top - 70
					// scrollTop: $(this).offset().top - 20
					}, 800, function() {

						// Add hash (#) to URL when done scrolling (default click behavior)
						window.location.hash = hash;
					});
				} // End if
			});
		});
	</script>




	<script>
		$(document).ready(function() {
			// Add scrollspy to <body>
			$('body').scrollspy({
				target : ".gtstrated",
				offset : 50
			});

			// Add smooth scrolling on all links inside the navbar
			$("#gts a").on('click', function(event) {
				// Make sure this.hash has a value before overriding default behavior
				if (this.hash !== "") {
					// Prevent default anchor click behavior
					event.preventDefault();

					// Store hash
					var hash = this.hash;

					// Using jQuery's animate() method to add smooth page scroll
					// The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
					$('html, body').animate({
						scrollTop : $(hash).offset().top - 70
					// scrollTop: $(this).offset().top - 20
					}, 800, function() {

						// Add hash (#) to URL when done scrolling (default click behavior)
						window.location.hash = hash;
					});
				} // End if
			});
		});
	</script>



	

	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'https://www.google-analytics.com/analytics.js', 'ga');
		ga('create', 'UA-73908394-1', 'auto');
		ga('send', 'pageview');
	</script>
	<script type="text/javascript">
		$(window)
				.scroll(
						function() {
							if ($(window).scrollTop() + $(window).height() > $(
									document).height() - 250) {
								$('#socialFx').fadeOut();
							} else {
								$('#socialFx').fadeIn();
							}
						});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {

			$(".player").mb_YTPlayer();

		});
	</script>
	<!--   <script type="text/javascript">
  	$('#menuTop').hide();
$(window).scroll(function () {
   var d = $('#menuTop'); 
    if (d.offset().top > 100) {
       $('#menuTop').show();
        //$('#menuTop').css({'background':'rgba(255,255,255,0.9)'});
    } else {
       $('#menuTop').hide();
        //$('#menuTop').css({'background':'rgba(255,255,255,0)'});
    }
});
  </script> -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
		$(document).ready(function() {
			$("#buyPlan").click(function() {
				if ($("#email").val() != "") {
					$("#email").removeClass("danger");
					$(".planDiv").show();

					//$("#error")[0].style.display = "none";
				} else {
					//$("#error")[0].style.display = "block";
					$(".planDiv").hide();
					$("#email").addClass("danger");
				}

			});
		});
	</script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.autocomplete.js"
		type="text/javascript"></script>
	<script type="text/javascript">
jQuery(document).ready
(function($){
    		$('#schoolName').autocomplete({
    	        serviceUrl: '<%=request.getContextPath()%>/searchSchool',
    	        paramName: "name",
    	        delimiter: ",",
    	        delay: 1,
    	        minChars: 1,
    		    transformResult: function(response) {
    		        return {
    		            suggestions: $.map($.parseJSON(response), function(item) {	
    		                return { value: item.masterSchoolName , data: item.masterSchoolId };
    		            })
    		        };
    		        
    		    },
    		    onSelect:  function (event,ui) {
   		         if(event.data!=0){
   		        	// $("#address").val(event.data);
   		        	 var schoolId = event.data;
   		        	 if(schoolId!=null){
   		        	 $.ajax({
   		     			url : "<%=request.getContextPath()%>/getMasterSchoolDetails",
   		     			type : 'POST',
   		     			data : {schoolId:schoolId},
   		     			success : function(result) {
   		     				
   		     				$("#zipCode").val(result.modelMap.dtoTeacherSignOn.zipCode);
   		     				
   		     			}
   		     		});
   		        	 
   		        }
   		         }
   		        
   		     } 
    	        
    		    
    		}); 
    		
    		 $.validator.addMethod("emailAlreadyExist", function(value, element) {
                 return this.optional(element) || emailAlreadyCheck(value);
             }, "Email already exists. Click Here to <a href='<%=request.getContextPath()%>/login'> Login");
     	
     	 $.validator.addMethod("pCodeValid", function(value, element) {
              return this.optional(element) || pCodeValid(value) ;
          }, "Please enter a valid Promo Code.");

     
     	$.validator.addMethod("saveEmailPrincipal", function(value, element) {
            return this.optional(element) || saveEmailPrincipal(value);
        },"Invalid email");
          
 		 
     	
     		$('#classform').validate({
                 errorElement: 'p', //default input error message container
                  // default input error message class
                 focusInvalid: true, // do not focus the last invalid input
                 //ignore: "",
                 rules: {
                     email: {
                         required: true,
                         email: true,
                         emailAlreadyExist: true,
               
                     },
                     username: {
                         required: true,
                         maxlength : 20
                     },
                     password: {
                         required: true,
                 		minlength : 6,
                 		maxlength : 20
                     },
                    
                     	pCode:
                     		{
                     		
                     		pCodeValid:true
                     		},
                     		programIds:
                     			{
                     			required: true
                     			},
                     			paymentType:
                     			{
                     			required: true
                     			}
                
                    
                 }

             }); 
     		

     		$('#schoolForm').validate({
                 errorElement: 'p', //default input error message container
                  // default input error message class
                 focusInvalid: false, // do not focus the last invalid input
                 //ignore: "",
                 rules: {
                     email: {
                         required: true,
                         email: true,
                         emailAlreadyExist: true,
                         
                     },
                     name: {
                         required: true,
                         maxlength : 20
                     },
                     password: {
                         required: true,
                 		minlength : 6,
                 		maxlength : 20
                     },
                    
                     	pCode:
                     		{
                     		
                     		pCodeValid:true
                     		},
                     		teacherCount:{
                     			maxlength : 5,
                            	number:true,
                            	noDecimal:true,
                            	required:true
                     		}
                     		,
                 			paymentType:
                 			{
                 			required: true
                 			}
                     
                 }
      
             }); 
     		
     		$('#homeForm').validate({
                errorElement: 'p', //default input error message container
                 // default input error message class
                focusInvalid: false, // do not focus the last invalid input
                //ignore: "",
                rules: {
                    email: {
                        required: true,
                        email: true,
                        emailAlreadyExist: true,
                        
                    },
                    name: {
                        required: true,
                        maxlength : 20
                    },
                    password: {
                        required: true,
                		minlength : 6,
                		maxlength : 20
                    },
                   
                    	pCode:
                    		{
                    		
                    		pCodeValid:true
                    		},
                 
                			paymentType:
                			{
                			required: true
                			}
                }
            }); 
}); 


function emailAlreadyCheck(value){
	//var email = $("#email").val().trim();
	var email = value;
	if(email != ""){
		$.ajax({
			url : "<%=request.getContextPath()%>/check/availability/email",
			method : 'POST',
			headers: { 
				'Content-Type':'application/json'
				},
			data : JSON.stringify({"email":email}),
			async:false,
			success : function(result) {
				if(result.response.code == 200){
					emailStatus = true;
				} else if(result.response.code == 409){
					emailStatus = false;
				}
			}
		});
	}else{
		emailStatus = true;
	}
	return emailStatus;
}

function saveEmail(){
	var email = $("#email").val().trim();
	//var email = value;
	if(email != ""){
		$.ajax({
			url : "<%=request.getContextPath()%>/saveTempEmail",
			method : 'POST',
			headers: { 
				'Content-Type':'application/json'
				},
			data : JSON.stringify({"email":email}),
			async:false,
			success : function(result) {
				emailStatus = true;	
			}
		});
	}else{
		emailStatus = true;
	}
	return emailStatus;
}
function checkPromo(value){
	
	var pCode = value;
	var giftStatus;
	if(value != ""){
		$.ajax({
			url : "<%=request.getContextPath()%>/checkGiftCode",
			method : 'POST',
			
			data : {"pCode":pCode},
			async:false,
			success : function(result) {
				giftStatus=result;
			}
		});
	}
	return giftStatus;
}



function saveEmailPrincipal(value){
	//var email = $("#email").val().trim();
	var email = value;
	if(email != ""){
		$.ajax({
			url : "<%=request.getContextPath()%>/saveTempEmailPrincipal",
							method : 'POST',
							headers : {
								'Content-Type' : 'application/json'
							},
							data : JSON.stringify({
								"email" : email
							}),
							async : false,
							success : function(result) {
								emailStatus = true;
							}
						});
			} else {
				emailStatus = true;
			}
			return emailStatus;
		}
		function pCodeValid(value) {

			var flag;
			var checkPcode=checkPromo(value);
		

			if (value != "") {
				if (checkPcode!="Failure" || value == "6MONIE" || value == "IE10DAYS"
						|| value.startsWith("REF") || value == "IESM60" || value == "DBJ2017" || value=="WISDOM2017" || value=="APRIL2017" || value=="AASA2017") {

					if (value.startsWith("REF")) {
						
						$("#pCodeA")[0].innerText = "-$15";
						$("#DueClassA")[0].innerText = "$75";
					} else if (value == "IESM60") {
						$("#pCodeA")[0].innerText = "-$30";
						$("#DueClassA")[0].innerText = "$60";
					}else if (value == "APRIL2017") {
						$("#pCodeA")[0].innerText = "-$90";
						$("#DueClassA")[0].innerText = "$0";
					}  else if (value == "DBJ2017" || value=="WISDOM2017" || value=="AASA2017") {
						//alert("hi");
						$("#pCodeSchool")[0].innerText = "-$225";
						$("#DueSchool")[0].innerText = "$225";
						$("#pCodeA")[0].innerText = "-$45";
						$("#DueClassA")[0].innerText = "$45";
						$("#pCodeA")[0].innerText = "-$45";
						$("#DueClassA")[0].innerText = "$45";
						$("#pCodeHome")[0].innerText = "-$495";
						$("#DueCommunity")[0].innerText = "$495";
					} 
					else if (checkPcode!="Failure") {
						
						$('#smCircleCM').show();
						$('#smCircleCA').hide();
						// School
						$('#smCircleS').hide();
						$('#smCircleA').hide();
						// PTO
						$('#smCircleHM').hide();
						$('#smCircleHA').hide();
						// $('.price_card ').addClass('activeBox');
						$("#classroomMCheckBox")[0].checked = true;
						$("#classroomACheckBox")[0].checked = false;
						// School
						$("#schoolMCheckBox")[0].checked = false;
						$("#schoolACheckBox")[0].checked = false;
						//Community	
						$("#communityMCheckBox")[0].checked = false;
						$("#communityACheckBox")[0].checked = false;

						$("#AnnualClassA")[0].innerText = "Monthly";
						$("#AmountClassA")[0].innerText = "$"+checkPcode;
						$("#DueClassA")[0].innerText = "$10";
						//$("#promo")[0].value = "";
						$("#pCodeA")[0].innerText = "-$"+checkPcode;
						$("#DueClassA")[0].innerText = "$0";
					}
					flag = true;
				}

				else {
					$("#pCodeA")[0].innerText = "$0";
					if ($("#AnnualClassA")[0].innerText == "Monthly"){
					
						$("#DueClassA")[0].innerText = "$10";
					}
						
					else {
					
						$("#DueClassA")[0].innerText = "$90";
					}
						
					
					$("#pCodeSchool")[0].innerText = "$0";
					if ($("#AnnualSchool")[0].innerText == "Monthly"){
					
						$("#DueSchool")[0].innerText = "$50";
					}
					else{
						
						$("#DueSchool")[0].innerText = "$450";
					}
					flag = false;
				}

			}

			else {
				$("#pCodeA")[0].innerText = "$0";
				if ($("#AnnualClassA")[0].innerText == "Monthly"){
					$("#DueClassA")[0].innerText = "$10";
				}
				else{
					$("#DueClassA")[0].innerText = "$90";
				}
				
				$("#pCodeSchool")[0].innerText = "$0";
				if ($("#AnnualSchool")[0].innerText == "Monthly"){
					
					$("#DueSchool")[0].innerText = "$50";
				}
				else{
					
					$("#DueSchool")[0].innerText = "$450";
				}
				flag = true;
			}

			return flag;

		}
	</script>
	<script type="text/javascript">
		$(document).ready(
				function() {
					$(".btn-pref .btn").click(
							function() {
								$(".btn-pref .btn").removeClass("btn-primary")
										.addClass("btn-default");
								// $(".tab").addClass("active"); // instead of this do the below 
								$(this).removeClass("btn-default").addClass(
										"btn-primary");
							});
				});
	</script>

	<script>
		$(document).ready(function() {
			$("#classroom").click(function() {
				$("#pCode").val("");
				var pcode = $("#pCode").val();
				$('#copyOuterGS').hide();
				$("#signupForm").show();
				$('#iblack').hide();
				$('#iwhite').show();
				$('#iblack1').show();
				$('#iwhite1').hide();
				$('#iblack2').show();
				$('#iwhite2').hide();
				$("#smCircleCM").hide();
				$("#classform").show();
				$("#schoolForm").hide();
				$("#homeForm").hide();
				$("#school").removeClass('activeGreen');
				$("#classroom").addClass('activeGreen');
				$("#home").removeClass('activeGreen');
				$("#classroomACheckBox")[0].checked = true;

				$("#email1")[0].value = $("#email")[0].value
				$("#AmountClassA")[0].innerText = "$90"
				if (pcode.startsWith("REF")) {
					$("#pCodeA")[0].innerText = "-$15";
					$("#DueClassA")[0].innerText = "$75";
				} else if (pcode == "IESM60") {
					$("#pCodeA")[0].innerText = "-$30";
					$("#DueClassA")[0].innerText = "$60";
				}
				else{
					$("#pCodeA")[0].innerText = "$0";
					$("#DueClassA")[0].innerText = "$90";
				}
				$("#AmountClassA")[0].innerText = "$90";
				$('#smCircleCA').show();
				//$("#classroomACheckBox")[0].checked = true;
			});
		});
	</script>
	<script>
		$(document).ready(function() {
			$("#school").click(function() {
				$("#pCode1").val("");
				$('#copyOuterGS').hide();
				$("#signupForm").hide();
				$('#iblack').show();
				$('#iwhite').hide();
				$('#iblack1').hide();
				$('#iwhite1').show();
				$('#iblack2').show();
				$('#iwhite2').hide();
				$('#smCircleA').show();
				$("#schoolForm").show();
				$("#classform").hide();
				$("#homeForm").hide();
				$("#school").addClass('activeGreen');
				$("#classroom").removeClass('activeGreen');
				$("#home").removeClass('activeGreen');
				$("#smCircleS").hide();
				$("#schoolACheckBox")[0].checked = true;
				$("#emailSchool")[0].value = $("#email")[0].value
				$("#AnnualSchool")[0].innerText = "Annual"
				$("#AmountSchool")[0].innerText = "$450";
				$("#pCodeSchool")[0].innerText = "$0";
				$("#DueSchool")[0].innerText = "$450";
			});
		});
	</script>

	<script>
		$(document).ready(function() {
			$("#home").click(function() {
				$("#communityACheckBox")[0].checked = true;
				$('#copyOuterGS').hide();
				$("#pCode2").val("");
				$('#iblack').show();
				$('#iwhite').hide();
				$('#iblack1').show();
				$('#iwhite1').hide();
				$('#iblack2').hide();
				$('#iwhite2').show();
				
				$("#homeForm").show();
				$("#schoolForm").hide();
				$("#classform").hide();
				$("#school").removeClass('activeGreen');
				$("#classroom").removeClass('activeGreen');
				$("#home").addClass('activeGreen');
				$("#email2")[0].value = $("#email")[0].value
				$("#AnnualCommunity")[0].innerText = "ANNUAL"
				$("#AmountCommunity")[0].innerText = "$990";
				$("#pCodeHome")[0].innerText = "$0";
				$("#DueCommunity")[0].innerText = "$990";
			});
		});
	</script>
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/NewStyles/lib/style.css">
	<link rel="stylesheet"
		href="<%=request.getContextPath()%>/NewStyles/lib/ToggleSwitch.css" />
	<style type="text/css">
#monthly {
	display: none;
}
</style>
	<script
		src="<%=request.getContextPath()%>/NewStyles/lib/ToggleSwitch.js"></script>
	<script>
		$(function() {
			$("#myonoffswitch1").toggleSwitch();
			// $("#myonoffswitch2").toggleSwitch();
		});
	</script>


	<script type="text/javascript">
		function onradiocheck() {
			if (($('#myonoffswitch1')[0].checked) == true) {

				$("#yearly").show();
				$("#monthly").hide();
			} else {

				$("#monthly").show();
				$("#yearly").hide();
			}
		}
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#buyPlan").click(function() {
				/* 	alert("in "); */
				saveEmail();
				$('html,body').animate({
					scrollTop : $("#secTw").offset().top
				}, 'slow');

			});
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#school").click(function() {
				$('html,body').animate({
					scrollTop : $("#PlanFormOuter").offset().top
				}, 1000);
			});
			$("#classroom").click(function() {
				$('html,body').animate({
					scrollTop : $("#PlanFormOuter1").offset().top
				}, 1000);
			});

			$("#home").click(function() {
				$('html,body').animate({
					scrollTop : $("#PlanFormOuter2").offset().top
				}, 1000);
			});

		});
	</script>

	<script type="text/javascript">
		$('#classRoomM').on("click", function() {
			var pcode = $("#pCode").val();
			$('#smCircleCM').show();
			$('#smCircleCA').hide();
			// School
			$('#smCircleS').hide();
			$('#smCircleA').hide();
			// PTO
			$('#smCircleHM').hide();
			$('#smCircleHA').hide();
			// $('.price_card ').addClass('activeBox');
			$("#classroomMCheckBox")[0].checked = true;
			$("#classroomACheckBox")[0].checked = false;
			// School
			$("#schoolMCheckBox")[0].checked = false;
			$("#schoolACheckBox")[0].checked = false;
			//Community	
			$("#communityMCheckBox")[0].checked = false;
			$("#communityACheckBox")[0].checked = false;

			$("#AnnualClassA")[0].innerText = "Monthly";
			$("#AmountClassA")[0].innerText = "$10";
			$("#DueClassA")[0].innerText = "$10";
			//$("#promo")[0].value = "";
			if (pcode.startsWith("GIFT10")) {
					$("#pCodeA")[0].innerText = "-$10";
					$("#DueClassA")[0].innerText = "$0";
			}else if (pcode == "APRIL2017") {
				$("#pCodeA")[0].innerText = "-$10";
				$("#DueClassA")[0].innerText = "$0";
			}else {
				$("#pCodeA")[0].innerText = "$0";
				$("#DueClassA")[0].innerText = "$10";
			}
			//$("#promo")[0].disabled=true
		});

		$('#classRoomA').on("click", function() {
			var pcode = $("#pCode").val();
			$('#smCircleCM').hide();
			$('#smCircleCA').show();
			// School
			$('#smCircleS').hide();
			$('#smCircleA').hide();
			// PTO
			$('#smCircleHM').hide();
			$('#smCircleHA').hide();
			// $('.price_card ').addClass('activeBox');
			$("#classroomMCheckBox")[0].checked = false;
			$("#classroomACheckBox")[0].checked = true;
			// School
			$("#schoolMCheckBox")[0].checked = false;
			$("#schoolACheckBox")[0].checked = false;
			//Community	
			$("#communityMCheckBox")[0].checked = false;
			$("#communityACheckBox")[0].checked = false;

			$("#AnnualClassA")[0].innerText = "Annual"
			$("#AmountClassA")[0].innerText = "$90";
			$("#DueClassA")[0].innerText = "$90";
			if (pcode.startsWith("REF")) {
				$("#pCodeA")[0].innerText = "-$15";
				$("#DueClassA")[0].innerText = "$75";
			} else if (pcode == "IESM60") {
				$("#pCodeA")[0].innerText = "-$30";
				$("#DueClassA")[0].innerText = "$60";
			} else if (pcode == "APRIL2017") {
				$("#pCodeA")[0].innerText = "-$90";
				$("#DueClassA")[0].innerText = "$0";
			}else if(pcode=="DBJ2017" || pcode=="WISDOM2017" || pcode=="AASA2017") {
				//alert("yes");
				$("#pCodeA")[0].innerText = "-45";
				$("#DueClassA")[0].innerText = "$45";
			}else {
				$("#pCodeA")[0].innerText = "$0";
				$("#DueClassA")[0].innerText = "$90";
			}

		
			//$("#promo")[0].disabled=false
		});
		// $('#classRoomP').on("click", function()
		//  {
		//   $('#smCircleCM').hide();
		//   $('#smCircleCA').hide();
		//   $('#smCircleCP').show();
		//   // School
		//    $('#smCircleS').hide();
		//    $('#smCircleA').hide();
		//    $('#smCircleP').hide();
		//    // PTO
		//    $('#smCircleHM').hide();
		//    $('#smCircleHA').hide();
		//   // $('.price_card ').addClass('activeBox');
		//   $("#classroomMCheckBox")[0].checked=false;
		//   $("#classroomACheckBox")[0].checked=false;
		//   $("#classroomPCheckBox")[0].checked=true;
		//  }); 

		$('#schoolM').on("click", function() {
			//alert("test");
			$('#smCircleS').show();
			$('#smCircleA').hide();
			// $('.price_card ').addClass('activeBox');
			$("#schoolMCheckBox")[0].checked = true;
			$("#schoolACheckBox")[0].checked = false;
			$("#classroomMCheckBox")[0].checked = false;
			$("#classroomACheckBox")[0].checked = false;
			$("#classroomPCheckBox")[0].checked = false;
			//Community	
			$("#communityMCheckBox")[0].checked = false;
			$("#communityACheckBox")[0].checked = false;

			$("#AnnualSchool")[0].innerText = "Monthly"
			$("#AmountSchool")[0].innerText = "$50";
			$("#DueSchool")[0].innerText = "$50";
			//$("#pcodeS")[0].value = "";
				//$("#pCode1")[0].value="";
			$("#pCodeSchool")[0].innerText = "$0";
			//$("#pcodeS")[0].disabled=true
		});

		$('#schoolA').on("click", function() {
			var pcode = $("#pCode1").val();
			$('#smCircleS').hide();
			$('#smCircleA').show();
			// $('.price_card ').addClass('activeBox');
			$("#schoolACheckBox")[0].checked = true;
			$("#schoolMCheckBox")[0].checked = false;
			$("#classroomMCheckBox")[0].checked = false;
			$("#classroomACheckBox")[0].checked = false;
			$("#classroomPCheckBox")[0].checked = false;
			//Community	
			$("#communityMCheckBox")[0].checked = false;
			$("#communityACheckBox")[0].checked = false;

			$("#AnnualSchool")[0].innerText = "Annual"
			$("#AmountSchool")[0].innerText = "$450";
			//$("#DueSchool")[0].innerText = "$450";
			if (pcode=="DBJ2017" || pcode=="WISDOM2017" || pcode=="AASA2017" ) {
				$("#pCodeSchool")[0].innerText = "-$225";
				$("#DueSchool")[0].innerText = "$225";
			}
			else{
				$("#pCodeSchool")[0].innerText = "$0";
				$("#DueSchool")[0].innerText = "$450";
			}
			//$("#pcodeS")[0].disabled=false

		});

		/* 	$('#schoolP').on("click", function() {
				$('#smCircleS').hide();
				$('#smCircleA').hide();
				// $('.price_card ').addClass('activeBox');
				$("#schoolMCheckBox")[0].checked = false;
				$("#schoolACheckBox")[0].checked = false;
			}); */

		$('#homeM').on("click", function() {
			
			$('#smCircleHM').show();
			$('#smCircleHA').hide();
			// $('.price_card ').addClass('activeBox');
			$("#schoolMCheckBox")[0].checked = false;
			$("#schoolACheckBox")[0].checked = false;
			$("#classroomMCheckBox")[0].checked = false;
			$("#classroomACheckBox")[0].checked = false;
			$("#classroomPCheckBox")[0].checked = false;
			$("#communityMCheckBox")[0].checked = true;
			$("#communityACheckBox")[0].checked = false;

			$("#AnnualCommunity")[0].innerText = "TRIAL SUBSCRIPTION"
			$("#AmountCommunity")[0].innerText = "$99";
			$("#DueCommunity")[0].innerText = "$99";
			$("#pCodeHome")[0].innerText = "$0";
		});
		$('#homeA').on("click", function() {
			var pcode = $("#pCode2").val();
			$('#smCircleHM').hide();
			$('#smCircleHA').show();
			// $('.price_card ').addClass('activeBox');
			$("#schoolMCheckBox")[0].checked = false;
			$("#schoolACheckBox")[0].checked = false;
			$("#classroomMCheckBox")[0].checked = false;
			$("#classroomACheckBox")[0].checked = false;
			$("#classroomPCheckBox")[0].checked = false;
			$("#communityMCheckBox")[0].checked = false;
			$("#communityACheckBox")[0].checked = true;

			$("#AnnualCommunity")[0].innerText = "ANNUAL"
			$("#AmountCommunity")[0].innerText = "$990";
			$("#DueCommunity")[0].innerText = "$990";
			if (pcode=="DBJ2017" || pcode=="WISDOM2017" || pcode=="AASA2017") {
				$("#pCodeHome")[0].innerText = "-$495";
				$("#DueCommunity")[0].innerText = "$495";
			}
			else{
				$("#pCodeHome")[0].innerText = "$0";
				$("#DueCommunity")[0].innerText = "$990";
			}
		});
	</script>




	<script type="text/javascript">
		$(function() {
			
			var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
			var emailTest=$("#email").val();
			
			$("#email").keypress(function(e) 
				{
					if (e.keyCode == 13) {
						
					
						//$("#buyPlan").click(function() {
						//alert('test');
						$('#PlanFormOuter').show();
						$('html,body').animate({
							scrollTop : $("#secTw").offset().top
						}, 'slow');

					
				}
			});
		});
	</script>
	
	
	
	
	

</body>
</html>