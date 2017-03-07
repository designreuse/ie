<%@ taglib prefix="c" 			uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" 		uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" 		uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" 			uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="s" 			uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sf" 			uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring"      uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%          response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server

            response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance

            response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
            response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility 
 %>
<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Contribute District Leader</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">

<style>
.tar_wrapper .progress{overflow: inherit !important;}
</style>
</head>

<body>
<div class="wrapper">
<%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--inner_header starts-->
        
        <!--about_us starts-->
        <div class="about_us">
            <div class="content_inner">
            
                <div class="pracProgress_hdr">
                    <h2>District Leader</h2>
                    <div class="green_line_btm"></div>
                </div>
                <div class="procod">
					<div class="procodIn">
						<p>Enter number of schools you want to sponsor as a district leader</p>
					</div>
				</div>
				
				
                </div>
            <c:if test="${campaign.campaignId != 0}">    
            	<div class="get_program_school no_gaptp background-none padding-top-zero" id="donateForm">
               
               	
               <div class="containerSmall">
		<form action="principalDetails" id="principalDetailsForm" name="principalDetailsForm" method="post" class="register-principal">
		<div class="dis-ldr-main">
			<div class="dis-ldr-lft">
             	<input type="text" id="emailCount" name="emailCount" onchange="showEmailName();" placeholder="Enter number of schools">
             </div>
            <label class="need-pay">You need to pay: $<span id="amountPay">0</span></label>
              	</div>
              	
	    	   	<input type="hidden" id="amount" name="amount">
    	       <input type="hidden" id="donorEmail" name="donorEmail">
               <input type="hidden" id="leaderFName" name="leaderFName">
               <input type="hidden" id="leaderLName" name="leaderLName">
               <input type="hidden" id="leaderAddress" name="leaderAddress">
               <input type="hidden" id="leaderZip" name="leaderZip">
               <input type="hidden" id="leaderCity" name="leaderCity">
               <input type="hidden" id="leaderState" name="leaderState">
               <input type="hidden" name="latitude" id="latitude" value="0.0" />
				<input type="hidden" name="longitude" id="longitude" value="0.0" />
				<input type="hidden" id="tempDonorId" name="tempDonorId" value="0">
              <ul id="principalDetails" class="listing-dis-ldr">
               
              </ul>
		</form>
		</div>
                
                <div class="containerSmall">
                    <form:form role="form" id="donationForm" action="addDistrictLeaderAmount" class="register-form" modelAttribute="dtoDonor" method="post">
                    <div class="ContactForm mtop10">
                    <div class="dis-ldr-hd">Your Information</div>
                    <form:input type="hidden" path="donorContributionId" value="${donorContribution.donorContributionId}"></form:input>
                    <form:input type="hidden" path="campaignId" value="${campaign.campaignId}"></form:input>
                    <form:input type="hidden" path="schoolId" value="${campaign.schoolId}"></form:input>
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="fName" id="fName" type="text" placeholder="First Name" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="lName" id="lName" type="text" placeholder="Last Name" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="email" id="email" type="text" placeholder="Email" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="address1" id="address1" type="text" placeholder="Address" />
										 
									</div>
								</div>
							</div>
						</li>
						 <li >
							<div class="contact-row" >
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="zipCode" id="zipCode" type="text" placeholder="Postal / Zip Code"/>
									</div>
								</div>
							</div>
						</li> 
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="affiliationType" id="affiliationType" type="text" placeholder="How did you hear about us"/>
									</div>
								</div>
							</div>
						</li>
            		<li>							
						</li>
				</ul>
				
				</div>
				
			<div class="clr"></div>
							
		<div class="btns-outer mrg_btm25">
			<input type="button" value="Pay Now" class="submit-btn fl"	id="demo_5" onclick="submitEmailFrom();"/>
		</div>
		
                     <input type="hidden" id="tempDonorDetailId" name="tempDonorDetailId" value="0">   
        			</form:form>
                    </div>
                
            </div>
            </c:if>
            
                
            </div>
        </div>
        <!--about_us ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends-->
</div>

<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.formatCurrency.all.js"></script>

<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>

<script type="text/javascript">

