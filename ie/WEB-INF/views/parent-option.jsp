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
<title>Teacher SignUp</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"
	id="style_components" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/NewStyles/css/autocomplete/main.css" rel="stylesheet">
</head>
<body>
	<div class="wrapper">
		<%@include file="header.jsp" %>


						<a href="<%=request.getContextPath()%>/parent-edition"> <input
							type="button" class="startBtn" value="Accept">
						</a>
						
						<a href="<%=request.getContextPath()%>/home-edition"> <input
							type="button" class="startBtn" value="Reject">
						</a>

		
	</div>
								<div id="term-condition" style="display: none;">
	<div class="product-page product-pop-up">
		<div class="row">
			<div class="col-md-12 col-sm-6 col-xs-3">
				<div class="product-main-image">
					<div id="message"></div>
						<div id="recorder" style="width:600px; font-size: 11px;">
							<!-- <b>We are the Innovation Accelerators</b> --><!-- <br><br> -->
								Welcome to the Inner Explorer website.  These Terms of Use and Conditions (“Terms”) govern your use of the Inner Explorer (“our”) website (“Site”).  Please read the terms in full before using our Site.  By accepting these Terms, or by using this Site, you agree to be legally bound by these Terms, and our Privacy Policy and Notice of Privacy Practices. If you do not agree to these terms, please do not use our Site.  We reserve the right to modify these Terms at any time without prior notice, and your use of the Site binds you to the changes made.  We do occasionally update these terms so please refer to them in the future.<br><br>
							<b>Access to Site</b><br>
								You will be able to access our Site without having to register any details with us.<br><br>
							<b>Use of Site</b><br>
								Our Site, images, data, text, audios, videos, photographs, custom graphics, logos, button icons, descriptions and all other material provided and the collection and compilation and assembly thereof are the exclusive property of Inner Explorer or its parent, and are protected by U.S. and international copyright laws.
The contents of our Site may be used for informational purposes only.  Any other use of such contents, including the reproduction, modification, distribution, transmission, republication, display or performance of the contents without our prior written consent is expressly forbidden.
Any other trademarks or service marks appearing anywhere on our Site are the property of their respective owners.  To the extent any product name or logo does not appear with a trademark (™) does not constitute a waiver of any and all intellectual property rights that Inner Explorer or its businesses has established in any of its products, features, or service names or logos.
You may not use, reproduce, modify, transmit, display, publish, sell, create derivative works, or distribute by any means, method, or process whatsoever, now known or hereafter developed, any content of this Site for commercial profit or gain.  Nothing in these Terms or on the Site shall be construed as conferring any intellectual property or other proprietary rights to You.  You agree to observe copyright and other applicable laws and may not use the content in any manner that infringes or violates the rights of any person or entity.  We hold all rights to the content on this website.
As a condition of your use of the Site, you will not use the Site, or any contents or services, for any purpose that is unlawful in any applicable jurisdiction where our Site are being used, or prohibited by these terms, conditions, and notices, and you agree to abide by the terms and conditions set forth in the “User Conduct” section. You may not use the Site contents or services in any manner that could damage, disable, overburden, or impair any of our equipment or interfere with any other party’s use and enjoyment of the Site, or any contents or services.  You may not attempt to gain access to any portion of the Site, or any of its contents or services, other than those for which you are authorized.
While every effort is made to ensure the timeliness and accuracy of the Site content and services, we  make no warranties either express or implied, and assume no liability or responsibility for the completeness, use, accuracy, reliability, correctness, timeliness or usefulness, of any of the results obtained from its use.
We make no representation or warranty, express or implied, with respect to the content of the Site, or links to other sites, including but not limited to accurateness, completeness, correctness, timeliness or reliability.  We make no representation or warranty regarding the merchantability or fitness for a particular purpose or use with respect to any content or services whatsoever that may be accessed through this Site, or the results to be obtained from using the Site.  We make no representation or warranty that the Site or content is free from defects or viruses.  Your use of external links and third-party websites is at your own risk and subject to the terms and conditions of use for such links and sites.
While every effort is made to ensure that all content provided on the Site does not contain computer viruses and/or harmful materials, you should take reasonable and appropriate precautions to scan for computer viruses or otherwise protect your computer and you should ensure that you have a complete and current backup of the applicable items on your computer.  We disclaim any liability for the need for services or replacing equipment or data resulting from your use of the Site.  While every effort is made to ensure smooth and continuous operation, we do not warrant the Site will operate error free.
<br><br>
<b>Site Uptime</b><br>
								We take all reasonable steps to ensure that our Site is available 24 hours every day, 365 days per year. However, websites do sometimes encounter downtime due to server and other technical issues. Therefore, we will not be liable if this Site is unavailable at any time.
