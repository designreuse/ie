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
<title>Add Class</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
</head>

<body>
	<div class="wrapper">
<%@include file="header.jsp" %>
 		<%-- <section class="slider-inner">
			<img src="<%=request.getContextPath()%>/NewStyles/images/slider1.jpg" alt="Slider" />
		</section> --%> 

		<section class="getStartSct">
		<div class="steps_getstarted">
			<div class="containerSmall">
				<div class="pracProgress_hdr">
 				<h2>Manage Classes</h2>
				<div class="green_line_btm"></div>
				</div>
			</div>
				<div class="clr"></div>
				<form:form  method="post" modelAttribute="dtoUser" action="saveClasses" id="saveSignupForm" class="register-form" >
				<div class="section_makpaymnt">
					<div class="programs_our" id="ourProg">
							<div class="titlebar_programms">
								<!-- <h4>Select a Program</h4> -->
								
								<div class="payable_amt_1">
								  <input type="hidden" id="selectedPrograms">  
									 <%-- Payable Amount: <span>$<span id="paymentAmt">0</span></span> --%> 
									 Select a Program
								</div>
								
								<div class="payable_amt">
								  <input type="hidden" id="selectedPrograms">  
									 <%-- Payable Amount: <span>$<span id="paymentAmt">0</span></span> --%> 
									 Payable Amount: <span>$<span>0</span></span>
								</div>
							</div>
						</div>
							<div class="school_setup_wrapper" id="progDetail">

								<div class="school_setup_box ">
								<c:forEach items="${programsList}" var="program" varStatus="programCount" begin="0" end="3">
 									<div class="img_setup program4 pos-reltv" id="programImg_${program.programId}" onclick="showProgramContent(${program.programId});">
										<div class="imgsetup_lg">
										<input type="hidden" id="programAmt_${program.programId}" value="${program.programAmount}">
											<%-- <img src="<%=request.getContextPath()%>${program.imagePath}" alt="" /> --%>
											<img src="<%=request.getContextPath()%>/NewStyles/images/img${program.programId}.jpg" alt="" />
											<div class="overlay_setup" id="overlay_${program.programId}">
												
											<%-- 	<c:set var="string" value="$ ${program.programAmount}"/>
													<c:set var="string1" value="${program.programDesc}"/>
													<c:set var="string2" value="${fn:replace(string1, 
					                                '####', string)}" />
													
													${string2} --%>
												<p>
											 ${program.programDescDetail}</p>
											</div>
										</div>
										<div class="check-box-absolute">
											<input type="checkbox" id="check_${program.programId}">
										</div>
									</div>
								</c:forEach>
								</div>
								
								
							<table class="table table-stri 200,ped table-hover table-bordered" id="sample_1" >
									<thead>
										<tr>
											<th>Class Name</th>
											<th>Program Name</th>
											<th>Teacher Name</th>
											<th>Teacher Email</th>
											<th>Action</th>
										</tr>
										</thead>
										<tbody>
										<c:forEach var="practiceProgress" items="${practiceProgress}">
										<%-- <c:if test="${practiceProgress.progranId eq '1'}"> --%>
											<tr>
												<td><span class="fd_span">${practiceProgress.className}</span></td>
												<td><span class="fd_span">${practiceProgress.programName}</span></td>
												<td><span class="fd_span">${practiceProgress.teacherName}</span></td>
												<td><span class="fd_span">${practiceProgress.teacherEmail}</span></td>
												<td><span class="fd_span"><a href="<%=request.getContextPath()%>/principal/deleteClass/${practiceProgress.classTeacherRelationId}">Delete</a></span></td>
											</tr>
											<%-- </c:if> --%>
										</c:forEach>
										</tbody>

									</table>
									
	<%-- 								<table class="table table-striped table-hover table-bordered" id="sample_2" style="display: none;">
									<thead>
										<tr>
											<th>Class Name</th>
											<th>Teacher Name</th>
											<th>Teacher Email</th>
											<th>Action</th>
										</tr>
										</thead>
										<tbody>
										<c:forEach var="practiceProgress" items="${practiceProgress}">
										<c:if test="${practiceProgress.progranId eq '2'}">
											<tr>
												<td><span class="fd_span">${practiceProgress.className}</span></td>
												<td><span class="fd_span">${practiceProgress.teacherName}</span></td>
												<td><span class="fd_span">${practiceProgress.teacherEmail}</span></td>
												<td><span class="fd_span">Delete</span></td>
											</tr>
											</c:if>
										</c:forEach>
										</tbody>

									</table> 
									
									
									<table class="table table-striped table-hover table-bordered" id="sample_3" style="display: none;">
									<thead>
										<tr>
											<th>Class Name</th>
											<th>Teacher Name</th>
											<th>Teacher Email</th>
											<th>Action</th>
										</tr>
										</thead>
										<tbody>
										<c:forEach var="practiceProgress" items="${practiceProgress}">
										<c:if test="${practiceProgress.progranId eq '3'}">
											<tr>
												<td><span class="fd_span">${practiceProgress.className}</span></td>
												<td><span class="fd_span">${practiceProgress.teacherName}</span></td>
												<td><span class="fd_span">${practiceProgress.teacherEmail}</span></td>
												<td><span class="fd_span">Delete</span></td>
											</tr>
											</c:if>
										</c:forEach>
										</tbody>

									</table>
									
									
									<table class="table table-striped table-hover table-bordered" id="sample_4" style="display: none;">
									<thead>
										<tr>
											<th>Class Name</th>
											<th>Teacher Name</th>
											<th>Teacher Email</th>
											<th>Action</th>
										</tr>
										</thead>
										<tbody>
										<c:forEach var="practiceProgress" items="${practiceProgress}">
										<c:if test="${practiceProgress.progranId eq '4'}">
											<tr>
												<td><span class="fd_span">${practiceProgress.className}</span></td>
												<td><span class="fd_span">${practiceProgress.teacherName}</span></td>
												<td><span class="fd_span">${practiceProgress.teacherEmail}</span></td>
												<td><span class="fd_span">Delete</span></td>
											</tr>
											</c:if>
										</c:forEach>
										</tbody>

									</table>--%>
								
								
								
								
								
								
							
							<c:forEach items="${programsList}" var="program" varStatus="programCount" begin="0" end="3">
								<div class="content_setup background-none" id="programDiv_${program.programId}" style="display:none;">
									<%-- <h5>Setup Program ${programCount.count}</h5> --%>
									<h5>${program.programDescDetail}</h5>
									<div class="getstartForm">
										<ul>
								 		<div id="parentInfo_${program.programId}">
										<div id="divSection_${program.programId}_0"> 
											<li>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input type="hidden" id="programId_${program.programId}_0" name="programIds"/>
															<input placeholder="Class*" type="text" name="className_${program.programId}_0" id="className_${program.programId}_0" class="ignore1" onchange="setProgramId(this.value,0,${program.programId});"/>
														</div>
													</div>
												</div>
											</li><br/>
											<li>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Teacher Name*" type="text" name="teacherName_${program.programId}_0" id="teacherName_${program.programId}_0" class="ignore1"/>
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
															<input placeholder="Teacher Email*" type="text" name="teacherEmail_${program.programId}_0" id="teacherEmail_${program.programId}_0" class="ignore1"/>
														</div>
													</div>
												</div>
												</div>
												 <!-- <input type="button" class="input_abs_plus">  -->
												 <div class="plusImg" id="removeLast_${program.programId}_0"><a  title="Add More" onclick="addMoreClass(${program.programId},0);" id="addMoreClass_${program.programId}"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a></div> 
												</div>
											</li>
											</div>
											</div>
										</ul>
									</div>


								</div>
							</c:forEach>
								</div>
								<div class="videobtn">
									<input type="button" onclick="addClasses();" value="Save Classes"  class="blueBtn" />
								</div>
							</div>
							</form:form>
