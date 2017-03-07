              <%--  
  - Author(s): Platform Z
  - Date: 09/20/2016
  - Copyright Notice: Platform Z
  - @(#) 
  - Description: This is for Login as role based (Teacher,Super Hero,Parent,Principal)
  --%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
<script type="text/javascript">
setTimeout(function(){var a=document.createElement("script");
var b=document.getElementsByTagName("script")[0];
a.src=document.location.protocol+"//script.crazyegg.com/pages/scripts/0047/2263.js?"+Math.floor(new Date().getTime()/3600000);
a.async=true;a.type="text/javascript";b.parentNode.insertBefore(a,b)}, 1);
</script>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>Partners</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/crim-favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style-crim.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"
	id="style_components" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link rel='stylesheet' id='layerslider_css-css'
	href='http://crim.org/wp-content/plugins/LayerSlider/css/layerslider.css?ver=4.6.0'
	media='all' />
<link rel='stylesheet' id='rotatingtweets-css'
	href='http://crim.org/wp-content/plugins/rotatingtweets/css/style.css?ver=4.4.5'
	media='all' />
<link rel='stylesheet' id='shareprints-fe-style-css'
	href='http://crim.org/wp-content/plugins/shareprints-gallery/assets/css/shareprints-fe-style.css?ver=1.0.4.5'
	media='all' />
<link rel='stylesheet' id='ubermenu-basic-css'
	href='http://crim.org/wp-content/plugins/ubermenu/standard/styles/basic.css?ver=2.4.0.3'
	media='all' />
<link rel='stylesheet' id='ubermenu-generated-skin-css'
	href='http://crim.org/wp-content/plugins/ubermenu/standard/stylegenerator/skin.css?ver=2.4.0.3'
	media='all' />
<link rel='stylesheet' id='reset-css'
	href='http://crim.org/wp-content/themes/crime/css/reset.css?ver=1.0'
	media='all' />
<link rel='stylesheet' id='style-css'
	href='http://crim.org/wp-content/themes/crime/css/style.css?ver=1.0'
	media='all' />
<link rel='stylesheet' id='responsive-css'
	href='http://crim.org/wp-content/themes/crime/css/responsive.css?ver=1.0'
	media='all' />
<link rel='stylesheet' id='mainstyle-css'
	href='http://crim.org/wp-content/themes/crime/style.css?ver=1.0'
	media='all' />
<link rel='stylesheet' id='cpsh-shortcodes-css'
	href='http://crim.org/wp-content/plugins/column-shortcodes/assets/css/shortcodes.css?ver=0.6.6'
	media='all' />
<script type='text/javascript'
	src='http://crim.org/wp-includes/js/jquery/jquery.js?ver=1.11.3'></script>
<script type='text/javascript'
	src='http://crim.org/wp-includes/js/jquery/jquery-migrate.min.js?ver=1.2.1'></script>
<script type='text/javascript'
	src='http://crim.org/wp-content/themes/crime/js/html5.js?ver=1.0.0'></script>
<script type='text/javascript'
	src='http://crim.org/wp-content/themes/crime/js/jQuery1.11.0.js?ver=1.0.0'></script>
<script type='text/javascript'
	src='http://crim.org/wp-content/themes/crime/js/script.js?ver=1.0.0'></script>
<script type='text/javascript'
	src='http://crim.org/wp-content/plugins/LayerSlider/js/layerslider.kreaturamedia.jquery.js?ver=4.6.0'></script>
<script type='text/javascript'
	src='http://crim.org/wp-content/plugins/LayerSlider/js/jquery-easing-1.3.js?ver=1.3.0'></script>
<script type='text/javascript'
	src='http://crim.org/wp-content/plugins/LayerSlider/js/jquerytransit.js?ver=0.9.9'></script>
<script type='text/javascript'
	src='http://crim.org/wp-content/plugins/LayerSlider/js/layerslider.transitions.js?ver=4.6.0'></script>
<link rel='https://api.w.org/' href='http://crim.org/wp-json/' />
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-73908394-1', 'auto');
  ga('send', 'pageview');

</script>
</head>
<style>
.part2-inner-explorer {
	padding-top: 350px;
}

.paragr {
	padding: 20px;
	line-height: 20px;
	min-height : 120px
}

.launch-btn-nw {
	background-color: #336d96 !important;
	padding: 10px 20px;
	color: #ffffff;
	margin-top: 20px;
	border-radius: 40px;
	text-transform:uppercase;
	font-size:small;
}
.launch-btn-nw:hover, .launch-btn-nw:focus{

color:#ffffff;
text-decoration : none;

}
.icon-box-new1.img-circle img{width:80%}
.launch-btn-nw{float:left;}
.mL20{margin-left:20%}
.mL35{margin-left:35%}
.mL23{margin-left:23%}
</style>
<script>
var email = ${email};
alert("email: " + email);
</script>

<body>
	<div>
		<header class="header active-livingheader">
			<section class="wrapper">

				<section class="logo">
					<a href="http://crim.org"><img
						src="http://crim.org/wp-content/themes/crime/images/logo.png" /></a>
				</section>

				<nav class="mainmenu">
					<a class="mobile-menu" href="javascript:void(0)">Menu</a>
					<div id="megaMenu"
						class="megaMenuContainer megaMenu-nojs megaMenuHorizontal megaResponsive megaResponsiveToggle wpmega-withjs megaMenuOnHover megaFullWidth wpmega-noconflict megaMinimizeResiduals megaResetStyles themeloc-header-menu">
						<div id="megaMenuToggle" class="megaMenuToggle">
							Menu&nbsp; <span class="megaMenuToggle-icon"></span>
						</div>
						<ul id="megaUber" class="megaMenu">
							<li id="menu-item-37"
								class="races menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children mega-with-sub ss-nav-menu-item-0 ss-nav-menu-item-depth-0 ss-nav-menu-mega ss-nav-menu-mega-fullWidth mega-colgroup mega-colgroup-2 ss-nav-menu-mega-alignCenter"><a
								href="http://crim.org/races-events/"><span
									class="wpmega-link-title">Races &#038; Events</span></a></li>
							<li id="menu-item-38"
								class="programes menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children mega-with-sub ss-nav-menu-item-1 ss-nav-menu-item-depth-0 ss-nav-menu-mega ss-nav-menu-mega-fullWidth mega-colgroup mega-colgroup-3 ss-nav-menu-mega-alignCenter"><a
								href="http://crim.org/programs/mindfulness/"><span
									class="wpmega-link-title">Training &#038; Programs</span></a></li>
							<li id="menu-item-4404"
								class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children mega-with-sub ss-nav-menu-item-2 ss-nav-menu-item-depth-0 ss-nav-menu-mega ss-nav-menu-mega-fullWidth mega-colgroup mega-colgroup-2 ss-nav-menu-mega-alignCenter"><a
								href="http://crim.org/active-living/sage/"><span
									class="wpmega-link-title">Advocate</span></a></li>
							<li id="menu-item-1944"
								class="news menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children mega-with-sub ss-nav-menu-item-3 ss-nav-menu-item-depth-0 ss-nav-menu-mega ss-nav-menu-mega-fullWidth ss-nav-menu-mega-alignCenter"><a
								href="http://crim.org/community-education-initiative/"><span
									class="wpmega-link-title">Community Education</span></a></li>
							<li id="menu-item-40"
								class="aboutus menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children mega-with-sub ss-nav-menu-item-4 ss-nav-menu-item-depth-0 ss-nav-menu-mega ss-nav-menu-mega-fullWidth mega-colgroup mega-colgroup-2 ss-nav-menu-mega-alignCenter"><a
								href="http://crim.org/about-us/"><span
									class="wpmega-link-title">About Us</span></a></li>
							<li id="menu-item-4801"
								class="programes menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children mega-with-sub ss-nav-menu-item-5 ss-nav-menu-item-depth-0 ss-nav-menu-mega ss-nav-menu-mega-alignCenter"><a
								href="http://crim.org/icrim/"><span
									class="wpmega-link-title">Crim For Flint</span></a></li>
						</ul>
					</div>
					<section class="clear"></section>
				</nav>

				<section class="social-link">
					<ul>
						<li><a href="http://www.facebook.com/crimfitnessfoundation"
							target="_blank"><img
								src="http://crim.org/wp-content/themes/crime/images/facebook.png" /></a></li>
						<li><a href="https://twitter.com/crimfit" target="_blank"><img
								src="http://crim.org/wp-content/themes/crime/images/twitter.png" /></a></li>
						<!--<li><a href="#"><img src="http://crim.org/wp-content/themes/crime/images/google.png" /></a></li>
			<li><a href="#"><img src="http://crim.org/wp-content/themes/crime/images/you-tube.png"/></a></li>
			<li><a href="#"><img src="http://crim.org/wp-content/themes/crime/images/in.png"/></a></li>-->
						<br>
						<a href="http://crim.org/donate/"><img
							src="http://crim.org/wp-content/themes/crime/images/Donate.png" /></a>
					</ul>
					<section class="clear"></section>
					<div class="serachbox">

						<form role="search" method="get" id="searchform"
							action="http://crim.org/">
							<input type="text" value="" name="s" id="s"
								placeholder="Search Our Site" /> <input type="button" />
						</form>

					</div>
				</section>

			</section>
		</header>
<form
		action="${pageContext.request.contextPath}/crimSuperAdminDashboard"
		method="POST" id="superAdminLogin" target="_blank">
		<input type="hidden" id="semail"
			name="email" /> 
	</form>

<form
		action="${pageContext.request.contextPath}/crimTeacherDashboard"
		method="POST" id="teacherLogin" target="_blank">
		<input type="hidden" id="temail"
			name="email" /> 
	</form>
		<section class="benefit-outer-main" id="StartProgram">

			<div class="container">
				<div class="part2-inner-explorer">
					<div class="row">
						<input type="hidden" name="email" id="email" value="${email}">


						<div class="col-lg-4 col-sm-4 col-md-4 text-center pull-left">
							<div class="icon-box-new1 img-circle">
								<a href="http://learn.mindup.org/flint-entry-page/" target="_blank" onClick="trackPartnerLogin('mindup');">
									<img
									src="<%=request.getContextPath()%>/NewStyles/images/crim-1.jpg"
									alt="Daily">
								</a>

							</div>
							<p class="paragr">MINDUP teaches social and emotional
								learning skills that draw on cognitive neuroscience, positive
								psychology and mindful awareness training.</p>




							<div class="clear1"></div>
							<a href="http://learn.mindup.org/flint-entry-page/" target="_blank"
								class="launch-btn-nw mL35" onClick="trackPartnerLogin('mindup');"> Launch </a>
						</div>



						<div class="col-lg-4 col-sm-4 col-md-4 text-center pull-left">
							<div class="icon-box-new1 img-circle">
								<a href="http://academy.yogaed.com/courses/enrolled/"
									target="_blank" onClick="trackPartnerLogin('yogaed');"> <img
									src="<%=request.getContextPath()%>/NewStyles/images/crim-3.jpg"
									alt="Inner Ecplorer">
								</a>
							</div>
							<p class="paragr">Yoga Ed. equips educators with classroom
								yoga to cultivate health and wellness in children and teens.</p>


							<div class="clear1"></div>
							<a href="http://academy.yogaed.com/courses/enrolled/"
								target="_blank" class="launch-btn-nw mL35" onClick="trackPartnerLogin('yogaed');"> Launch </a>
						</div>

						<div class="col-lg-4 col-sm-4 col-md-4 text-center pull-left">
							<div class="icon-box-new1  img-circle">
								<a> <img
									src="<%=request.getContextPath()%>/NewStyles/images/crim-2.jpg"
									alt="Daily" style="align: center">
								</a>
							</div>
							<p class="paragr">Inner Explorer provides audio guided daily mindfulness programming in schools that reduce students and teachers stress and improve educational outcomes.</p>

							<div class="clear1"></div>
							<ul>
							<li>
							<a onclick="openIEDashboard();" target="_blank" class="launch-btn-nw mL23"> Launch as Teacher
							</a>
							</li>
							</br>
							</br>
							  <c:if test="${isAnAdmin eq '1'}">
							<li>
							<a onclick="openSuperAdminDashboard(); " class="launch-btn-nw mL20" target="_blank"> Launch as Superadmin
							</a>
							</li>
							</c:if>
							</ul>
								
						</div>

					</div>
				</div>
			</div>
		</section>






		</section>
		<!-- /End Recent Projects -->



		<!-- End Price -->

		<!-- =========================
             FOOTER
        ============================== -->
		<%-- <footer id="footer2-2" class="p-y footer f2 bg-edit bg-dark">
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

		</footer> --%>
		<!-- /End Footer -->



	</div>
	<!-- /End Main Container -->

	<!-- Back to Top Button -->




	<!-- ?Video PopUp Modal -->

	<!-- Modal 1 -->
	<div id="myModalvideo1" class="modal fade custom-modal-video">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header custom-modal-videoheader">
					<button type="button" class="close closeCustom"
						data-dismiss="modal" aria-hidden="true">×</button>
					<h4 class="modal-title text-left">Chasmin Moses - Elementary
						School Teacher</h4>
				</div>
				<div class="modal-body video-modal-body">
					<iframe id="testimonialVideo1" width="560" height="315"
						src="https://www.youtube.com/embed/14gna5O58sE?autoplay=1"
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
					<h4 class="modal-title text-left">Susan Summerfield - School
						Teacher</h4>
				</div>
				<div class="modal-body video-modal-body">
					<iframe id="testimonialVideo2" width="560" height="315"
						src="https://www.youtube.com/embed/oE9CNFlm0m8?autoplay=1"
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
					<h4 class="modal-title text-left">Edgar Rodriguez - Third
						Grade Teacher</h4>
				</div>
				<div class="modal-body video-modal-body">
					<iframe id="testimonialVideo3" width="560" height="315"
						src="https://www.youtube.com/embed/jzPe8A-xi0g?autoplay=1"
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
					<h4 class="modal-title text-left">Lindsay Allen - Southbury
						Elementary Principal</h4>
				</div>
				<div class="modal-body video-modal-body">
					<iframe id="testimonialVideo4" width="560" height="315"
						src="https://www.youtube.com/embed/dqKXuE9yf3o?autoplay=1"
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
		function openIEDashboard(){
            var email = $("#email").val().trim();
     <%--        url="<%=request.getContextPath()%>/crimTeacherDashboard";
                $.ajax({
                    url : url,
                    method : 'POST',
                    data : {"email":email},
                    async:false,
                    success : function(result) {
                    	
                    var win = window.open("<%=request.getContextPath()%>/teacher", '_blank');
                    win.focus();
                      
        
            
        }
                
        }); --%>
        $("#temail").val(email);
        $("#teacherLogin").submit();
        
        }
		
		
		function openSuperAdminDashboard(){
            var email = $("#email").val().trim();
<%--             url="<%=request.getContextPath()%>/crimSuperAdminDashboard";
                $.ajax({
                    url : url,
                    method : 'POST',
                    data : {"email":email},
                    async:false,
                    success : function(result) {
                    	
                    var win = window.open("<%=request.getContextPath()%>/superadmin",'_blank');
                    //win.focus();
                      
        
            
        },

        async: false
                
        }); --%>
        
        
        $("#semail").val(email);
        $("#superAdminLogin").submit();
        
        }

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
	function saveEmailFromTeacherPdt(value){

	    //var email = $("#email").val().trim();

	    var email = value;

	    if(email != ""){

	        $.ajax({

	            url : "<%=request.getContextPath()%>/saveEmailFromTeacherPdt",

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
	
	
	function trackPartnerLogin(source){

	    var email = $("#email").val().trim();
	  

	   var source = source;
 
	   
	  

	        $.ajax({

	            url : "<%=request.getContextPath()%>/savePartnerTracking",
	       
                method : 'POST',
                data : {"email":email,"source":source},
                async:false,
                success : function(result){
							
							}

						}); 

		

		}
	</script>

	<script>
		
	</script>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$("#get-started")
									.click(
											function() {
												var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
												var emailTest = $("#email")
														.val();
												if (emailTest != "")

												{
													if (reg.test(emailTest) == false) {
														$("#email").addClass(
																"danger");

														$("#test").hide();

													}

													else {
														$("#test").show();
														$("#email")
																.removeClass(
																		"danger");
														saveEmailFromTeacherPdt(emailTest);
													}

												}

												else {

													$("#test").hide();
													$("#email").addClass(
															"danger");
												}

											});
						});
	</script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$.daisyNav();

		});
	</script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script>
		$(window).load(function() {
			$("#header").sticky({
				topSpacing : 0
			});
		});
	</script>
</body>

</html>
