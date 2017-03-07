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
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Parent Edition</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
</head>

<body>
	<div class="wrapper">
	  <%@include file="header.jsp" %>
		<section class="makeDonateSct mtop-5">
			<div class="containerSmall">
		<form:form name="parentSignup" class="register-form" modelAttribute="dtoUser" action="parentSignup" method="POST">
         <div class="pracProgress_hdr">
            <h2>Parent Signup</h2>
            <div class="green_line_btm"></div>
				<h3 class="teachr_dsh bdr-btm-none">Start your Inner Explorer experience today</h3>
				<div class="clr"></div>
				<div class="check-select-out">
                	<div class="check-select">
                    	<ul>
							<li><input type="radio" name="group2" value="Parent Edition" id="check-2" checked> <label  for="check-2">Parent Edition</label></li>
                        </ul>
                    </div>
                </div>
            </div>
				<div class="getstartForm_teacher">
                	<label>School Info for Child</label>
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="School Name" value="${schoolDetails.schoolName}" readonly="readonly"/>
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="School Address" value="${schoolDetails.address}" readonly="readonly"/>
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Zip Code" value="${schoolDetails.zipCode}" readonly="readonly"/>
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="City/State" value="${schoolDetails.stateShort}" readonly="readonly"/>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Teacher Name" value="${schoolDetails.name}" readonly="readonly"/>
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Class" value="${schoolDetails.className}" readonly="readonly"/>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="getstartForm">
					<label>Set IE Credentials</label>
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="email" type="text" placeholder="Email" />
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="mobile" type="text" placeholder="Mobile" />
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="password" type="password" placeholder="Password" />
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="password" placeholder="Confirm Password" name="confirmPassword"/>
									</div>
								</div>
							</div>
						</li>
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="firstName" type="text" placeholder="First Name" />
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="lastName" type="text" placeholder="Last Name" />
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				<div class="btns-outer mtop10">
				<input type="text" value="1" name="parentType"/>
				<input type="hidden" value="${schoolDetails.teacherId}" name="teacherId"/>
					<input type="submit" value="START PRACTICE" class="submit-btn fl" />
				</div>
			</form:form>
		</div>
	</section>
</div>
	<footer>
		<div class="container">
			<div class="footerLeft">
				<p>Copyright © 2015 Inner Explorer</p>
			</div>
			<div class="footerRight">
				<ul>
					<li><a href="javascript:;">Privacy Policy</a></li>
					<li><a href="javascript:;">Terms & Conditions</a></li>
				</ul>
			</div>
		</div>
	</footer>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>  
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script> 
   <script type="text/javascript">	
   function emailAlreadyCheck(){
		var email = $("#email").val().trim();
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
   
	jQuery(document).ready
	(function($){
		$.daisyNav();
		
		
		
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
		                        //ignore: "",
		                        rules: {
		                        	
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

		                            password: {
		                                required: true,
		                        		minlength : 6,
		                        		maxlength : 20
		                            },
		                            confirmPassword: {
		                                equalTo: "#password"
		                            },
		                            mobile:{
		                        		required: true,
		                        		minlength : 10,
		                        		maxlength : 30
		                        		//digits	: true
		                        	},
		                        	check:{
		                        		required:true
		                        		
		                        	}

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
		                    });

		
		
		
	});
	</script>
	
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	
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

</body>
</html>
 