</div>
			
		</section>
	</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>
  <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script> 
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
		    	    emailAlreadyExist: true,
		    	    notEqual:true
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
	$(document).ready(function() {    
		
        $.validator.addMethod("emailAlreadyExist", function(value, element) {
            return this.optional(element) || emailAlreadyCheck(value);
        }, "Email already exists.");
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
			/* if(index=='0'){ */
				$('#check_'+value).prop('checked', true);
			$('#programImg_'+value).attr('onclick','showProgramContent('+value+')');
			$('#programDiv_'+value).show();
			$('#overlay_'+value).attr('style','background-color:orange');
			var selectedProg = $('#selectedPrograms').val();
			if(selectedProg.indexOf(value)<0){
				$('#selectedPrograms').val(selectedProg+value+",");
			}
/* 		if(value=='1'){
			$("#sample_1").show();
			$("#sample_2").hide();
			$("#sample_3").hide();
			$("#sample_4").hide();
			}
		else if(value=='2'){
			$("#sample_1").hide();
			$("#sample_2").show();
			$("#sample_3").hide();
			$("#sample_4").hide();
			}
		else if(value=='3'){
			$("#sample_1").hide();
			$("#sample_2").hide();
			$("#sample_3").show();
			$("#sample_4").hide();
			}
		else if(value=='4'){
			$("#sample_1").hide();
			$("#sample_2").hide();
			$("#sample_3").hide();
			$("#sample_4").show();
			} */
			
			
			
			/* } */
		});
		//$('#programDiv_1').hide();
		//$('#programDiv_2').hide();
		//$('#programDiv_3').hide();
		//$('#programDiv_4').hide();
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
/* 		   if(programId=='1'){
				$("#sample_1").show();
				$("#sample_2").hide();
				$("#sample_3").hide();
				$("#sample_4").hide();
				}
			else if(programId=='2'){
				$("#sample_1").hide();
				$("#sample_2").show();
				$("#sample_3").hide();
				$("#sample_4").hide();
				}
			else if(programId=='3'){
				$("#sample_1").hide();
				$("#sample_2").hide();
				$("#sample_3").show();
				$("#sample_4").hide();
				}
			else if(programId=='4'){
				$("#sample_1").hide();
				$("#sample_2").hide();
				$("#sample_3").hide();
				$("#sample_4").show();
				} */
				
		  
		   
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
				   /* $.each(${programs},function(index,value){
					   
					   if(value == programId){
				  			$('#overlay_'+programId).attr('style','background-color:orange');
				  			$('#selectedPrograms').val($('#selectedPrograms').val()+programId+",");
					   }
				   }); */
				   
				   
