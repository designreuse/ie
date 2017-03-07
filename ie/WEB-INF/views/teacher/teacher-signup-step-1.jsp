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
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
</head>

<body>
	<div class="wrapper">

	  <header id="header">
    <div class="container ">
        <div class="logo"> <a href="<%=request.getContextPath()%>/teacher/teachersignupStep1" title=""></a> </div>
        <div class="hdRight">
           
               <div class="startRight">
                	<p>Welcome, ${loginName}</p>
                	<c:if test="${companyName eq '1'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teacher&userIdForLogout=${userIdForLogout}&classTeacherId=${classTeacherRelationId}';" class="startBtn hdr-btn-clr"/>
						</c:if>
						<c:if test="${companyName eq '2'}">
						<input type="button" value="Logout" onClick="location.href='<%=request.getContextPath()%>/j_spring_security_logout?name=teachercrim';" class="startBtn hdr-btn-clr"/>
						</c:if>
					</div>
        </div>
    </div>
</header>

		<section class="makeDonateSct mtop-5">
			<div class="containerSmall">
				<form:form role="form" action="saveTeacherStep1"
					enctype="multipart/form-data" class="register-form"
					modelAttribute="dtoUser" method="post">

				
					
					<div class="pracProgress_hdr">
		           
						<h3 class="teachr_dsh bdr-btm-none">Start your Inner Explorer experience today</h3>
						<div class="clr"></div>
						<div class="btns-outer mtop10">
			
						</div>
		            </div>
					
					
					
			<div class="signon-down">
            	<ul>
            	 <c:forEach items="${programs}" var="program" varStatus="programCount" begin="0" end="3">
		          <li>
		          <c:if test="${not empty programId && program.programId eq programId}">
		          <div id="overlay_${program.programId}" class="overlay_setup_signon_active">
             <a onclick="getProgId(${program.programId})" id="overlay_${program.programId}">${program.programDescDetail}</a>
            </div>
            </c:if>
		          <c:if test="${empty programId || program.programId ne programId}">
		          <div id="overlay_${program.programId}" >
             <a onclick="getProgId(${program.programId})" id="overlay_${program.programId}">${program.programDescDetail}</a>
            </div>
            </c:if>
		          
		          </li>
		          </c:forEach>
                </ul>
            </div>
					

					<div class="getstartForm_teacher">
						<label>School Info</label>
						<input type="hidden" name="systemSchoolId" id="systemSchoolId"/>
						<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" name="schoolName" id="schoolName"
												placeholder="School Name" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" id="address" name="address"
												placeholder="School Address" /> <input type="hidden"
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
											<input type="text" id="city" name="city"
												placeholder="City" /> 
										</div>
									</div>
								</div>
							</li>
								<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" id="state" name="state"
												placeholder="State" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" name="zipCode" placeholder="Zip Code"
												id="zipCode" /> <input type="hidden" name="stateShort"
												id="state_short" />
												<input type="hidden" name="state" id="state" />
										</div>
									</div>
								</div>
							</li>
							
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" name="className" placeholder="Class Name" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" name="studentCount" placeholder="Number of Students" />
										</div>
									</div>
								</div>
							</li>
							
							<li id="newSchoolLogo">
							<div class="getstart-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" id="disableImagePath" disabled placeholder="Add Logo"/>
									</div>
								</div>
							</div>
							<div class="photoIcon"><div class="cam_upload"><form:input required="required" path="image" type="file" accept="image/*" id="imagePath" onchange="copyImageName();"/></div></div>
							<!-- <div class="chng_btn">
					                  <input type="button" class="startBtn-table" value="Cancel" onclick="replaceLogo();">
					        </div> -->
						</li>
						<li id="oldSchoolLogo" style=" margin-right:0px !important;">
						   	<div class="chang_logo">
					       		<div class="img_chnglogo">
					              	<img src="<%=request.getContextPath()%>/NewStyles/images/1440foundation.jpg" id="schoolSelectedLogo" alt=""/> 
					           	</div>
					            <div class="chng_btn">
					                  <input type="button" class="startBtn-table" value="Change Logo" onclick="changeLogo();">
					            </div>
					        </div>
						</li>
						</ul>
					</div>
					<div class="getstartForm">
						<label>How did you hear about IE?</label>
						<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field_sel">
											<select name="howdidhear" class="select_about_ie" onchange="whereAboutIE(this.value);">
												<option value="">Select</option>
												<option value="1">From social media</option>
												<option value="2">From another school or teacher</option>
												<option value="3">Through IE advertisement</option>
												<option value="4">WISDOM 2.0</option>
												<option value="5">Conference</option>
												
												<!-- <option value="4">Teacher</option> -->
											</select>
										</div>
									</div>
								</div>
							</li>
							<li id="teacherName">
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" id="className" name="className" placeholder="Teacher Name" />
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="getstartForm">
						<label>Promo Code</label>
						<ul>
							
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" name="pCode" id="pCode" placeholder="Enter Promo Code" />
										</div>
									</div>
								</div>
							</li>
							<li></li>
							
							</ul>
							
					</div>
					<div class="getstartForm">
					<label>Please select your role type</label>
							<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field_sel">
											<select name="roleType" class="select_about_ie" >
												<option value="">Select</option>
												<option value="1">Counselor</option>
												<option value="2">Researcher</option>
												<option value="3" selected>Teacher</option>
											</select>
										</div>
									</div>
								</div>
							</li>
							</ul>
						</div>
					<div class="btns-outer mtop10">
					<input type="submit" value="Next" class="submit-btn fl" />
					</div>
					<input type="hidden" name="programIds" id="programIds">
				</form:form>
			</div>
		</section>
	</div>
	

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%@include file="../footer.jsp"%>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBDhC2D4zTDZrGXabrWCl4Trh13XRdNmSc&libraries=places"></script>
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
	<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBDhC2D4zTDZrGXabrWCl4Trh13XRdNmSc&libraries=places"></script>
	 
	<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$("#header").sticky({ topSpacing: 0 });
		
		$("#programIds").val(1);
		$('#overlay_'+1).addClass("overlay_setup_signon_active");
	

		$("#login").click(function(e) {
		        $(".login_panel").toggle();
		        e.stopPropagation();
		    });

		    $(document).click(function(e) {
		        if (!$(e.target).is('.login_panel, .login_panel *')) {
		            $(".login_panel").hide();
		        }
		    });

		    
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
		     				$("#state").val(result.modelMap.dtoTeacherSignOn.state);
		     				$("#city").val(result.modelMap.dtoTeacherSignOn.city);
		     				$("#state_short").val(result.modelMap.dtoTeacherSignOn.stateShort);
		     				$("#zipCode").val(result.modelMap.dtoTeacherSignOn.zipCode);
		     				$("#oldSchoolLogo").show();
		     				$("#newSchoolLogo").hide();
		     				//alert(result.modelMap.dtoTeacherSignOn.logo);
		     				//$("#schoolSelectedLogo").src(result.modelMap.dtoTeacherSignOn.logo);
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
    				$("#state").val(result.state);
    				$("#city").val(result.city);
    			}
    		});
    	});
    	var schoolNameStatus = false;
    	function schoolAlreadyCheck(schoolName){
        //var email = $("#email").val().trim();
        	if(schoolName != ""){
            	$.ajax({
                	url : "<%=request.getContextPath()%>/check/availability/school",
                		method : 'POST',
                			headers: { 
                						'Content-Type':'application/json'
                					},
                			data : JSON.stringify({"schoolName":schoolName}),
                			async:false,
                			success : function(result) {
                				if(result.response.code == 200){
                					schoolNameStatus = true;
                					} else if(result.response.code == 409){
                						schoolNameStatus = false;
                				}
                			}
                		});
                	}else{
                		schoolNameStatus = true;
              }
             return schoolNameStatus;
       }
        function emailAlreadyCheck(value){
			//var email = $("#email").val().trim();
			var email = value;
			if(email != ""){
				$.ajax({
					url : "<%=request.getContextPath()%>/check/availability/email",
					<%-- url : "<%=request.getContextPath()%>/check/availability/emailForTeacher", --%>
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
        $.validator.addMethod("schoolAlreadyExist", function(value, element) {
            return this.optional(element) || schoolAlreadyCheck(value);
        }, "School already registered.");
        $.validator.addMethod("emailAlreadyExist", function(value, element) {
            return this.optional(element) || emailAlreadyCheck(value);
        }, "Email already exists. Click Here to <a href='<%=request.getContextPath()%>/login'> Login");
        $.validator.addMethod("nameRegex", function(value, element) {
            return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
        }, "Field must contain letters only.");
        
        $.validator.addMethod("cCodeValid", function(value, element) {
            return this.optional(element) || cCodeValid(value);
        }, "Please re-enter given text");
        $.validator.addMethod("pCodeValid", function(value, element) {
            return this.optional(element) || pCodeValid(value);
        }, "Please enter a valid Promo Code.");
        
        $('.register-form').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            //ignore: "",
            rules: {
            	schoolName:{
            		required: true,
            		//schoolAlreadyExist: true,
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
            		maxlength : 20
                },
                suburb: {
                    required: true,
                    maxlength : 20
                },
                state: {
                    /* required: true, */
                   /*  maxlength : 20 */
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
            	},
            	cCode:{
             		required:true,
             		cCodeValid: true
             	},
             	pCode:{
             		pCodeValid: true
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
    		$("#className").attr("name","className");
    		$("#className").attr("placeHolder","Teacher Name");
    	}
    	else if(val == 5){
    		$("#teacherName").show();
    		$("#className").attr("name","conferenceName");
    		$("#className").attr("placeHolder","Conference Name");
    	}
    	else{
    		$("#teacherName").hide();
    		//$("#conferenceName").hide();
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
    function getProgId(progId){
    	$("#programIds").val(progId);
    	//$("#progId").val(progId);
    	 $.each($('[id^=overlay_]'),function(i,ele){
    			//$(ele).removeAttr('style');
    			$(ele).removeClass('overlay_setup_signon_active');
    		});
    	 $('#overlay_'+progId).addClass("overlay_setup_signon_active");
    	
    	
    }
    function cCodeValid(){
    	var cCode = $("#cCode").val();
        		var url='<%=request.getContextPath()%>/checkCaptchaCodeParent';
        		$.ajax({
        			url:url,
        			method:'POST',
        			async :false,
        			data:{cCode:cCode},
        			cache:false,
        			success:function(response){
        				if(response=="Y"){
        					flag=true;
        				}
        				else
        					{
        					flag=false;
        					}
        				
        			}
        		});
        		
        	
        	return flag;
        	
        }
    	function updateCode(){
    		var url='<%=request.getContextPath()%>/getUpdatedCaptcha';
    		$.ajax({
    			url:url,
    			method:'GET',
    			async :false,
    			cache:false,
    			success:function(response){
    				$("#capCode").text(response);
    			}
    		});
    	}
    	
    	
    	function pCodeValid(){
        	
        	var pCode=$("#pCode").val();
        	var flag=false;
        	if(pCode!=""){
        		
        		if(pCode=='6MONIE' || pCode=='IE10DAYS' || pCode=='APRIL2017'){
        			flag=true;
        		}
        	
        	}
        	return flag;
        	
        }
</script>

</body>
</html>
