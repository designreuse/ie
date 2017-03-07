<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server

	response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance

	response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>Manage Users</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link
	href="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jqvmap.css"
	rel="stylesheet" type="text/css" />
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

<link rel="stylesheet prefetch"
	href="<%=request.getContextPath()%>/NewStyles/css/datepicker.css">
	<link href="<%=request.getContextPath()%>/NewStyles/css/autocomplete/main.css" rel="stylesheet">
</head>

<body>
	<div class="wrapper">
		<%@include file="header.jsp"%>

		<!--inner_wrapper starts-->
		<div class="inner_wrapper">

			<!--inner_header starts-->
			<!-- <div class="inner_header"> <img src="images/browse-donation-header.jpg"  alt=""/> </div>-->

			<!--brow_don_camp starts-->
			<div class="brow_don_camp">
				<div class="container">
					<div class="pracProgress_hdr">
						<h2>Manage Users</h2>
						<div class="green_line_btm"></div>
						<div class="clr"></div>
					</div>
				</div>

				<!--misc tabs start-->
				<div class="misc_tabs">
					<div
						class="misc_tabar background-none margin-bottom-twnty ppl-v-tab">
						<ul>
							<!-- <li id="mtab1" class=" selected"><a class="trial" href="javascript:principalSignUp()">PRINCIPALS</a></li> -->

							<li id="mtab2" class=" selected"><a class="trial"
								href="javascript:parentSignUp()">ADD PARENTS</a></li>
								<li id="mtab2" class=" selected"><a class="trial"
								href="javascript:principalSignUp()">ADD PRINCIPAL</a></li>

						</ul>
					</div>




				</div>

				<!--brow_don_camp ends-->

				<!--inner_header ends-->

			</div>
			<!--inner_wrapper ends-->
		</div>
		<div class="container"  style="display:none" id="parentSignUp">
			<form:form name="parentSignup" class="register-form"
				modelAttribute="dtoUser" method="POST">

				<div class="getstartForm_teacher" id="parentForm"">
					<label>Parent Info</label>
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="firstName" type="text"
											placeholder="First Name" id="firstName" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="lastName" type="text"
											placeholder="Last Name" id="lastName" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="address" id="address" type="text"
											placeholder="Address" />
										<input type="hidden" name="latitude" id="latitude" value="0.0" />
										<input type="hidden" name="longitude" id="longitude"
											value="0.0" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="city" id="city" type="text"
											placeholder="City Name" />

									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="zipCode" id="zipCode" type="text"
											placeholder="Zipcode" />
										<input type="hidden" name="stateShort" id="state_short" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="email" type="text" placeholder="Email"
											id="parentEmail" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="mobile" type="text" id="mobile"
											placeholder="Mobile" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="password" type="password" id="password"
											placeholder="Password" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="password" placeholder="Confirm Password"
											id="confirmPassword" name="confirmPassword" />
									</div>
								</div>
							</div>
						</li>
						   <li>
						   <div class="contact-row">
								<div class="outer-field-wrap">
							<div id="datepicker_parent" class="input-group date" data-date-format="yyyy-mm-dd">
                                  <input class="form-control" type="text" readonly  name="inviteDate" id ="pinviteDate" placeholder="Sub. expiry date" />
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
</div>
</div>
</div>
						</li>

					</ul>

				</div>

				<div class="btns-outer mtop10">
					<input type="hidden" name="parentType" value=1 id="parentType" />
					<input type="hidden" name="parentAmount" id="parentAmount"
						value="${parentAmount}" />
					<div class="getstartForm_captcha" id="submitButton">
						<input type="button" value="Submit" class="submit-btn fl"
							onclick="saveParent();" />

					</div>
				</div>
			</form:form>

		</div>



		<div class="container" style="display:none" id="principalsignup">

			<div class="new-started-step">

				<div class="containerSmall">



					<form:form id="signupForm" method="post" modelAttribute="dtoSignUp"
						enctype="multipart/form-data">

						<input type="hidden" value="${schoolDetailTemp.schoolId}"
							name="schoolId">



						<div class="get-start-new-form">

							<div class="getstartForm_teacher">

								<label class="start-new-label">School Information</label>

								<ul>

									<li>

										<div class="contact-row">

											<div class="outer-field-wrap">

												<div class="outer-field">

													<input type="text" placeholder="School Name*"
														id="prischoolName" name="schoolName"
														value="${schoolDetailTemp.schoolName}">

												</div>

											</div>

										</div>

									</li>

									<li>

										<div class="contact-row">

											<div class="outer-field-wrap">

												<div class="outer-field">

													<input type="text" id="priaddress" name="address"
														placeholder="School Address*"
														value="${schoolDetailTemp.addressLineOne}" />

												</div>

											</div>

										</div>

									</li>

									<li>

										<div class="contact-row">

											<div class="outer-field-wrap">

												<div class="outer-field">

													<input type="text" id="pristate" name="state"
														placeholder="State" value="${schoolDetailTemp.state}" />

												</div>

											</div>

										</div>

									</li>

									<li>

										<div class="contact-row">

											<div class="outer-field-wrap">

												<div class="outer-field">

													<input type="text" id="pricity" name="city"
														placeholder="City" value="${schoolDetailTemp.city}" />

												</div>

											</div>

										</div>

									</li>

									<li>

										<div class="contact-row">

											<div class="outer-field-wrap">

												<div class="outer-field">

													<input type="text" id="prizipCode" name="zipCode"
														placeholder="Zip Code*" value="" />

												</div>

											</div>

										</div>

									</li>

									<li>

										<div class="contact-row">

											<div class="outer-field-wrap">

												<div id="datepicker" class="input-group date"
													data-date-format="yyyy-mm-dd">

													<input class="form-control" type="text" readonly
														id="prisubExpDate" name="subExpDate"
														placeholder="Sub. expiry date" /> <span
														class="input-group-addon"><i
														class="glyphicon glyphicon-calendar"></i></span>

												</div>

											</div>

										</div>

									</li>

									<li>

										<div class="contact-row">

											<div class="outer-field-wrap">

												<div class="outer-field">

													<input name="totalStudentCountUnderSchool" type="text"
														placeholder="No. of Students"
														value="${schoolDetailTemp.studentCount}"
														id="pritotalStudentCountUnderSchool">

												</div>

											</div>

										</div>

									</li>

									<li>

										<div class="contact-row">

											<div class="outer-field-wrap">

												<div class="outer-field">

													<input name="teacherCount" type="text"
														placeholder="No. of Teachers"
														value="${schoolDetailTemp.teacherCount}"
														id="priteacherCount">

												</div>

											</div>

										</div>

									</li>









									<%-- <p class="red-text">

                                        This School is already registered with Inner Explorer <span><a

                                            href="javascript:;">View Details</a></span>

                                    </p> --%>

								</ul>



								<%-- <input type="text" name="state" id="state" placeholder="State" value="${schoolDetailTemp.state}"/> --%>



								<label class="start-new-label">Contact Information</label>



								<ul>

									<li>

										<div class="contact-row">

											<div class="outer-field-wrap">

												<div class="outer-field">

													<input type="text" placeholder="Name*" name="name"
														id="priname" value="${schoolDetailTemp.principalName}">

												</div>

											</div>

										</div>

									</li>

									<li>

										<div class="contact-row">

											<div class="outer-field-wrap">

												<div class="outer-field">

													<input type="text" placeholder="Email*" name="email"
														id="priEmail" value="${schoolDetailTemp.principalEmail}">

												</div>

											</div>

										</div>

									</li>

									<li>

										<div class="contact-row">

											<div class="outer-field-wrap">

												<div class="outer-field">

													<input type="password" placeholder="Password*"
														name="password" id="pripassword"
														value="${schoolDetailTemp.principalPass}">

												</div>

											</div>

										</div>

									</li>

									<li>

										<div class="contact-row">

											<div class="outer-field-wrap">

												<div class="outer-field">

													<input type="password" placeholder="Confirm Password*"
														name="confirmPassword" id="priconfirmPassword"
														value="${schoolDetailTemp.principalPass}">

												</div>

											</div>

										</div>

									</li>
							</div>

						</div>



						<!--                 <div class="getstartForm_captcha" id="submitButton"  >

            <input type="button" value="Submit" class="submit-btn fl"  />

                    

                </div> -->

						<div class="btns-outer mtop10">

							<input type="button" value="Submit" onclick="savePrincipal();"
								class="submit-btn fl" />

						</div>









					</form:form>



				</div>

			</div>

		</div>



	</div>

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>

	<!--tab start -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/tab.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script type="text/javascript">