Our Site may be temporarily unavailable due to issues such as system failure, maintenance or repair, or for reasons beyond our control. Where possible, we will try to give our users advance warning of maintenance issues, but shall not be obliged to do so.
<br><br>
<b>User Conduct</b><br>
								Any material you send or post to our Site shall be considered non-proprietary and non-confidential.  We do not collect or store any personally identifiable information about you while using our Site but please do not send any such information to us.  See also our Privacy Policy and Notice of Privacy Practices, which can be found here.
When using our Site, you shall not post or send to or from the Site:
(a) content for which you have not obtained all necessary consents;
(b) content that is discriminatory, obscene, pornographic, defamatory, liable to incite racial hatred, in breach of confidentiality or privacy, which may cause annoyance or inconvenience to others, which encourages or constitutes conduct that would be deemed a criminal offense, give rise to a civil liability, or otherwise is contrary to the law in any applicable jurisdiction where our Site is being used;
(c)  content which is harmful in nature including, and without limitation, computer viruses, Trojan horses, corrupted data, or other potentially harmful software or data.
We will fully cooperate with any law enforcement authorities or court order requiring us to disclose the identity or other details or any person posting materials to our Site in breach of the this Section.
You shall not use our Site while distracted or preoccupied, such as when operating a motor vehicle.  You should access our Site only with due regard for your own safety and the safety of others.
<br><br>
<b>Links to and from Third Party Websites</b><br>
								Any links furnished on our Site may allow you to leave our Site.  These third party websites are not under our control and we disclaim any responsibility for the contents of such linked sites or any link(s) contained in any such linked site(s) or any changes or updates to any of these sites.  We further disclaim any responsibility for any form of transmission received from any linked third party website or advertising.  If we provide these links to you, it is done simply as a convenience to you and inclusion of any link herein shall in no way be construed as an endorsement by us of the site(s). Additionally, we do not collect or process your credit/debit card payment information.  All payment data is collected and processed through a third party vendor.
If you would like to link to our Site, you may only do so on the basis that you link to, but do not replicate, any page of our Site, and subject to the following conditions:
(a) you do not in any way imply that we are endorsing any services or products unless this has been specifically agreed with us;
(b) you do not misrepresent your relationship with us or present any false information about us;
(c) you do not link from a website that is not owned by you; and
(d) your website does not contain content that is offensive, controversial, infringes any intellectual property rights or other rights of any other person or does not comply in any way with the law of the United States of America.
If you choose to link our website in breach of this Section, you shall fully indemnify us for any loss or damage suffered as a result of your actions.
<br><br>
<b>Disclaimers</b><br>
								All information on our Site is of a general nature and is furnished for your knowledge and understanding and as an informational resource only.  The documents and any related graphics published on this server could include technical inaccuracies or typographical errors.  Changes are periodically added to the information contained on our Site.  We may make improvements and/or changes to any of the products depicted or described herein at any time.  We expressly disclaim any responsibility or liability for any adverse consequences or damages resulting from your use of the Site or reliance on the information from either.