$(document).ready(function() {  
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
	$.validator.addMethod("nameRegex", function(value, element) {
        return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
    }, "Field must contain letters only.");
	
	jQuery.validator.addMethod("notEqual", function(value, element) {
		var status = true;
		$('[id^=principalEmail]').each( function( index, el ){
			if(($( el ).val() == value) && $( el ).attr("id") != $(element).attr("id") ){
				status = false;
			}
		});
		  return this.optional(element) || status;
		}, "Please use unique email address.");
    
    $('#donationForm').validate({
        errorElement: 'span', //default input error message container
        errorClass: 'help-block', // default input error message class
        focusInvalid: false, // do not focus the last invalid input
        ignore: "",
        rules: {

     	email:{
        		required: true,
        		email:true
        	},
        	amount:{
        		/* amountValid: true */
        	},
     	fName:{
     		 required: true,
              maxlength : 20
        	},
     	lName:{
     		 maxlength : 20
        	},
     	address1:{
     		required: true,
             maxlength :100
        	},
     	city:{
     		required: true,
             maxlength : 20
        	},
        	state:{
        		required: true,
             maxlength : 20
        	},
        	/* zipCode:{
        		required: true,
     		maxlength : 20
        	}, */
       	country:{
        		required: true
        	},
        	affiliationType:{
        		/* required: true */
        	},
        	otherAmount:{
        		amountValid:true,
        		amountRegex: true,
        		amountZero:true
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
    
    $('.register-principal').validate({
        errorElement: 'span', //default input error message container
        errorClass: 'help-block', // default input error message class
        focusInvalid: false, // do not focus the last invalid input
        //ignore: "",
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
            //form.submit();
        }
    });
                	 
   });
   
function getStudentAddressLatLong(){
    var homeAddress = document.getElementById('address1');
    var geocoder = new google.maps.Geocoder;
    var autoCompleteHomeAddress = new google.maps.places.Autocomplete(homeAddress);
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
			    		    
			    		    if(addressType == 'locality'){
			    		    	var loc = results[0].address_components[i].long_name;
									$('#leaderCity').val(loc);    			    		    	
			    		    }
 			    	  }
			    	}
			    });
	});
}

google.maps.event.addDomListener(window, 'load', getStudentAddressLatLong); 




function submitEmailFrom(){
	
	 $("#principalDetailsForm").validate({ ignore: []});
	$("#principalDetailsForm").validate();
	
	$('[id^=principalName_]').each( function( index, el ) {
	    $( el ).rules('add', {
    	    required: true ,
    	    maxlength:40
    	});
	});
	$('[id^=principalEmail_]').each( function( index, el ) {
	    $( el ).rules('add', {
    	    required: true,
    	    email: true,
    	   notEqual:true
    	});
	});
	
	var divisible=$("#emailCount").val();
	if(divisible!="" && divisible>=1){
	if($("#principalDetailsForm").valid()){ 
	if($("#donationForm").valid()){
	
	var donorEmail=$("#email").val();
	var leaderFName=$("#fName").val();
	var leaderLName=$("#lName").val();
	var leaderAddress=$("#address1").val();
	var leaderZip=$("#zipCode").val();
	
	$("#donorEmail").val(donorEmail);
	$("#leaderFName").val(leaderFName);
	$("#leaderLName").val(leaderLName);
	$("#leaderAddress").val(leaderAddress);
	$("#leaderZip").val(leaderZip);
	
	
	
	$.ajax({
	    type : 'POST',
	    url : '<%=request.getContextPath()%>/principalDetails',
	    data : $('#principalDetailsForm').serialize(),
	    success:function(result){
	    
		if(result!=0){
			
			$("#tempDonorId").val(result);
			$("#tempDonorDetailId").val(result);
			
			$("#donationForm").submit();
           

		}	
			
	    }
		});
	}
	}
	}
	else
		{
		alert("Please enter atleast one school.");
		}
	
}


function showEmailName(){
	
 	var principalDetails="";
		
			var divisible=$("#emailCount").val();
			if(divisible!="" && divisible>=1){
				$("#amount").val((Number(divisible))*100);
				$("#amountPay").text((Number(divisible))*100);
					
				for(var i=1;i<=divisible;i++){
					principalDetails+='<li><label>Principal Name</label><div class="contact-row"><div class="outer-field-wrap">'+
					'<div class="outer-field"><input type="text" placeholder="Enter Name" id="principalName_'+i+'" name="principalName_'+i+'">'+
					'</div></div></div></li>'+
					'<li><label>Principal Email</label><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
					'<input type="text" placeholder="Enter Email" id="principalEmail_'+i+'" name="principalEmail_'+i+'">'+
					'</div></div></div></li>';
			
				}
				$("#principalDetails").html(principalDetails);
			}
			else
				{
				$("#principalDetails").html("");
				alert("Please enter atleast one school.");
				}
			
}



</script>

</body>
</html>
