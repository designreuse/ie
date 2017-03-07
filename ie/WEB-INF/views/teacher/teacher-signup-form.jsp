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
<c:if test="${companyName eq '1'}">
	<link rel="icon"
		href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
		type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
	<link rel="icon"
		href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
		type="image/x-icon">
</c:if>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"
	id="style_components" rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="wrapper">
		<%@include file="header.jsp"%>
		<section class="makeDonateSct">
			<div class="containerSmall">
				<form:form role="form" action="UpdateForm"
					enctype="multipart/form-data" class="register-form"
					modelAttribute="dtoUser" method="post">
					<input type="hidden" id="teacherEmail" name="teacherEmail"
						value="${dtoUser.email}">
					<div class="pracProgress_hdr">
						<h2>Complete Profile</h2>
						<div class="green_line_btm"></div>
					</div>
					<div class="clr"></div>
					<div class="getstartForm_teacher">
						<label>Personal Info</label>
						<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input type="text" path="firstName"
												value="${dtoUser.firstName}" placeholder="Teacher Name" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input type="text" path="title" value="${dtoUser.title}"
												placeholder="Your Title" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input type="text" value="${dtoUser.email}" path="email"
												placeholder="Teacher Email Address" autocomplete="off" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input type="text" path="phone" value="${dtoUser.phone}"
												placeholder="Teacher Mobile Number" autocomplete="off" />
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="getstartForm_teacher">
						<label>School Details</label>
						<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input type="text" path="address"
												value="${dtoUser.address}" placeholder="School Address" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input type="text" path="city" value="${dtoUser.city}"
												placeholder="City" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input type="text" value="${dtoUser.state}" path="state"
												placeholder="State" autocomplete="off" />
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
					<div class="getstartForm">
						<label>Profile Picture</label>
						<ul>
							<li id="newSchoolLogo">
								<div class="getstart-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" id="disableImagePath" disabled
												placeholder="Add Profile Picture" />
										</div>
									</div>
								</div>
								<div class="photoIcon">
									<div class="cam_upload">
										<form:input required="required" path="image" type="file"
											accept="image/*" id="imagePath" onchange="copyImageName();" />
									</div>
								</div>
							</li>
							</ul>
							</div>
							
					<c:if test="${not empty dtoUser.expiryDate}">
						<div class="hed_content">
							<p style="font-weight: 600;">
								Your ${dtoUser.userType} Subscription will expire on ${dtoUser.expiryDate}
								<c:if
									test="${dtoUser.expireStatus eq 'Y' && dtoUser.isTrail eq 'Y'}">
									<input type="button" value="Renew"
										onClick="openUpgradePayemnt();" class="submit-btn" />
								</c:if>
							</p>
						</div>
					</c:if>
                   <div class="btns-outer mtop10">
						<input type="submit" value="submit" class="submit-btn fl" />
						<c:if test="${isSubscribed eq 'Y'}">
							<input type="button" value="Cancel Subscription"
								onClick="cancelSubscription();" class="submit-btn fl"
								style="margin-left: 10px;" />
						</c:if>
				
					</div>
					

					
				</form:form>
			</div>
		</section>
	</div>

	
	

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%@include file="../footer.jsp"%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script type="text/javascript">	
   function changeLogo(){
		$('#newSchoolLogo').show();
		$('#oldSchoolLogo').hide();
	}
	function replaceLogo(){
		$('#newSchoolLogo').hide();
		$('#oldSchoolLogo').show();
		$('#disableImagePath').val('');
		$('#imagePath').val('');
	}
	jQuery(document).ready
	(function($){
		$("#header").sticky({ topSpacing: 0 });
    	if('${dtoUser.profilePic}' == ''){
    		$('#newSchoolLogo').show();
    		$('#oldSchoolLogo').hide();
    	}else{
    		$('#newSchoolLogo').hide();
    		$('#oldSchoolLogo').show();
    	}
		$.daisyNav();
		var oldPwd = '${dtoUser.password}';
        function oldPasswordCheck(){
        	var oldPassword = $('#oldPassword').val();
        	if(oldPassword!=''){
        		if(oldPwd != oldPassword){
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
		 $.validator.addMethod("nameRegex", function(value, element) {
             return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
         }, "Field must contain letters only.");
		 
		 $.validator.addMethod("emailAlreadyExist", function(value, element) {
             return this.optional(element) || emailAlreadyCheck(value);
         }, "Email already exists.");
		 
         $('.register-form').validate({
             errorElement: 'span', //default input error message container
             errorClass: 'help-block', // default input error message class
             focusInvalid: false, // do not focus the last invalid input
             ignore: "",
             rules: {
            	 firstName:{
             		required: true
             	},
             	image:{
             		required: false
             	},
             	password: {
                	oldPasswordNotMatch: true
                },
             	newPassword: {
                     minlength: 6,
                     maxlength: 20
                 },
             	rpassword: {
                    equalTo: "#submit_form_password"
                },
                email: {
                    required: true, 
                    email: true,
                    
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
    var emailStatus = false;
    function emailAlreadyCheck(email){
		var teacherEmail=$("#teacherEmail").val();
		if(teacherEmail!=email){
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
		}
		else
			{
			emailStatus = true;
			}
		return emailStatus;
    }
    function cancelSubscription(){
    	var url='<%=request.getContextPath()%>/teacher/cancelSubscription';
    	$.ajax({
    		url:url,
    		method:'GET',
    		async :false,
    		success:function(response){
    			if(response=='success'){
    				alert("Subcription cancelled successfully");
    				location.reload(true);
    			}
    			else{
    				
    			}
    		}
    	});
    }
function openUpgradePayemnt(){
	 $.fancybox({
			 'minWidth':700,
			 'padding':45,
			 'minHeight':150,
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#upgradePayment'
		  });
}
	
function selectPaymentType(selectedPaymentType){
	if(selectedPaymentType == 0){
		$('#second').removeClass('active');
		$('#first').addClass('active');
		var zeroSelectImg='<img alt="" src="<%=request.getContextPath()%>/NewStyles/images/tick-mark.png" id="zeroSelect">';
		$("#zeroSelectDiv").html(zeroSelectImg);
		$("#paymentSelectDiv").html('');
		$("#paymentSelect").prop('src','');
		$("#zeroSelectDiv").addClass('launch-tick-mark');
		$("#paymentSelectDiv").removeClass('launch-tick-mark');
	}
	else{
		$('#first').removeClass('active');
		$('#second').addClass('active');
		$("#zeroSelect").prop('src','');
		$("#zeroSelectDiv").html('');
		var paymentSelectImg='<img alt="" src="<%=request.getContextPath()%>/NewStyles/images/tick-mark.png" id="paymentSelect">';
		$("#paymentSelectDiv").html(paymentSelectImg);
		$("#paymentSelectDiv").addClass('launch-tick-mark');
		$("#zeroSelectDiv").removeClass('launch-tick-mark');
	}
	$("#paymentType").val(selectedPaymentType);
	$("#upgradeSubPaymentTeacher").submit();
}
function openUpgradeToPrincipal(){
	 $.fancybox({
			 'minWidth':700,
			 'padding':45,
			 'minHeight':150,
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#upgradePaymentPrincipal'
		  });
}
function selectPaymentTypePrincipal(selectedPaymentType){
	if(selectedPaymentType == 0){
		$('#second').removeClass('active');
		$('#first').addClass('active');
		
		var zeroSelectImg='<img alt="" src="<%=request.getContextPath()%>/NewStyles/images/tick-mark.png" id="zeroSelect">';
		$("#zeroSelectDiv").html(zeroSelectImg);
		$("#paymentSelectDiv").html('');
		$("#paymentSelect").prop('src','');
		$("#zeroSelectDiv").addClass('launch-tick-mark');
		$("#paymentSelectDiv").removeClass('launch-tick-mark');
	}
	else{
		$('#first').removeClass('active');
		$('#second').addClass('active');
		$("#zeroSelect").prop('src','');
		$("#zeroSelectDiv").html('');
		var paymentSelectImg='<img alt="" src="<%=request.getContextPath()%>/NewStyles/images/tick-mark.png" id="paymentSelect">';
		$("#paymentSelectDiv").html(paymentSelectImg);
		
		$("#paymentSelectDiv").addClass('launch-tick-mark');
		$("#zeroSelectDiv").removeClass('launch-tick-mark');
		
	}
	$("#paymentTypePrincipal").val(selectedPaymentType);
	
	$("#upgradeSubPaymentPrincipal").submit();
	
}
function sendReferenceEmail(referenceCode,firstName){
	/* alert("Button has been clicked") */
	var url='<%=request.getContextPath()%>/teacher/sendReferenceEmail';
	var email = $("#emailId").val()
 	if(email==""){
		alert("Please enter Email")
	}
	else{ 
	$.ajax({
		url:url,
		method:'POST',
		async :false,
		data:{email:email,referenceCode:referenceCode,firstName:firstName},
		cache:false,
		success:function(response){
			alert("Email sent successfully")
		}
	});
}}
/* <!-- Added By Taman --> */
function changeSubscription(){
	var url='<%=request.getContextPath()%>/teacher/changeSubscriptionToYearlyTeacher';
         var changed='Y';
			$.ajax({
				url : url,
				method : "POST",
				async : false,
				success : function(response) {
					alert('Loading');
					


				}
			});

		}
		/* <!-- Added By Taman -->	 */
		
</script>
</body>
</html>