$(function(){
	
	$("#header").sticky({ topSpacing: 0 });
	$("#sample_1").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
	$("#sample_2").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
	$("#sample_3").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});

	

});
			<%-- /* 	function showTab(current,max){
					for (i=1;i<=max;i++){
					getMyHTMLElement('tab' + i).style.display = 'none';
					getMyHTMLElement('mtab' + i).className = '';
					}
					getMyHTMLElement('tab' + current).style.display = '';
					getMyHTMLElement('mtab' + current).className = 'selected';
					} */
				
				function sendEmail(email ,userType , name){
					
						var url='<%=request.getContextPath()%>/communityadmin/sendEmail';
						$.ajax({
							url:url,
							method:'POST',
							async :false,
							data:{email:email ,userType:userType,name:name},
							cache:false,
							success:function(response){
								alert("Email sent successfully")
							}
						});
					} --%>
					
					function parentSignUp(){
						
					
						
						
						$("#parentSignUp").show();
						$("#principalsignup").hide();
							
							
						
					}
					function principalSignUp(){
						
						
						
						$("#principalsignup").show();
				
						$("#parentSignUp").hide();
							
							
						
					}
				
				</script>

	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
	<script type="text/javascript">	
jQuery(document).ready
	(function($){
		
		$("#parentType").val(1);
		
		
		 $.validator.addMethod("emailAlreadyExist", function(value, element) {
	            return this.optional(element) || emailAlreadyCheck(value);
	        }, "Email already exists. Click Here to <a href='<%=request.getContextPath()%>/login'> Login");
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
             		/* required: true, */
             		minlength : 10,
             		maxlength : 30
             		//digits	: true
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
             
           

          /*     submitHandler: function(form) {
            	 
            	 if($(".register-form").valid()){
            		 saveParent();
            		
     				return true;
     			}else{
     				return false;
     			}
             }  */
         });
		 
		
	});
	
	function setLatLongValueAndSubmit(form){
		var lat = $("#latitude").val() ;
		var lng = $("#longitude").val() ;
		console.log(lat +":"+lng);
		if(lat == 0.0 && lng == 0.0){
			if($('#city').val().trim().length>0){
			    var zipCodeAddress = $('#city').val() +","+ $('#zipCode').val();
			    //alert(zipCodeAddress);
			    var geocoder = new google.maps.Geocoder();
			    geocoder.geocode( { 'address': zipCodeAddress}, function(results, status) {
			      if (status == google.maps.GeocoderStatus.OK) {
			         lat = results[0].geometry.location.lat();
			         lng = results[0].geometry.location.lng();
			         //alert(lat+",,,"+lng);
			         $("#latitude").val(lat);
			         $("#longitude").val(lng);
			         form.submit();
			         }
			       else {
			    	   form.submit();
			      }
			    });
		     }else{
		    	 form.submit();
		    	 }
			}
			else{
		    	 form.submit();
		    	 }
	}

    function saveParent(){
    	var email = $("#parentEmail").val().trim();
    	var firstName= $("#firstName").val().trim();
    	var lastName= $("#lastName").val().trim();
    	var address= $("#address").val().trim();
    	var latitude= $("#latitude").val().trim();
    	var longitude= $("#longitude").val().trim();
    	var city= $("#city").val().trim();
    	var zipCode= $("#zipCode").val().trim();
    	var stateShort = $("#state_short").val().trim();
    	var mobile= $("#mobile").val().trim();
    	var password= $("#password").val().trim();
    	var confirmPassword= $("#confirmPassword").val().trim();
    	var parentType= $("#parentType").val().trim();
    	var parentAmount= $("#parentAmount").val().trim();
    	var userId=${userId};
    	var inviteDate=$("#pinviteDate").val().trim();

    	if($(".register-form").valid()){
		$.ajax({
			url : "<%=request.getContextPath()%>/communityadmin/parentSignupTemp",
			method : 'POST',
			headers: { 
				'Content-Type':'application/json'
				},
			data : JSON.stringify({"email":email,"firstName":firstName ,"lastName":lastName,"address":address, "latitude":latitude,"longitude":longitude,"city":city,"zipCode":zipCode,"stateShort":stateShort,"mobile":mobile,"password":password,"confirmPassword":confirmPassword,"parentType":parentType,"parentAmount":parentAmount,"userId":userId, "inviteDate":inviteDate}),
			async:false,
			success : function(result) {
				if(result.response.code == 200){
					alert("Parent has been created successfully")
					$("#parentEmail")[0].value="";
			        $("#firstName")[0].value="";
			    	$("#lastName")[0].value="";
			    	$("#address")[0].value="";
			    	$("#latitude")[0].value="";
			    	$("#longitude")[0].value="";
			    	$("#city")[0].value="";
			    	$("#zipCode")[0].value="";
			    	$("#state_short")[0].value="";
			    	$("#mobile")[0].value="";
			    	$("#password")[0].value="";
			    	$("#confirmPassword")[0].value="";
			    	$("#parentType")[0].value="";
			    	$("#parentAmount")[0].value=""; 
			  
					
				} else if(result.response.code == 409){
					alert("There is some issue, Please check with admin")
				}
			}
		});
	}else{
		alert("form is not valid")
		emailStatus = true;
	}
	return emailStatus;
}
	
	

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

	<script src='<%=request.getContextPath()%>/NewStyles/js/datepicker.js'></script>

	<script>

      $(function () {

    	  $('#datepicker').datepicker({
    	        autoclose: true,
    	        todayHighlight: true
    	    }).datepicker('update', new Date(new Date().getTime()+(5*24*60*60*1000)));
    	    ;
    	    
    	   
    	    
    	    $('#datepicker_parent').datepicker({
    	        autoclose: true,
    	        todayHighlight: true
    	    }).datepicker('update', new Date(new Date().getTime()+(5*24*60*60*1000)));
    	    ;
    	});

      //# sourceURL=pen.js

    </script>



	<script type="text/javascript">

