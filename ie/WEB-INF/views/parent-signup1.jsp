<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<%-- <%@taglib prefix="botDetect" uri="botDetect"%>
 --%>
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
<title>Home Edition Signup</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
</head>
<body>
<div class="wrapper">
  <%@include file="header.jsp" %>
	<section class="makeDonateSct mtop-5">
	<div class="container">
		<form:form name="parentSignup" class="register-form" modelAttribute="dtoUser" action="parentSignup" method="POST" enctype="multipart/form-data">	
         <div class="pracProgress_hdr max-width">
            <h2>Home Edition Signup</h2>
            <div class="green_line_btm"></div>
			<h3 class="teachr_dsh bdr-btm-none">Bring mindful awareness experience to your home</h3>
				<!-- <h3 class="teachr_dsh bdr-btm-none">Start your Inner Explorer experience today</h3> -->
				<div class="clr"></div>
				<div class="home-esign-content">
                	 <p>You might be hearing about mindfulness a lot lately - but what is it really? 
                	 Mindfulness or mindful awareness is the practice of paying attention to the present 
                	 moment on purpose without judgment.It’s used every day by individuals, 
                	 businesses, and others to combat stress and promote positive thinking. 
                	 Inner Explorer has spent nearly five years developing a cutting-edge platform 
                	 to help teachers practice daily with their students to nurture readiness to 
                	 learn in Pre-K through high school classrooms. </p><p>Our program teaches children to pay attention, 
                	 enhances impulse control, reduces stress and nurtures compassion which builds positive relationships.  
                	 We’ve heard from many parents who have seen positive changes in their children and want to bring Inner Explorer 
                	 into their homes. (The students have been asking for it too!).
                	 Are you curious to learn more and give it a try? 
                	 We’ve created the Inner Explorer Home Edition for families like yours. 
                	 Now you can practice mindful awareness at home with your children this summer 
                	 and experience the benefits for yourself. Create your own account by selecting one of the options, below:</p>
                	</div>
                	<div class="containerSmall">
				<div class="get-start-new-form" style="margin-top:0">
                        	<div class="getstartForm_started">
					<ul>
						<li id="first" onclick="showPayment(1);">
                        	<div class="launch-img">
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/parent1.jpg">
                            	 <div id="zeroSelectDiv" ></div>
                            </div>
                            <div class="launch-text launch-text-cntr ">
                            Experience Inner Explorer Program for <br>3 months.  $${parentAmountThreeYear} (one time fee)
                            </div>
                            <div class="launch-btn">
                            	<a href="javascript:;" onclick="showPayment(1);">Select</a>
                            </div>
						</li>
                        <li id="second" onclick="showPayment(2);">
                        	<div class="launch-img">
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/parent2.jpg">
                            	<div id="paymentSelectDiv"></div>
                            </div>
                            <div class="launch-text launch-text-cntr">
                            	 Experience & Share Inner Explorer Program <br>at Home. $${parentAmount} (billed annually)
                            </div>
                            <div class="launch-btn">
                            	<a href="javascript:;" onclick="showPayment(2);">Select</a>
                            </div>
						</li>
					</ul>
				</div>
                        </div>
				</div>
            </div>
				<div class="getstartForm_teacher" id="parentForm" style="display: none;">
                	<label>Parent Info</label>
					<ul>
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
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="address" id="address" type="text" placeholder="Address" />
										<input type="hidden"
												name="latitude" id="latitude" value="0.0" /> <input
												type="hidden" name="longitude" id="longitude" value="0.0" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="city" id="city" type="text" placeholder="City Name" />
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="zipCode" id="zipCode" type="text" placeholder="Zipcode" />
										<input type="hidden" name="stateShort" id="state_short" />
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="email" type="text" placeholder="Email" id="parentEmail"/>
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
										<input type="text" placeholder="Promo Code" name="pCode" id="pCode"/>
									</div>
								</div>
							</div>
						</li>
					</ul>
					
						<div class="popup_school_details_img" title="Profile Image">
              			  		<img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png"  alt="" id="logoImageMain"/>
	                    	<div class="started-edit-img" title="Select a profile image">
								<input id="mediaFile" accept="image/*" type="file" value="" name="image" onchange="getImagePath(this);"/>
							</div>
                    	</div>
				</div>
              <div id="payment_options">
                <div class="bg_share_new mrg_btm25">
        	<div class="make-card">
            	<p>We Support Following Payment Methods</p>
                	<ul>
                		<li><img src="<%=request.getContextPath()%>/NewStyles/images/paypal.png" alt="paypal"/></li>
                        <li><img src="<%=request.getContextPath()%>/NewStyles/images/visa-card.jpg" alt="visa card"/></li>
						<li><img src="<%=request.getContextPath()%>/NewStyles/images/master-card.jpg" alt="master card"/></li>
						<li><img src="<%=request.getContextPath()%>/NewStyles/images/discover-card.jpg" alt="discover card"/></li>
						 <li><img src="<%=request.getContextPath()%>/NewStyles/images/express-card.jpg" alt="express card"/></li>
						<li><img src="<%=request.getContextPath()%>/NewStyles/images/eCheck.png" alt="echeck"/></li> 
                    </ul>
            </div>
        </div>
        
           <div class="dnt100dlr dnt30dlr">
	        	<div class="dntimgsec">
	        		<img src="<%=request.getContextPath()%>/NewStyles/images/donate-icon-new.png" alt=""/>
	        	</div>
	        	<div class="dnttxtsec">
	        		<p id="paymentMesaage">Get Access to Mindful Practice <br>by Paying $${parentAmount}</p>
	        	</div>
	        </div>
                </div>
                <div class="btns-outer mtop10">
				<input type="hidden" name="parentType" id="parentType"/>
				<input type="hidden" name="parentAmount" id="parentAmount" value="${parentAmount}"/>
			<fieldset>
        <legend>CAPTCHA Validation</legend>
        <label for="captchaCodeTextBox" class="prompt">
            Retype the code from the picture:</label>
        <!-- Adding BotDetect Captcha to the page-->
        <botDetect:captcha id="jqueryValidatedCaptcha" />
        <div class="validationDiv">
          <input id="captchaCodeTextBox" type="text" 
              name="captchaCodeTextBox" class="captchaVal"/>
          <br>
          <input type="submit" value="Submit" class="submit-btn fl"/>
          <label class="correct">${messages.captchaCodeCorrect}</label>
          <label class="incorrect">${messages.captchaCodeIncorrect}</label>
        </div>
      </fieldset>
				</div> 
				</form:form>
				</div>
    </section>
