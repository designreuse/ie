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
<title>Profile</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/autocomplete/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">

<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<%-- <link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/> --%>
</head>

<body>
	<div class="wrapper">
	  <%@include file="header.jsp" %>
	  <!--<section class="slider-inner">
			<img src="images/browse-donation-header.jpg" alt="Slider" />
		</section>-->

		<section class="makeDonateSct mtop-5">
			<div class="containerSmall">
			
		<form:form name="parentSignup" class="register-form" modelAttribute="dtoUser" action="profileUpdate" method="POST" enctype="multipart/form-data">
        
         <div class="pracProgress_hdr">
            <h2>Profile</h2>
            <div class="green_line_btm"></div>
			
				<div class="clr"></div>
			<!-- 	<div class="check-select-out">
                	<div class="check-select">
                    	<ul>
                    		<li><input type="radio" name="group2" value="Home Edition" id="check-1" checked> <label  for="check-1">Home Edition</label></li>
							<li><input type="hidden" name="group2" value="Parent Edition" id="check-2" checked> <label  for="check-2">Home Edition</label></li>
                        </ul>
                    </div>
                </div> -->
            </div>
				
				<div class="getstartForm" id="homeEdition">
					<label>Personal Info</label>
					<ul>
					<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="firstName" type="text" placeholder="First Name" value="${userDetails.firstName}"/>
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="lastName" type="text" placeholder="Last Name" value="${userDetails.lastName}"/>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="email" type="text" placeholder="Email" value="${userDetails.email}" readonly="readonly"/>
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="addressParent" id="addressParent" type="text" placeholder="Address" value="${userDetails.addressParent}"/>
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
											<form:input path="zipCodeNew" type="text" name="zipCodeNew" placeholder="Zip Code" id="zipCodeNew" value="${userDetails.zipCodeNew}"/> 
										</div>
									</div>
								</div>
							</li>
						 <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="stateNew" type="text" placeholder="State" value="${userDetails.stateNew}"/>
										<form:input type="hidden" path="stateShortNew" name="stateShortNew" id="state_short" />
									</div>
								</div>
							</div>
						</li>
						 <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="city" type="text" placeholder="City" value="${userDetails.city}"/>
									</div>
								</div>
							</div>
						</li>
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input type="text" path="mobile" value="${userDetails.mobile}" placeholder="Mobile Number" autocomplete="off"/>
									</div>
								</div>
							</div>
						</li>
				
						<li id="oldSchoolLogo">
				     
					        
					        <div class="popup_school_details_img" title="Profile Pic">
                    	
                    	 	
							<c:if test="${userDetails.profilePic ne 'NA'}">
                        	<img src="<%=request.getContextPath()%>/NewStyles/images/parent-profile/${userDetails.profilePic}" id="schoolSelectedLogo" alt=""/>
                        	</c:if>
                        	<c:if test="${userDetails.profilePic eq 'NA'}">
                        	<img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png" alt="" id="schoolSelectedLogo">
                        	</c:if>               				
                    	
	                    	<div class="edit-img" title="Select a profile pic">
								<form:input id="mediaFile" name="mediaFile" accept="image/*" type="file" value="" path="image" onchange="getImagePathParent(this);"/>
							</div>
                    	
                    	</div>
					        
						</li>
                      <%--   <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="password" type="password" placeholder="Old Password" />
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="password" placeholder="New Password" name="confirmPassword"/>
									</div>
								</div>
							</div>
						</li> --%>
						</div>
						
						
						
						<div class="getstartForm">
					<label>Password Management</label>
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="password" name="password" id="oldPassword" placeholder="Enter old password" autocomplete="off"/>
									</div>
								</div>
							</div>
						</li>
                        <li>
                        </li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input type="password" path="newPassword" id="submit_form_password" placeholder="Enter New password" autocomplete="off"/>
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="password" name="rpassword" placeholder="Re-enter Password" id="rpassword" autocomplete="off"/>
									</div>
								</div>
							</div>
						</li>
						
					</ul>
					
					
				</div>
				
				<c:if test="${not empty userDetails.expiryDate}">
				
				<div class="hed_content">
						<p style="font-weight: 600;">Your Subscription will be expired on ${userDetails.expiryDate}
						
			<input type="button" value="Renew" onClick="location.href='<%=request.getContextPath()%>/donor/upgradeRadio';" 
			class="submit-btn"/>
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
										<form:input type="text" path="facebookId" value="${userDetails.facebookId}" placeholder="Enter facebook profile url"/>
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input type="text" path="amazonUrl" value="${userDetails.amazonUrl}" placeholder="Enter amazon contributes link" />
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input type="text" path="twitterId" value="${userDetails.twitterId}" placeholder="Enter twitter profile url" />
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input type="text" path="linkedinId" value="${userDetails.linkedinId}" placeholder="Enter linkedin profile url" />
									</div>
								</div>
							</div>
						</li>
						
					</ul>
					
					
				</div>
						
						<div class="getstartForm">
						<ul>
						<c:if test="${userType ne 'family'}"> 
                         <li class="margin-bottom-ten" id="showParentChild">
                        	<div class="contact-row">
                            	<div class="outer-field">
                                	<div class="add-child">
                                    	<a href="javascript:;" onclick="showParentChild();"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png"></span>Add Children Info</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                         <li class="margin-bottom-ten" id="removeParentChild">
                        	<div class="contact-row">
                            	<div class="outer-field">
                                	<div class="add-child">
                                    	<a href="javascript:;" onclick="removeParentChild();"><span><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png"></span>Remove Children Info</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                       </c:if> 
					</ul>
					
					<input type="hidden" name="address1" id="address1"/>
					
				</div>
				<div class="getstartForm_teacher" id="parentEdition">
                	<label>School Info for Child</label>
                	<div id="parentInfo">
					<div id="divSection_0"> 
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Child Name" name="childName_0" id="childName_0"/>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="hidden" name="schoolIds" value="0" id="schoolIds_0"/>
										<input type="text" placeholder="School Name" name="schoolName_0" id="schoolName_0"/>
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="School Address" name="address_0" id="address_0"/>
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Zip Code" name="zipCode_0" id="zipCode_0"/>
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="hidden" name="stateShort" id="stateShort_0"/>
										<input type="text" placeholder="City/State" name="state_0" id="state_0"/>
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="hidden" name="classIds" value="0" id="classId_0"/>
										<input type="text" placeholder="Class" name="className_0" id="className_0"/>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="hidden" name="teacherIds" value="0" id="teacherIds_0"/>
										<input type="text" placeholder="Teacher Name" name="teacherName_0" id="teacherName_0"/>
									</div>
								</div>
							</div>
						</li>
						
						
				<%-- 		<li>
					        <div class="popup_school_details_img" title="Child Pic">
                        	<img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png" alt="" id="schoolSelectedLogo_0">
	                    	<div class="edit-img" title="Select a child pic">
								<form:input id="mediaFile" name="mediaFile" accept="image/*" type="file" value="" path="image" onchange="getImagePath(this,0);"/>
							</div>
                    	</div>
						</li> --%>
						
							<div class="strt-peti" style="display: none;" id="petition_0">
							<input type="hidden" name="petitionSchoolId_0" id="petitionSchoolId_0">
							<input type="hidden" name="ieSchool" id="ieSchool_0"/>
                	<p>Your kids school does not have IE program running. Start a Petition<span><input type="button" value="Start a Petition" class="submit-btn " onclick="startPetition(0);"/></span></p>
                </div>
						
						
						<br>
                         <li class="margin-bottom-ten">
                        	<div class="contact-row">
                            	<div class="outer-field">
                                	<div class="add-child" id="removeLast_0">
                                    	<a href="javascript:;" onclick="addMoreClasses(0);"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" id="addMoreClass"></span>Add Another Child</a>
                                    </div>
                                </div>
                            </div>
                        </li> 
					</ul>
					</div>
					</div>
					
				</div>
				
				
				<!-- Family Member Details -->
							
						<div class="getstartForm">
						<ul>
						  <c:if test="${userType ne 'family' && userType ne 'share'}"> 
                         <li class="margin-bottom-ten" id="showParentFamily">
                        	<div class="contact-row">
                            	<div class="outer-field">
                                	<div class="add-child">
                                    	<a href="javascript:;" onclick="showParentFamily();"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png"></span>Add Family Member</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                         <li class="margin-bottom-ten" id="removeParentFamily">
                        	<div class="contact-row">
                            	<div class="outer-field">
                                	<div class="add-child">
                                    	<a href="javascript:;" onclick="removeParentFamily();"><span><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png"></span>Remove Family Member</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                        </c:if>
					</ul>
					
					<input type="hidden" name="familyAddress" id="familyAddress"/>
					
				</div>
				<div class="getstartForm_teacher" id="parentEditionFamily">
                	<label>Family Member</label>
                	<div id="parentInfoFamily">
					<div id="divSectionFamily_0"> 
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Name" name="nameFamily_0" id="nameFamily_0"/>
									</div>
								</div>
							</div>
						</li>
						
							<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Email" name="emailFamily_0" id="emailFamily_0"/>
									</div>
								</div>
							</div>
						</li>
					
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Address" name="addressFamily_0" id="addressFamily_0"/>
										<input type="hidden" name="latitudeFamily_0" id="latitudeFamily_0" value="0.0" /> 
										<input type="hidden" name="longitudeFamily_0" id="longitudeFamily_0" value="0.0" />
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Zip Code" name="zipCodeFamily_0" id="zipCodeFamily_0"/>
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="hidden" name="stateShortFamily" id="stateShortFamily_0"/>
										<input type="text" placeholder="State" name="stateFamily_0" id="stateFamily_0"/>
									</div>
								</div>
							</div>
						</li>
                   	 <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input id="cityFamily_0" name="cityFamily_0" type="text" placeholder="City" />
									</div>
								</div>
							</div>
						</li>
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" id="mobileFamily_0" name="mobileFamily_0"  placeholder="Mobile Number" autocomplete="off"/>
									</div>
								</div>
							</div>
						</li>
						
						
                         <li class="margin-bottom-ten">
                        	<div class="contact-row">
                            	<div class="outer-field">
                                	<div class="add-child" id="removeLastFamily_0">
                                    	<a href="javascript:;" onclick="addMoreFamily(0);"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" id="addMoreFamilyDetail"></span>Add Another Family Member</a>
                                    </div>
                                </div>
                            </div>
                        </li> 
					</ul>
					</div>
					</div>
					
				</div>
				
				
				
										
				<div class="btns-outer mtop10">
				
				<input type="hidden" name="parentType" id="parentType"/>
					<input type="submit" value="Save" class="submit-btn fl" />
					 <c:if test="${paymentType eq '1'}">
					<input type="button" value="Upgrade" onClick="location.href='<%=request.getContextPath()%>/donor/upgradeRadio';" class="submit-btn fl" style= "margin-left:10px;"/>
					</c:if>
					
					
					<c:if test="${isSubscribed eq 'Y'}">
					<input type="button" value="Cancel Subscription" onClick="cancelSubscription();" class="submit-btn fl" style= "margin-left:10px;"/>
					</c:if>
				</div>
				</form:form>
			</div>
		</section>
	</div>
	
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>  
   <%@include file="../footer.jsp" %>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script> 
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.autocomplete.js" type="text/javascript"></script>
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
   <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script> 
   <script type="text/javascript">	
   function emailAlreadyCheck(){
	   var emailOld = '${userDetails.email}';
		var email = $("#email").val().trim();
		if(email != "" && emailOld != email){
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
   function showParentChild(){
	   $("#parentEdition").show();
	   $("#showParentChild").hide();
	   $("#removeParentChild").show();
   }
   function removeParentChild(){
	   $("#showParentChild").show();
	   $("#removeParentChild").hide();
	   hideProgramContent();
	   $("#parentEdition").hide();
   }
	jQuery(document).ready(function($){
		
		$("#zipCodeNew").blur(function(event) {
    		$.ajax({
    			url : "http://zip.getziptastic.com/v2/US/"+$(this).val(),
    			success : function(result) {
    				$("#state_short").val(result.state_short);
    				$("#stateNew").val(result.state);
    				$("#city").val(result.city);
    			}
    			
    		});
    	});
		
		$("#zipCodeFamily_0").blur(function(event) {
    		$.ajax({
    			url : "http://zip.getziptastic.com/v2/US/"+$(this).val(),
    			success : function(result) {
    				$("#stateShortFamily_0").val(result.state_short);
    				$("#stateFamily_0").val(result.state);
    				$("#cityFamily_0").val(result.city);
    			}
    			
    		});
    	});
		
		
		if('${userDetails.profilePic}' == ''){
    		$('#newSchoolLogo').show();
    		$('#oldSchoolLogo').hide();
    	}else{
    		$('#newSchoolLogo').hide();
    		$('#oldSchoolLogo').show();
    	}
		
		$("#header").sticky({ topSpacing: 0 });
		 $("#removeParentChild").hide();
		$("#parentEdition").hide();
		$("#homeEdition").show();
		$("#parentType").val(2);
		
		$("#removeParentFamily").hide();
		$("#parentEditionFamily").hide();
		
/* 		$('input:radio[name=group2]').change(function() {
	        if (this.value == 'Home Edition') {
	        	$("#parentType").val(2);
	        	$("#parentEdition").hide();
	        	$("#homeEdition").show();
	        }
	        else if (this.value == 'Parent Edition') {
	        	$("#parentType").val(1);
	        	$("#parentEdition").show();
	        	$("#homeEdition").show();
	        	
	        }
	    }); */
		
		$.daisyNav();
	    var oldPwd = '${userDetails.password}';
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
		
		                    $.validator.addMethod("emailAlreadyExist", function(value, element) {
		                        return this.optional(element) || emailAlreadyCheck();
		                    }, "Email already exists.");
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
		                           
		                           email: {
		                                required: true,
		                                email: true,
		                                emailAlreadyExist: true
		                            }, 
									city : {
									required: true,
									maxlength:80
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
		                            mobile:{
		                        		/* required: true, */
		                        		minlength : 10,
		                        		maxlength : 30
		                        		//digits	: true
		                        	},
		                        	check:{
		                        		required:true
		                        		
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
		                			$('[id^=childName_]').each( function( index, el ) {
		                			    $( el ).rules('add', {
		                		    	    required: true,
		                		    	    maxlength:40,
			                                specialChar :true 
		                		    	});
		                			});
		                			$('[id^=className_]').each( function( index, el ) {
		                			    $( el ).rules('add', {
		                		    	    required: true,
		                		    	    maxlength:40,
			                                specialChar :true 
		                		    	});
		                			});
		                			$('[id^=teacherName_]').each( function( index, el ) {
		                			    $( el ).rules('add', {
		                		    	    required: true ,
		                		    	    maxlength:40,
			                                specialChar :true
		                		    	});
		                			});
		                			$('[id^=schoolName_]').each( function( index, el ) {
		                			    $( el ).rules('add', {
		                		    	    required: true,
		                		    	    maxlength:40,
			                                specialChar :true
		                		    	});
		                			});
		                			$('[id^=address_]').each( function( index, el ) {
		                			    $( el ).rules('add', {
		                		    	    required: true
			                                /* specialChar :true */
		                		    	});
		                			});
		                			$('[id^=zipCode_]').each( function( index, el ) {
		                			    $( el ).rules('add', {
		                		    	    required: true,
		                		    	    maxlength:40/* ,
			                                specialChar :true */
		                		    	});
		                			});
		                			$('[id^=state_]').each( function( index, el ) {
		                			    $( el ).rules('add', {
		                		    	    required: true,
		                		    	    maxlength:40,
			                                specialChar :true
		                		    	});
		                			});
		                			
		                			
		                			$('[id^=nameFamily_]').each( function( index, el ) {
		                			    $( el ).rules('add', {
		                		    	    required: true,
		                		    	    maxlength:40,
			                                specialChar :true 
		                		    	});
		                			});
		                			$('[id^=emailFamily_]').each( function( index, el ) {
		                			    $( el ).rules('add', {
		                			    	required: true,
			                                email: true,
			                                emailAlreadyExist: true
			                             
		                		    	});
		                			});
		                			$('[id^=addressFamily_]').each( function( index, el ) {
		                			    $( el ).rules('add', {
		                		    	    required: true
		                		    	});
		                			});
		                			$('[id^=zipCodeFamily_]').each( function( index, el ) {
		                			    $( el ).rules('add', {
		                		    	    required: true,
		                		    	    maxlength:40
		                		    	});
		                			});
		                			$('[id^=stateFamily_]').each( function( index, el ) {
		                			    $( el ).rules('add', {
		                		    	    required: true,
		                		    	    maxlength:40
		                		    	});
		                			});
		                			$('[id^=cityFamily_]').each( function( index, el ) {
		                			    $( el ).rules('add', {
		                		    	    required: true,
		                		    	    maxlength:40
		                		    	});
		                			});
		                			
		                			$('[id^=mobileFamily_]').each( function( index, el ) {
		                			    $( el ).rules('add', {
		                		    	    required: true,
		                		    	    minlength : 10,
			                        		maxlength : 30
		                		    	});
		                			});
		                			
		                			
		                			
		                			
		                			if($(".register-form").valid()){
		                				$('[id^=childName_]').each( function( index, el ) {
		                			    	$( el ).attr('name',"childName");
		                				});
		                				$('[id^=className_]').each( function( index, el ) {
		                			    	$( el ).attr('name',"className");
		                				});
		                				$('[id^=teacherName_]').each( function( index, el ) {
		                					$( el ).attr('name',"teacherName");
		                				});
			                			$('[id^=schoolName_]').each( function( index, el ) {
			                			    $( el ).attr('name',"schoolName");
			                			});
			                			$('[id^=address_]').each( function( index, el ) {
			                			   /* $( el ).attr('name',"address1"); */
			                			   if($("#address1").val()!=''){
			                			   	$("#address1").val($("#address1").val()+"&"+$(el).val());
			                			   }else{
			                				   $("#address1").val($(el).val());
			                			   }
			                			});
			                			$('[id^=zipCode_]').each( function( index, el ) {
			                			    $( el ).attr('name',"zipCode");
			                			});
			                			$('[id^=state_]').each( function( index, el ) {
			                			    $( el ).attr('name',"state");
			                			});
			                			$('[id^=ieSchool_]').each( function( index, el ) {
			                				
			                			   $( el ).attr('name',"ieSchool");
				                			   
			                			});
			                			
			                			
			                			
			                			$('[id^=nameFamily_]').each( function( index, el ) {
		                			    	$( el ).attr('name',"familyName");
		                				});
			                			$('[id^=emailFamily_]').each( function( index, el ) {
		                			    	$( el ).attr('name',"familyEmail");
		                				});
			                			
			                			
			                			$('[id^=addressFamily_]').each( function( index, el ) {
				                			   /* $( el ).attr('name',"address1"); */
				                			   if($("#familyAddress").val()!=''){
				                			   	$("#familyAddress").val($("#familyAddress").val()+"&"+$(el).val());
				                			   }else{
				                				   $("#familyAddress").val($(el).val());
				                			   }
				                			});
			                			
			                		
			                			$('[id^=zipCodeFamily_]').each( function( index, el ) {
		                			    	$( el ).attr('name',"familyZipcode");
		                				});
			                			$('[id^=stateFamily_]').each( function( index, el ) {
		                			    	$( el ).attr('name',"familyState");
		                				});
			                			$('[id^=cityFamily_]').each( function( index, el ) {
		                			    	$( el ).attr('name',"familyCity");
		                				});
			                			$('[id^=mobileFamily_]').each( function( index, el ) {
		                			    	$( el ).attr('name',"familyMobile");
		                				});
			                			$('[id^=latitudeFamily_]').each( function( index, el ) {
		                			    	$( el ).attr('name',"familyLat");
		                				});
			                			$('[id^=longitudeFamily_]').each( function( index, el ) {
		                			    	$( el ).attr('name',"familyLng");
		                				});
			                		
			                			
			                			
			                			
		                				//form.submit(); //commented by
		                				setLatLongValueAndSubmit(form);
		                				
		                				return true;
		                			}else{
		                				return false;
		                			}
		                            //form.submit();
		                			
		                        }
		                    });

		
		
		                    hideProgramContent();
	});
	function getParentAddressLatLong(){
        var homeAddress = document.getElementById('addressParent');
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
    			    		    	$("#zipCodeNew").val(results[0].address_components[i].long_name);
    			    		    	$("#zipCodeNew").blur();
    			    		    } 
    			    		    if(addressType == 'locality'){
    			    		    	var loc = results[0].address_components[i].long_name;
										$('#city').val(loc);    			    		    	
    			    		    }
     			    	  }
    			    	}
    			    });
    	});
    }
	function getSchoolAddressLatLong(){
        var homeAddress = document.getElementById('address_0');
        var autoCompleteHomeAddress = new google.maps.places.Autocomplete(homeAddress);
        var geocoder = new google.maps.Geocoder;
        google.maps.event.addListener(autoCompleteHomeAddress,	'place_changed', function() {
       	 /* $("#latitude").val(autoCompleteHomeAddress.getPlace().geometry.location.lat());
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
    			    }); */
    	});
    }
	function getFamilyAddressLatLong(){
        var homeAddress = document.getElementById('addressFamily_0');
        var autoCompleteHomeAddress = new google.maps.places.Autocomplete(homeAddress);
        var geocoder = new google.maps.Geocoder;
        
        google.maps.event.addListener(autoCompleteHomeAddress,	'place_changed', function() {
       	  $("#latitudeFamily_0").val(autoCompleteHomeAddress.getPlace().geometry.location.lat());
    		 $("#longitudeFamily_0").val(autoCompleteHomeAddress.getPlace().geometry.location.lng());
    		 var latlng = {lat: parseFloat($("#latitudeFamily_0").val()), lng: parseFloat($("#longitudeFamily_0").val())};
    		
    		 geocoder.geocode({'location': latlng}, function(results, status) {
    			    if (status === google.maps.GeocoderStatus.OK) {
     			    	  for (var i = 0; i < results[0].address_components.length; i++) {
    			    		    var addressType = results[0].address_components[i].types[0];
    			    		    if (addressType == 'postal_code') { 
    			    		    	$("#zipCodeFamily_0").val(results[0].address_components[i].long_name);
    			    		    	$("#zipCodeFamily_0").blur();
    			    		    } 
    			    		    if(addressType == 'locality'){
    			    		    	var loc = results[0].address_components[i].long_name;
										$('#cityFamily_0').val(loc);    			    		    	
    			    		    }
     			    	  }
    			    	}
    			    });
    	});
    }
	google.maps.event.addDomListener(window, 'load', getParentAddressLatLong);
	google.maps.event.addDomListener(window, 'load', getFamilyAddressLatLong);
	google.maps.event.addDomListener(window, 'load', getSchoolAddressLatLong);
	/* For getting Lat & Long of Student Address */
