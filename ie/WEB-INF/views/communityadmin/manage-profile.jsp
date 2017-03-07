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
<title>Manage Profile</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"
	id="style_components" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
</head>

<body>
	<div class="wrapper">
		<%@include file="header.jsp"%>
		<!--<section class="slider-inner">
			<img src="images/browse-donation-header.jpg" alt="Slider" />
		</section>-->

		<section class="makeDonateSct">
			<div class="containerSmall">


				<div class="pracProgress_hdr">
					<h2>Manage Community Profile</h2>
					<div class="green_line_btm"></div>

				</div>

				<div class="clr"></div>
				<form:form method="post" modelAttribute="dtoUser"
					enctype="multipart/form-data" action="updateProfile"
					id="saveSignupForm" class="register-form">
					<input type="hidden" name="userId" id="userId"
						value="${dtoUser.userId}" />

					<div class="getstartForm">
						<label>Personal Info</label>
						<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input placeholder="Name*" path="firstName"
												id="firstName" value="${dtoUser.firstName}" />
										</div>
									</div>
								</div>
							</li>
							<%--  <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input placeholder="Last Name" path="lastName" id="lastName" value="${dtoUser.lastName}"/>
									</div>
								</div>
							</div>
						</li> --%>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input placeholder="Mobile Number*" path="ownerMobile"
												id="ownerMobile" value="${dtoUser.ownerMobile}" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input placeholder="Email*" path="email" id="email"
												value="${dtoUser.email}" autocomplete="off" />
										</div>
									</div>
								</div>
							</li>

						</ul>


					</div>
					<div class="getstartForm">
						<label>Password Management</label>
						<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="password" placeholder="Enter old password"
												name="oldPassword" id="oldPassword" autocomplete="off" />
										</div>
									</div>
								</div>
							</li>
							<li></li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="password" placeholder="Enter New password"
												id="password" name="newPassword" autocomplete="off" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="password" placeholder="Re-enter Password"
												name="confirmPassword" autocomplete="off" />
										</div>
									</div>
								</div>
							</li>

						</ul>


					</div>

					<div class="getstartForm">
						<label>Security Question</label>
						<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<label>Your favorite dessert</label>
											<form:input type="text" path="answer1"
												value="${dtoUser.answer1}" placeholder="Answer 1" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<label>Your mother's maiden name</label>
											<form:input type="text" path="answer2"
												value="${dtoUser.answer2}" placeholder="Answer 2" />
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
				





					<div class="btns-outer mtop10">
					<input type="submit" value="submit" class="submit-btn fl" />
				</div> 
			

					

				</form:form>
			</div>
		</section>
	</div>




	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%@include file="../footer.jsp"%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$("#header").sticky({ topSpacing: 0 });
		$.daisyNav();
	});
	</script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>

	<script type="text/javascript">


    $(function(){
    	var oldPwd = '${dtoUser.password}';
    	
    	
        function emailAlreadyCheck(){
			var email = $("#email").val().trim();
			var userId = $("#userId").val();
			if(email != ""){
				$.ajax({
					url : "<%=request.getContextPath()%>/check/availability/email",
					method : 'POST',
					headers: { 
						'Content-Type':'application/json'
						},
					data : JSON.stringify({"email":email,"userId":userId}),
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
        function oldPasswordCheck(){
        	var oldPassword = $('#oldPassword').val();
        	if(oldPassword!=''){
        		//alert(oldPwd);
        		//alert(oldPassword);
        		//alert((oldPwd != oldPassword));
        		if(oldPwd != oldPassword){
        			//alert(false);
        			pwdStatus = false;
        		}else{
        			pwdStatus = true;
        		}
        	}else{
        		pwdStatus = true;
        	}
        	return pwdStatus;
        }
        $.validator.addMethod("oldPasswordNotMatch", function(value, element) {
            return this.optional(element) || oldPasswordCheck();
        }, "Old password do not match.");
        $.validator.addMethod("emailAlreadyExist", function(value, element) {
            return this.optional(element) || emailAlreadyCheck();
        }, "Email already exists.");
        $.validator.addMethod("nameRegex", function(value, element) {
            return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
        }, "Field must contain letters only.");
        
        $('.register-form').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            ignore: "",
            rules: {
            	
            	phone:{
            		required: true,
            		minlength : 10,
            		maxlength : 30
            		//digits	: true
            	},
            	
              
          
                firstName: {
                    required: true,
                    //nameRegex:true,
                    maxlength : 20
                },
                lastName: {
                    /* required: true, */
                   // nameRegex:true,
                    maxlength : 20
                },
            
                email: {
                    required: true,
                    email: true,
                    emailAlreadyExist: true
                },
                oldPassword: {
                	oldPasswordNotMatch: true
                },
                newPassword: {
            		minlength : 6,
            		maxlength : 20
                },
                confirmPassword: {
                    equalTo: "#password"
                },
                ownerMobile:{
            		/* required: true, */
            		minlength : 10,
            		maxlength : 30
            		//digits	: true
            	}
            	

            },


            invalidHandler: function(event, validator) { //display error alert on form submit   
            },

            highlight: function(element) { // hightlight error inputs
                $(element)
                    .closest('.outer-field').addClass('has-error'); // set error class to the control group
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

      //SyntaxHighlighter.all();
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

</body>
</html>