</div>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>  
	<%@include file="footer.jsp" %>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script> 
   <script type="text/javascript">	
	jQuery(document).ready
	(function($){
		 
         $.validator.addMethod("nameRegex", function(value, element) {
             return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
         }, "Field must contain letters only.");
         $.validator.addMethod("specialChar", function(value, element) {
             return this.optional(element) || /^[a-zA-Z0-9- ]+$/i.test(value);
         }, "Remove special characters.");
         
         $('.register-form').validate({
             errorElement: 'span', //default input error message container
             errorClass: 'help-block', // default input error message class
             focusInvalid: false, // do not focus the last invalid input
             //ignore: "",
             rules: {
             	
                 firstName: {
                     required: true,
                     //nameRegex:true,
                     maxlength : 20,
                     specialChar :true
                 },
                 lastName: {
                     /* required: true, */
                    // nameRegex:true,
                     maxlength : 20,
                     specialChar :true
                 },
                 address: {
                     required: true
                     //nameRegex:true,
                    // maxlength : 20,
                     //specialChar :true
                 },
                 city: {
                     required: true,
                     //nameRegex:true,
                     maxlength : 80,
                     //specialChar :true
                 },
                 zipCode: {
                     required: true,
                     //nameRegex:true,
                     maxlength : 20/* ,
                     specialChar :true */
                 },
                 email: {
                     required: true,
                     email: true
                     /* emailAlreadyExist: true */
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
             		/* required: true, */
             		minlength : 10,
             		maxlength : 30
             		//digits	: true
             	},
             	check:{
             		required:true
             		
             	}/* ,
             	pCode:{
             		pCodeValid: true
             	} */

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
            	 alert("hi");
            	 form.submit();
             }
         });
		
         $(".captchaVal").rules('add', {
        	    required: true,
        	    remote: $(".captchaVal").get(0).Captcha.ValidationUrl,
        	    messages: {
        	      required: 'Required (client)',
        	      remote: 'Incorrect (client)'
        	    }
        	  });
 		
 		$("#payment_options").hide();
 		$("#parentType").val(1);
 		var parentAmountThreeMonth='${parentAmountThreeYear}';
 		$("#parentAmount").val(parentAmountThreeMonth);
		
	});
	
	function showPayment(selectValue) {
		
		if(selectValue == 1){
    		$('#second').removeClass('active');
    		$('#first').addClass('active');
    		
    		var zeroSelectImg='<img alt="" src="<%=request.getContextPath()%>/NewStyles/images/tick-mark.png" id="zeroSelect">';
    		$("#zeroSelectDiv").html(zeroSelectImg);
    		$("#paymentSelectDiv").html('');
    		$("#paymentSelect").prop('src','');
    		$("#zeroSelectDiv").addClass('launch-tick-mark');
    		$("#paymentSelectDiv").removeClass('launch-tick-mark');
    		$("#parentType").val(1);
    		var parentAmountThreeMonth='${parentAmountThreeYear}';
    		$("#parentAmount").val(parentAmountThreeMonth);
    		$("#paymentMesaage").text("Get Access to Mindful Practice by Paying $"+parentAmountThreeMonth);
    		
        	$("#payment_options").show();
        	$("#parentForm").show();
        	
        	$("#captcha").show();
        	$("#submitButton").show();
    	}
    	else if(selectValue == 2){
    		$('#first').removeClass('active');
    		$('#second').addClass('active');
    		$("#zeroSelect").prop('src','');
    		$("#zeroSelectDiv").html('');
    		var paymentSelectImg='<img alt="" src="<%=request.getContextPath()%>/NewStyles/images/tick-mark.png" id="paymentSelect">';
    		$("#paymentSelectDiv").html(paymentSelectImg);
    		
    		$("#paymentSelectDiv").addClass('launch-tick-mark');
    		$("#zeroSelectDiv").removeClass('launch-tick-mark');
    		$("#parentType").val(2);
    		var parentAmount='${parentAmount}';
    		$("#parentAmount").val(parentAmount);
    		$("#paymentMesaage").text("Get Access to Mindful Practice by Paying $"+parentAmount);
        	$("#payment_options").show();
        	$("#parentForm").show();
        	$("#captcha").show();
        	$("#submitButton").show();
    		
    	}
      
	}
	 
	</script>
   <script type="text/javascript">
	function getImagePath(input){
		if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e)  {
	            $('#logoImageMain').attr('src', e.target.result);
	        };
	        reader.readAsDataURL(input.files[0]);
	    }
		
	} 
	
	

    
</script>

</body>
</html>
