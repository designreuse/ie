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
<title>Home Edition Signup</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
</head>
<body>
	<div class="wrapper">
	   <%@include file="header.jsp" %>
		<section class="makeDonateSct mtop-5">
			<div class="containerSmall">
		<form:form name="parentSignup" class="register-form" modelAttribute="dtoUser" action="parentSignupRadio" method="POST" enctype="multipart/form-data">	
         <div class="pracProgress_hdr">
            <h2>Home Edition Signup</h2>
            <div class="green_line_btm"></div>
			<h3 class="teachr_dsh bdr-btm-none">Bring mindful awareness experience to your home</h3>
				<div class="clr"></div>
            </div>
				<div class="getstartForm_teacher" id="parentForm" >
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
								<!-- <input id="mediaFile" name="mediaFile" accept="image/*" type="file" onchange="this.form.submit()" value=""> -->
								<input id="mediaFile" accept="image/*" type="file" value="" name="image" onchange="getImagePath(this);"/>
							</div>
                    	</div>
					
				</div>
       
                <div class="btns-outer mtop10">
				<input type="hidden" name="parentType" id="parentType"/>
				<input type="hidden" name="parentAmount" id="parentAmount" value="${parentAmount}"/>
				<input type="submit" value="Submit" class="submit-btn fl" id="submitButton" />
				</div> 
				</form:form>
				</div>
    </section>
				
</div>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>  
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
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script> 
   <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
   <script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
		
		$("#zipCode").blur(function(event) {
    		$.ajax({
    			url : "http://zip.getziptastic.com/v2/US/"+$(this).val(),
    			success : function(result) {
    				$("#state_short").val(result.state_short);
    				//$("#city").val(result.city);
    			}
    		});
    	});
		
		$("#payment_options").hide();
		$("#parentType").val(1);
		var parentAmountThreeMonth='${parentAmountThreeYear}';
		$("#parentAmount").val(parentAmountThreeMonth);
		
		 $.validator.addMethod("emailAlreadyExist", function(value, element) {
	            return this.optional(element) || emailAlreadyCheck(value);
	        }, "Email already exists. Click Here to <a href='<%=request.getContextPath()%>/login'> Login");
         $.validator.addMethod("nameRegex", function(value, element) {
             return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
         }, "Field must contain letters only.");
         $.validator.addMethod("specialChar", function(value, element) {
             return this.optional(element) || /^[a-zA-Z0-9- ]+$/i.test(value);
         }, "Remove special characters.");
         
         $.validator.addMethod("pCodeValid", function(value, element) {
             return this.optional(element) || pCodeValid(value);
         }, "Please enter a valid Promo Code.");
         
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
                 zipCode: {
                     required: true,
                     //nameRegex:true,
                     maxlength : 20/* ,
                     specialChar :true */
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
             		
             	},
             	pCode:{
             		required:true,
             		pCodeValid: true
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
     			
            	 if($(".register-form").valid()){
     				form.submit();
     				return true;
     			}else{
     				return false;
     			}
                 //form.submit();
             }
         });
		 
		
	});
	
	 function emailAlreadyCheck(value){
			//var email = $("#email").val().trim();
			var email = value;
			if(email != ""){
				$.ajax({
					url : "<%=request.getContextPath()%>/check/availability/parent/email",
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
	 
	</script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
   <script type="text/javascript">
    $(function(){
    	$("#header").sticky({ topSpacing: 0 });

    	$("#login").click(function(e) {
    	        $(".login_panel").toggle();
    	        e.stopPropagation();
    	    });

    	    $(document).click(function(e) {
    	        if (!$(e.target).is('.login_panel, .login_panel *')) {
    	            $(".login_panel").hide();
    	        }
    	    });

      /* SyntaxHighlighter.all(); */
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
    /* For getting Lat & Long of parent Address */
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
    
    google.maps.event.addDomListener(window, 'load', getStudentAddressLatLong);
    
	function getImagePath(input){
		if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e)  {
	            $('#logoImageMain').attr('src', e.target.result);
	        };
	        reader.readAsDataURL(input.files[0]);
	        
	    }
		
	} 
	
	function pCodeValid(){
    	var parentEmail=$("#parentEmail").val();
    	var pCode=$("#pCode").val();
    	var flag;
    	if(parentEmail!="" && pCode!=""){
    		var url='<%=request.getContextPath()%>/checkPromoCodeParentRadio';
    		$.ajax({
    			url:url,
    			method:'POST',
    			async :false,
    			data:{parentEmail:parentEmail,pCode:pCode},
    			cache:false,
    			success:function(response){
    				if(response=="Y"){
    					flag=false;
    				}
    				else
    					{
    					flag=true;
    					}
    				
    			}
    		});
    		
    	}
    	return flag;
    	
    }
    
	
	
    
</script>

</body>
</html>
