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
<html lang="en">

<head>


<!-- Google analytics -->
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
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Mindful Community | Inner Explorer</title>
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="InnerExplorer">
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/NewStyles/teacher_product/images/favicon.ico"
	type="<%=request.getContextPath()%>/NewStyles/teacher_product/images/x-icon">
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/teacher_product/images/favicon.ico"
	type="<%=request.getContextPath()%>/NewStyles/teacher_product/images/x-icon">
<!-- BOOTSTRAP CSS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/teacher_product/css/plugins/bootstrap.min.css">
<!-- FONT ICONS -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/teacher_product/css/font-awesome.min.css">
<!-- GOOGLE FONTS -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/teacher_product/css/plugins/loaders.css">
<!-- CUSTOM STYLESHEET -->

<!-- RESPONSIVE FIXES -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/teacher_product/css/responsive.css">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if  lt IE 9]>
       <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
       <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
      <![endif]-->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/teacher_product/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/community_edi.css">
<script
	src="<%=request.getContextPath()%>/NewStyles/teacher_product/js/jssor.slider-21.1.5.min.js"
	type="text/javascript"></script>
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
			$SlideDuration : 800,
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
<!-- Facebook Pixel Code -->

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


<style>
.danger {
	border-color: red;
}

/* .btn-custom, input[type="button"], input[type="submit"], input[type="reset"],
	button {
	background-color: transparent !important;
	border: 1px solid #02a451 !important;
	border-radius: 2px !important;
	float: left !important;
	margin-left: 10px !important;
	padding: 5px 17px !important;
	font-size: 17px !important;
	height: 35px !important;
	margin-top: -6px !important;
	lin */
e-height


:

 

20
px

 

!
important




}
</style>
<script type="text/javascript">
setTimeout(function(){var a=document.createElement("script");
var b=document.getElementsByTagName("script")[0];
a.src=document.location.protocol+"//script.crazyegg.com/pages/scripts/0059/6602.js?"+Math.floor(new Date().getTime()/3600000);
a.async=true;a.type="text/javascript";b.parentNode.insertBefore(a,b)}, 1);
</script>

</head>

