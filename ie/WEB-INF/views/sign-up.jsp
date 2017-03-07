<%-- 
  - Author(s): Platform Z
  - Date: 09/19/2016
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
	href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/the-styles.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/NewStyles/css/inner-pages-style.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.11.2/css/bootstrap-select.min.css">
	
	<style>
	p.error {
	/* bottom: -12px !important;
	font-size: 11px !important;
	padding: 0 7px !important;
	position: absolute !important;
	z-index: 9999 !important;
	background-color: #f2dede !important;
	border-color: #ebccd1 !important; */
	color: #a94442 !important;
	/* border: 1px solid transparent !important;
	border-radius: 1px !important; */
}
</style>
</head>

<body class="img_full">
	<nav class="navbar navbar-default navbar-fixed-top navbar-transparent">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand ie-logo" href="#"><img
					src="<%=request.getContextPath()%>/NewStyles/images/ie-logo.png"></a>
			</div>
		</div>
	</nav>
	<!-- Center Section -->
	<section class="center_section">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-4 col-md-offset-4">
					<div class="col-md-12 pull-left mB60 text-center">

						<div class="col-md-6 text-right">
							<a href="<%=request.getContextPath()%>/loginNew"
								class="btn btn_with_shadow">LOGIN</a>
						</div>
						<div class="col-md-6 text-left">
							<a href="<%=request.getContextPath()%>/signupUser"
								class="btn btn_with_shadow">START JOURNEY</a>
						</div>
					</div>
					<form:form class="pull-left col-md-10 col-md-offset-1"
						action="teacherSignUp" id="teacher-register" method="post"
						novalidate="novalidate">
						<div class="form-group">
							<input type="email" class="form-control custom_input_field"
								name="email" id="email1" placeholder="Email">
						</div>
						<div class="form-group">
							<input type="password" class="form-control custom_input_field"
								name="password" id="password" placeholder="Password">
						</div>
						<div class="form-group">
							<input type="password" class="form-control custom_input_field"
								name="confirmPassword" id="confirmPassword"
								placeholder="Confirm Password">
						</div>
						<div class="form-group">
							<select class="selectpicker custom_input_field" name="programIds"
								id="p1">
								<optgroup>
									<!-- <option class="option_one">Select Program</option> -->
									<option value="1">Pre-k–Kindergarten</option>
									<option value="2">Elementary School</option>
									<option value="3">Middle School</option>
									<option value="4">High School</option>
								</optgroup>
							</select>
						</div>
						<div class="clear20"></div>
						<div class="col-md-12 text-center">
							<button class="btn btn_with_shadow" type="submit">START</button>

						</div>
							<input  name="pCode"  value="IE10DAYS" type="hidden">
							<input  name="username"  value="user" type="hidden">
					</form:form>
				</div>
			</div>
		</div>
	</section>

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.11.2/js/bootstrap-select.min.js"></script>
	<script src="NewStyles/js/jquery.daisynav.min.js"></script>
	<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
    
	});
	</script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
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
	                         
	                     },
	                      
	                     password: {
	                         required: true,
	                 		minlength : 6,
	                 		maxlength : 20
	                     },
	                     confirmPassword: {
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
	             }); 
	     		

	     		
	}); 

	function saveEmail(value){
		var email = value;
		if(email != ""){
			$.ajax({
				url : "<%=request.getContextPath()%>/saveTempEmailForTrial",
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
							data : JSON.stringify({
								"email" : email
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
			return emailStatus;
		}
	</script>
</body>
</html>
