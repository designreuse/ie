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
<title>Get Started</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"	id="style_components" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/NewStyles/css/autocomplete/main.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<style type="text/css">
	input[type="search"]
{
border: 1px solid #ccc;
    padding: 2px 5px;
    border-radius: 3px;
}
</style>
</head>
<body>
	<div class="wrapper">
		<%@include file="header.jsp"%>

		<section class="makeDonateSct">
			<div class="containerSmall">
				<div class="pracProgress_hdr">
					<h2>Get Started</h2>
					<div class="green_line_btm"></div>
				</div>
			</div>
		</section>
		<section class="get-started-new-sec">
			<div class="container">
				<div class="new-started-step">
					<div class="containerSmall">
					
					<form:form action="saveSchoolTemp" id="signupForm" method="post" modelAttribute="dtoSchool" enctype="multipart/form-data">
					<input type="hidden" value="${schoolDetailTemp.schoolId}" name="schoolId">
						<div class="small-containor">
							<div class="new-started-grey">
								<div class="new-started-img">
									<img src="<%=request.getContextPath()%>/NewStyles/images/started-step20.png">
								</div>
								<div class="new-started-head">
									<h3>ADMINISTRATOR SIGNUP</h3>
									<p>Fill School Information</p>
								</div>
							</div>
						</div>
						<div class="get-start-new-form">
							<div class="getstartForm_teacher">
								<label class="start-new-label">School Information</label>
								<ul>
									<li>
										<div class="contact-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<input type="text" placeholder="School Name*" id="schoolName" name=name value="${schoolDetailTemp.schoolName}">
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="contact-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<input type="text" id="address" name="address"
												placeholder="School Address*" value="${schoolDetailTemp.addressLineOne}"/>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="contact-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<input type="text" id="state" name="state"
												placeholder="State" value="${schoolDetailTemp.state}"/>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="contact-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<input type="text" id="city" name="city"
												placeholder="City" value="${schoolDetailTemp.city}"/>
												</div>
											</div>
										</div>
									</li>
										<li>
										<div class="contact-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<input name="totalStudentCountUnderSchool" type="text" placeholder="No. of Students" value="${schoolDetailTemp.studentCount}" id="totalStudentCountUnderSchool">
												</div>
											</div>
										</div>
									</li>
			                        <li>
										<div class="contact-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<input name="teacherCount" type="text" placeholder="No. of Teachers" value="${schoolDetailTemp.teacherCount}" id="teacherCount">
												</div>
											</div>
										</div>
									</li>
									<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="sign_txt">
										 <select name="schoolType" class="select-dept">
											<option value="">How did you hear about IE?</option>
												<option value="1">From social media</option>
												<option value="2">From another school or teacher</option>
												<option value="3">Through IE advertisement</option>
												<option value="4">WISDOM 2.0</option>
												<option value="5">Conference</option>
										 </select>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="sign_txt">
										 <select name="schoolType" class="select-dept">
											<option value="">Type of School</option>
											<option value="1">Pre-k–Kindergarten</option>
											<option value="2">Elementary School</option>
											<option value="3">Middle School</option>
											<option value="4">High School</option>
										 </select>
									</div>
								</div>
							</div>
						</li>	
		<li>
						<div class="popup_school_details_img" title="School logo">
              			  		<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt="" id="logoImageMain"/>
	                    	<div class="started-edit-img" title="Select a school logo">
								<!-- <input id="mediaFile" name="mediaFile" accept="image/*" type="file" onchange="this.form.submit()" value=""> -->
								<input id="mediaFile" accept="image/*" type="file" value="" name="image" onchange="getImagePath(this);"/>
							</div>
                    	</div>
            </li>
            		
									<%-- <p class="red-text">
										This School is already registered with Inner Explorer <span><a
											href="javascript:;">View Details</a></span>
									</p> --%>
								</ul>
								<input type="hidden" name="latitude1" id="latitude" value="${schoolDetailTemp.latitude}"/> 
								<input type="hidden" name="longitude1" id="longitude" value="${schoolDetailTemp.longitude}" />
								<input type="hidden" name="zipCode" placeholder="Zip Code" id="zipCode" value="${schoolDetailTemp.postalCode}"/> 
								<input type="hidden" name="stateShort" id="state_short" placeholder="State Short" value="${schoolDetailTemp.stateShort}"/>
								<%-- <input type="text" name="state" id="state" placeholder="State" value="${schoolDetailTemp.state}"/> --%>
							</div>
						</div>
						<div class="back-next-btn">
							<ul>
								<li><a href="<%=request.getContextPath()%>/get-started">Back</a></li>
								<li>
								<input type="submit" value="Next">
								<!-- <a href="javascript:;">Next</a> -->
								
								</li>
							</ul>
						</div>
						</form:form>
						
					</div>
				</div>
			</div>
		</section>
	</div>