<body data-spy="scroll" data-target="#main-navbar" id="stop">
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.7";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>

	<!-- Preloader -->
	<!-- <div class="loader bg-yellow"> <div class="loader-inner ball-scale-ripple-multiple vh-center"> <div></div> <div></div> <div></div> </div> </div>    -->

	<div class="main-container" id="page">
		<!-- =========================
             HEADER 
        ============================== -->
		<div class="tt"></div>
		<header id="nav1-3">
			<nav class="navbar navbar-fixed-top p0" id="main-navbar">

				<div class="container-fluid header-container">

					<div class="navbar-header col-md-6 col-xs-6 pull-left">

						<a href="http://innerexplorer.org/"
							class="navbar-brand logo-black smooth-scroll"><img
							src="<%=request.getContextPath()%>/NewStyles/teacher_product/images/ie-logo.png"
							alt="logo" width="310px" /></a>
						<div class="clearfix"></div>

					</div>
					<!-- /End Navbar Header -->

					<div class="col-md-6 col-xs-6 pull-right">

						<ul class="nav navbar-nav navbar-right pt25 socialnew">
							<li><a href="https://www.facebook.com/InnerExplorer/"
								class="facebookHover" target="_blank"><i
									class="fa fa-facebook"></i></a></li>
							<li><a href="https://twitter.com/Inner_Explorer"
								class="twtHover" target="_blank"><i class="fa fa-twitter"></i></a></li>
							<li><a href="https://www.linkedin.com/company/2925490"
								class="lkndHover" target="_blank"><i class="fa fa-linkedin"></i></a></li>
						</ul>
						<!-- /End Menu Links -->
					</div>
				</div>
				<!-- /End Container -->
			</nav>
			<!-- /End Navbar -->
		</header>
		<!-- /End Header -->


		<!-- =========================
            HERO SECTION
        ============================== -->

		<div id="jssor_1"
			style="position: relative; margin: 0px auto; top: 80px; left: 0px; width: 1500px; height: 700px; overflow: hidden; visibility: hidden;">

			<div data-u="slides"
				style="cursor: default; position: relative; top: 0px; left: 0px; width: 1500px; height: 650px; overflow: hidden;">

				<div data-p="225.00" data-po="80% 55%">
					<img
						data-u="<%=request.getContextPath()%>/NewStyles/teacher_product/images"
						src="<%=request.getContextPath()%>/NewStyles/images/comminity-edi-banner1.jpg" />
					<div class="container">
						<div class="carousel-caption captwo">
							<div class="col-md-12 col-sm-12">
								<h1
									style="font-family: 'Raleway', sans-serif; font-weight: 300 !important">PRACTICE
									MINDFULNESS AS A COMMUNITY – AT SCHOOL & HOME</h1>
								<ul class="bannerulnew hidden-xs">
									<li>Community Edition has been designed for parent teacher
										organizations [PTOs] that are interested in bringing Inner
										Explorer mindfulness practice into their schools and homes.
										For one price, each PTO will gain access for its entire
										school, as well as Home Edition access for each of the members
										associated. With this program, PTOs will have the ability to
										make a measurable impact on their schools and help solve the
										daily issues their communities face. Ready to bring Inner
										Explorer to your community?</li>
									<li>Let’s get started!</li>


								</ul>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="mailBox">
				<div class="col-md-8">
					<form class="" action="saveEmail" method="post" name="form1">
						<div
							class="form-group text-left lhEmail col-md-6 col-md-offset-3 p0">
							<input type="email" class="form-control" id="email" name="email"
								placeholder="Email" required>

						</div>

						<div class="col-md-12 pT18 pL0 text-center" id="gts">
							<!-- <a role="button"  onclick="check();"
								class="trial_popup" data-toggle="modal" data-target="#freeTrial">
								10-Day Free Trial</a> -->
							<a href="/ie/program-trial" class="hovr_co"> 
								<input name="" type="submit" value="10-Day Free Trial"
								class="nxt_page_btn"></a> <a
								href="/ie/get-started" class="hovr_co"> 
								<input name="nextPage" type="submit" value="$99 for 90 Days"
								class="nxt_page_btn"></a>
						</div>
					</form>

				</div>
			</div>

		</div>
		<script type="text/javascript">
			jssor_1_slider_init();
		</script>

		<!-- Form -->

		<div id="freeTrial" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header ext-center">
						<button type="button" class="close cus_clo" data-dismiss="modal"
							onclick="hide();">&times;</button>
						<h4 class="modal-title">Fill Your Information</h4>
					</div>
					<div class="modal-body">
						<%-- <form:form class="contact-form" action="teacherSignUp"
							id="teacher-register" method="post" novalidate="novalidate">
							<div class="col-md-6">
								<div class="form-group">
									<input class="form-control" id="username" placeholder="Name"
										name="username" required="" aria-required="true" type="text">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input class="form-control" name="email" id="email1"
										placeholder="Email" type="email">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input class="form-control" name="password" id="password"
										placeholder="Password" type="password">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group poutdiv">
									<select class="form-control" name=programIds
										onclick="sendProgramId();" id='purposediv'>
										<option value="1" id="p1">Pre-k&ndash;Kindergarten</option>
										<option value="2" id="p2">Elementary School</option>
										<option value="3" id="p3">Middle School</option>
										<option value="4" id="p4">High School</option>
									</select>

								</div>
							</div>
							<div class="modal-footer modal-footer_cus">
								<input name="pCode" value="IE10DAYS" type="hidden"> <input
									class="home_act_btn_1" value="START TRIAL" type="submit"
									style="color: #fff !important">
							</div>


						</form:form> --%>
					</div>
					<!--  <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div> -->
				</div>

			</div>
		</div>
		<!-- Form  -->

		<section class="benefit-outer-main" id="StartProgram">
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center  hidden-md hidden-lg">
						<p class="lead sameFontiep copyIm ">Community Edition has been
							designed for parent teacher organizations [PTOs] that are
							interested in bringing Inner Explorer mindfulness practice into
							their schools and homes.</p>
					</div>
					<div
						class="section-header text-center wow fadeIn sameFontie animated"
						style="visibility: visible;">
						<h2>Start Inner Explorer Experience</h2>
						<p
							class="lead sameFontiep copyIm new_bottom_sub_line col-md-6 col-md-offset-3">Bringing
							Peace to the World through Mindfulness. One Classroom at a Time.</p>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="part2-inner-explorer">
					<div class="row">
						<div class="col-lg-4 col-sm-4 ">
							<div class="icon-box-new1  img-circle">
								<img class="img-circle"
									src="<%=request.getContextPath()%>/NewStyles/teacher_product/images/ace-ben-new.png"
									alt="Daily" width="90px">
							</div>

							<h2>Academic Benefits</h2>
							<div class="clear1"></div>
							<ul class="ulbenefit text-left">

								<li class="fontroboto">Reduced Exam Stress</li>
								<li class="fontroboto">Increased Social Awareness</li>
								<li class="fontroboto">Improved Climate for Learning</li>
								<li class="fontroboto">Improved Grades &amp; Test Scores</li>
								<li class="fontroboto">Improved Participation &amp;
									Engagement</li>
							</ul>
						</div>
						<div class="col-lg-4 col-sm-4 ">
							<div class="icon-box-new1 img-circle">
								<img class="img-circle"
									src="<%=request.getContextPath()%>/NewStyles/teacher_product/images/hlt-ben-new.png"
									alt="Daily" width="90px">
							</div>
							<h2>Health Benefits</h2>
							<div class="clear1"></div>
							<ul class="ulbenefit text-left">
								<li class="fontroboto">Improved Sleep</li>
								<li class="fontroboto">Reduced Hyperactivity</li>
								<li class="fontroboto">Reduced Anxiety &amp; Stress</li>
								<li class="fontroboto">Enhanced Immune Function</li>
								<li class="fontroboto">Enhanced feelings of well-being</li>
							</ul>
						</div>
						<div class="col-lg-4 col-sm-4">
							<div class="icon-box-new1 img-circle">
								<img class="img-circle"
									src="<%=request.getContextPath()%>/NewStyles/teacher_product/images/ove-ben-new.png"
									alt="Daily" width="90px">
							</div>
							<h2>Overall Benefits</h2>
							<div class="clear1"></div>
							<ul class="ulbenefit text-left">
								<li class="fontroboto">Increased Social Awareness</li>
								<li class="fontroboto">Improved Focus and Self-control</li>
								<li class="fontroboto">Increased Resilience &amp;
									Compassion</li>
								<li class="fontroboto">Reduced Likelihood of Juvenile Crime</li>
								<li class="fontroboto">Reduced Behavioral Conflict like
									Bullying</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Our Program -->
		<section id="features4-1" class="p-b-lg">
			<div class="container">
				<div class="row">
					<div
						class="section-header text-center wow fadeIn sameFontie animated"
						style="visibility: visible;">
						<h2>Our Programs</h2>
						<p class="lead sameFontiep">Inner Explorer is the easiest way
							to Practice Mindfulness for 10 Minutes Daily. And 10 Mindful
							Minutes are all you need to Help Students Focus, Reduce Behavior
							Issues and give yourself more time to Teach, Engage and Inspire
							Them</p>
					</div>
				</div>
			</div>

			<div class="container">
				<div class="row">
					<div class="row features-block ourProgarm-new">
						<div
							class="col-sm-4 col-sm-12 col-xs-4 img-left m-b-md clearfix  hvr-rectangle-out  text-center">
							<div class="text-center col-md-12">
								<img
									src="<%=request.getContextPath()%>/NewStyles/teacher_product/images/daily.png"
									alt="">
							</div>

							<div class="clear5"></div>

							<div class="text-center col-md-12">
								<h5 class="m-t f-w-900 sameFontiepTitle">Daily Practice</h5>
							</div>
						</div>
						<div
							class="col-sm-4 col-sm-12 col-xs-4 img-left m-b-md clearfix text-center">
							<img
								src="<%=request.getContextPath()%>/NewStyles/teacher_product/images/mbsr.png"
								alt="">
							<h5 class="m-t f-w-900 sameFontiepTitle">MBSR Protocols</h5>
						</div>
						<div
							class="col-sm-4 col-sm-12 col-xs-4 img-left m-b-md clearfix text-center">
							<img
								src="<%=request.getContextPath()%>/NewStyles/teacher_product/images/play.png"
								alt="" class="quoteFormclick">

							<h5 class="m-t f-w-900 sameFontiepTitle">Just Press Play</h5>
						</div>
					</div>

					<div class="col-md-12 content-block c3">
						<div class="col-sm-3 col-xs-6 p5">
							<img class="img-responsive img-rounded" alt=""
								src="<%=request.getContextPath()%>/NewStyles/teacher_product/images/img1.jpg">
							<div class="post-info plan-four ">
								<h5>Exploring Me™ Pre-k–Kindergarten</h5>
							</div>
						</div>

						<div class="col-sm-3 col-xs-6 p5">
							<img class="img-responsive img-rounded" alt=""
								src="<%=request.getContextPath()%>/NewStyles/teacher_product/images/img2.jpg">
							<div class="post-info plan-four ">
								<h5>Exploring Originality™ Elementary School</h5>
							</div>
						</div>

						<div class="col-sm-3 col-xs-6 p5">
							<img class="img-responsive img-rounded" alt=""
								src="<%=request.getContextPath()%>/NewStyles/teacher_product/images/img3.jpg">
							<div class="post-info plan-four ">
								<h5>Exploring Potential™ Middle School</h5>
							</div>
						</div>

						<div class="col-sm-3 col-xs-6 p5">
							<img class="img-responsive img-rounded" alt=""
								src="<%=request.getContextPath()%>/NewStyles/teacher_product/images/img4.jpg">
							<div class="post-info plan-four ">
								<h5>Exploring Relevance™ High School</h5>
							</div>
						</div>
					</div>
					<!-- <div class="col-md-12 center-block pB70 btnstrtoutr">
						<a class="gs_lg_btn fl btn-gt-strt center-block"
							href="/ie/program-trial">START TRIAL</a>
					</div> -->

				</div>
			</div>
		</section>
		<!-- End Our Program -->


		<section class="videotestimon">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 p0">
						<div class="section-header1 text-center wow fadeIn sameFontie">
							<h2>HOW DOES IT WORK</h2>
						</div>

					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<div class="vidonew">
							<img
								src="<%=request.getContextPath()%>/NewStyles/teacher_product/images/bgsystem.png"
								class="img-responsive  displayed">
							<iframe width="100%" height="200"
								src="https://www.youtube.com/embed/hH0xLcDbBks" frameborder="0"
								allowfullscreen class="iframe-Video" id="popup-youtube-player"></iframe>
						</div>

					</div>
					<div class="col-md-12 center-block pB70 btnstrtoutr">
						<a
							class="gs_lg_btn fl btn-gt-strt center-block signUpLink quoteFormclick"
							href="javascript:;">GET STARTED</a>
					</div>
				</div>
			</div>

		</section>

		<section id="learnmore" class="grayColor testimonaialSec">
			<!-- Section Header -->
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 p0">
						<div class="section-header1 text-center wow fadeIn sameFontie">
							<h2>Testimonials</h2>
						</div>

					</div>
				</div>
			</div>

			<div class="container p0">
				<div role="listbox" class="popupImg">
					<div class="row">
						<div class="col-md-6">
							<div class="testimonial_scroll_outer">
								<div class="col-md-12 p0 t_box">
									<p>Jesse Stone, Clinical Director, Piecing the Puzzle, Inc.</p>
									<p>
										I’ve been utilizing the Inner Explorer mindfulness program
										with multiple clients across the entire autism spectrum, in
										both...<a href="javascript:;" data-toggle="modal"
											data-target="#t1">Read More</a>
									</p>

								</div>
								<div class="col-md-12 p0 t_box">
									<p>Karen Bunjes, Counselor, Killeen TX Hay Branch</p>
									<p>
										Doing great! We had District Rounds in our school on Monday,
										which meant that around 60 people from all over the...<a
											href="javascript:;" data-toggle="modal" data-target="#t2">Read
											More</a>
									</p>

								</div>
								<div class="col-md-12 p0 t_box">
									<p>Vanessa Tamaru, High School Teacher Edendale, CA</p>
									<p>
										I just wanted to comment that my students took three tests in
										a row the other day and out of the 27, I see 23 of them…<a
											href="javascript:;" data-toggle="modal" data-target="#t3">Read
											More</a>
									</p>

								</div>
								<div class="col-md-12 p0 t_box">
									<p>Alison Rini, Principal,IVMS</p>
									<p>
										From my perspective, as a principal of a school where this
										program is used, I have seen it to be a…<a href="javascript:;"
											data-toggle="modal" data-target="#t4">Read More</a>
									</p>

								</div>

							</div>
						</div>
						<div class="col-md-6">
							<div class="item">
								<div class="col-md-6 col-xs-6 col-sm-6">
									<div class="popup-box wow fadeIn testmocustomborder videohover">
										<img alt="" class="img-responsive"
											src="<%=request.getContextPath()%>/NewStyles/images/new-t-1.jpg">
										<div class="videoOnhover">
											<a href="#myModalvideo1" data-toggle="modal"> <i
												class="fa fa-play"></i></a>
											<div data-wow-iteration="3" class="popup-button wow pulse"></div>
										</div>
									</div>
									<h4 class="testimonailbottomtx">Teacher Testimonial: Kelly
										Ann Sassone</h4>
								</div>
								<div class="col-md-6 col-xs-6 col-sm-6">
									<div class="popup-box wow fadeIn testmocustomborder videohover">
										<img alt="" class="img-responsive"
											src="<%=request.getContextPath()%>/NewStyles/images/new-t-2.jpg">
										<div class="videoOnhover">
											<a href="#myModalvideo2" data-toggle="modal"> <i
												class="fa fa-play"></i></a>
											<div data-wow-iteration="3" class="popup-button wow pulse"></div>
										</div>
									</div>
									<h4 class="testimonailbottomtx">Teacher Testimonial -
										Chasmin Moses</h4>
								</div>
								<div class="col-md-6 col-xs-6 col-sm-6">
									<div class="popup-box wow fadeIn testmocustomborder videohover">
										<img alt="" class="img-responsive"
											src="<%=request.getContextPath()%>/NewStyles/images/new-t-3.jpg">
										<div class="videoOnhover">
											<a href="#myModalvideo3" data-toggle="modal"> <i
												class="fa fa-play"></i></a>
											<div data-wow-iteration="3" class="popup-button wow pulse"></div>
										</div>
									</div>
									<h4 class="testimonailbottomtx">Michelle Rainey –
										‘Principal Testimonial’</h4>
								</div>
								<div class="col-md-6 col-xs-6 col-sm-6">
									<div class="popup-box wow fadeIn testmocustomborder videohover">
										<img alt="" class="img-responsive"
											src="<%=request.getContextPath()%>/NewStyles/images/new-t-4.jpg">
										<div class="videoOnhover">
											<a href="#myModalvideo4" data-toggle="modal"> <i
												class="fa fa-play"></i></a>
											<div data-wow-iteration="3" class="popup-button wow pulse"></div>
										</div>
									</div>
									<h4 class="testimonailbottomtx">Teacher Testimonial:
										Kaitlin Toon</h4>
								</div>
							</div>
						</div>
						<div class="col-md-12 center-block pB70 btnstrtoutr">
							<a
								class="gs_lg_btn fl btn-gt-strt center-block signUpLink quoteFormclick"
								href="javascript:;">GET STARTED</a>
						</div>
					</div>
				</div>
			</div>


		</section>
		<!-- /End Recent Projects -->


		<!-- Testimonial modals -->


		<!-- 1 -->
		<div id="t1" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header modal_header_cus">
						<button type="button" class="close cus_clo" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Jesse Stone, MA, BCBA, LABA</h4>
					</div>
					<div class="modal-body">

						<p>I’ve been utilizing the Inner Explorer mindfulness program
							with multiple clients across the entire autism spectrum, in both
							home and group instructional settings, and have found it to be
							invaluable! Mindfulness practices truly help alleviate anxiety in
							many of my clients by guiding them to the present moment in a
							world often filled with questioning: “what happened?” and “what's
							happening next?” Inner Explorer focuses on what is occurring in
							the very moment, and helps the mind and body realize that, truly,
							the present is all that exists. “What happened?” and “what's
							happening next?” are just ways of addressing the former or future
							present moments. Children with an autism spectrum disorder (ASD)
							diagnosis are often focused on the past or future (specifically
							the latter), frequently using visual or verbal schedules to help
							them cope with uncertainty in an unexpected world. I have been
							able to fade the usage of these schedules with 5 of my clients
							through the use of mindfulness practices, specifically Inner
							Explorer. I have seen an increase in the ability to focus on work
							tasks (such as homework) for longer periods and with higher
							accuracy in multiple clients after facilitating group mindfulness
							practice following the (Inner Explorer) guided meditation. All in
							all, I have seen nothing but positive responses in my clients who
							have utilized Inner Explorer, and I am greatly looking forward to
							its continued use across a series of individuals and
							environments. Thank you, Inner Explorer!</p>
						<p>
							Jesse Stone, MA, BCBA, LABA<br> jstone@piecingthepuzzle.org<br>
							Clinical Director<br> Piecing the Puzzle, Inc.
							www.piecingthepuzzle.org
						</p>
					</div>
					<!--   <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div> -->
				</div>

			</div>
		</div>
		<!-- 2 -->
		<div id="t2" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header modal_header_cus">
						<button type="button" class="close cus_clo" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Karen Bunjes</h4>
					</div>
					<div class="modal-body">
						<p>L “Doing great! We had District Rounds in our school on
							Monday, which meant that around 60 people from all over the
							district were divided into smaller groups and they observed
							classes all morning long. I’m telling you this because we had not
							heard anything about the pilot program approval ‘til you emailed
							me and my principal’s boss was also on our campus that day. So I
							ran around and told all the pilot teachers to not do Inner
							Explorer until after their classroom had been observed. They were
							so funny! They didn’t like me telling them that! They asked if
							they could just go ahead and do it because they were fairly sure
							they wouldn’t be observed ‘til later—in reality, they did not
							know what time they would be coming to their classrooms—so I had
							to tell them no. Another teacher said she really wanted to do it
							twice today—I told her that she’d have to wait. She said, well,
							I’m going to get in twice somehow today! The teachers love it!”</p>
						<p>
							Karen Bunjes,<br> Counselor,<br> Killeen TX Hay Branch
						</p>
						</p>
					</div>
					<!--   <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div> -->
				</div>

			</div>
		</div>
		<!-- 3 -->
		<div id="t3" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header modal_header_cus">
						<button type="button" class="close cus_clo" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Vanessa Tamaru</h4>
					</div>
					<div class="modal-body">
						<p>“I just wanted to comment that my students took three tests
							in a row the other day and out of the 27, I see 23 of them
							improved. When students were stressed they utilized mindfulness
							strategies and I definitely have seen an improvement with their
							coping skills. I had two full periods were every single student
							improved in at least one area and out of the class that gets this
							program the most, 4 of my students improved in all areas. I just
							wanted to write this and thank Mr. Harris for being such a great
							support for our special education students and for this program
							in helping both the students and myself calm down for this second
							half of the year. Thank you, and I hope we can continue next
							year.”</p>
						<p>
							Vanessa Tamaru,<br> High School Teacher Edendale,<br>
							CA
						</p>
					</div>
					<!--   <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div> -->
				</div>

			</div>
		</div>
		<!-- 4 -->
		<div id="t4" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header modal_header_cus">
						<button type="button" class="close cus_clo" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Alison Rini</h4>
					</div>
					<div class="modal-body">
						<p>“From my perspective, as a principal of a school where this
							program is used, I have seen it to be a really great addition to
							the classes’ morning routines. The kids can come in and
							re-center, get in touch with where they are emotionally and
							mentally (even physically), and acknowledge their connection to
							humanity as a central component of their experience. The teachers
							pull up each day’s audio file from the website - you just need an
							account, and you are good to go. There are training materials as
							well for people who would be intimidated by the technology, but
							it is purposefully designed to be pretty streamlined with minimal
							teacher prep. It has been really interesting to talk with
							teachers of different grades, to hear their classes’ experiences
							and perspectives. We have one group of children who used the
							program last year as well as this year and their class has been
							so peaceful and emotionally tranquil - it is striking to everyone
							who walks in. These students have also experienced really
							dramatic learning gains as well as developing increased
							confidence, perseverance, and focus. I know things are super
							hectic at this point in the year and we don’t even know each
							other. But I just wanted to offer this as a possibility and let
							you know how much I support what you are doing. I really hope my
							kids (Ray - 3rd grade, Lora - 5th grade) can get an opportunity
							to take on some kind of regular mindfulness practice, but when I
							try to do it with them at home they aren’t that serious. I think
							the schools are an incredible vehicle for this kind of teaching
							and obviously you do too!”</p>
						Alison Rini,<br> Principal,<br>IVMS

					</div>
					<!--   <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div> -->
				</div>

			</div>
		</div>
		<!--Edn testimonial Modal  -->
		<!--Edn testimonial Modal  -->


		<!-- =========================
             FOOTER
        ============================== -->
		<footer id="footer2-2" class="p-y footer f2 bg-edit bg-dark">
			<div class="container">
				<div class="row text-white">
					<div class="col-sm-4 col-xs-12">
						<p>Copyright © 2016. All rights are reserved</p>
					</div>
					<div class="col-sm-4 col-xs-12 text-center">
						<ul class="footer-social">

							<li><div class="fb-like"
									data-href="https://www.facebook.com/InnerExplorer"
									data-width="100" data-layout="button" data-action="like"
									data-size="small" data-show-faces="true" data-share="true"></div></li>
							<li><a href="https://twitter.com/Inner_Explorer"
								class="twitter-follow-button" data-size="small" data-lang="en"
								data-show-count="false" style="font-size: 9px !important">Follow</a>
								<script async src="//platform.twitter.com/widgets.js"
									charset="utf-8"></script></li>
						</ul>
					</div>
				</div>
				<!-- /End Row -->
			</div>
			<!-- /End Container -->

		</footer>
		<!-- /End Footer -->



	</div>
	<!-- /End Main Container -->




	<!-- ?Video PopUp Modal -->

	<!-- Modal 1 -->
	<div id="myModalvideo1" class="modal fade custom-modal-video">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header custom-modal-videoheader">
					<button type="button" class="close closeCustom"
						data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title text-left">Teacher Testimonial: Kelly
						Ann Sassone</h4>
				</div>
				<div class="modal-body video-modal-body">
					<iframe id="testimonialVideo1" width="560" height="315"
						src="https://www.youtube.com/embed/uxwOG0EfO2o?autoplay=0"
						frameborder="0" allowfullscreen style="width: 100%"></iframe>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal 2 -->
	<div id="myModalvideo2" class="modal fade custom-modal-video">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header custom-modal-videoheader">
					<button type="button" class="close closeCustom"
						data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title text-left">Teacher Testimonial -
						Chasmin Moses</h4>
				</div>
				<div class="modal-body video-modal-body">
					<iframe id="testimonialVideo2" width="560" height="315"
						src="https://www.youtube.com/embed/VoaMVtkPJ_c?autoplay=0"
						frameborder="0" allowfullscreen style="width: 100%"></iframe>

				</div>
			</div>
		</div>
	</div>
	<!-- Modal 3 -->
	<div id="myModalvideo3" class="modal fade custom-modal-video">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header custom-modal-videoheader">
					<button type="button" class="close closeCustom"
						data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title text-left">Michelle Rainey – ‘Principal
						Testimonial’</h4>
				</div>
				<div class="modal-body video-modal-body">
					<iframe id="testimonialVideo3" width="560" height="315"
						src="https://www.youtube.com/embed/dYjkGCV5r2M?autoplay=0"
						frameborder="0" allowfullscreen style="width: 100%"></iframe>
				</div>
			</div>
		</div>
	</div>

	<!-- Modal 4 -->
	<div id="myModalvideo4" class="modal fade custom-modal-video">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header custom-modal-videoheader">
					<button type="button" class="close closeCustom"
						data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title text-left">Teacher Testimonial: Kaitlin
						Toon</h4>
				</div>
				<div class="modal-body video-modal-body">
					<iframe id="testimonialVideo4" width="560" height="315"
						src="https://www.youtube.com/embed/HUsKxLcTbNA?autoplay=0"
						frameborder="0" allowfullscreen style="width: 100%"></iframe>
				</div>
			</div>
		</div>
	</div>

	<!-- End Video Popup Modal -->
	<!-- =========================
         SCRIPTS 
    ============================== -->
	<script
		src="<%=request.getContextPath()%>/NewStyles/teacher_product/js/plugins/jquery1.11.2.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/teacher_product/js/plugins/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/teacher_product/js/plugins/jquery.easing.1.3.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/teacher_product/js/plugins/jquery.magnific-popup.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/teacher_product/js/plugins/jquery.vide.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/teacher_product/js/plugins/wow.min.js"></script>
	<!-- Custom Script -->
	<script
		src="<%=request.getContextPath()%>/NewStyles/teacher_product/js/custom.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>


	<script type="text/javascript">
		$('#tbl-prc-price1').on("click", function() {
			// $(window).scrollTop(0);
			$('html, body').animate({
				scrollTop : 0
			}, 800);
		});
		$('#tbl-prc-price2').on("click", function() {
			$('html, body').animate({
				scrollTop : 0
			}, 800);
		});
		$('#tbl-prc-price3').on("click", function() {
			$('html, body').animate({
				scrollTop : 0
			}, 800);
		});
		$('#tbl-prc-price4').on("click", function() {
			$('html, body').animate({
				scrollTop : 0
			}, 800);
		});
	</script>

	<!-- Video Script -->
	<script type="text/javascript">
		$(document).ready(function() {
			/* Get iframe src attribute value i.e. YouTube video url
			and store it in a variable */
			var url = $("#testimonialVideo1").attr('src');

			$("#testimonialVideo1").attr('src', '');
			/* Assign empty url value to the iframe src attribute when
			modal hide, which stop the video playing */
			$("#myModalvideo1").on('hide.bs.modal', function() {
				$("#testimonialVideo1").attr('src', '');
				//callPlayer('yt-player', 'stopVideo');
			});

			/* Assign the initially stored url back to the iframe src
			attribute when modal is displayed again */
			$("#myModalvideo1").on('show.bs.modal', function() {
				$("#testimonialVideo1").attr('src', url);
			});
		});
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			/* Get iframe src attribute value i.e. YouTube video url
			and store it in a variable */
			var url = $("#testimonialVideo2").attr('src');

			$("#testimonialVideo2").attr('src', '');
			/* Assign empty url value to the iframe src attribute when
			modal hide, which stop the video playing */
			$("#myModalvideo2").on('hide.bs.modal', function() {
				$("#testimonialVideo2").attr('src', '');
				//callPlayer('yt-player', 'stopVideo');
			});

			/* Assign the initially stored url back to the iframe src
			attribute when modal is displayed again */
			$("#myModalvideo2").on('show.bs.modal', function() {
				$("#testimonialVideo2").attr('src', url);
			});
		});
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			/* Get iframe src attribute value i.e. YouTube video url
			and store it in a variable */
			var url = $("#testimonialVideo3").attr('src');

			$("#testimonialVideo3").attr('src', '');
			/* Assign empty url value to the iframe src attribute when
			modal hide, which stop the video playing */
			$("#myModalvideo3").on('hide.bs.modal', function() {
				$("#testimonialVideo3").attr('src', '');
				//callPlayer('yt-player', 'stopVideo');
			});

			/* Assign the initially stored url back to the iframe src
			attribute when modal is displayed again */
			$("#myModalvideo3").on('show.bs.modal', function() {
				$("#testimonialVideo3").attr('src', url);
			});
		});
	</script>


	<script type="text/javascript">
		$(document).ready(function() {
			/* Get iframe src attribute value i.e. YouTube video url
			and store it in a variable */
			var url = $("#testimonialVideo4").attr('src');

			$("#testimonialVideo4").attr('src', '');
			/* Assign empty url value to the iframe src attribute when
			modal hide, which stop the video playing */
			$("#myModalvideo4").on('hide.bs.modal', function() {
				$("#testimonialVideo4").attr('src', '');
				//callPlayer('yt-player', 'stopVideo');
			});

			/* Assign the initially stored url back to the iframe src
			attribute when modal is displayed again */
			$("#myModalvideo4").on('show.bs.modal', function() {
				$("#testimonialVideo4").attr('src', url);
			});
		});
	</script>





	<script type='text/javascript'>
		//<![CDATA[
		$(window).load(
				function() {
					$('body').on(
							'click',
							function() {
								$('#popup-youtube-player').stopVideo();
								$('#popup-youtube-player')[0].contentWindow
										.postMessage(
												'{"event":"command","func":"'
														+ 'stopVideo'
														+ '","args":""}', '*');
							});
				});//]]>
	</script>
	<script type="text/javascript">
		$(".quoteFormclick").click(function() {
			$('html, body').animate({
				scrollTop : $(".tt").offset().top
			}, 2000);
		});
	</script>
	<!-- <script type="text/javascript">
  $(document).ready(function(){
    $("#buyPlan").click(function() {
        $('html,body').animate({
            scrollTop: $(".mailBox").offset().top},
            'slow');
    });
  });

