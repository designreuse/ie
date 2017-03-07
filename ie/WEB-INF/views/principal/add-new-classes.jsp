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
<title>Select Program</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"
	id="style_components" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link
	href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<link
	href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
</head>

<body>
	<div class="wrapper">
		<%@include file="header.jsp"%>
		<section class="getStartSct">
			<div class="steps_getstarted">
				<div class="containerSmall">
				<div class="pracProgress_hdr">
					<h2>Manage Classes</h2>
					<div class="green_line_btm"></div>
					</div>
				</div>
				<div class="clr"></div>
				<form:form method="post" modelAttribute="dtoUser"
					action="saveNewClasses" id="saveSignupForm" class="register-form">
					<div class="section_makpaymnt">
						<div class="programs_our" id="ourProg">
							<div class="titlebar_programms">
								<div class="payable_amt_1">
									<input type="hidden" id="selectedPrograms"
										name="selectedPrograms"> <span class="font24">
										Add New Classes</span>

								</div>
							</div>
						</div>
						<div class="school_setup_wrapper" id="progDetail">

							<!--misc tabs start-->
							<div class="misc_tabs">
								<div class="misc_tabar svprogtab">
									<ul>
										<c:forEach var="programsList" items="${programsList}">
											<c:if test="${programsList.programId == 1}">
												<li id="mtab1"><a class="trial" onclick="showTab(1);">${programsList.programDescDetail}</a>
												</li>
											</c:if>
											<c:if test="${programsList.programId == 2}">
												<li id="mtab2"><a class="trial" onclick="showTab(2);">${programsList.programDescDetail}</a>
												</li>
											</c:if>
											<c:if test="${programsList.programId == 3}">
												<li id="mtab3"><a class="trial" onclick="showTab(3);">${programsList.programDescDetail}</a>
												</li>
											</c:if>
											<c:if test="${programsList.programId == 4}">
												<li id="mtab4"><a class="trial" onclick="showTab(4);">${programsList.programDescDetail}</a>
												</li>
											</c:if>
										</c:forEach>
									</ul>
								</div>
								<div class="containerSmall">
									<div class="misc_content padding-btm-zero">
										<!--TAB 1 STARTS-->
										<div id="tab1" style="display: none;">


											<div class="content_setup background-none" id="programDiv_1"
												style="display: none;">
												<%-- <h5>Setup Program ${programCount.count}</h5> --%>
												<%-- <h5>${program.programDescDetail}</h5> --%>
												<div class="getstartForm">
													<ul>
														<div id="parentInfo_1">
															<div id="divSection_1_0">
																<li>
																	<div class="contact-row">
																		<div class="outer-field-wrap">
																			<div class="outer-field">
																				<input type="hidden" id="programId_1_0"
																					name="programIds" /> <input placeholder="Class*"
																					type="text" name="className_1_0" id="className_1_0"
																					class="ignore1"
																					onchange="setProgramId(this.value,0,1);" />
																			</div>
																		</div>
																	</div>
																</li>
																<br />
																<li>
																	<div class="contact-row">
																		<div class="outer-field-wrap">
																			<div class="outer-field">
																				<input placeholder="Teacher Name*" type="text"
																					name="teacherName_1_0" id="teacherName_1_0"
																					class="ignore1" />
																			</div>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="input_relative">
																		<div class="input_add_logo">
																			<div class="contact-row">
																				<div class="outer-field-wrap">
																					<div class="outer-field">
																						<input placeholder="Teacher Email*" type="text"
																							name="teacherEmail_1_0" id="teacherEmail_1_0"
																							class="ignore1" />
																					</div>
																				</div>
																			</div>
																		</div>
																		<!-- <input type="button" class="input_abs_plus">  -->
																		<div class="plusImg" id="removeLast_1_0">
																			<a title="Add More" onclick="addMoreClass(1,0);"
																				id="addMoreClass_1"><img
																				src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png"
																				alt="Image" /></a>
																		</div>
																	</div>
																</li>
															</div>
														</div>
													</ul>
												</div>


											</div>



										</div>
										<!--TAB 1 ENDS-->
										<!--TAB 2 STARTS-->
										<div id="tab2" style="display: none;">


											<div class="content_setup background-none" id="programDiv_2"
												style="display: none;">
												<%-- <h5>Setup Program ${programCount.count}</h5> --%>
												<%-- <h5>${program.programDescDetail}</h5> --%>
												<div class="getstartForm">
													<ul>
														<div id="parentInfo_2">
															<div id="divSection_2_0">
																<li>
																	<div class="contact-row">
																		<div class="outer-field-wrap">
																			<div class="outer-field">
																				<input type="hidden" id="programId_2_0"
																					name="programIds" /> <input placeholder="Class*"
																					type="text" name="className_2_0" id="className_2_0"
																					class="ignore1"
																					onchange="setProgramId(this.value,0,2);" />
																			</div>
																		</div>
																	</div>
																</li>
																<br />
																<li>
																	<div class="contact-row">
																		<div class="outer-field-wrap">
																			<div class="outer-field">
																				<input placeholder="Teacher Name*" type="text"
																					name="teacherName_2_0" id="teacherName_2_0"
																					class="ignore1" />
																			</div>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="input_relative">
																		<div class="input_add_logo">
																			<div class="contact-row">
																				<div class="outer-field-wrap">
																					<div class="outer-field">
																						<input placeholder="Teacher Email*" type="text"
																							name="teacherEmail_2_0" id="teacherEmail_2_0"
																							class="ignore1" />
																					</div>
																				</div>
																			</div>
																		</div>
																		<!-- <input type="button" class="input_abs_plus">  -->
																		<div class="plusImg" id="removeLast_2_0">
																			<a title="Add More" onclick="addMoreClass(2,0);"
																				id="addMoreClass_2"><img
																				src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png"
																				alt="Image" /></a>
																		</div>
																	</div>
																</li>
															</div>
														</div>
													</ul>
												</div>


											</div>



										</div>
										<!--TAB 2 ENDS-->
										<!--TAB 3 STARTS-->
										<div id="tab3" style="display: none;">

											<div class="content_setup background-none" id="programDiv_3"
												style="display: none;">
												<%-- <h5>Setup Program ${programCount.count}</h5> --%>
												<h5>${program.programDescDetail}</h5>
												<div class="getstartForm">
													<ul>
														<div id="parentInfo_3">
															<div id="divSection_3_0">
																<li>
																	<div class="contact-row">
																		<div class="outer-field-wrap">
																			<div class="outer-field">
																				<input type="hidden" id="programId_3_0"
																					name="programIds" /> <input placeholder="Class*"
																					type="text" name="className_3_0" id="className_3_0"
																					class="ignore1"
																					onchange="setProgramId(this.value,0,3);" />
																			</div>
																		</div>
																	</div>
																</li>
																<br />
																<li>
																	<div class="contact-row">
																		<div class="outer-field-wrap">
																			<div class="outer-field">
																				<input placeholder="Teacher Name*" type="text"
																					name="teacherName_3_0" id="teacherName_3_0"
																					class="ignore1" />
																			</div>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="input_relative">
																		<div class="input_add_logo">
																			<div class="contact-row">
																				<div class="outer-field-wrap">
																					<div class="outer-field">
																						<input placeholder="Teacher Email*" type="text"
																							name="teacherEmail_3_0" id="teacherEmail_3_0"
																							class="ignore1" />
																					</div>
																				</div>
																			</div>
																		</div>
																		<!-- <input type="button" class="input_abs_plus">  -->
																		<div class="plusImg" id="removeLast_3_0">
																			<a title="Add More" onclick="addMoreClass(3,0);"
																				id="addMoreClass_3"><img
																				src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png"
																				alt="Image" /></a>
																		</div>
																	</div>
																</li>
															</div>
														</div>
													</ul>
												</div>


											</div>


										</div>
										<div id="tab4" style="display: none;">

											<div class="content_setup background-none" id="programDiv_4"
												style="display: none;">
												<%-- <h5>Setup Program ${programCount.count}</h5> --%>
												<h5>${program.programDescDetail}</h5>
												<div class="getstartForm">
													<ul>
														<div id="parentInfo_4">
															<div id="divSection_4_0">
																<li>
																	<div class="contact-row">
																		<div class="outer-field-wrap">
																			<div class="outer-field">
																				<input type="hidden" id="programId_4_0"
																					name="programIds" /> <input placeholder="Class*"
																					type="text" name="className_4_0" id="className_4_0"
																					class="ignore1"
																					onchange="setProgramId(this.value,0,4);" />
																			</div>
																		</div>
																	</div>
																</li>
																<br />
																<li>
																	<div class="contact-row">
																		<div class="outer-field-wrap">
																			<div class="outer-field">
																				<input placeholder="Teacher Name*" type="text"
																					name="teacherName_4_0" id="teacherName_4_0"
																					class="ignore1" />
																			</div>
																		</div>
																	</div>
																</li>
																<li>
																	<div class="input_relative">
																		<div class="input_add_logo">
																			<div class="contact-row">
																				<div class="outer-field-wrap">
																					<div class="outer-field">
																						<input placeholder="Teacher Email*" type="text"
																							name="teacherEmail_4_0" id="teacherEmail_4_0"
																							class="ignore1" />
																					</div>
																				</div>
																			</div>
																		</div>
																		<!-- <input type="button" class="input_abs_plus">  -->
																		<div class="plusImg" id="removeLast_4_0">
																			<a title="Add More" onclick="addMoreClass(4,0);"
																				id="addMoreClass_4"><img
																				src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png"
																				alt="Image" /></a>
																		</div>
																	</div>
																</li>
															</div>
														</div>
													</ul>
												</div>


											</div>

										</div>
										<!--TAB 3 ENDS-->
									</div>
								</div>
							</div>
							<!--misc tabs end-->
							
						</div>
						<div class="videobtn margin-top-zero">
							<input type="button" onclick="addClasses();" value="Next"
								class="blueBtn padding-lt-rt-40" /> <input type="button"
								onclick="skipClasses();" value="Setup Later"
								class="blueBtn padding-lt-rt-40" />
						</div>
					</div>
				</form:form>
			</div>

		</section>
	</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%@include file="../footer.jsp"%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>
	<script language="javascript" type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/tab.js"></script>
	<script type="text/javascript">	
