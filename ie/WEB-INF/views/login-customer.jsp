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
<title>Login</title>
<link rel="icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link id="style_components" rel="stylesheet" type="text/css" 
    href="<%=request.getContextPath()%>/NewStyles/css/components.css"/>
<link rel="stylesheet" type="text/css" 
	href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
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
		<section class="tehDsh-step1 mtop-5">
			<form name='f' id="f" class="login_form"
				action="<c:url value='j_spring_security_check'/>" method='POST'>
				<div class="containerSmall">
					<div class="pracProgress_hdr">
						<h2>Login</h2>
						<div class="green_line_btm"></div>
					</div>
					<div class="clr"></div>
					<div class="Login-wrap">
						<div class="Login-inner">
							<div class="loginTop">
								<c:if test="${not empty param.error}">
									<div class="loginTopLeft">
										<label>&nbsp;</label>
									</div>
									<div class="loginTopRight">
										<div style="color: #a94442;" id="loginError">
											<span>Email or Password is incorrect.</span>
										</div>
									</div>
								</c:if>
								<%
									session.removeAttribute("error");
								%>
								<c:if test="${forgotRequest}">
									<div class="loginTopLeft">
										<label>&nbsp;</label>
									</div>
									<div class="loginTopRight">
										<div style="color: #02a451;" id="loginError">
											<span>An email has been sent to the email address you
												provided with a link to reset your password.</span>
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
												<input type="text" placeholder="Email" id="username"
													name="username" value="${userEmail}"> <input
													type="hidden" name="j_username" id="email">
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
													name="password"> <input type="hidden"
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
									</label> <a href="<%=request.getContextPath()%>/forgotpassword"
										title="Forgot Password?">Forgot Password?</a>
								</div>
							</div>
							<div class="loginTop mtop20">
								<div class="loginTopLeft">&nbsp;</div>
								<div class="loginTopRight">
									<input type="button" onclick="checkRole();readCookie();"
										class="submit-btn fl" value="LOGIN" id="loginButton">
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
		<section class="makeDonateSct mtop-5">
			<div class="pracProgress_hdr">
				<h2>Choose Role</h2>
				<div class="green_line_btm"></div>
				<div class="clr"></div>
			</div>
			<div class="check-select-out-new">
				<div class="check-select background-none full-width margin-top-ten">
					<ul id="multipleUserLogin">
					</ul>
				</div>
			</div>
	</div>

	<script type="text/javascript" 
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"></script>
	<%@include file="footer.jsp"%>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"></script>
	<script type="text/javascript"
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
		setTimeout(function(){ $("#loginError").remove(); }, 3000);
		$("#eamil").blur(function(event) {
			setTimeout(function(){ jQuery("#loginError").remove(); }, 3000);
		});
		$("#password").blur(function(event) {
			setTimeout(function(){ jQuery("#loginError").remove(); }, 3000);
		}); 
		 
		// Login on Enter key
		$("#password").keypress(function (e) {
		    if (e.which == 13) {
		    	$("#loginButton").click();
		    }
		});	
	});
</script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
	<script type="text/javascript">	
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
                			 userOptions+='<li class="width33 role-select mbtm30">'+
                			 '<a onclick="submitFormWithRole('+value.categoryId+');" class="hero_role'+value.categoryId+'"></a>'+
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
          						window.location.href="<%=request.getContextPath()%>/newPassword?uid="+ value.userId;
															} else {
																$("#j_password").val($("#password").val());
																$("#email").val($("#username").val());
																$("#f").submit();
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
		ga('require', 'displayfeatures');
		ga('send', 'pageview');
	</script>
</body>
</html>