</script> -->

	<%-- <script>
		$(document).ready(function() {
			$("#getstartedTrial").click(function() {

				if ($("#email").val() != "") {
					$("#email").removeClass("danger");
					/* $("#test").show();
					$("#getEngaged").show(); */
					$("#test").show();

					//$("#error")[0].style.display = "none";
				} else {
					//$("#error")[0].style.display = "block";
					/* 	$("test").hide();
						$("#getEngaged").hide(); */
					$("#test").hide();
					$("#email").addClass("danger");
				}

			});
		});
	</script> --%>



	<script type="text/javascript">
jQuery(document).ready
(function($){
    		
	 $.validator.addMethod("emailAlreadyExist", function(value, element) {
         return this.optional(element) || emailAlreadyCheckTeacher(value);
     }, "Email already exists. Click Here to <a href='<%=request.getContextPath()%>/login'> Login");
	 $.validator.addMethod("saveEmail", function(value, element) {
         return this.optional(element) || saveEmail(value);
     }, "Email already exists. Click Here to <a href='<%=request.getContextPath()%>/login'> Login");

     		$('#teacher-register').validate({
     			errorElement: 'p', //default input error message container
                // default input error message class
                 focusInvalid: false, // do not focus the last invalid input
                 rules: {
                	
                 	
                	 username: {
                         required: true,
                         //nameRegex:true,
                         maxlength : 20
                         
                     },                 
                    
                     email: {
                         required: true,
                         email: true,
                         emailAlreadyExist: true,
                         saveEmail:true
                     },
                    
                     
                     password: {
                         required: true,
                 		minlength : 6,
                 		maxlength : 20
                     },
                     programIds:
                    	 {
                    	 
                    	 required:true,
                    	
                    	 },
                         invalidHandler: function(event, validator) { //display error alert on form submit   
                         },

                         highlight: function(element) { // hightlight error inputs
                             $(element)
                                 .closest('.outer-field').addClass('has-error'); // set error class to the control group
                             $(element).next('.fancybox').next('.fancybox').addClass('has-error');
                         },
                         
                         success: function(label) {
                             label.closest('.outer-field').removeClass('has-error');
                             label.next('.fancybox').next('.fancybox').removeClass('has-error');
                             label.remove();
                         },

                         errorPlacement: function(error, element) {
                             if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
                                 error.insertAfter(element.next('.fancybox').next('.fancybox'));
                             } else if (element.closest('.input-icon').size() === 1) {
                                 error.insertAfter(element.closest('.input-icon'));
                             } else {
                                 error.insertAfter(element);
                             }
                         },
                         
                         submitHandler: function(form) {
                 
                             form.submit();
                        	 
                         }
                    
                    
                     
                    
                 }

              /*     submitHandler: function(form) {
                	 
                	 if($(".register-form").valid()){
                		 saveParent();
                		
         				return true;
         			}else{
         				return false;
         			}
                 }  */


                 
              
             }); 
     		

     		
}); 