/* 	$(document).ready
	(function($){
		$.daisyNav();
	}); */
	function addClasses(){
			$("#saveSignupForm").validate({ ignore: []});
			$("#saveSignupForm").validate();
			$('[id^=className_]').each( function( index, el ) {
			    $( el ).rules('add', {
		    	    required: true 
		    	});
			   // $( el ).attr("name","className_"+index);
			});
			$('[id^=teacherName_]').each( function( index, el ) {
			    $( el ).rules('add', {
		    	    required: true ,
		    	    maxlength:40
		    	});
			});
			$('[id^=teacherEmail_]').each( function( index, el ) {
			    $( el ).rules('add', {
		    	    required: true,
		    	    email: true,
		    	    /* emailAlreadyCheckForTeacher: true, */
		    	   // notEqual:true
		    	});
			});
			if($("#saveSignupForm").valid()){
				//alert("hiiii"+true);
				$('[id^=className_]').each( function( index, el ) {
			    	$( el ).attr('name',"className");
				});
				$('[id^=teacherName_]').each( function( index, el ) {
					$( el ).attr('name',"teacherName");
				});
				$('[id^=teacherEmail_]').each( function( index, el ) {
					$( el ).attr('name',"teacherEmail");
				});
				$("#saveSignupForm").submit();
				return true;
			}else{
				return false;
			}
	}
	function emailAlreadyCheck(value){
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
    var emailStatusForTeacher = false;
    function emailAlreadyCheckForTeacher(email){
		//var email = $("#email").val().trim();
		if(email != ""){
			$.ajax({
				url : "<%=request.getContextPath()%>/check/availability/emailForTeacher",
				method : 'POST',
				headers: { 
					'Content-Type':'application/json'
					},
				data : JSON.stringify({"email":email}),
				async:false,
				success : function(result) {
					if(result.response.code == 200){
						emailStatusForTeacher = true;
					} else if(result.response.code == 202){
						emailStatusForTeacher = true;
					}else if(result.response.code == 409){
						emailStatusForTeacher = false;
					}
				}
			});
		}else{
			emailStatusForTeacher = true;
		}
		return emailStatusForTeacher;
    }
	$(document).ready(function() {    
		$.daisyNav();
		var selectdProgID = '${programsList[0].programId}';
		if(selectdProgID==1){
			getMyHTMLElement('mtab1').className = 'selected';
			$("#tab"+selectdProgID).removeAttr("style");
		}
		else if(selectdProgID==2){
			getMyHTMLElement('mtab2').className = 'selected';
			$("#tab"+selectdProgID).removeAttr("style");
		}
		else if(selectdProgID==3){
			getMyHTMLElement('mtab3').className = 'selected';
			$("#tab"+selectdProgID).removeAttr("style");
		}
		else if(selectdProgID==4){
			getMyHTMLElement('mtab4').className = 'selected';
			$("#tab"+selectdProgID).removeAttr("style");
		}
		
        $.validator.addMethod("emailAlreadyCheckForTeacher", function(value, element) {
            return this.optional(element) || emailAlreadyCheckForTeacher(value);
        }, "Email already exists with another role.");
        $.validator.addMethod("nameRegex", function(value, element) {
            return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
        }, "Field must contain letters only.");
		jQuery.validator.addMethod("notEqual", function(value, element) {
			var status = true;
			$('[id^=teacherEmail_]').each( function( index, el ){
				if(($( el ).val() == value) && $( el ).attr("id") != $(element).attr("id") ){
					status = false;
				}
			});
			  return this.optional(element) || status;
			}, "Please use unique email address.");
        $('.register-form').validate({
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
                form.submit();
            }
        });

		$.each(${programs},function(index,value){
				$('#check_'+value).prop('checked', true);
			$('#programImg_'+value).attr('onclick','showProgramContent('+value+')');
			$('#programDiv_'+value).show();
			$('#overlay_'+value).attr('style','background-color:orange');
			var selectedProg = $('#selectedPrograms').val();
			if(selectedProg.indexOf(value)<0){
				$('#selectedPrograms').val(selectedProg+value+",");
			}

			
			
			
		});
		
	});
	   function setProgramId(value,index,programId){
		   if(value != ''){
		   		$('#programId_'+programId+'_'+index).val(programId);
		   }else{
			   $('#programId_'+programId+'_'+index).val('');
		   }
	   }
	   
	   function showProgramContent(programId){
		   $('#check_'+programId).prop('checked', true);
		   
		   $('#programDiv_'+programId).show();
		   $('#programImg_'+programId).removeAttr("onclick");
		   $('#programImg_'+programId).attr("onclick","hideProgramContent("+programId+")");
			$('#overlay_'+programId).attr('style','background-color:green');
		   var selectedProg = $('#selectedPrograms').val();
			if(selectedProg.indexOf(programId)<0){
				$('#selectedPrograms').val(selectedProg+programId+",");
				var amount = $('#paymentAmt').html();
				var amt = $('#programAmt_'+programId).val();
				$('#paymentAmt').html(parseInt(amount)+parseInt(amt));
				$('#finalAmt').html(parseInt(amount)+parseInt(amt));
			}
	}
	   function hideProgramContent(programId){
		   $('#check_'+programId).prop('checked', false);
		   var sectionLength = $('[id^=divSection_'+programId+'_]').length;
		   var divId = 0;
				$("#parentInfo_"+programId).html('<div id="divSection_'+programId+'_'+ divId + '">'+
						'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" id="programId_'+programId+'_'+ divId +'" name="programIds"/>'+
						'<input type="text" name="className_'+programId+'_'+ divId + '" placeholder="Class*" id="className_'+programId+'_'+ divId + '" onchange="setProgramId(this.value,'+ divId + ','+programId+');"/></div></div></div></li><br/>'+
			    '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
			    '<input type="text" name="teacherName_'+programId+'_'+ divId + '" placeholder="Teacher Name*"  id="teacherName_'+programId+'_'+ divId + '" /></div></div></div></li>'+
			    '<li><div class="input_relative"><div class="input_add_logo"><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
			    '<input type="text" name="teacherEmail_'+programId+'_'+ divId + '" placeholder="Teacher Email*"  id="teacherEmail_'+programId+'_'+ divId + '"/></div></div></div></div>'+
			    '<div class="plusImg" id="removeLast_'+programId+'_'+divId+'"><a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a></div>'+
			    '</div></li>');

		   $('#programImg_'+programId).removeAttr("onclick");
		   $('#programImg_'+programId).attr("onclick","showProgramContent("+programId+")");
		   $('#programDiv_'+programId).hide();
		   $('#overlay_'+programId).removeAttr('style');
		   var selectedProg = $('#selectedPrograms').val();
			if(selectedProg.indexOf(programId)>=0){
				$('#selectedPrograms').val((selectedProg.replace(programId+',','')));
				   
		   			var amount = $('#paymentAmt').html();
		   			var amt = $('#programAmt_'+programId).val();
		   			if(parseInt(amount)>0){
		   				$('#paymentAmt').html(parseInt(amount)-parseInt(amt));
		   				$('#finalAmt').html(parseInt(amount)-parseInt(amt));
		   			}
			}

	}
	</script>

	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>

	<script type="text/javascript">
    $(function(){
      //SyntaxHighlighter.all();
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
    function addMoreClass(programId,index){
    	var divId = index + 1;
    	var htmlContents='<a title="Remove" onclick="removeClassDetails('+programId+','+ index + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon.png" alt="Image" /></a>';
    	$($("#removeLast_"+programId+"_" + index + '')).empty();
    	$($("#removeLast_"+programId+"_" + index + '')).html(htmlContents);
    	$("#addMoreClass_"+programId).remove();
    	$("#parentInfo_"+programId).append('<div id="divSection_'+programId+'_'+ divId + '">'+
    			'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" id="programId_'+programId+'_'+ divId +'" name="programIds"/>'+
    			'<input type="text" name="className_'+programId+'_'+ divId + '" placeholder="Class*" id="className_'+programId+'_'+ divId + '" onchange="setProgramId(this.value,'+ divId + ','+programId+');"/></div></div></div></li><br/>'+
        '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
        '<input type="text" name="teacherName_'+programId+'_'+ divId + '" placeholder="Teacher Name*"  id="teacherName_'+programId+'_'+ divId + '" /></div></div></div></li>'+
        '<li><div class="input_relative"><div class="input_add_logo"><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
        '<input type="text" name="teacherEmail_'+programId+'_'+ divId + '" placeholder="Teacher Email*"  id="teacherEmail_'+programId+'_'+ divId + '"/></div></div></div></div>'+
        '<div class="plusImg" id="removeLast_'+programId+'_'+divId+'"><a onclick="removeClassDetailsLast('+programId+','+ divId +');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon.png" alt="Image" /></a><a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a></div>'+
        '</div></li>');

    }

    function removeClassDetails(programId,index){
    	$($("#divSection_"+programId+"_" + index + '')).remove();
    	if($('[id^=removeLast_'+programId+'_]').length == 1){
    		var divId = $('[id^=removeLast_'+programId+'_]').attr('id').replace('removeLast_'+programId+'_','');
    		$('[id^=removeLast_'+programId+'_]').empty('');
    		$('[id^=removeLast_'+programId+'_]').html('<a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a>');
    	}
    }

    function removeClassDetailsLast(programId,index){
    	var previous = index - 1;
    	var htmlContents = '<a onclick="removeClassDetailsLast('+programId+','+ previous + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon.png" alt="Image" /></a><a onclick="addMoreClass('+programId+','+ previous +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a>';
    	
    	$($("#divSection_"+programId+"_" + index + '')).remove();
    		while($("#removeLast_"+programId+"_" + previous + '').length == 0){
    			previous--;
    			if(previous == 0)
    			break;
    		}
    		if(previous != 0){
    			$($("#removeLast_"+programId+"_" + previous + '')).empty();
    			$($("#removeLast_"+programId+"_" + previous + '')).html(htmlContents);
    		}else{
    			$($("#removeLast_"+programId+"_" + previous + '')).empty();
    			$($("#removeLast_"+programId+"_" + previous + '')).html('<a onclick="addMoreClass('+programId+','+ previous +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a>');
    		}
        	if($('[id^=removeLast_'+programId+'_]').length == 1){
        		var divId = $('[id^=removeLast_'+programId+'_]').attr('id').replace('removeLast_','');
        		$('[id^=removeLast_'+programId+'_]').empty();
        		$('[id^=removeLast_'+programId+'_]').html('<a onclick="addMoreClass('+programId+','+ previous +');"  id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a>');
        	}

    }

    
    function showTab(current,max){
		for (i=1;i<=max;i++){
		getMyHTMLElement('tab' + i).style.display = 'none';
		getMyHTMLElement('mtab' + i).className = '';
		
		
		
		}
		getMyHTMLElement('tab' + current).style.display = '';
		getMyHTMLElement('mtab' + current).className = 'selected';
		
		if(current==2){
			displayMasterVectorMap();
		}
		
		
		}
    function showTab(tabId){
		if(tabId==1){
			$('#tab1').show();
			$('#tab2').hide();
			$('#tab3').hide();
			$('#tab4').hide();
			$('#mtab1').addClass("selected");
			$('#mtab2').removeClass("selected");
			$('#mtab3').removeClass("selected");
			$('#mtab4').removeClass("selected");
			
		}
		
		if(tabId==2){
			$('#tab2').show();
			$('#tab1').hide();
			$('#tab3').hide();
			$('#tab4').hide();
			$('#mtab1').removeClass("selected");
			$('#mtab2').addClass("selected");
			$('#mtab3').removeClass("selected");
			$('#mtab4').removeClass("selected");
		}
		
		if(tabId==3){
			$('#tab1').hide();
			$('#tab2').hide();
			$('#tab3').show();
			$('#tab4').hide();
			$('#mtab1').removeClass("selected");
			$('#mtab2').removeClass("selected");
			$('#mtab3').addClass("selected");
			$('#mtab4').removeClass("selected");
		}
		
		if(tabId==4){
			$('#tab1').hide();
			$('#tab2').hide();
			$('#tab3').hide();
			$('#tab4').show();
			$('#mtab1').removeClass("selected");
			$('#mtab2').removeClass("selected");
			$('#mtab3').removeClass("selected");
			$('#mtab4').addClass("selected");
			
		}
		
		
		}
    
    function skipClasses(){
    	window.location.href="<%=request.getContextPath()%>/principal/manageAddedTeacher";
    }
    
    
</script>

</body>
</html>