THE SITE IS PROVIDED ON AN “AS IS” AND “AS AVAILABLE” BASIS.  WE MAKE NO WARRANTIES, EXPRESS OR IMPLIED, REPRESENTATIONS OR ENDORSEMENTS WHATSOEVER WITH REGARD TO ANY PRODUCTS, INFORMATION OR SERVICE PROVIDED THROUGH THIS SITE, INCLUDING, TITLE, NON-INFRINGEMENT, OR ANY OTHER WARRANTY, CONDITION, GUARANTY, OR REPRESENTATION, WHETHER ORAL OR IN WRITING, OR IN ELECTRONIC FORM.
<br><br>
<b>Limitation of Liability</b><br>
								YOUR USE OF OUR SITE IS ENTIRELY AT YOUR OWN RISK. WE WILL NOT BE RESPONSIBLE TO YOU OR TO ANY THIRD PARTIES FOR ANY DIRECT OR INDIRECT, INCIDENTAL, CONSEQUENTIAL, SPECIAL, OR PUNITIVE DAMAGES OR LOSSES OR INJURY YOU MAY INCUR IN CONNECTION WITH YOUR USE OR INABILITY TO USE THE SITE OR THE PRODUCTS, OR YOUR RELIANCE ON OR USE OF THE SITE, THE INFORMATION, OR SERVICES PROVIDED, OR THAT RESULT FROM MISTAKES, OMISSIONS, INTERRUPTIONS, DELETIONS OR ANY FAILURE OF PERFORMANCE, OR ANY OF THE DATA OR OTHER MATERIALS TRANSMITTED THROUGH OR RESIDING ON OUR SITE, REGARDLESS OF THE TYPE OF CLAIM OR THE NATURE OF THE CAUSE OF ACTION, EVEN IF WE HAVE ADVISED OF THE POSSIBILITY OF SUCH DAMAGE OR LOSS.
<br><br>
<b>Indemnification</b><br>
								You agree to defend, indemnify, and hold us, our officers, directors, employees, volunteers, agents, licensors, and suppliers, harmless from and against any claims, actions or demands, liabilities and settlements including without limitation, reasonable legal and accounting fees, resulting from or alleged to result from, your use of and access to the Site or your violation of these Terms or your violation of any third party right, including without limitation any trademark, copyright or other proprietary or privacy right.
<br><br>
<b>Assignment</b><br>
								These Terms, and any rights and licenses granted hereunder, may not be transferred or assigned by you.
<br><br>
<b>Applicable Law</b><br>
								We make no representations that the content or the Site are appropriate or may be used or downloaded outside the United States. Access to the Site and/or the content may not be legal in certain countries outside the United States.  If you access the Site from outside the United States, you do so at your own risk and are responsible for compliance with the laws of the jurisdiction from which you access the website.
