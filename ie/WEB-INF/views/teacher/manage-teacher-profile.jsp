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
<link
	href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<style type="text/css">
.controls {
	float: right;
}

.dataTables_info {
	text-align: left !important;
}
</style>
</head>

<body>

	<div class="wrapper">
		<%@include file="header.jsp"%>
		<section class="makeDonateSct">
			<div class="containerSmall">
				<form:form role="form" action="updateInfo"
					enctype="multipart/form-data" class="register-form"
					modelAttribute="dtoUser" method="post">
					<input type="hidden" id="teacherEmail" name="teacherEmail"
						value="${dtoUser.email}">
					<div class="pracProgress_hdr">
						<h2>Manage Profile</h2>
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
							<li id="oldSchoolLogo">
								<div class="chang_logo">
									<div class="img_chnglogo">
										<img
											src="<%=request.getContextPath()%>/NewStyles/images/teacher-profile/${dtoUser.profilePic}"
											id="schoolSelectedLogo" alt="" />
									</div>
									<div class="chng_btn">
										<input type="button" class="startBtn-table"
											value="Change Profile Picture" onclick="changeLogo();">
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
											<input type="password" name="password" id="oldPassword"
												placeholder="Enter old password" autocomplete="off" />
										</div>
									</div>
								</div>
							</li>
							<li></li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input type="password" path="newPassword"
												id="submit_form_password" placeholder="Enter New password"
												autocomplete="off" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="password" name="rpassword"
												placeholder="Re-enter Password" id="rpassword"
												autocomplete="off" />
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<c:if test="${not empty dtoUser.expiryDate}">
						<div class="hed_content">
							<p style="font-weight: 600;">
								Your ${dtoUser.userType} Subscription will expire on
								${dtoUser.expiryDate}
								<c:if
									test="${dtoUser.expireStatus eq 'Y' && dtoUser.isTrail eq 'Y'}">
									<input type="button" value="Renew"
										onClick="openUpgradePayemnt();" class="submit-btn" />
								</c:if>
							</p>
						</div>
					</c:if>

					<div class="getstartForm">
						<label>Social Media</label>
						<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input type="text" path="facebookId"
												value="${dtoUser.facebookId}"
												placeholder="Enter facebook profile url" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input type="text" path="amazonUrl"
												value="${dtoUser.amazonUrl}"
												placeholder="Enter amazon contributes link" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input type="text" path="twitterId"
												value="${dtoUser.twitterId}"
												placeholder="Enter twitter profile url" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input type="text" path="linkedinId"
												value="${dtoUser.linkedinId}"
												placeholder="Enter linkedin profile url" />
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
					

					<div class="schl_dtl_new" align="center">
						<!-- check teacher is pt or not if pt then show upgrade to principal option-->
						<c:if test="${dtoUser.isTrail eq 'Y'}">
							<input type="button" value="Become Principal"
								onClick="openUpgradeToPrincipal();" class="submit-btn" />
						</c:if>
						<label class="schdetail">School Detail</label>
						<ul class="dark_ul_bg">
							<li>School Name</li>
							<li>School Email</li>
							<li>Administrator</li>
						</ul>
						<c:forEach items="${dtoUser.listDtoSchoolDetails}"
							var="listDtoSchoolDetails">
							<ul>
								<li>${listDtoSchoolDetails.schoolName}</li>
								<li>${listDtoSchoolDetails.schoolEmail}</li>
								<li>${listDtoSchoolDetails.ownerName}</li>
							</ul>
						</c:forEach>
					</div>
					<div class="btns-outer mtop10">
						<input type="submit" value="submit" class="submit-btn fl" />
						<c:if test="${isSubscribed eq 'Y'}">
							<input type="button" value="Cancel Subscription"
								onClick="cancelSubscription();" class="submit-btn fl"
								style="margin-left: 10px;" />
						</c:if>
						<c:if test="${dtoUser.paymentType eq 0}">
							<input type="submit" value="Change Subscription to Yearly"
								onClick="changeSubscription();" class="submit-btn fl"
								style="margin-left: 10px;" />
						</c:if>
					</div>
					<%--<div class="schl_dtl_new">
						<label class="schdetail"><font size="4"></br>Refer a
								Friend</font></label>
						<li>Ref. Code: ${dtoUser.referenceCode}</li>

						<div class="contact-row">
							<div class="outer-field-wrap" align="center">
								<div class="outer-field" style="width: 350px">
									<input type="text" id="emailId" placeholder="Enter Email" />

								</div>
								<input type="button" style="margin-left: -50px;"
									value="Refer a Friend"
									onclick="sendReferenceEmail('${dtoUser.referenceCode}','${dtoUser.firstName}');"
									class="submit-btn" /> 


							</div>
							 <iframe
  src="https://platform.twitter.com/widgets/tweet_button.html?size=l&url=http://innerexplorer.org/ie/get-started&via=Inner_Explorer&related=twitterapi%2Ctwitter&text=My class is practicing Mindfulness daily.Use ${dtoUser.referenceCode} to get $15 off on yearly plan&hashtags=Mindfulness"
  width="140"
  height="28"
  title="Twitter Tweet Button"
  style="border: 0; overflow: hidden;align:center">