/* 	function getStudentAddressLatLong(index){
		$("#latitude_"+index).val('0.0');
		$("#longitude_"+index).val('0.0');
		$("#zipCode_"+index).blur(function(event) {
			$.ajax({
				url : "http://zip.getziptastic.com/v2/US/"+$(this).val(),
				success : function(result) {
					$("#stateShort_"+index).val(result.state_short);
					$("#state_"+index).val(result.state);
				}
			});
		});
	    var homeAddress = document.getElementById('address_'+index);
	    var geocoder = new google.maps.Geocoder;
	    var autoCompleteHomeAddress = new google.maps.places.Autocomplete(homeAddress);
	    google.maps.event.addListener(autoCompleteHomeAddress,	'place_changed', function() {
	   	 $("#latitude_"+index).val(autoCompleteHomeAddress.getPlace().geometry.location.lat());
			 $("#longitude_"+index).val(autoCompleteHomeAddress.getPlace().geometry.location.lng());
			 var latlng = {lat: parseFloat($("#latitude_"+index).val()), lng: parseFloat($("#longitude_"+index).val())};
			 geocoder.geocode({'location': latlng}, function(results, status) {
				    if (status === google.maps.GeocoderStatus.OK) {
	 			    	  for (var i = 0; i < results[0].address_components.length; i++) {
				    		    var addressType = results[0].address_components[i].types[0];
				    		    if (addressType == 'postal_code') { 
				    		    	$("#zipCode_"+index).val(results[0].address_components[i].long_name);
				    		    	$("#zipCode_"+index).blur();
				    		    } 
	 			    	  }
				    	}
				    });
		});
	} */

	//google.maps.event.addDomListener(window, 'load', getStudentAddressLatLong); 
	

	   function hideProgramContent(){
		  // var sectionLength = $('[id^=divSection_]').length;
		   var divId = 0;
				$("#parentInfo").html('<div id="divSection_'+ divId + '"><ul>'+
						'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
						'<input type="text" name="childName_'+ divId + '" placeholder="Child Name" id="childName_'+ divId + '"/></div></div></div></li>'+
						'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" value="0" id="schoolIds_'+ divId +'" name="schoolIds"/>'+
						'<input type="text" name="schoolName_'+ divId + '" placeholder="School Name" id="schoolName_'+ divId + '"/></div></div></div></li>'+
					    '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
					    '<input type="text" name="address_'+ divId + '" placeholder="School Address"  id="address_'+ divId + '" /></div></div></div></li>'+
					    '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
					    '<input type="text" name="zipCode_'+ divId + '" placeholder="Zip Code"  id="zipCode_'+ divId + '" /></div></div></div></li>'+
						'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" id="stateShort_'+ divId +'" name="stateShort"/>'+
						'<input type="text" name="state_'+ divId + '" placeholder="City/State" id="state_'+ divId + '"/></div></div></div></li>'+
						'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field" id="registeredSchool_'+ divId + '"><input type="hidden" value="0" id="classId_'+ divId +'" name="classIds"/>'+
			    		'<input type="text" name="className_'+ divId + '" placeholder="Class"  id="className_'+ divId + '" /></div></div></div></li>'+
						'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field" ><input type="hidden" value="0" id="teacherId_'+ divId +'" name="teacherIds"/>'+
			    		'<input type="text" name="teacherName_'+ divId + '" placeholder="Teacher Name"  id="teacherName_'+ divId + '" /></div></div></div></li>'+
			    		<%-- '<li><div class="popup_school_details_img" title="Child Pic"><img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png" alt="" id="schoolSelectedLogo_'+ divId +'">'+
	                    '<div class="edit-img" title="Select a child pic">'+
						'<input id="mediaFile" accept="image/*" type="file" value="" name="image" onchange="getImagePath(this,'+ divId + ');"/>'+
						'</div></div></li>'+ --%>
			    		'<input type="hidden" name="petitionSchoolId_'+ divId + '" id="petitionSchoolId_'+ divId + '"><input type="hidden" name="ieSchool" id="ieSchool_'+ divId + '"><div class="strt-peti"  style="display: none;" id="petition_'+ divId + '"><p>Your kids school does not have IE program running. Start a Petition<span><input type="button" value="Start a Petition" class="submit-btn " onclick="startPetition('+ divId + ');"/></span></p></div>'+
			    		'<br><li class="margin-bottom-ten"><div class="contact-row"><div class="outer-field">'+
			    '<div class="add-child" id="removeLast_'+divId+'"><a onclick="addMoreClasses('+ divId +');" id="addMoreClass"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" id="addMoreClass"/></span>Add Another Child</a></div>'+
			    '</div></div></div></li></ul></div>');

				
				
				
				$('#schoolName_'+divId).autocomplete({
	    	        serviceUrl: '<%=request.getContextPath()%>/searchSchoolWithIeStatus',
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
	    		     			url : "<%=request.getContextPath()%>/getMasterSchoolDetailsWithIEStatus",
	    		     			type : 'POST',
	    		     			data : {schoolId:schoolId},
	    		     			success : function(result) {
	    		     				if(result.modelMap.dtoTeacherSignOn.isIESchool=="Y"){
	    		     					$("#petition_"+divId).hide();
	    		     					$("#address_"+divId).val(result.modelMap.dtoTeacherSignOn.address);
	    		     					/* $("#address1").val(result.modelMap.dtoTeacherSignOn.address); */
	    		     					
					     				$("#zipCode_"+divId).val(result.modelMap.dtoTeacherSignOn.zipCode);
					     				$("#state_"+divId).val(result.modelMap.dtoTeacherSignOn.state);
					     				/* var classOption = '';
					     				$.each(result.modelMap.dtoTeacherSignOn.dtoClasses,function(index,value){
					     					classOption +='<option value="'+value.classId+'"><p id="classTeacherId_'+value.classId+'_'+divId+'"></p><p  id="classTeacherName_'+value.classId+'_'+divId+'"></p>'+value.className+'</option>';
					     					if(index==0){
					     						$("#teacherId_"+divId).val(value.dtoTeacher.teacherId);
					     						$("#teacherName_"+divId).val(value.dtoTeacher.teacherName);
					     						$("#teacherName_"+divId).attr("readOnly","true");
					     					}
					     				});
					     				$("#registeredSchool_"+divId).removeClass("outer-field");
					     				$("#registeredSchool_"+divId).addClass("outer-field_sel");
					     				$("#registeredSchool_"+divId).html('<select id="classId_'+divId+'" name="classIds" onchange="getClassDetail('+divId+')">'+classOption+'</select><input type="hidden" name="className_'+ divId + '" placeholder="Class Name"  value="" id="className_'+ divId + '" />'); */
					     				$('#schoolIds_'+divId).val(result.modelMap.dtoTeacherSignOn.masterSchoolId);
					     				$("#ieSchool_"+divId).val("Y");
	    		     					
	    		     				}
	    		     				else{
	    		     					$("#address_"+divId).val(result.modelMap.dtoTeacherSignOn.address);
	    		     					/* $("#address1").val(result.modelMap.dtoTeacherSignOn.address); */
					     				$("#zipCode_"+divId).val(result.modelMap.dtoTeacherSignOn.zipCode);
					     				$("#state_"+divId).val(result.modelMap.dtoTeacherSignOn.state);
					     				$('#schoolIds_'+divId).val(result.modelMap.dtoTeacherSignOn.schoolId);
					     				$('#petitionSchoolId_'+divId).val(result.modelMap.dtoTeacherSignOn.schoolId);
					     				
					     				if(result.modelMap.dtoTeacherSignOn.isAlreadyPetition=="Y"){
					     					$("#petition_"+divId).hide();
					     				}
					     				else{
					     					$("#petition_"+divId).show();
					     				}
					     				$("#ieSchool_"+divId).val("N");
					     				
	    		     					
	    		     				}
	    		     			}
	    		     		});
	    		        	 
	    		        }
	    		         }
	    		        
	    		     } 
	    		}); 
				
				
	}
	   function getClassDetail(index){
		   var classId= $("#classId_"+index).val();
		   $("#teacherName_"+index).val($("#classId_"+index+" option:selected").text());
      	 $.ajax({
  			url : "<%=request.getContextPath()%>/getClassTeacher",
  			type : 'POST',
  			data : {classId:classId},
  			success : function(result) {
			    $("#teacherId_"+index).val(result.modelMap.dtoTeacher.teacherId);
				$("#teacherName_"+index).val(result.modelMap.dtoTeacher.teacherName);
				$("#teacherName_"+index).attr("readOnly","true");
  			}
  		});
	   }
    function addMoreClasses(index){
    	var divId = index + 1;
    	var htmlContents='<a title="Remove" onclick="removeClassDetails('+ index + ');" id="removeParent_'+ index + '"><span><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></span>Remove Child </a>';
    	$($("#removeLast_" + index + '')).empty();
    	$($("#removeLast_" + index + '')).html(htmlContents);
    	//$("#addMoreClass_"+ index + '').remove();
    	$("#parentInfo").append('<div id="divSection_'+ divId + '"><ul>'+
    			'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
				'<input type="text" name="childName_'+ divId + '" placeholder="Child Name" id="childName_'+ divId + '"/></div></div></div></li>'+
				'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" value="0" id="schoolIds_'+ divId +'" name="schoolIds"/>'+
				'<input type="text" name="schoolName_'+ divId + '" placeholder="School Name" id="schoolName_'+ divId + '"/></div></div></div></li>'+
			    '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
			    '<input type="text" name="address_'+ divId + '" placeholder="School Address"  id="address_'+ divId + '" /></div></div></div></li>'+
			    '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
			    '<input type="text" name="zipCode_'+ divId + '" placeholder="Zip Code"  id="zipCode_'+ divId + '" /></div></div></div></li>'+
				'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" id="stateShort_'+ divId +'" name="stateShort"/>'+
				'<input type="text" name="state_'+ divId + '" placeholder="City/State" id="state_'+ divId + '"/></div></div></div></li>'+
				'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field" id="registeredSchool_'+ divId + '"><input type="hidden" value="0" id="classId_'+ divId +'" name="classIds"/>'+
	    		'<input type="text" name="className_'+ divId + '" placeholder="Class"  id="className_'+ divId + '" /></div></div></div></li>'+
				'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" value="0" id="teacherId_'+ divId +'" name="teacherIds"/>'+
	    		'<input type="text" name="teacherName_'+ divId + '" placeholder="Teacher Name"  id="teacherName_'+ divId + '" /></div></div></div></li>'+
	    		<%-- '<li><div class="popup_school_details_img" title="Child Pic"><img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png" alt="" id="schoolSelectedLogo_'+ divId +'">'+
                '<div class="edit-img" title="Select a child pic">'+
				'<input id="mediaFile" accept="image/*" type="file" value="" name="image" onchange="getImagePath(this,'+ divId + ');"/>'+
				'</div></div></li>'+ --%>
	    		'<input type="hidden" name="petitionSchoolId_'+ divId + '" id="petitionSchoolId_'+ divId + '"><input type="hidden" name="ieSchool" id="ieSchool_'+ divId + '"><div class="strt-peti" style="display: none;" id="petition_'+ divId + '"><p>Your kids school does not have IE program running. Start a Petition<span><input type="button" value="Start a Petition" class="submit-btn " onclick="startPetition('+ divId + ');"/></span></p></div>'+
	    		'<br><li class="margin-bottom-ten"><div class="contact-row"><div class="outer-field">'+
        '<div class="add-child" id="removeLast_'+divId+'"><a onclick="removeClassDetailsLast('+ divId +');" id="removeParent"><span><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></span>Remove Child </a><a onclick="addMoreClasses('+ divId +');" id="addMoreClass"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></span>Add Another Child</a></div>'+
    	'</div></div></div></li></ul></div>');

		

		$('#schoolName_'+divId).autocomplete({
	        serviceUrl: '<%=request.getContextPath()%>/searchSchoolWithIeStatus',
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
		     			url : "<%=request.getContextPath()%>/getMasterSchoolDetailsWithIEStatus",
		     			type : 'POST',
		     			data : {schoolId:schoolId},
		     			success : function(result) {
		     				if(result.modelMap.dtoTeacherSignOn.isIESchool=="Y"){
		     					$("#petition_"+divId).hide();
		     					$("#address_"+divId).val(result.modelMap.dtoTeacherSignOn.address);
		     					/* $("#address1").val(result.modelMap.dtoTeacherSignOn.address); */
			     				$("#zipCode_"+divId).val(result.modelMap.dtoTeacherSignOn.zipCode);
			     				$("#state_"+divId).val(result.modelMap.dtoTeacherSignOn.state);
/* 			     				var classOption = '';
			     				$.each(result.modelMap.dtoTeacherSignOn.dtoClasses,function(index,value){
			     					classOption +='<option value="'+value.classId+'"><p id="classTeacherId_'+value.classId+'_'+divId+'"></p><p  id="classTeacherName_'+value.classId+'_'+divId+'"></p>'+value.className+'</option>';
			     					if(index==0){
			     						$("#teacherId_"+divId).val(value.dtoTeacher.teacherId);
			     						$("#teacherName_"+divId).val(value.dtoTeacher.teacherName);
			     						$("#teacherName_"+divId).attr("readOnly","true");
			     					}
			     				}); */
			     				//$("#registeredSchool_"+divId).removeClass("outer-field");
			     				//$("#registeredSchool_"+divId).addClass("outer-field_sel");
			     				//$("#registeredSchool_"+divId).html('<select id="classId_'+divId+'" name="classIds" onchange="getClassDetail('+divId+')">'+classOption+'</select><input type="hidden" name="className_'+ divId + '" placeholder="Class Name"  value="" id="className_'+ divId + '" />');
			     				$('#schoolIds_'+divId).val(result.modelMap.dtoTeacherSignOn.masterSchoolId);
			     				$("#ieSchool_"+divId).val("Y");
		     					
		     				}
		     				else{
		     					$("#address_"+divId).val(result.modelMap.dtoTeacherSignOn.address);
		     					/* $("#address1").val(result.modelMap.dtoTeacherSignOn.address); */
			     				$("#zipCode_"+divId).val(result.modelMap.dtoTeacherSignOn.zipCode);
			     				$("#state_"+divId).val(result.modelMap.dtoTeacherSignOn.state);
			     				
			     				$('#schoolIds_'+divId).val(result.modelMap.dtoTeacherSignOn.schoolId);
			     				$('#petitionSchoolId_'+divId).val(result.modelMap.dtoTeacherSignOn.schoolId);
			     				
			     				if(result.modelMap.dtoTeacherSignOn.isAlreadyPetition=="Y"){
			     					$("#petition_"+divId).hide();
			     				}
			     				else{
			     					$("#petition_"+divId).show();
			     				}
			     				$("#ieSchool_"+divId).val("N");
		     				}
		     			}
		     		});
		        	 
		        }
		         }
		        
		     } 
		}); 
    }

    function removeClassDetails(index){
    	$($("#divSection_" + index + '')).remove();
    	if($('[id^=removeLast_]').length == 1){
    		var divId = $('[id^=removeLast_]').attr('id').replace('removeLast_','');
    		$('[id^=removeLast_]').empty('');
    		$('[id^=removeLast_]').html('<a onclick="addMoreClasses('+ divId +');" id="addMoreClass"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></span>Add Another Child</a>');
    	}
    }

    function removeClassDetailsLast(index){
    	var previous = index - 1;
    	var htmlContents = '<a onclick="removeClassDetailsLast('+ previous + ');" id="removeParent"><span><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></span>Remove Child </a><a onclick="addMoreClasses('+ previous +');" id="addMoreClass"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></span>Add Another Child</a>';
    	
    	$($("#divSection_" + index + '')).remove();
    		while($("#removeLast_" + previous + '').length == 0){
    			previous--;
    			if(previous == 0)
    			break;
    		}
    		if(previous != 0){
    			$($("#removeLast_" + previous + '')).empty();
    			$($("#removeLast_" + previous + '')).html(htmlContents);
    		}else{
    			$($("#removeLast_" + previous + '')).empty();
    			$($("#removeLast_" + previous + '')).html('<a onclick="addMoreClasses('+ previous +');" id="addMoreClass"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></span>Add Another Child</a>');
    		}
        	if($('[id^=removeLast_]').length == 1){
        		var divId = $('[id^=removeLast_]').attr('id').replace('removeLast_','');
        		$('[id^=removeLast_]').empty();
        		$('[id^=removeLast_]').html('<a onclick="addMoreClasses('+ previous +');"  id="addMoreClass"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></span>Add Another Child</a>');
        	}
    }
	</script>
	
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	
   <script type="text/javascript">
   
    /* $(function(){
      SyntaxHighlighter.all();
    }); */
	
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
    /* $(window).load(function(){
		
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
	  
	  
	  
}); */
    
