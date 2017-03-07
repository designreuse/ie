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
<title>Complete Profile</title>
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
	<link href="<%=request.getContextPath()%>/NewStyles/css/autocomplete/main.css" rel="stylesheet">
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
					<h2>Complete Profile</h2>
					<div class="green_line_btm"></div>

				</div>

				<div class="clr"></div>
				<form:form method="post" modelAttribute="dtoUser"
					enctype="multipart/form-data" action="updateDetails"
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
											<form:input placeholder="First Name*" path="firstName"
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
					<div class="getstartForm_teacher">
						<label>School Setup</label>
						<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input placeholder="School Name*" path="schoolName"
												id="schoolName" value="${dtoUser.schoolName}" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input placeholder="Address*" path="address"
												id="address" value="${dtoUser.address}" />
										</div>
									</div>
								</div>
							</li>
							 <li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input placeholder="Number Of Students" path="studentNumber"
												id="numberOfStudents" value="${dtoUser.studentNumber}" />
										</div>
									</div>
								</div>
							</li> 
							<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="sign_txt">
										 <select name="schoolType" class="select-dept">
											<option value="">How did you hear about IE?</option>
												<option value="1">From social media</option>
												<option value="2">From another school or teacher</option>
												<option value="3">Through IE advertisement</option>
												<option value="4">WISDOM 2.0</option>
												<option value="5">Conference</option>
										 </select>
									</div>
								</div>
							</div>
						</li>
						
						<li id="newSchoolLogo" class="aa" style="display:block !important;">
								<div class="getstart-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" id="disableImagePath" disabled
												placeholder="Add Logo" />
										</div>
									</div>
								</div>
								<div class="photoIcon">
									<div class="cam_upload">
										<form:input path="image" type="file"
											accept="image/*" id="imagePath" onchange="copyImageName();" />
									</div>
								</div> 
					                 
							</li>
							

						</ul>


					</div>


					<!-- <div class="btns-outer mtop10">
					<input type="submit" value="submit" class="submit-btn fl" />
				</div> -->
					<c:if test="${not empty dtoUser.expiryDate}">

						<div class="hed_content">

							<c:if test="${dtoUser.expireStatus eq 'N'}">
								<p style="font-weight: 600;">Your ${dtoUser.userType}
									Subscription expires on ${dtoUser.expiryDate}</p>
							</c:if>
							<c:if test="${dtoUser.expireStatus eq 'Y'}">
								<p style="font-weight: 600;">
									Your Subscription has Expired, Please Renew <input
										type="button" value="Renew" onClick="openUpgradePayemnt();"
										class="submit-btn" />
								</p>
							</c:if>

						</div>
					</c:if>

					<div class="btns-outer mtop10">
						<input type="submit" value="save" class="submit-btn fl" />
						<c:if test="${dtoUser.isSubscribed eq 'Y'}">
							<input type="button" value="Cancel"
								onClick="cancelSubscription();" class="submit-btn fl"
								style="margin-left: 10px;" />
						</c:if>
						<!-- Added By Taman -->
						<c:if test="${dtoUser.paymentType eq 1}">
							<c:if test="${not empty dtoUser.subscriptionDate}">
								<input type="submit" value="Change Subscription to Yearly"
									onClick="changeSubscription();" class="submit-btn fl"
									style="margin-left: 10px;" />
							</c:if>
						</c:if>
						<!-- Added By Taman -->
					</div>

				</form:form>
			</div>
		</section>
	</div>

			
						
	<form method="post" id="upgradeSubPaymentTeacher"
		name="upgradeSubPaymentTeacher" action="upgradeSubPayment">
		<input type="text" name="paymentType" id="paymentType" value="">
	</form>

 
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="../footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
<script	src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"	type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.autocomplete.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script	src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>

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
	jQuery(document).ready
	(function($){
			$('#schoolName').autocomplete({
		        serviceUrl: '<%=request.getContextPath()%>/searchSchool',
		        paramName: "name",
		        delimiter: ",",
		        delay: 3,
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
			     				
			     				$("#address").val(result.modelMap.dtoTeacherSignOn.masterSchoolAddress);
			     			 	$("#zipCode").val(result.modelMap.dtoTeacherSignOn.zipCode);
			     				$("#state").val(result.modelMap.dtoTeacherSignOn.state);
			     				$("#city").val(result.modelMap.dtoTeacherSignOn.city); 
			     				
			     			}
			     		});
			        	 
			        }
			         }
			        
			     } 
			}); 
	});
	
   function copyImageName(){
	   var fullPath  = $("#imagePath").val();
	   if (fullPath) {
	         var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
	         var filename = fullPath.substring(startIndex);
	         if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
	                 filename = filename.substring(1);
	         }
	         $("#disableImagePath").val(filename);
	}
   }
  
	
    
    	
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
            	schoolName:{
            		required: true,
            		minlength : 1,
            		maxlength : 50
            	},
            	phone:{
            		required: true,
            		minlength : 10,
            		maxlength : 30
            		//digits	: true
            	},
            	acnDetail:{
            		required: true,
            		maxlength : 12
            	},
                address: {
                    required: true,
                    maxlength :100
                },
                zipCode:{
            		required: true,
            		maxlength : 20,
                },
                suburb: {
                    required: true,
                    maxlength : 20
                },
                state: {
                    required: true,
                    maxlength : 20
                },
                country: {
                    required: true
                },
                title: {
                    required: true,
                    maxlength : 5
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
                dob: {
                    required: true,
                },
				image:{
					required:false
				},
                email: {
                    required: true,
                    email: true,
                   
                },
                
                ownerMobile:{
            		/* required: true, */
            		minlength : 10,
            		maxlength : 30
            		//digits	: true
            	},
            	ownerPhone:{
            		required: true,
            		minlength : 10,
            		maxlength : 30
            		//digits	: true
            	},
            	   answer1:{
                   	required:true,
                   },
                   answer2:{
                   	required:true,
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