/* 				if(programId=='1'){
					$("#sample_1").show();
					$("#sample_2").hide();
					$("#sample_3").hide();
					$("#sample_4").hide();
					}
				else if(programId=='2'){
					$("#sample_1").hide();
					$("#sample_2").show();
					$("#sample_3").hide();
					$("#sample_4").hide();
					}
				else if(programId=='3'){
					$("#sample_1").hide();
					$("#sample_2").hide();
					$("#sample_3").show();
					$("#sample_4").hide();
					}
				else if(programId=='4'){
					$("#sample_1").hide();
					$("#sample_2").hide();
					$("#sample_3").hide();
					$("#sample_4").show();
					} */
				   
					
		   			var amount = $('#paymentAmt').html();
		   			var amt = $('#programAmt_'+programId).val();
		   			if(parseInt(amount)>0){
		   				$('#paymentAmt').html(parseInt(amount)-parseInt(amt));
		   				$('#finalAmt').html(parseInt(amount)-parseInt(amt));
		   			}
			}

	}
	</script>
	
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>

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
/*     	var amount = $('#paymentAmt').html();
    	var amt = $('#programAmt_'+programId).val();
    	$('#paymentAmt').html(parseInt(amount)+parseInt(amt));
    	$('#finalAmt').html(parseInt(amount)+parseInt(amt)); */
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
/*     		var amount = $('#paymentAmt').html();
    		var amt = $('#programAmt_'+programId).val();
    		$('#paymentAmt').html(parseInt(amount)-parseInt(amt));
    		$('#finalAmt').html(parseInt(amount)-parseInt(amt)); */
    }

</script>

</body>
</html>
