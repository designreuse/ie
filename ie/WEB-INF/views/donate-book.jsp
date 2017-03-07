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
<title>Contribute Now</title>
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
         <div class="pracProgress_hdr">
            <h2>Contribute to Bright Futures Fund</h2>
            <div class="green_line_btm"></div>
            <div class="get_program_school no_gaptp gnewcolor" id="donateForm">
                <div class="containerSmall">
                    <form:form role="form" id="donationBookForm" action="addDonationForBook" class="register-form" modelAttribute="dtoDonor" method="post">
                    <div class="ContactForm mtop10">
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
										<form:input path="address1" id="address1" type="text" placeholder="Address"/>
											<input type="hidden" name="latitude" id="latitude" value="0.0" />
										<input type="hidden" name="longitude" id="longitude" value="0.0" />
									</div>
								</div>
							</div>
						</li>
						 <li style="display: none;">
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="zipCode" id="zipCode" type="text" placeholder="Postal / Zip Code" />
									</div>
								</div>
							</div>
						</li> 
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="amount" id="amount" type="number" placeholder="Enter Amount"/>
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
			<input type="submit" value="Pay   Now" class="submit-btn fl"	id="demo_5"/>
			
		</div>
                        
        			</form:form>
        			
                        
                    </div>
                
            </div>

    <div class="clr"></div>
<br>
<div class="container1">
		
                <div class="daily_msg">
		                <p style="text-align:left;"><u>Master of Mindfulness How to Be Your Own Superhero In Times of Stress</u> is a book that was written in 2014 by a group of 25 creative, intelligent, spunky kids in East Oakland, California. The students decided that all kids needed to know about mindfulness and so the book was born.  At the time of writing our 25 authors were fifth graders in Mr. Musumeci.s class at Reach Academy.  New Harbinger published the book on March 1, 2016.
<br>
<br>
In addition to personal donations, the majority of the royalties for the book will be donated to the Bright Futures Fund to advance the education of the authors after graduating from high school, the earliest of which will occur in 2021.  Funds will be collected and held for this purpose.<br><br>
Inner Explorer, a non-profit organization dedicated to bringing the daily practice of mindfulness to students in Oakland and everywhere, hosts the fund. All donations to the fund are tax-deductible to the extent of the 
law. The fund is being launched with $2,500, $100 per student. The more books we sell and the more donations we receive, the more funding will be available to support our wonderful authors. 
<br><br>
Prospective donors may donate online at url: <br>
http://innerexplorer.org/ie/donateBook
OR send a check to: <br>
Inner Explorer Bright Futures Fund<br>
4100 Redwood Rd. Ste 241<br>
Oakland, CA  94619</p>

<p>For questions, please contact Laurie Grossman at (510) 482-1588<br>
Inner Explorer Tax ID #  45-2395336
 
</p>

            </div>
				
				<div class="clr"></div>
                	<div class="prac-prog-con">
                        </div> 
                    </div>
                    
                    
                </div> 
            	
                
            </div>
        </div>
        
    </div>
   <div class="clr"></div>

     <br>
</div>
<br>

<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>

<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>

<script type="text/javascript">

$(document).ready(function() {  
	 
	 $.validator.addMethod("amountRegex", function(value, element) {
			return ($("#amount").val()!='');
    }, "Please enter amount.");

	$.validator.addMethod("nameRegex", function(value, element) {
        return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
    }, "Field must contain letters only.");


	 $.validator.addMethod("amountZero", function(value, element) {
	        return ($("#amount").val()!=0 || $("#amount").val()!=0.00);
	    }, "Please enter amount greater than zero.");
	 
	
	jQuery.validator.addMethod("notEqual", function(value, element) {
		var status = true;
		$('[id^=principalEmail]').each( function( index, el ){
			if(($( el ).val() == value) && $( el ).attr("id") != $(element).attr("id") ){
				status = false;
			}
		});
		  return this.optional(element) || status;
		}, "Please use unique email address.");
    
    $('#donationBookForm').validate({
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
   		amountRegex: true,
   		amountZero:true
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
        	
        	 var otherAmount=$("#amount").val();
     		var otherAmount1= Number(otherAmount).toFixed(2);
     		$("#amount").val(otherAmount1);
            		form.submit();
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
 			    	  }
			    	}
			    });
	});
}

google.maps.event.addDomListener(window, 'load', getStudentAddressLatLong); 


</script>

</body>
</html>