jQuery(document).ready

(function($){

            

     $.validator.addMethod("emailAlreadyExist", function(value, element) {

         return this.optional(element) || priemailAlreadyCheck(value);

     }, "Email already exists. Click Here to <a href='<%=request.getContextPath()%>/login'> Login");

         

        

            $('#signupForm').validate({

                 errorElement: 'span', //default input error message container

                 errorClass: 'help-block', // default input error message class

                 focusInvalid: false, // do not focus the last invalid input

                 rules: {

                     schoolName:{

                         required: true,

                         //nameRegex:true,

                       

                         specialChar :true

                     },       

                    

                     name: {

                         required: true,

                         //nameRegex:true,

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

                         email: true,

                         emailAlreadyExist: true

                     },

                     

                     password: {

                         required: true,

                        minlength : 6,

                        maxlength : 20

                     },confirmPassword: {

                         equalTo: "#pripassword"

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

              /*     submitHandler: function(form) {

                     

                     if($(".register-form").valid()){

                         saveParent();

                        

                        return true;

                    }else{

                        return false;

                    }

                 }  */

                 

              

             }); 

            

            

}); 

function savePrincipal()

{

    

    var email = $("#priEmail").val().trim();

    var name= $("#priname").val().trim();

    var address= $("#priaddress").val().trim();

    var schoolName=$("#prischoolName").val().trim();

    var state= $("#pristate").val().trim();

    var city= $("#pricity").val().trim();

    var name= $("#priname").val().trim();

    var zipCode= $("#prizipCode").val().trim();

    var subExpDate=$("#prisubExpDate").val().trim();

    var teacherCount=$("#priteacherCount").val().trim();pritotalStudentCountUnderSchool

    var totalStudentCountUnderSchool=$("#pritotalStudentCountUnderSchool").val().trim();

    var password= $("#pripassword").val().trim();

    var confirmPassword= $("#priconfirmPassword").val().trim();
    
    var userId=${userId};
    

    

    

    if($('#signupForm').valid()){

    $.ajax({

        url : "<%=request.getContextPath()%>/communityadmin/principalSignup",

        method : 'POST',

        headers: { 

            'Content-Type':'application/json'

            },

        data : JSON.stringify({"email":email,"name":name ,"address":address,"city":city,"zipCode":zipCode,"password":password,"confirmPassword":confirmPassword,"schoolName":schoolName,"state":state,"subExpDate":subExpDate,"teacherCount":teacherCount,"totalStudentCountUnderSchool":totalStudentCountUnderSchool,"userId":userId}),

        async:false,

        success : function(result) {

        

            if(result.response.code == 200){

                

                alert("Principal has been created successfully")
                
                $("#priEmail")[0].value="";

               $("#priname")[0].value="";

               $("#priaddress")[0].value="";

                $("#prischoolName")[0].value="";

                $("#pristate")[0].value="";

                $("#pricity")[0].value="";

                $("#priname")[0].value="";

               $("#prizipCode")[0].value="";

                $("#prisubExpDate")[0].value="";

                $("#priteacherCount")[0].value="";

               $("#pritotalStudentCountUnderSchool")[0].value="";

                $("#pripassword")[0].value="";

                $("#priconfirmPassword")[0].value="";
                
                
                
                

            } else if(result.response.code == 409){

                alert("There is some issue, Please check with admin")

            }

        }

    });

    

    }

    else

        {

        alert("form is not valid");

        }

    

}

     

function priemailAlreadyCheck(value){

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

    

            </script>

	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.autocomplete.js"
		type="text/javascript"></script>
	<script type="text/javascript">
    jQuery(document).ready
    (function($){
           $('#prischoolName').autocomplete({
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
                                $("#pstateShort").val(result.modelMap.dtoTeacherSignOn.stateShort);
                                $("#priaddress").val(result.modelMap.dtoTeacherSignOn.masterSchoolAddress);
                                $("#prizipCode").val(result.modelMap.dtoTeacherSignOn.zipCode);
                                $("#pristate").val(result.modelMap.dtoTeacherSignOn.state);
                                $("#pricity").val(result.modelMap.dtoTeacherSignOn.city);
                                $("#platitude").val(result.modelMap.dtoTeacherSignOn.latitude);
                                $("#plongitude").val(result.modelMap.dtoTeacherSignOn.longitude);
                            }
                        });
                       
                   }
                    }
                   
                }
           });
   });
    
    </script>
</body>
</html>