function startPetition(id){
	var idnew = $("#petitionSchoolId_"+id).val();
	window.location.href='<%=request.getContextPath()%>/donor/petition?schoolId='+idnew+'';
}

function changeLogo(){
	$('#newSchoolLogo').show();
	$('#oldSchoolLogo').hide();
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

function getImagePathParent(input){
	
	if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e)  {
            $('#schoolSelectedLogo').attr('src', e.target.result);
        };

        reader.readAsDataURL(input.files[0]);
        
    }
	
}

function getImagePath(input, id){
	
	if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e)  {
            $('#schoolSelectedLogo_'+id).attr('src', e.target.result);
        };

        reader.readAsDataURL(input.files[0]);
        
    }
	
}

function cancelSubscription(){
	
	var url='<%=request.getContextPath()%>/donor/cancelSubscription';
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


function setLatLongValueAndSubmit(form){
	var lat = $("#latitude").val() ;
	var lng = $("#longitude").val() ;
	//alert(lat +","+lng);
	console.log(lat +":"+lng);
	if(lat == 0.0 && lng == 0.0){
		if($('#city').val().trim().length>0){
		    var zipCodeAddress = $('#addressParent').val();
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
		    	   //alert('eror');
				    var zipCodeAddress = $('#city').val() +","+ $('#zipCodeNew').val();
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
		 		    	   //alert('eror');
		 		    	   form.submit();
		 		      }
		 		    });
		    	   
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


function showParentFamily(){
	   $("#parentEditionFamily").show();
	   $("#showParentFamily").hide();
	   $("#removeParentFamily").show();
}
function removeParentFamily(){
	   $("#showParentFamily").show();
	   $("#removeParentFamily").hide();
	   hideProgramContent();
	   $("#parentEditionFamily").hide();
}

function addMoreFamily(index){
	
	
	var divId = index + 1;
	var htmlContents='<a title="Remove" onclick="removeFamilyDetails('+ index + ');" id="removeParentFamily_'+ index + '"><span><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></span>Remove Family Member </a>';
	$($("#removeLastFamily_" + index + '')).empty();
	$($("#removeLastFamily_" + index + '')).html(htmlContents);
	//$("#addMoreClass_"+ index + '').remove();
	$("#parentInfoFamily").append('<div id="divSectionFamily_'+ divId + '"><ul>'+
			'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
			'<input type="text" name="nameFamily_'+ divId + '" placeholder="Name" id="nameFamily_'+ divId + '"/></div></div></div></li>'+
			'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
			'<input type="text" placeholder="Email" name="emailFamily_'+ divId + '" id="emailFamily_'+ divId + '"/>'+
			'</div></div></div></li>'+
		    '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
		    '<input type="text" name="addressFamily_'+ divId + '" placeholder="Address"  id="addressFamily_'+ divId + '" />'+
		    '<input type="hidden" name="latitudeFamily_'+ divId + '" id="latitudeFamily_'+ divId + '" value="0.0" />'+
			'<input type="hidden" name="longitudeFamily_'+ divId + '" id="longitudeFamily_'+ divId + '" value="0.0" />'+
		    '</div></div></div></li>'+
		    '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
		    '<input type="text" name="zipCodeFamily_'+ divId + '" placeholder="Zip Code"  id="zipCodeFamily_'+ divId + '" /></div></div></div></li>'+
			'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" id="stateShortFamily_'+ divId +'" name="stateShortFamily"/>'+
			'<input type="text" name="stateFamily_'+ divId + '" placeholder="State" id="stateFamily_'+ divId + '"/></div></div></div></li>'+
			'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
			'<input id="cityFamily_'+ divId + '" name="cityFamily_'+ divId + '" type="text" placeholder="City" />'+
			'</div></div></div></li>'+
			'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
			'<input type="text" id="mobileFamily_'+ divId + '" name="mobileFamily_'+ divId + '"  placeholder="Mobile Number" autocomplete="off"/>'+
			'</div></div></div></li>'+    	
    		'<li class="margin-bottom-ten"><div class="contact-row"><div class="outer-field">'+
    '<div class="add-child" id="removeLastFamily_'+divId+'"><a onclick="removeFamilyDetailsLast('+ divId +');" id="removeParentFamily"><span><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></span>Remove Family Member </a><a onclick="addMoreFamily('+ divId +');" id="addMoreFamily"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></span>Add Another Family Member</a></div>'+
	'</div></div></div></li></ul></div>');
	
	
	
	
        var homeAddress = document.getElementById("addressFamily_"+divId);
        var autoCompleteHomeAddress = new google.maps.places.Autocomplete(homeAddress);
        var geocoder = new google.maps.Geocoder;
        
        google.maps.event.addListener(autoCompleteHomeAddress,	'place_changed', function() {
       	  $("#latitudeFamily_"+divId).val(autoCompleteHomeAddress.getPlace().geometry.location.lat());
    		 $("#longitudeFamily_"+divId).val(autoCompleteHomeAddress.getPlace().geometry.location.lng());
    		 var latlng = {lat: parseFloat($("#latitudeFamily_"+divId).val()), lng: parseFloat($("#longitudeFamily_"+divId).val())};
    		
    		 geocoder.geocode({'location': latlng}, function(results, status) {
    			    if (status === google.maps.GeocoderStatus.OK) {
     			    	  for (var i = 0; i < results[0].address_components.length; i++) {
    			    		    var addressType = results[0].address_components[i].types[0];
    			    		    if (addressType == 'postal_code') { 
    			    		    	$("#zipCodeFamily_"+divId).val(results[0].address_components[i].long_name);
    			    		    	$("#zipCodeFamily_"+divId).blur();
    			    		    } 
    			    		    if(addressType == 'locality'){
    			    		    	var loc = results[0].address_components[i].long_name;
										$('#cityFamily_'+divId).val(loc);   
										var state = results[1].address_components[i].long_name;
										$('#stateFamily_'+divId).val(state);   
										var sShort = results[1].address_components[i].short_name;
										
										$("#stateShortFamily_"+divId).val(sShort);
					    				
										
    			    		    }
     			    	  }
    			    	}
    			    });
    	});
    
	

 
}
function removeFamilyDetails(index){
	$($("#divSectionFamily_" + index + '')).remove();
	if($('[id^=removeLastFamily_]').length == 1){
		var divId = $('[id^=removeLastFamily_]').attr('id').replace('removeLastFamily_','');
		$('[id^=removeLastFamily_]').empty('');
		$('[id^=removeLastFamily_]').html('<a onclick="addMoreFamily('+ divId +');" id="addMoreFamily"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></span>Add Another Family Member</a>');
	}
}

function removeFamilyDetailsLast(index){
	var previous = index - 1;
	var htmlContents = '<a onclick="removeFamilyDetailsLast('+ previous + ');" id="removeParentFamily"><span><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></span>Remove Family Member </a><a onclick="addMoreFamily('+ previous +');" id="addMoreFamily"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></span>Add Another Family Member</a>';
	
	$($("#divSectionFamily_" + index + '')).remove();
		while($("#removeLastFamily_" + previous + '').length == 0){
			previous--;
			if(previous == 0)
			break;
		}
		if(previous != 0){
			$($("#removeLastFamily_" + previous + '')).empty();
			$($("#removeLastFamily_" + previous + '')).html(htmlContents);
		}else{
			$($("#removeLastFamily_" + previous + '')).empty();
			$($("#removeLastFamily_" + previous + '')).html('<a onclick="addMoreFamily('+ previous +');" id="addMoreFamily"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></span>Add Another Family Member</a>');
		}
    	if($('[id^=removeLastFamily_]').length == 1){
    		var divId = $('[id^=removeLastFamily_]').attr('id').replace('removeLastFamily_','');
    		$('[id^=removeLastFamily_]').empty();
    		$('[id^=removeLastFamily_]').html('<a onclick="addMoreFamily('+ previous +');"  id="addMoreFamily"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></span>Add Another Family Member</a>');
    	}
}


</script>

</body>
</html>
 