<!-- fancybox start -->
<div id="view_contact_detail" style="display: none; width: 700px;">
    <h3 id="popup-header"></h3>
            <div class="product-page product-pop-up">
              <!-- <div class="row"> -->
                <!-- <div class="col-md-6 col-sm-6 col-xs-9"> -->
                  
                    <div class="popup_school_details_main">
                    	<div class="popup_school_details_img" title="School logo">
              			  		<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt="" id="logoImage"/>
                    	</div>
                    	<div class="popup_school_details">
                    <div class="form-group pop-margin-left width100 fl">
                      <label class="col-lg-4 control-label pt-0 width130">First Name: </label>
                      <div class="col-lg-4">
                        <input id="fname" class="popup_input" disabled="disabled"/>
                      </div>
                    </div>
                    <div class="form-group pop-margin-left width100 fl">
                      <label class="col-lg-4 control-label pt-0 width130">Last Name: </label>
                      <div class="col-lg-4">
                        <input id="lname" class="popup_input" disabled="disabled"/>
                      </div>
                    </div>
                    <div class="form-group pop-margin-left width100 fl">
                      <label class="col-lg-4 control-label width130">Principal Email: </label>
                      <div>
                      <div id="emailDropDown"> 
                      </div>
                        <!-- <label id="email"></label> -->
                      </div>
                    </div>
                    <div class="form-group pop-margin-left width100 fl">
                      <label class="col-lg-4 control-label pt-0 width130">Mobile: </label>
                      <div class="col-lg-4">
                        <input id="mobile" class="popup_input" disabled="disabled"/>
                      </div>
                    </div>
                    
                    <div class="form-group pop-margin-left width100 fl">
                      <label class="col-lg-4 control-label pt-0 width130">Joined Since: </label>
                      <div class="col-lg-4">
                        <input id="joiningDate" class="popup_input" disabled="disabled"/>
                      </div>
                    </div>
			        </div>
			         </div>
            </div>
    </div> 
    <input type="hidden" id="principalUserId">
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
<script	src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"	type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.autocomplete.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script	src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$("#login").click(function(e) {
	        $(".login_panel").toggle();
	        e.stopPropagation();
	    });
		
		$("#header").sticky({ topSpacing: 0 });
		var stCount = ${schoolDetailTemp.studentCount};
		
		if(stCount==0){
			$("#totalStudentCountUnderSchool").val("");
		}
		var tCount = ${schoolDetailTemp.teacherCount};
		if(tCount==0){
			$("#teacherCount").val("");
		}
		$.daisyNav();
		$("#zipCode").blur(function(event) {
    		$.ajax({
    			url : "http://zip.getziptastic.com/v2/US/"+$(this).val(),
    			success : function(result) {
    				$("#state_short").val(result.state_short);
    				$("#state").val(result.state);
    				$("#city").val(result.city);
    			}
    		});
    	});
		$.validator.addMethod("schoolAlreadyExist", function(value, element) {
            return this.optional(element) || schoolAlreadyCheck(value);
	}, "School is already registered with IE <a onclick='getPrincipalInfo();' style='cursor: pointer;'>View Details</a>");
		$.validator.addMethod("noDecimal", function(value, element) {
		    return !(value % 1);
		}, "No decimal numbers");
		
		$('#signupForm').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            //ignore: "",
            rules: {
            	name: {
                    required: true,
                    /* schoolAlreadyExist: true, */
                    minlength : 1,
            		maxlength : 50
                },
                address: {
                	required: true,
                    maxlength :100
                },
                totalStudentCountUnderSchool:{
                	maxlength : 5,
                	number:true,
                	noDecimal:true
                },
                teacherCount:{
                	maxlength : 5,
                	number:true,
                	noDecimal:true
                }
            },


            invalidHandler: function(event, validator) { //display error alert on form submit   
            },

            highlight: function(element) { // hightlight error inputs
                $(element)
                    .closest('.outer-field-wrap').addClass('has-error'); // set error class to the control group
            },
            
            success: function(label) {
                label.closest('.outer-field-wrap').removeClass('has-error');
                label.closest('.outer-field-wrap ').removeClass('has-error');
                label.remove();
            },

            errorPlacement: function(error, element) {
                    error.insertAfter(element);
            },

            submitHandler: function(form) {
            	
            	var stCount = $("#totalStudentCountUnderSchool").val();
        		
        		if(stCount==""){
        			$("#totalStudentCountUnderSchool").val(0);
        		}
        		var tCount = $("#teacherCount").val();
        		if(tCount==""){
        			$("#teacherCount").val(0);
        		}
        		$("#schoolName").val($("#schoolName").val().replace(/'/g, ''));
                form.submit();
            }
        });
	});
	</script>

