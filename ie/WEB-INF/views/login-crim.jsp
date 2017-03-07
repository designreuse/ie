<%-- 
  - Author(s): Platform Z
  - Date: 09/20/2016
  - Copyright Notice: Platform Z
  - @(#)
  - Description: This is for Login as role based (Teacher,Super Hero,Parent,Principal)
  --%>
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
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>Login</title>
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
</head>
<style>
img .wp-smiley, img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
	}
	.log-pad
	{
	padding-top
	:
	150px
	!important;
}

.submit-btn.fl {
	padding: 11px 25px;
}
header{
position:relative !important;
width : 100%;
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
					<a href="http://crim.org/giving-tuesday-4/"><img
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

		<section class="tehDsh-step1 mtop-5">
			<form name='f' id="f" class="login_form" action="crimTeacherLogin"
				method='POST'>
				<div class="containerSmall">
					<div class="pracProgress_hdr">
						<h2>Login</h2>
						<div class="green_line_btm"></div>
					</div>
					<div class="clr"></div>
					
					<div class="Login-wrap">
						<div class="Login-inner">
							<%-- 	<div class="loginTop">
								<c:if test="${not empty param.error}">
									<div class="loginTopLeft">
										<label>&nbsp;</label>
									</div>
									<div class="loginTopRight">
										<div
										 style="color: #a94442;" id="loginError">
											<span>Email or Password is incorrect.</span>
										</div>
									</div>
								</c:if>
								<%session.removeAttribute("error"); %>
								<c:if test="${forgotRequest}">
									<div class="loginTopLeft">
										<label>&nbsp;</label>
									</div>
									<div class="loginTopRight">
										<div style="color: #336d96;" id="loginError">
											<span>An email has been sent to the email address you
												provided with a link to reset your password.</span>
										</div>
									</div>
								</c:if>
								<%session.removeAttribute("forgotRequest"); %>
							</div> --%>


							<%-- 	<div class="loginTopLeft">
										<label>&nbsp;</label>
									</div>
									<div class="loginTopRight">
										<div style="color: #336d96;" id="loginError">
											<span>An email has been sent to the email address you
												provided with a link to reset your password.</span>
										</div>
									</div> --%>
<div class="loginTop">
<c:if test="${invaildforgotRequest=='403'}">
						<font color="red" style="text-align: center; margin-left: 300px"
							id="invaildforgotRequest">You are not a first time user.</font>
					</c:if>
					<c:if test="${forgotRequest}">
						<div class="loginTopLeft">
										<label>&nbsp;</label>
									</div>
									<div class="loginTopRight">
									<div style="color: #0066CC;" id="invaildforgotRequest">
						<span>An email has been sent to the email address you
												provided with a link to reset your password</span>
												</div>
												</div>

					</c:if>
						<%
									session.removeAttribute("forgotRequest");
								%>
</div>
							<div class="loginTop">
								<div class="loginTopLeft">
									<label>Email</label>
								</div>
								<div class="loginTopRight">
									<div class="contact-row">
										<div class="outer-field-wrap">
											<div class="outer-field">
												<input type="text" placeholder="Email" id="email"
													name="email" required> <input type="hidden"
													name="j_username" id="email">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="loginTop">
								<div class="loginTopLeft">
									<label>Password</label>
								</div>
								<div class="loginTopRight">
									<div class="contact-row">
										<div class="outer-field-wrap">
											<div class="outer-field">
												<input type="password" placeholder="Password" id="password"
													name="password" required> <input type="hidden"
													name="j_password" id="j_password">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="loginTop">
								<div class="loginTopLeft">&nbsp;</div>
								<div class="loginTopRight">
									<label> <input type="checkbox"
										name="_spring_security_remember_me" id="remember">
										Remember Me
									</label>  <a href="<%=request.getContextPath()%>/forgotpasswordcrim"
										title="Forgot Password?">Forgot Password?</a> 
										<%-- <br> <a
										href="<%=request.getContextPath()%>/crimPassGen"
										title="First Time Users?">First Time Users</a> --%>
								</div>
							</div>
							<div class="loginTop mtop20">
								<div class="loginTopLeft">&nbsp;</div>
								<div class="loginTopRight">
									<input type="button" onclick="checkRole();readCookie();"
										class="submit-btn fl" value="LOGIN">
								</div>
							</div> 
							<script type="text/javascript">
                    			function readCookie(){
		                     		var email = $('#username').val();
		                    		if ($('#remember').is(':checked')) {
		                    			localStorage.usrname = $('#username').val();
		                                localStorage.pass = $('#password').val();
		                                localStorage.chkbx = $('#remember').val();
		                    		}
                    			}
                         	</script>
						</div>
					</div>
				</div>
			</form>
		</section>
	</div>

	<div id="roleCheck" style="display: none;" class="wrapper">
		<div class="pracProgress_hdr">
			<h2>Choose Role</h2>
			<div class="green_line_btm"></div>
			<div class="clr"></div>
			<div class="check-select-out-new">
				<div class="check-select background-none full-width margin-top-ten">
					<ul id="multipleUserLogin">
						<li class="width45 role-select"><input type="radio"
							name="group2" value="Teacher" id="check-1"
							onchange="submitFormWithRole(2);"> <br> <label
							for="check-1"><img
								src="<%=request.getContextPath()%>/NewStyles/images/role-1.png"></label></li>
						<li class="width45 role-select"><input type="radio"
							name="group2" value="School Administrator"
							onchange="submitFormWithRole(3);" id="check-2"> <br>
							<label for="check-2"><img
								src="<%=request.getContextPath()%>/NewStyles/images/role-2.png"></label></li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%-- <%@include file="footer.jsp"%> --%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$("#username").focus();
		 $("#login").click(function(e) {
		        $(".login_panel").toggle();
		        e.stopPropagation();
		    });

		    $(document).click(function(e) {
		        if (!$(e.target).is('.login_panel, .login_panel *')) {
		            $(".login_panel").hide();
		        }
		    });
		
		 if (localStorage.chkbx && localStorage.chkbx != '') {
	            $('#remember').attr('checked', 'checked');
	            $('#username').val(localStorage.usrname);
	            $('#password').val(localStorage.pass);
	        } else {
	            $('#remember').removeAttr('checked');
	            $('#username').val('');
	            $('#password').val('');
	        }

	        $('#remember').click(function() {

	            if ($('#remember').is(':checked')) {
	                // save username and password
	                localStorage.usrname = $('#username').val();
	                localStorage.pass = $('#password').val();
	                localStorage.chkbx = $('#remember').val();
	            } else {
	                localStorage.usrname = '';
	                localStorage.pass = '';
	                localStorage.chkbx = '';
	            }
	        });
		
		 $('.login_form').validate({
             errorElement: 'span', //default input error message container
             errorClass: 'help-block', // default input error message class
             focusInvalid: false, // do not focus the last invalid input
             ignore: "",
             rules: {
            	 username:{
             		required: true
             	},
             	password:{
             		required: true
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
		setTimeout(function(){ $("#invaildforgotRequest").remove(); }, 3000);
		$("#eamil").blur(function(event) {
			setTimeout(function(){ jQuery("#loginError").remove(); }, 3000);
		});
		$("#password").blur(function(event) {
			setTimeout(function(){ jQuery("#loginError").remove(); }, 3000);
		}); 
	});
	</script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
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
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
    });
    
    function checkRole(){
    	//alert("Check Role in Login-Crim")
    	var email = $("#username").val();
    	var url='<%=request.getContextPath()%>/checkRoleMultiple';
    	
if($("#f").valid()){
    	$.ajax({
             url:url,
             method:'GET',
             async :false,
             data:{email:email},
             success:function(response){
            	 if(response.modelMap.categories.length==0){
            		 $("#f").submit();
            	 }
            	 else{
            	 var userOptions='';
            	 userOptions+='<ul>';
            	 $.each( response.modelMap.categories, function(index,value) {
            		 var sizeOfArrray = response.modelMap.categories.length;
            		 if(sizeOfArrray>1){
            			 userOptions+='<li class="width45 role-select">'+
            			 '<input type="radio" name="group2" value="Teacher" id="check-'+value.categoryId+'" onchange="submitFormWithRole('+value.categoryId+');">'+
            			 '<br>'+
            			 '<label for="check-'+value.categoryId+'">'+
            			 '<img src="<%=request.getContextPath()%>/NewStyles/images/role-'+value.categoryId+'.png">'+
            			 '</label>'+
            			 '</li>';
            			 
      					//show dialog
      					 $.fancybox({
      						 'minWidth':600,
      						 'padding':45,
      						 'minHeight':150,
      					     'autoScale': true,
      					     'autoDimensions': true,
      					     'centerOnScroll': true,
      					     'href' : '#roleCheck'
      					  });
      					}else{
      					//submit form
      					if(value.migratedUser=="Y" && value.joinedUser=="NA"){
      						window.location.href="<%=request.getContextPath()%>/newPassword?uid="
																		+ value.userId;
															} else {
																$("#j_password")
																		.val(
																				$(
																						"#password")
																						.val());
																$("#email")
																		.val(
																				$(
																						"#username")
																						.val());
																$("#f")
																		.submit();
															}
														}
													});

									userOptions += '</ul>';
									$("#multipleUserLogin").html(userOptions);
								}
							}
						});
			}
		}

		function submitFormWithRole(roleId) {
			$("#j_password").val($("#password").val());
			$("#email").val($("#username").val() + ";" + roleId);
			$("#f").submit();
		}
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
				'//www.google-analytics.com/analytics.js', 'ga');
		ga('create', 'UA-73908394-1', 'auto');
		ga('send', 'pageview');
	</script>
	<script type="text/javascript">
			window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/72x72\/","ext":".png","source":{"concatemoji":"http:\/\/crim.org\/wp-includes\/js\/wp-emoji-release.min.js?ver=4.4.5"}};
			!function(a,b,c){function d(a){var c,d,e,f=b.createElement("canvas"),g=f.getContext&&f.getContext("2d"),h=String.fromCharCode;return g&&g.fillText?(g.textBaseline="top",g.font="600 32px Arial","flag"===a?(g.fillText(h(55356,56806,55356,56826),0,0),f.toDataURL().length>3e3):"diversity"===a?(g.fillText(h(55356,57221),0,0),c=g.getImageData(16,16,1,1).data,g.fillText(h(55356,57221,55356,57343),0,0),c=g.getImageData(16,16,1,1).data,e=c[0]+","+c[1]+","+c[2]+","+c[3],d!==e):("simple"===a?g.fillText(h(55357,56835),0,0):g.fillText(h(55356,57135),0,0),0!==g.getImageData(16,16,1,1).data[0])):!1}function e(a){var c=b.createElement("script");c.src=a,c.type="text/javascript",b.getElementsByTagName("head")[0].appendChild(c)}var f,g;c.supports={simple:d("simple"),flag:d("flag"),unicode8:d("unicode8"),diversity:d("diversity")},c.DOMReady=!1,c.readyCallback=function(){c.DOMReady=!0},c.supports.simple&&c.supports.flag&&c.supports.unicode8&&c.supports.diversity||(g=function(){c.readyCallback()},b.addEventListener?(b.addEventListener("DOMContentLoaded",g,!1),a.addEventListener("load",g,!1)):(a.attachEvent("onload",g),b.attachEvent("onreadystatechange",function(){"complete"===b.readyState&&c.readyCallback()})),f=c.source||{},f.concatemoji?e(f.concatemoji):f.wpemoji&&f.twemoji&&(e(f.twemoji),e(f.wpemoji)))}(window,document,window._wpemojiSettings);
		</script>
</body>
</html>