Our Site is created and controlled in the Commonwealth of Massachusetts, United States of America.  The Site, and its contents, and any disputes arising therefrom shall be construed and interpreted under the laws of the Commonwealth of Massachusetts, and applicable United States federal laws.  Use of our Site constitutes agreement of the user to the jurisdiction of the state and federal courts located therein.
Our Site is subject to the United States export control laws and regulations, and may be subject to export or import regulations in other countries. You agree to strictly comply with all such laws and regulations and acknowledge that you have the responsibility to obtain authorization to export, re-export, or import of any data on our Site, as may be required.
<br><br>
<b>Our Contact Information</b><br>
<p>Inner Explorer</p>
<p>430 Franklin Village Dr. #325</p>
<p>Franklin, MA, 02038</p>
<p>Phone: 888-466-9732</p>
<p>Email: info@innerexplorer.org</p>
<br><br>

								
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%@include file="footer.jsp"%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.autocomplete.js" type="text/javascript"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
	<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$('#systemSchoolId').val(0);
		$("#teacherName").hide();
		$("#oldSchoolLogo").hide();
		$.daisyNav();
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
		     				$("#oldSchoolLogo").show();
		     				$("#newSchoolLogo").hide();
		     				var logo = "<%=request.getContextPath()%>"+result.modelMap.dtoTeacherSignOn.logo;
		     				$('#schoolSelectedLogo').attr('src',logo);
		     				$('#systemSchoolId').val(result.modelMap.dtoTeacherSignOn.masterSchoolId);
		     				
		     			}
		     		});
		        	 
		        }
		         }
		        
		     } 
		});  
	});
	
    $(function(){
    	$("#zipCode").blur(function(event) {
    		$.ajax({
    			url : "http://zip.getziptastic.com/v2/US/"+$(this).val(),
    			success : function(result) {
    				$("#state_short").val(result.state_short);
    				//$("#city").val(result.city);
    			}
    		});
    	});
        function emailAlreadyCheck(value){
			//var email = $("#email").val().trim();
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
            return this.optional(element) || emailAlreadyCheck(value);
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
                email: {
                    required: true,
                    email: true,
                    emailAlreadyExist: true
                },
                teacherEmail: {
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
                ownerMobile:{
            		required: true,
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
            	check:{
            		required:true
            		
            	},
            	image:{
            		required:false
            	},
            	howdidhear:{
            		required:true
            	},
            	className:{
            		required:true
            	}

            },


            invalidHandler: function(event, validator) { //display error alert on form submit   
            },

            highlight: function(element) { // hightlight error inputs
                $(element)
                    .closest('.outer-field').addClass('has-error'); // set error class to the control group
                    $(element)
                    .closest('.outer-field-wrap ').addClass('has-error');
                $(element).next('.fancybox').next('.fancybox').addClass('has-error');
            },
            
            success: function(label) {
                label.closest('.outer-field').removeClass('has-error');
                label.closest('.outer-field-wrap ').removeClass('has-error');
                label.next('.fancybox').next('.fancybox').removeClass('has-error');
                label.remove();
            },

            errorPlacement: function(error, element) {
                if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
                    error.insertAfter(element.next('.fancybox').next('.fancybox'));
                } else if (element.closest('.input-icon').size() === 1) {
                    error.insertAfter(element.closest('.input-icon'));
                } else if (element.closest('.outer-field_sel').size() === 1){
                	 error.insertAfter(element.closest('.outer-field_sel'));
                }else {
                    error.insertAfter(element);
                }
            },

            submitHandler: function(form) {
                form.submit();
            }
        });
     // SyntaxHighlighter.all();
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
    /* For getting Lat & Long of Student Address */
    function getStudentAddressLatLong(){
        var homeAddress = document.getElementById('address');
        var autoCompleteHomeAddress = new google.maps.places.Autocomplete(homeAddress);
        var geocoder = new google.maps.Geocoder;
        google.maps.event.addListener(autoCompleteHomeAddress,	'place_changed', function() {
       	 $("#latitude").val(autoCompleteHomeAddress.getPlace().geometry.location.lat());
    		 $("#longitude").val(autoCompleteHomeAddress.getPlace().geometry.location.lng());
    		 var latlng = {lat: parseFloat($("#latitude").val()), lng: parseFloat($("#longitude").val())};
    		 geocoder.geocode({'location': latlng}, function(results, status) {
    			    if (status === google.maps.GeocoderStatus.OK) {
     			    	  for (var i = 0; i < results[0].address_components.length; i++) {
    			    		    var addressType = results[0].address_components[i].types[0];
    			    		    if (addressType == 'postal_code') { 
    			    		    	$("#zipCode").val(results[0].address_components[i].long_name);
    			    		    	$("#zipCode").blur();
    			    		    } 
     			    	  }
    			    	}
    			    });
    	});
    }
    
    function whereAboutIE(val){
    	if(val == 2){
    		$("#teacherName").show();
    	}
    	else{
    		$("#teacherName").hide();
    	}
    }

    google.maps.event.addDomListener(window, 'load', getStudentAddressLatLong);
    
    function changeLogo(){
    	$('#newSchoolLogo').show();
    	$('#oldSchoolLogo').hide();
    	$('#systemSchoolId').val(0);
    }
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

</body>
</html>