<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>
<script type="text/javascript">
	jQuery(document).ready
	(function($){
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
    		     				$("#stateShort").val(result.modelMap.dtoTeacherSignOn.stateShort);
    		     				$("#address").val(result.modelMap.dtoTeacherSignOn.masterSchoolAddress);
    		     				$("#zipCode").val(result.modelMap.dtoTeacherSignOn.zipCode);
    		     				$("#state").val(result.modelMap.dtoTeacherSignOn.state);
    		     				$("#city").val(result.modelMap.dtoTeacherSignOn.city);
    		     				$("#latitude").val(result.modelMap.dtoTeacherSignOn.latitude);
    		     				$("#longitude").val(result.modelMap.dtoTeacherSignOn.longitude);
    		     			}
    		     		});
    		        	 
    		        }
    		         }
    		        
    		     } 
    		}); 
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

    var schoolNameStatus = false;
	function schoolAlreadyCheck(schoolName){
    //var email = $("#email").val().trim();
    	if(schoolName != ""){
        	$.ajax({
            	url : "<%=request.getContextPath()%>/availability/ie-school",
            		method : 'POST',
            			headers: { 
            						'Content-Type':'application/json'
            					},
            			data : JSON.stringify({"schoolName":schoolName}),
            			async:false,
            			success : function(result) {
            				if(typeof result.modelMap.dtoSchool.userId === "undefined"){
            					//schoolNameStatus = true;
            					
            					$.ajax({
            		            	url : "<%=request.getContextPath()%>/getMasterSchoolsDetails",
            		            		method : 'POST',
            		            			headers: { 
            		            						'Content-Type':'application/json'
            		            					},
            		            			data : JSON.stringify({"name":schoolName}),
            		            			async:false,
            		            			success : function(result1) {
            		            				//alert("hhh = "+result1.modelMap.dtoSchool1.schoolId);
            		            				if(typeof(result1.modelMap.dtoSchool1.schoolId) === "undefined"){
            		            					schoolNameStatus = true;
            		            				}
            		            				else{
            		            					$("#address").val(result1.modelMap.dtoSchool1.address);
                		            				$("#latitude").val(result1.modelMap.dtoSchool1.latitude1);
                		            				$("#longitude").val(result1.modelMap.dtoSchool1.longitude1);
                		            				$("#zipCode").val(result1.modelMap.dtoSchool1.zipCode);
                		            				$("#stateShort").val(result1.modelMap.dtoSchool1.stateShort);
                		            				$("#state").val(result1.modelMap.dtoSchool1.stateShort);
                		            				schoolNameStatus = true;
            		            				}
            		            				
            		            			}
            		            		});
            					
            					
            					
            					} else{
            						
            						$("#principalUserId").val(result.modelMap.dtoSchool.userId);
            						schoolNameStatus = false;
            				}
            			}
            		});
            	}else{
            		schoolNameStatus = true;
          }
         return schoolNameStatus;
   }
	
	/* For getting Lat & Long of Address */
    function getAddressLatLong(){
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
	
	google.maps.event.addDomListener(window, 'load', getAddressLatLong);
	function getPrincipalInfo(){
		var userId = $("#principalUserId").val();
		$("#priUserId").val(userId);
		var url='<%=request.getContextPath()%>/getPrincipalProfile';
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{userId:userId},
			success:function(response){
				if(response!=null){
					$("#fname").val(response.modelMap.userInfo.firstName);
					$("#lname").val(response.modelMap.userInfo.lastName);
					
					if(typeof (response.modelMap.userInfo.logo) =="undefined"){
						$('#logoImage').attr('src', '<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png');
					}
					
					else if(response.modelMap.userInfo.logo){
						$('#logoImage').attr('src', '<%=request.getContextPath()%>/NewStyles/images/school-profile/'+response.modelMap.userInfo.logo);
					}
					
						
					var emaildrop="";
					if(response.modelMap.userInfo.email == '' || typeof response.modelMap.userInfo.email == 'undefined'){	
						emaildrop+= '<a id="mailto" target="_top" class="listing-email-anchr"><label style="cursor:pointer" id="email">N/A</label></a>';
					}
					else{
						emaildrop+= '<a id="mailto" target="_top" class="listing-email-anchr"><label style="cursor:pointer" id="email">'+response.modelMap.userInfo.email+'</label></a>';
					}
					$("#emailDropDown").html(emaildrop);
					$("#mailto").attr("href","mailto:"+response.modelMap.userInfo.email)
					$("#mobile").val(response.modelMap.userInfo.mobile);
					$("#joiningDate").val(response.modelMap.userInfo.joiningDate);
					if(response.modelMap.userInfo.isTrail == 'Y'){
						$("#popup-header").text("Pioneer Teacher Detail");
					}
					else{
						$("#popup-header").text("Principal Details");
					}
					 $.fancybox({
					     'autoScale': true,
					     'autoDimensions': true,
					     'centerOnScroll': true,
					     'href' : '#view_contact_detail'
					  });
				
				return true;
			}
			else{
				
			}
			}
		});
	}
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