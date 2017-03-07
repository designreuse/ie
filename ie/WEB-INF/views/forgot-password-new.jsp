<%-- 
  - Author(s): Platform Z
  - Date: 09/20/2016
  - Copyright Notice: Platform Z
  - @(#)
  - Description: This is for Forgot Password
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
<title>Forgot Password</title>
<link rel="icon" type="image/x-icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link id="style_components" rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/components.css"/>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
</head>

<body>
	<div class="wrapper">
		<%@include file="header.jsp"%>
		<section class="tehDsh-step1 mtop-5">
			<div class="containerSmall">
				<form class="forget-form" action="forgotpasswordrequest"
					method="post">
					<div class="pracProgress_hdr">
						<h2>Forgot Password</h2>
						<div class="green_line_btm"></div>
					</div>
					<div class="clr"></div>
					<div class="Login-wrap">
						<div class="Login-inner">
							<div class="loginTop">
							 <p>${param.errorPrincipal}</p> 
								<div class="loginTopLeft">
									<label>Enter Email ID</label>
								</div>
								<div class="loginTopRight">
									<div class="contact-row">
										<div class="outer-field-wrap">
											<div class="outer-field">
												<input type="text" placeholder="Email" autocomplete="off"
													name="email" id="email">
											</div>
											
										</div>
									</div>
								</div>
							</div>
		
							<center><h4 style="font-size: x-large;"> Retrieve your password via </h4></center>
							<div class="loginTop mtop20">
								<div class="loginTopLeft">&nbsp;</div>
						
								<div class="loginTopRight" style="width: 100%;">
								
									<input type="submit" class="submit-btn fl" value="Send Email" style="margin-left: 30px;">
									 <input type="button" class="submit-btn fl" value="Answer Security Questions" onclick="securityQues(document.getElementById('email').value);" style="margin-left: 40px;" > 
								</div>
								</div>
								</div>
							</div>
								</form>
							</div>
                         </section>
						</div>
				
	<div class="getstartForm" id="popup1" style="display:none; width: 70%; margin: -200px 260px 10px;">
					<form action="resetPaswdViaSecurityQues" method="post">
					 <div class="getstartForm" style=" width: 70%; margin: -200px 260px 10px;">
					<label>Answer the Security Questions</label>
					
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
									<label>Your favorite Dessert</label>
										 <input type="text" id="ans1" name="ans1" placeholder="Answer 1"/> 
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
									<label>Your mother's maiden name</label>
										 <input type="text" id="ans2" name="ans2" placeholder="Answer 2" /> 
									</div>
								</div>
							</div>
						</li>
					</ul>  
			<%-- 		 <%
    session.setAttribute("userId", $("#email")[0].value);
        %> --%>
					<input type="hidden"  id="email1" name="email1">
					<input type="submit" class="submit-btn fl" value="Submit" style="margin-left: 50px; margin-top:20px;">
					</div>
					</form>
					</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%@include file="footer.jsp"%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			
			$("#email").focus();
			$.daisyNav();

			 $.validator.addMethod("emailAlreadyExist", function(value, element) {
				 //alert("testing");
                 return this.optional(element) || emailAlreadyCheck(value);
             }, "Email doesn't exist");
			
			$('.forget-form').validate({
				errorElement : 'span', //default input error message container
				errorClass : 'help-block', // default input error message class
				focusInvalid : false, // do not focus the last invalid input
				ignore : "",
				rules : {
					email : {
						required : true,
						email : true,
						emailAlreadyExist: true,
					},
				},

				invalidHandler : function(event, validator) { //display error alert on form submit   
				},

				highlight : function(element) { // hightlight error inputs
					$(element).closest('.outer-field').addClass('has-error'); // set error class to the control group
					$(element).closest('.fullrow').addClass('has-error'); // set error class to the control group
				},

				success : function(label) {
					label.closest('.outer-field').removeClass('has-error');
					label.remove();
				},

				errorPlacement : function(error, element) {
					if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
						error.insertAfter($('#register_tnc_error'));
					} else if (element.closest('.input-icon').size() === 1) {
						error.insertAfter(element.closest('.input-icon'));
					} else {
						error.insertAfter(element);
					}
				},

				submitHandler : function(form) {
					form.submit();
				}
			});
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
			visibleItems : 5,
			animationSpeed : 1000,
			autoPlay : true,
			autoPlaySpeed : 3000,
			pauseOnHover : true,
			enableResponsiveBreakpoints : true,
			responsiveBreakpoints : {
				portrait : {
					changePoint : 480,
					visibleItems : 1
				},
				landscape : {
					changePoint : 640,
					visibleItems : 2
				},
				tablet : {
					changePoint : 768,
					visibleItems : 3
				}
			}
		});
		$(window).load(function() {

			$('.flexslider').flexslider({
				animation : "slide",
				start : function(slider) {
					$('body').removeClass('loading');
				}
			});
			
			

		});
	</script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script>
		$(window).load(function() {
			$("#header").sticky({
				topSpacing : 0
			});

			$("#login").click(function(e) {
				$(".login_panel").toggle();
				e.stopPropagation();
			});

			$(document).click(function(e) {
				if (!$(e.target).is('.login_panel, .login_panel *')) {
					$(".login_panel").hide();
				}
			});

		});
		
		function securityQues(id){
			
			//alert($("#email"));
			//alert(id);
			var email=$("#email").val();
			 if (emailAlreadyCheck(email)==true){
				
				 $("#popup1")[0].style.display = "block"
		    		$(window).scrollTop(0); 
				 
				 
				 $("#email1")[0].value=id
				 
				 
				 
				 
			 }
			 else
				 return("This email does not exist")
		}
		function hideSecurityQues(){
	    	$("#popup1")[0].style.display = "none"
	    		$(window).scrollTop(0);
	   }
		
		function emailAlreadyCheck(value){
			//var email = $("#email").val().trim();
			//alert("in function");
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
							//alert("code is 200");
							emailStatus = false;
						} else if(result.response.code == 409){
							//alert("code is 409");
							emailStatus = true;
						}
					}
				});
			}else{
				emailStatus = false;
			}
			return emailStatus;
		}
	</script>
</body>
</html>