function saveEmail(value){
	
	var email = value;
	if(email != ""){
		$.ajax({
			url : "<%=request.getContextPath()%>/saveEmail",
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




	 
function emailAlreadyCheckTeacher(value){
	//var email = $("#email").val().trim();
	var email = value;
	if(email != ""){
		$.ajax({
			url : "<%=request.getContextPath()%>/check/availability/email",
							method : 'POST',
							headers : {
								'Content-Type' : 'application/json'
							},
							data : {
								
								"email" : email,
								

							},
							cache : false,
						});
			} else {
				emailStatus = true;
			}
			return emailStatus;
		}

		function emailPopUp() {
			/* if (emailAlreadyCheckTeacher($("#email")[0].value)==false)
			{
				alert('Email already Exist');
			}
			else{ */
			if (document.getElementById('email').value == "") {
				alert("Please Enter Email id");
				// $(".trial_popup").attr("disabled", "true");  

			} else {
				$("#email1")[0].value = $("#email")[0].value
			}

		}

		function sendProgramId() {
			var programIds = $('#purposediv option:selected').val();
			$("#programIds").val(programIds);
		}
	</script>
<script>

	$("#ten-days").click(function() {
	
		var email=$("#email").val();
		if (email != "") 
			
		{
			$.ajax({
				url : "<%=request.getContextPath()%>/saveEmail",
								method : 'POST',
								headers : {
									'Content-Type' : 'application/json'
								},
								data : JSON.stringify({
									"email" : email1
								}),
								async : false,
								success : function(result) {
									if (result.response.code == 200) {
										emailStatus = true;
									} else if (result.response.code == 409) {
										emailStatus = false;
									}
								}
							});
				} else {
					emailStatus = true;
				}

	});
		
</script>

	<script type="text/javascript">
		function check() {
			if (document.getElementById('email').value == ""
					|| document.getElementById('email').value == undefined) {
				alert("Please Enter Email id");
				// $(".trial_popup").attr("disabled", "true");  
				return false;
			} else {
				//return true;
				$('#freeTrial').show('slow');
				$('body').addClass('modal-open');
				$('#freeTrial').addClass('in');
				emailPopUp();
				// $(".trial_popup").removeAttr("disabled");
			}
		}
	</script>
	<script type="text/javascript">
		function hide() {
			document.getElementById("freeTrial").style.display = "none";
			$('body').removeClass('modal-open');
		}
	</script>
	<!-- Facebook Pixel Code -->
	<script>
		!function(f, b, e, v, n, t, s) {
			if (f.fbq)
				return;
			n = f.fbq = function() {
				n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
						.push(arguments)
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
		}(window, document, 'script',
				'https://connect.facebook.net/en_US/fbevents.js');
		fbq('init', '1010450862393190', {
			em : 'insert_email_variable,'
		});
		fbq('track', 'PageView');
	</script>
	<noscript>
		<img height="1" width="1" style="display: none"
			src="https://www.facebook.com/tr?id=1010450862393190&ev=PageView&noscript=1" />
	</noscript>
	<!-- DO NOT MODIFY -->
	<!-- End Facebook Pixel Code -->
</body>

</html>
