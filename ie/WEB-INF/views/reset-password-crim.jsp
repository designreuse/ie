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
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/crim-favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style-crim.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
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
</head>
<style>

.loginTopLeft {
	float: left;
	width: 30%;
}

.loginTopRight {
	float: left;
	margin: 0 0 0 3%;
	width: 65%;
}

.submit-btn.fl {
	padding: 11px 25px;
}
.containerSmall {
	padding-top: 150px;
}
</style>


<body>

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
							href="http://crim.org/programs/"><span
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
							href="http://crim.org/icrim/"><span class="wpmega-link-title">Crim
									For Flint</span></a></li>
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
	<div>
	
	

<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-73908394-1', 'auto');
  ga('send', 'pageview');

</script>
<section class="tehDsh-step1 mtop-5">
	<div class="containerSmall">
     	<div class="pracProgress_hdr">
     		<h2>Reset Password</h2>
     			<div class="green_line_btm"></div>
     	</div>
				<div class="clr"></div>						
				<div class="Login-wrap">
					<div class="reset-inner">
					<form class="forget-form" action="<%=request.getContextPath()%>/reset-password-crim" method="post">
					<input name="userId" type="hidden" value="${userId}">
						<div class="loginTop">
							<div class="loginTopLeft">
								<label>Enter Password</label>
							</div>
							<div class="loginTopRight">
								<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="password" placeholder="" name="password" id="password">
									</div>
								</div>
							</div>
							</div>
						</div>
						
						<div class="loginTop">
							<div class="loginTopLeft">
								<label>Re-Enter Password</label>
							</div>
							<div class="loginTopRight">
								<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="password" placeholder="" name="confirmpassword" id="confirmPassword">
									</div>
								</div>
							</div>
							</div>
						</div>
						<div class="loginTop mtop20">
							<div class="loginTopLeft">&nbsp;</div>
							<div class="loginTopRight">
								<input type="submit" class="submit-btn fl" value="SUBMIT">
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
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script type="text/javascript">	
jQuery(document).ready
	(function($){
		$.daisyNav();
		
		$('.forget-form').validate({
	        errorElement: 'span', //default input error message container
	        errorClass: 'help-block', // default input error message class
	        focusInvalid: false, // do not focus the last invalid input
	        ignore: "",
	        rules: {
	        	 password: {
	                required: true,
	         		minlength : 6,
	         		maxlength : 20
	             },
	             confirmpassword: {
	                 equalTo: "#password"
	             }
	        },

	        invalidHandler: function(event, validator) { //display error alert on form submit   
	        },

	        highlight: function(element) { // hightlight error inputs
	            $(element)
	                .closest('.outer-field').addClass('has-error'); // set error class to the control group
	            $(element)
	                .closest('.fullrow').addClass('has-error'); // set error class to the control group
	        },

	        success: function(label) {
	            label.closest('.outer-field').removeClass('has-error');
	            label.remove();
	        },

	        errorPlacement: function(error, element) {
	            if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
	                error.insertAfter($('#register_tnc_error'));
	            } else if (element.closest('.input-icon').size() === 1) {
	                error.insertAfter(element.closest('.input-icon'));
	            } else {
	                error.insertAfter(element);
	            }
	        },

	        submitHandler: function(form) {
	            form.submit();
	        }
	    });
		
	});
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
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
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
  <script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
    });
  </script>
</body>
</html>