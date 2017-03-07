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
<title>Home Edition</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/autocomplete/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">

<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
</head>

<body>
	<div class="wrapper">
	  <%@include file="header.jsp" %>
		<section class="makeDonateSct mtop-5">
			<div class="containerSmall">
		<form:form name="parentSignup" class="register-form" modelAttribute="dtoUser" action="parentSignup" method="POST">
         <div class="pracProgress_hdr">
            <h2>Parent Signup</h2>
            <div class="green_line_btm"></div>
			
				<h3 class="teachr_dsh bdr-btm-none">Start your Inner Explorer experience today</h3>
				<div class="clr"></div>
				<div class="check-select-out">
                	<div class="check-select">
                    	<ul>
							<li><input type="hidden" name="group2" value="Parent Edition" id="check-2" checked> <label  for="check-2">Home Edition</label></li>
                        </ul>
                    </div>
                </div>
            </div>
				
				<div class="getstartForm" id="homeEdition">
					<label>Set IE Credentials</label>
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="email" type="text" placeholder="Email" />
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
                         <li class="margin-bottom-ten" id="showParentChild">
                        	<div class="contact-row">
                            	<div class="outer-field">
                                	<div class="add-child">
                                    	<a href="javascript:;" onclick="showParentChild();"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png"></span>Add Children</a>
                                    </div>
                                </div>
                            </div>
                        </li>
                         <li class="margin-bottom-ten" id="removeParentChild">
                        	<div class="contact-row">
                            	<div class="outer-field">
                                	<div class="add-child">
                                    	<a href="javascript:;" onclick="removeParentChild();"><span><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png"></span>Remove Children</a>
                                    </div>
                                </div>
                            </div>
                        </li>
					</ul>
					
					
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
										<input type="hidden" name="teacherIds" value="0" id="teacherIds_0"/>
										<input type="text" placeholder="Teacher Name" name="teacherName_0" id="teacherName_0"/>
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
				<div class="btns-outer mtop10">
				<input type="hidden" name="parentType" id="parentType"/>
					<input type="submit" value="START PRACTICE" class="submit-btn fl" />
				</div>
				</form:form>
			</div>
		</section>
	</div>
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
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>  
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script> 
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.autocomplete.js" type="text/javascript"></script>
   <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script> 
   <script type="text/javascript">	
   function emailAlreadyCheck(){
		var email = $("#email").val().trim();
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
		 $("#removeParentChild").hide();
		$("#parentEdition").hide();
		$("#homeEdition").show();
		$("#parentType").val(2);
		
		$.daisyNav();
		
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
		                			if($(".register-form").valid()){
		                				//alert("hiiii"+true);
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
			                			    $( el ).attr('name',"address");
			                			});
			                			$('[id^=zipCode_]').each( function( index, el ) {
			                			    $( el ).attr('name',"zipCode");
			                			});
			                			$('[id^=state_]').each( function( index, el ) {
			                			    $( el ).attr('name',"state");
			                			});
		                				
		                				form.submit();
		                				return true;
		                			}else{
		                				return false;
		                			}
		                            //form.submit();
		                        }
		                    });

		
		
		                    hideProgramContent();
	});
	   function hideProgramContent(){
		   var divId = 0;
				$("#parentInfo").html('<div id="divSection_'+ divId + '"><ul>'+
						'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" value="0" id="schoolIds_'+ divId +'" name="schoolIds"/>'+
						'<input type="text" name="schoolName_'+ divId + '" placeholder="School Name" id="schoolName_'+ divId + '"/></div></div></div></li>'+
					    '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
					    '<input type="text" name="address_'+ divId + '" placeholder="School Address"  id="address_'+ divId + '" /></div></div></div></li>'+
					    '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
					    '<input type="text" name="zipCode_'+ divId + '" placeholder="Zip Code"  id="zipCode_'+ divId + '" /></div></div></div></li>'+
						'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" id="stateShort_'+ divId +'" name="stateShort"/>'+
						'<input type="text" name="state_'+ divId + '" placeholder="City/State" id="state_'+ divId + '"/></div></div></div></li>'+
						'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field" id="registeredSchool_'+ divId + '"><input type="hidden" value="0" id="teacherId_'+ divId +'" name="teacherIds"/>'+
			    		'<input type="text" name="teacherName_'+ divId + '" placeholder="Teacher Name"  id="teacherName_'+ divId + '" /></div></div></div></li>'+
						'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" value="0" id="classId_'+ divId +'" name="classIds"/>'+
			    		'<input type="text" name="className_'+ divId + '" placeholder="Class"  id="className_'+ divId + '" /></div></div></div></li>'+
			    '<li class="margin-bottom-ten"><div class="contact-row"><div class="outer-field">'+
			    '<div class="add-child" id="removeLast_'+divId+'"><a onclick="addMoreClasses('+ divId +');" id="addMoreClass"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" id="addMoreClass"/></span>Add Another Child</a></div>'+
			    '</div></div></div></li></ul></div>');
				
				$('#schoolName_'+divId).autocomplete({
			        serviceUrl: '<%=request.getContextPath()%>/searchRegisteredSchool',
			        paramName: "name",
			        delimiter: ",",
			        delay: 3,
			        minChars: 1,
				    transformResult: function(response) {
				        return {
				            suggestions: $.map($.parseJSON(response), function(item) {	
				                return { value: item.schoolName , data: item.schoolId };
				            })
				        };
				    },
				     onSelect:  function (event,ui) {
				        
				         if(event.data!=0){
				        	// $("#address").val(event.data);
				        	 
				        	 var schoolId = event.data;
				        	 
				        	 
				        	 if(schoolId!=null){
				        	 
				        	 $.ajax({
				     			url : "<%=request.getContextPath()%>/getSchoolDetails",
				     			type : 'POST',
				     			data : {schoolId:schoolId},
				     			success : function(result) {
				     				$("#address_"+divId).val(result.modelMap.dtoTeacherSignOn.address);
				     				$("#zipCode_"+divId).val(result.modelMap.dtoTeacherSignOn.zipCode);
				     				$("#state_"+divId).val(result.modelMap.dtoTeacherSignOn.state);
				     				var teacherOption = '';
				     				$.each(result.modelMap.dtoTeacherSignOn.dtoTeacher,function(index,value){
				     					teacherOption +='<option value="'+value.teacherId+'"><p id="teacherClassId_'+value.teacherId+'_'+divId+'"></p><p  id="teacherClassName_'+value.teacherId+'_'+divId+'"></p>'+value.teacherName+'</option>';
				     					if(index==0){
				     						$("#classId_"+divId).val(value.dtoClass.classId);
				     						$("#className_"+divId).val(value.dtoClass.className);
				     						$("#className_"+divId).attr("readOnly","true");
				     					}
				     				});
				     				$("#registeredSchool_"+divId).removeClass("outer-field");
				     				$("#registeredSchool_"+divId).addClass("outer-field_sel");
				     				$("#registeredSchool_"+divId).html('<select id="teacherId_'+divId+'" name="teacherIds" onchange="getClassDetail('+divId+')">'+teacherOption+'</select><input type="hidden" name="teacherName_'+ divId + '" placeholder="Teacher Name"  value="" id="teacherName_'+ divId + '" />');
				     				//var logo = "<%=request.getContextPath()%>"+result.modelMap.dtoTeacherSignOn.logo;
				     				$('#schoolIds_'+divId).val(result.modelMap.dtoTeacherSignOn.masterSchoolId);
				     				
				     			}
				     		});
				        	 
				        }
				         }
				        
				     } 
				});
	}
	   function getClassDetail(index){
		   var teacherId= $("#teacherId_"+index).val();
		   $("#teacherName_"+index).val($("#teacherId_"+index+" option:selected").text());
      	 $.ajax({
  			url : "<%=request.getContextPath()%>/getTeacherClass",
  			type : 'POST',
  			data : {teacherId:teacherId},
  			success : function(result) {
			    $("#classId_"+index).val(result.modelMap.dtoClass.classId);
				$("#className_"+index).val(result.modelMap.dtoClass.className);
				$("#className_"+index).attr("readOnly","true");
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
				'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" value="0" id="schoolIds_'+ divId +'" name="schoolIds"/>'+
				'<input type="text" name="schoolName_'+ divId + '" placeholder="School Name" id="schoolName_'+ divId + '"/></div></div></div></li>'+
			    '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
			    '<input type="text" name="address_'+ divId + '" placeholder="School Address"  id="address_'+ divId + '" /></div></div></div></li>'+
			    '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
			    '<input type="text" name="zipCode_'+ divId + '" placeholder="Zip Code"  id="zipCode_'+ divId + '" /></div></div></div></li>'+
				'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" id="stateShort_'+ divId +'" name="stateShort"/>'+
				'<input type="text" name="state_'+ divId + '" placeholder="City/State" id="state_'+ divId + '"/></div></div></div></li>'+
				'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" value="0" id="teacherId_'+ divId +'" name="teacherIds"/>'+
	    		'<input type="text" name="teacherName_'+ divId + '" placeholder="Teacher Name"  id="teacherName_'+ divId + '" /></div></div></div></li>'+
				'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" value="0" id="classId_'+ divId +'" name="classIds"/>'+
	    		'<input type="text" name="className_'+ divId + '" placeholder="Class"  id="className_'+ divId + '" /></div></div></div></li>'+
	    '<li class="margin-bottom-ten"><div class="contact-row"><div class="outer-field">'+
        '<div class="add-child" id="removeLast_'+divId+'"><a onclick="removeClassDetailsLast('+ divId +');" id="removeParent"><span><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></span>Remove Child </a><a onclick="addMoreClasses('+ divId +');" id="addMoreClass"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></span>Add Another Child</a></div>'+
    	'</div></div></div></li></ul></div>');
    	//$("#zipCode_"+ divId )
    //	google.maps.event.addDomListener($("#zipCode_"+ divId ), 'click', getStudentAddressLatLong(index));
		$('#schoolName_'+divId).autocomplete({
	        serviceUrl: '<%=request.getContextPath()%>/searchRegisteredSchool',
	        paramName: "name",
	        delimiter: ",",
	        delay: 3,
	        minChars: 1,
		    transformResult: function(response) {
		        return {
		            suggestions: $.map($.parseJSON(response), function(item) {	
		                return { value: item.schoolName , data: item.schoolId };
		            })
		        };
		    },
		     onSelect:  function (event,ui) {
		        
		         if(event.data!=0){
		        	// $("#address").val(event.data);
		        	 
		        	 var schoolId = event.data;
		        	 
		        	 
		        	 if(schoolId!=null){
		        	 
		        	 $.ajax({
		     			url : "<%=request.getContextPath()%>/getSchoolDetails",
		     			type : 'POST',
		     			data : {schoolId:schoolId},
		     			success : function(result) {
		     				$("#address_"+divId).val(result.modelMap.dtoTeacherSignOn.address);
		     				$("#zipCode_"+divId).val(result.modelMap.dtoTeacherSignOn.zipCode);
		     				$("#state_"+divId).val(result.modelMap.dtoTeacherSignOn.state);
		     				var teacherOption = '';
		     				$.each(result.modelMap.dtoTeacherSignOn.dtoTeacher,function(index,value){
		     					teacherOption +='<option value="'+value.teacherId+'">'+value.teacherName+'</option>';
		     					if(index==0){
		     						$("#classId_"+divId).val(value.dtoClass.classId);
		     						$("#className_"+divId).val(value.dtoClass.className);
		     						$("#className_"+divId).attr("readOnly","true");
		     					}
		     				});
		     				$("#registeredSchool_"+divId).html('<select id="teacherId_'+divId+'" name="teacherIds" onchange="getClassDetail('+divId+')">'+teacherOption+'</select><input type="hidden" name="teacherName_'+ divId + '" placeholder="Teacher Name"  value="" id="teacherName_'+ divId + '" />');
		     				//var logo = "<%=request.getContextPath()%>"+result.modelMap.dtoTeacherSignOn.logo;
		     				$('#schoolIds_'+divId).val(result.modelMap.dtoTeacherSignOn.masterSchoolId);
		     				
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
   
    $(function(){
      SyntaxHighlighter.all();
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
    

</script>

</body>
</html>
 