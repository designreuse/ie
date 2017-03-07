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
 <spring:eval expression="@propertyConfigurer.getProperty('service.url')" var="baseURL" />
<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Brand Ambassador</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">

<style type="text/css">
.fancybox-inner{
height: auto !important;
}
</style>
</head>

<body>
<div class="wrapper">
   <%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
		<section class="getStartSct mtop-5">
    <div class="steps_getstarted">
			<div class="containerSmall">
				<div class="pracProgress_hdr">
					 <h2>Brand Ambassador</h2>
					 <div class="green_line_btm"></div>
				 </div>
				
				<div class="procod">
					<div class="procodIn">
						<p>Use promo Code #WISDOM2.0 and your selected school will get access for 3 years at no cost.</p>
					</div>
				</div>
				<div class="makegClick-out">
				<div class="makegClick">
                        <div class="techForm">
                            <label>Type Promo Code</label>
                            <div class="msc_inputbox">
                                <div class="contact-row">
                                    <div class="outer-field-wrap">
                                        <div class="outer-field">
                                            <input type="text" placeholder="Promo Code" value="#WISDOM2.0">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
				</div>
				<form name="brandAmbassador" id="brandAmbassador">
				<div class="getstartForm gclickform">
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Name" name="name" id="nametext">
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Email" name="email" id="emailtext">
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Phone Number" name="phone">
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="zip code" id="brandZipcode" name="brandZipcode">
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				
				<div class="btns-oute mtop10r">
					<input type="button" value="Next" class="submit-btn wdth120" onclick="getLatLongFromZip();">
				</div>
				</form>
			</div>
      </div>
		</section>
    <!--inner_wrapper ends--> 
</div>

	<form action="findSchoolByLatLong" id="submitLatlngForm" method="post">
		<input type="hidden" id="lat" name="lat"> <input type="hidden"
			id="lng" name="lng"> <input type="hidden" id="name"
			name="name"> <input type="hidden" id="email" name="email">
	</form>
 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
</body>
<script type="text/javascript">

$(document).ready(function (){
	 $('#brandAmbassador').validate({
         errorElement: 'span', //default input error message container
         errorClass: 'help-block', // default input error message class
         focusInvalid: false, // do not focus the last invalid input
         //ignore: "",
         rules: {
         	name:{
         		required: true,
         		minlength : 1,
         		maxlength : 50
         	},
         	email:{
         		required: true,
         		email: true
         	},
         	phone:{
         		/* required: true, */
         		maxlength : 12
         	},
         	brandZipcode:{
         		required: true,
         		maxlength : 20,
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
	
	});

function getLatLongFromZip(){
	var homeAddress = document.getElementById('brandZipcode').value;
	var geocoder = new google.maps.Geocoder;
	geocoder.geocode({address: homeAddress},
		    function(results_array, status) { 
		        // Check status and do whatever you want with what you get back
		        // in the results_array variable if it is OK.
		        if (status === google.maps.GeocoderStatus.OK) {
		         var lat = results_array[0].geometry.location.lat();
		         var lng = results_array[0].geometry.location.lng();
		         $("#lat").val(lat);
		         $("#lng").val(lng);
		         
		         if($("#brandAmbassador").valid()){
		     		$("#name").val($("#nametext").val());
		     		$("#email").val($("#emailtext").val());
		          	$("#submitLatlngForm").submit();
		          }
		         
		        }
		        });
	}
</script>
</html>