</iframe> 

						</div>--%>
				<%-- 		<div class="contact-row">
							<div class="outer-field-wrap" align="left"
								style="padding-top: 50px;">

								<input type="button" value="Referrals Sent"
									onclick="nbrReferralsSent('${dtoUser.referenceCode}','${dtoUser.firstName}');"
									class="submit-btn" /> <input type="button"
									value="Referrals Used"
									onclick="nbrReferralsUsed('${dtoUser.referenceCode}','${dtoUser.firstName}');"
									class="submit-btn" />
							</div>

						</div> 

					</div>--%>
				</form:form>
			</div>
		</section>
	</div>
	<div id="upgradePayment" style="display: none;" class="wrapper">
		<div class="pracProgress_hdr">
			<h2>Choose Your Subscription Plan</h2>
			<div class="green_line_btm"></div>
			<div class="clr"></div>
		</div>
		<div class="check-select-out-new ">
			<div
				class="check-select background-none full-width slct-out-bdr padding-top-zero margin-top-zero max-width700">
				<div class="getstartForm_started">
					<ul>
						<li id="first" onclick="selectPaymentType(0);">
							<div class="launch-img">
								<img
									src="<%=request.getContextPath()%>/NewStyles/images/teacher1.jpg">
								<h4 class="uper-hd-lft">
									$${teacherSubMnthlyAmt}/<span>month</span>
								</h4>
								<div id="zeroSelectDiv"></div>
							</div>
							<div class="launch-text subsc_bull">
								<h4>'Pay as you go' Plan</h4>
								<h4>No hidden charges</h4>
								<h4>Option to ‘pause’ your subscription during summer</h4>
								<h4>Unlimited access to IE content</h4>
								<h4>Automatic updates</h4>
							</div>
							<div class="launch-btn">
								<a href="javascript:;" onclick="selectPaymentType(0);">Select</a>
							</div>
						</li>
						<li id="second" onclick="selectPaymentType(1);">
							<div class="launch-img">
								<img
									src="<%=request.getContextPath()%>/NewStyles/images/teacher2.jpg">
								<h4 class="uper-hd-rght">
									$${teacherSubYrlyAmt}/<span>year</span>
								</h4>
								<div id="paymentSelectDiv"></div>
							</div>
							<div class="launch-text subsc_bull">
								<h4>'Pre-Pay for year and save' Plan</h4>
								<!-- <h4>Save 50% subscription fee, before August 12, 2016</h4> -->
								<h4>No hidden charges</h4>
								<h4>Unlimited access to IE content</h4>
								<h4>Automatic updates</h4>
							</div>
							<div class="launch-btn">
								<a href="javascript:;" onclick="selectPaymentType(1);">Select</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<%-- <form method="post" id="upgradeSubPaymentTeacher"
		name="upgradeSubPaymentTeacher" action="upgradeSubPayment">
		<input type="hidden" name="paymentType" id="paymentType" value="">
	</form> --%>

	<!-- make pt teacher to principal -->
	<div id="upgradePaymentPrincipal" style="display: none;"
		class="wrapper">
		<div class="pracProgress_hdr">
			<h2>Choose Your Subscription Plan</h2>
			<div class="green_line_btm"></div>
			<div class="clr"></div>
		</div>
		<div class="check-select-out-new">
			<div
				class="check-select background-none full-width slct-out-bdr padding-top-zero margin-top-zero max-width700">
				<div class="getstartForm_started">
					<ul class="margin-top-zero">
						<li id="first" onclick="selectPaymentTypePrincipal(0);">
							<div class="launch-img">
								<img
									src="<%=request.getContextPath()%>/NewStyles/images/zero.jpg">
								<h4 class="uper-hd-lft">
									$${principalSubMnthlyAmt}/<span>month</span>
								</h4>
								<div id="zeroSelectDiv"></div>
							</div>
							<div class="launch-text subsc_bull">
								<h4>'Pay as you go' Plan</h4>
								<h4>Unlimited access to all classrooms in School</h4>
								<h4>No hidden charges</h4>
								<h4>Option to ‘pause’ your subscription during summer</h4>
								<h4>Automatic updates</h4>
							</div>
							<div class="launch-btn">
								<a href="javascript:;" onclick="selectPaymentTypePrincipal(0);">Select</a>
							</div>
						</li>
						<li id="second" onclick="selectPaymentTypePrincipal(1);">
							<div class="launch-img">
								<img
									src="<%=request.getContextPath()%>/NewStyles/images/launch-img-2.jpg">
								<h4 class="uper-hd-rght">
									$${principalSubYrlyAmt}/<span>year</span>
								</h4>
								<div id="paymentSelectDiv"></div>
							</div>
							<div class="launch-text subsc_bull">
								<!-- We are providing you yearly subscription to our Programs at $${principalSubAmtYrly} only. -->
								<h4>'Pre-Pay for year and save' Pl</h4>
								<!-- <h4>Save 50% subscription fee, before August 12, 2016</h4> -->
								<h4>Unlimited access to all classrooms in School</h4>
								<h4>No hidden charges</h4>
								<h4>Automatic updates</h4>
							</div>
							<div class="launch-btn">
								<a href="javascript:;" onclick="selectPaymentTypePrincipal(1);">Select</a>
							</div>

						</li>
					</ul>
				</div>

			</div>
		</div>
	</div>



	<%-- <form method="post" id="upgradeSubPaymentPrincipal"
		name="upgradeSubPaymentPrincipal" action="upgradeSubPaymentPrincipal">
		<input type="text" name="paymentTypePrincipal"
			id="paymentTypePrincipal" value="">
	</form> --%>

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/bootstrapcdn.js"></script>
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
                    emailAlreadyExist: true
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
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/select2/select2.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>
	<script language="javascript" type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/tab.js"></script>
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


function changeSubscription(){
	var url='<%=request.getContextPath()%>/teacher/changeSubscriptionToYearlyTeacher';
			var changed = 'Y';
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
