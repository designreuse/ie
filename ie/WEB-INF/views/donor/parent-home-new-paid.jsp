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
<title>Home Edition Dashboard</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<%-- <link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/> --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css"> --%>
<style type="text/css">
.fancybox-inner{height: auto !important; overflow: hidden !important;}
</style>
</head>

<body>
	<div class="wrapper">
	<%@include file="header.jsp" %>
		<section class="getStartSct mtop-5">
    		<div class="steps_getstarted">
				<div class="container">
					<div class="about_title_hdr">
     					<h2>Home Edition Dashboard</h2>
     					<div class="green_line_btm"></div>
     				</div>
     			<div class="sub_heading_new_ty">
     				You have subscribed to Home Edition Program until ${parentDate}
     			</div>
     			
     			<c:if test="${isChangedFRomMonthlyToYearly eq 'Y'}">	
			Your Subscription has been changed from Monthly to Yearly
	</c:if>
     	
     			
     		<c:if test="${showRenewMessage eq 'Y'}">
     			<div class="hed_content">
						<p>Your Subscription will be expired on ${parentDate}
						<c:if test="${paymentType eq '1'}">	
			<input type="button" value="Upgrade" onClick="location.href='<%=request.getContextPath()%>/donor/upgradeRadio';" 
			class="submit-btn"/>
	</c:if>
	<c:if test="${paymentType eq '2'}">	
			<input type="button" value="Renew" onClick="location.href='<%=request.getContextPath()%>/donor/upgradeRadio';" 
			class="submit-btn"/>
	</c:if>
						</p>
					</div>

			
	
	</c:if>
	
			
     			
     			<%-- <c:if test="${paymentType == 2}">
     			
     <section class="may-dashboard-main">
     	<div class="container">
        	<div class="may-dsh-icon">
            	<ul>
                	<li>
                    	<a href="javascript:;" class="may-share-home" onclick="openShareInvite();"></a>
                    	<p id="invitesRemaining">${pendingInvite} Invites Remaining</p>
                    </li>
                    <li>
                    	<a href="javascript:;" class="may-share-radio" onclick="openRadioInvite();"></a>
                    	<p id="invitesRemaining">${radioInvite} Radio Invites Sent</p>
                    </li>
                </ul>
            </div>
        </div>
     </section>
     </c:if> --%>
     
     <section class="may-sel-cat">
     	<!-- <div class="container"> -->
        	<div class="may-cat-head">
            	Select Playlist
            </div>
        	
        	
        	
        	
        	
        	
        	<div class="school_setup_wrapper mtop30" id="progDetail">

								<div class="school_setup_box">
								<ul class="new-teachr">
								<c:forEach items="${parentPrograms}" var="parentPrograms">
 									<li class="img_setup program4 pos-reltv" id="programImg_${parentPrograms.id}" onclick="showProgramContent(${parentPrograms.id});">
										<a href="<%=request.getContextPath()%>/donor/parentAudios/${parentPrograms.id}">
										<div class="imgsetup_lg">
											<img src="<%=request.getContextPath()%>/NewStyles/images/img0${parentPrograms.id}.png" alt="" class="position-relative"/>
											<div class="overlay_setup top-position" id="overlay_${parentPrograms.id}">
												<p>${parentPrograms.progName}</p>
											</div>
										</div>
										</a>
										<div class="check-box-absolute">
										<div id="check_${parentPrograms.id}"></div>
											<%-- <img alt="" src="" id="check_${program.programId}"/> --%>
											<%-- <input type="checkbox" id="check_${program.programId}"> --%>
										</div>
									</li>
								</c:forEach>
								</ul>
								</div>
							
								</div>
        	

       <!--  </div> -->
     </section>       
			</div>
      </div>
		</section>
	</div>
	
	
		<div id="sendSubscriptionPopUp" style="display: none" class="getstartForm_teacher margin-top-zero">
		<h3 class="migChngPass pophdr">Share Home Edition</h3>
		<form:form action="donor/saveSubscriptionParent1" id="parentSubscriptionForm" modelAttribute="dtoParentInvite" name="parentSubscriptionForm" method="post" class="register-principal">
		
		<h3 class="migChngPass popsubhdr" id="pendingInvitesMsg"></h3>
			<ul id="inviteDetail">
               <li>
               <label>Enter Name</label>
               		<div class="contact-row">
               			<div class="outer-field-wrap">
							<div class="outer-field">
								<input type="text" placeholder="Enter Name" id="name1" name="name1">
							</div>
						</div>
					</div>
				</li>
				<li>
               <label>Enter Email</label>
               		<div class="contact-row">
               			<div class="outer-field-wrap">
							<div class="outer-field">
								<input type="text" placeholder="Enter Email" id="email1" name="email1">
							</div>
						</div>
					</div>
				</li>
				<li>
               <label>Enter Name</label>
               		<div class="contact-row">
               			<div class="outer-field-wrap">
							<div class="outer-field">
								<input type="text" placeholder="Enter Name" id="name2" name="name2">
							</div>
						</div>
					</div>
				</li>
				<li>
               <label>Enter Email</label>
               		<div class="contact-row">
               			<div class="outer-field-wrap">
							<div class="outer-field">
								<input type="text" placeholder="Enter Email" id="email2" name="email2">
							</div>
						</div>
					</div>
				</li>
              </ul>
              
			<input type="submit" value="SEND INVITE" id="submitEmail" class="change_trackbtn_qus" onclick="submitEmailFrom();">
		</form:form>
	</div>
	
	
	
	
	
			<div id="sendRadioInvitePopUp" style="display: none" class="getstartForm_teacher margin-top-zero">
			<h3 class="migChngPass pophdr">Share The Radio</h3>
		<form:form  method="post" id="sendRadioInviteForm" modelAttribute="dtoLetterToParent"  action="${pageContext.request.contextPath}/donor/sendParentRadioInvite" class="register-form" >
								<h3 class="migChngPass popsubhdr" id="radioInvitesMsg">${radioInvite} Radio Invites Sent</h3>		
										<ul>
										<div id="parentInfo_0">
										<div id="divSection_0_0">
											
											<li class="margin-bottom-ten">
												<div class="input_relative">
												<div class="input_add_logo width100">
												 <label>Enter Name</label>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field full-width-input">
															<input placeholder="Enter Name" type="text" name="parentName" id="parentName_0_0" class="ignore1"/>
														</div>
													</div>
												</div>
												</div>
												</div>
											</li>
											
											<li class="margin-bottom-ten">
												<!-- <div class="input_relative"> -->
												<!-- <div class="input_add_logo width-less"> -->
												 <label>Enter Email</label>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Enter Email*" type="text" name="parentEmail" id="parentEmail_0_0" class="ignore1"/>
														</div>
													</div>
												</div>
											</li>
											
												<li class="margin-bottom-ten">
												<div class="input_relative">
												<div class="input_add_logo width100">
												 <label>Enter Name</label>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field full-width-input">
															<input placeholder="Enter Name" type="text" name="parentName_123" id="parentName_123" class="ignore1"/>
														</div>
													</div>
												</div>
												</div>
												</div>
											</li>
											
											<li class="margin-bottom-ten">
												<!-- <div class="input_relative"> -->
												<!-- <div class="input_add_logo width-less"> -->
												 <label>Enter Email</label>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Enter Email*" type="text" name="parentEmail_123" id="parentEmail_123" class="ignore1"/>
														</div>
													</div>
													
												</div>
												<div class="plusImg plus-pos" id="removeLast_0_0">
										        <a  title="Add More" onclick="addMoreClass(0,0);" id="addMoreClass_0">
										         <img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a>
										       </div> 
											</li>
																				
										     
										        
<%-- 											<li>
												<div class="input_relative">
												<div class="input_add_logo width-less">
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Comment" type="text" name="comments" id="comments_${schoolId}_0" class="ignore1"/>
														</div>
													</div>
												</div>
												</div>
												 <div class="plusImg" id="removeLast_${schoolId}_0"><a  title="Add More" onclick="addMoreClass(${schoolId},0);" id="addMoreClass_${schoolId}"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div> 
												</div>
											</li> --%>
											</div>
											</div>
											</ul>
                   <input type="button" value="SEND INVITE" class="change_trackbtn_qus" onclick="sendingEmailToParents();">
				</form:form>
	</div>
	

   <%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jquery-1.12.1.min.js"></script>  --%> 
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>  
   <%@include file="../footer.jsp" %>
   <script src="<%=request.getContextPath()%>/NewStyles/js/woco.accordion.min.js"></script> 
   	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
	<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script> --%>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 



<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.fancybox.pack.js?v=2.1.5"></script> --%>
<script type="text/javascript">
jQuery(document).ready
(function($){
	$("#header").sticky({ topSpacing: 0 });
	jQuery.validator.addMethod("notEqual", function(value, element) {
		var status = true;
		$('[id^=parentEmail_]').each( function( index, el ){
			if(($( el ).val() == value) && $( el ).attr("id") != $(element).attr("id") ){
				status = false;
			}
		});
		  return this.optional(element) || status;
		}, "Please use unique email address.");
	
/* 	jQuery.validator.addMethod("notEqual2", function(value, element) {
		var status = true;
		$('email1').each( function( index, el ){
			if(($( el ).val() == value) && $( el ).attr("id") != $(element).attr("id") ){
				status = false;
			}
		});
		  return this.optional(element) || status;
		}, "Please use unique email address."); */
	
	/* $(".fancybox").fancybox(); */
	
	$.daisyNav();

});
</script>
	<script>
	$(".accordion").accordion();
</script>

<script type="text/javascript">


$(document).ready(function() {  
	
	$.validator.addMethod("nameRegex", function(value, element) {
        return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
    }, "Field must contain letters only.");
	
	jQuery.validator.addMethod("laxEmail", function(value, element) {
		if(value==$('#email1').val()){
			return false;
		}else{
			return true;
		}
		}, 'Please enter a new email address.');
	
    $('#parentSubscriptionForm').validate({
        errorElement: 'span', //default input error message container
        errorClass: 'help-block', // default input error message class
        focusInvalid: false, // do not focus the last invalid input
        ignore: "",
        rules: {

     	email1:{
        		required: true,
        		email:true
        	},
        	
     	name1:{
     		 required: true,
              maxlength : 20
        	},
     	name2:{
     		//required: true,
            maxlength : 20
        	},
     	email2:{
     		//required: true,
    		email:true
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
    
   
    
                	 
   });


function openShareInvite(){
	
	$.ajax({
	    type : 'POST',
	    url : '<%=request.getContextPath()%>/donor/getSubscriptionDetail',
	    success:function(result){
	    if(result.length <= 2){
	    	if(result.length != 0){
	    		$("#pendingInvitesMsg").text((2-result.length)+" Invite Left");
	    	}else{
	    		$("#pendingInvitesMsg").text("You can send invites to 2 users.");
	    	}
	    }else{
	    	$("#pendingInvitesMsg").text("");
	    }
	    if(result.length >= 2){
	    	$("#submitEmail").hide();
	    }
		    $.each(result,function(index,value){
		    	if(index==0){
		    		$("#name1").val(value.name1);
		    		$("#email1").val(value.email1);
		    		$("#name1").attr("readOnly","true");
		    		$("#email1").attr("readOnly","true");
		    		
		    	}
		    	if(index==1){
		    		$("#name2").val(value.name1);
		    		$("#email2").val(value.email1);
		    		$("#name2").attr("readOnly","true");
		    		$("#email2").attr("readOnly","true");
		    	}
		    	
		    });
	    }
		});
	
	
	
	$.fancybox({
		 'minWidth':200,
		 'maxWidth':600,
		 'padding':25,
		 'minHeight':300,
	     'autoScale': true,
	     'autoDimensions': true,
	     'centerOnScroll': true,
	     'href' : '#sendSubscriptionPopUp'
	  });
}

 $(document).on('click', '.fancybox-close', function () {
	 $("#parentSubscriptionForm")[0].reset();
	 $('#email1-error').text(" ");
	 $('#email2-error').text(" ");
	 $('#name1-error').text(" ");
	 $('#name1-error').text(" ");
	 
	  $("#sendRadioInviteForm")[0].reset();
	 
	 $('[id^=parentName_]').each( function( index, el ) {
			$( el ).text(" ");
			if(index>0){
				removeClassDetailsLast(0,index);
			}
			$('#'+el.id).removeClass('error');
		});
		$('[id^=parentEmail_]').each( function( index, el ) {
			$( el ).text(" ");
			$('#'+el.id).removeClass('error');
		}); 
	
		
}); 

function openRadioInvite(){
	
	$.fancybox({
		 'minWidth':250,
		 'maxWidth':600,
		 'padding':25,
		 'minHeight':300,
	     'autoScale': true,
	     'autoDimensions': true,
	     'centerOnScroll': true,
	     'href' : '#sendRadioInvitePopUp'
	  });
	
	
}

function addMoreClass(programId,index){
	var divId = index + 1;
	var htmlContents='<a title="Remove" onclick="removeClassDetails('+programId+','+ index + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a>';
	$($("#removeLast_"+programId+"_" + index + '')).empty();
	$($("#removeLast_"+programId+"_" + index + '')).html(htmlContents);
	$("#addMoreClass_"+programId).remove();
	$("#parentInfo_"+programId).append('<div id="divSection_'+programId+'_'+ divId + '">'+
			
    '<li><label>Enter Name</label><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
    '<input type="text" name="parentName_'+programId+'_'+ divId +'" placeholder="Enter Name"   class="ignore1" id="parentName_'+programId+'_'+ divId + '" /></div></div></div>'+
    '</li>'+
    '<li><div class="input_relative"><div class="input_add_logo width100"><label>Enter Email</label> <div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
    '<input type="text" name="parentEmail_'+programId+'_'+ divId +'" placeholder="Enter Email*" class="ignore1"  id="parentEmail_'+programId+'_'+ divId + '"/></div></div></div></div>'+//</li>'+
   // '<li><div class="input_relative"><div class="input_add_logo width-less"><div class="contact-row"><div class="outer-field-wrap">'+
   // '<div class="outer-field"><input placeholder="Comment" type="text" name="comments_'+programId+'_'+ divId +'" id="comments_'+programId+'_'+ divId +'" class="ignore1"/></div></div></div></div>'+
    '<div class="plusImg plus-pos" id="removeLast_'+programId+'_'+divId+'"><a style="margin: 0 10px 0 0;" onclick="removeClassDetailsLast('+programId+','+ divId +');" id="removeParent_'+programId+'">'+ 
    '<img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a><a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'">'+
    '<img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div>'+
    '</div></li><div class="contact-row" style="height: 10px;"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" id="programId_'+programId+'_'+ divId +'" name="programIds"/>'+
	'</div></div></div>');

}


function removeClassDetails(programId,index){
	$($("#divSection_"+programId+"_" + index + '')).remove();
	if($('[id^=removeLast_'+programId+'_]').length == 1){
		var divId = $('[id^=removeLast_'+programId+'_]').attr('id').replace('removeLast_'+programId+'_','');
		$('[id^=removeLast_'+programId+'_]').empty('');
		$('[id^=removeLast_'+programId+'_]').html('<a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a>');
	}

}

function removeClassDetailsLast(programId,index){
	var previous = index - 1;
	var htmlContents = '<a style="margin: 0 10px 0 0;" onclick="removeClassDetailsLast('+programId+','+ previous + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a><a onclick="addMoreClass('+programId+','+ previous +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a>';
	
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
			$($("#removeLast_"+programId+"_" + previous + '')).html('<a onclick="addMoreClass('+programId+','+ previous +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a>');
		}
    	if($('[id^=removeLast_'+programId+'_]').length == 1){
    		var divId = $('[id^=removeLast_'+programId+'_]').attr('id').replace('removeLast_','');
    		$('[id^=removeLast_'+programId+'_]').empty();
    		$('[id^=removeLast_'+programId+'_]').html('<a onclick="addMoreClass('+programId+','+ previous +');"  id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a>');
    	}
}

function sendingEmailToParents(){
	$("#sendRadioInviteForm").validate({ ignore: []});
	$("#sendRadioInviteForm").validate();

	$('[id^=parentName_]').each( function( index, el ) {
		var id  = '#'+el.id;
		//console.log($(id));
		//$(id).removeClass('error');
		
	    $( el ).rules('add', {
	    	required: true, 
    		//minlength : 10,
    		maxlength : 30
    		//digits	: true
    	});
	});
	$('[id^=parentEmail_]').each( function( index, el ) {
		var id  = '#'+el.id;
		//console.log($(id).val());
		//$(id).removeClass('error');
		
	    $( el ).rules('add', {
    	    required: true,
    	    email: true,
    	    /* emailAlreadyExist: true, */
    	    notEqual:true,
    	    remote: {
    	        url: '<%=request.getContextPath()%>/donor/checkParentInviteEmailExist',
    	        type: "post",
    	        data: {
    	          email: function() {
    	            return $(id).val();
    	          }
    	        }
    	    }
    	})
	    
	});

	
	if($("#sendRadioInviteForm").valid()){
		//alert("hiiii"+true);
		
		$('[id^=parentName_]').each( function( index, el ) {
			$( el ).attr('name',"parentName");
		});
		$('[id^=parentEmail_]').each( function( index, el ) {
			$( el ).attr('name',"parentEmail");
		});
		/* $('[id^=comments_]').each( function( index, el ) {
			$( el ).attr('name',"comments");
		}); */
		 $("#sendRadioInviteForm").submit();
		return true;
	}else{
		return false;
	}

}

function submitEmailFrom(){
	
/* 	if($('#email1').val().trim().length>0  && $('#email1').val()==$('#email2').val()){
		alert('you are entering same email again.');
		$('#email2').val("");
		 $('#name2').rules('add', {
		    	required: true, 
	    		//minlength : 10,
	    		maxlength : 30
	    		//digits	: true
	    	});
	}  */
	//alert($('#email1').val());
	 if($('#name2').val().trim().length>0){
		  $('#name2').rules('add', {
		    	required: true, 
	    		//minlength : 10,
	    		maxlength : 30
	    		//digits	: true
	    	});
		  $('#email2').rules('add', {
	    	    required: true,
	    	    email: true,
	    	    laxEmail:true
	    	    /* emailAlreadyExist: true, */
	    	});
		  
	    }
	 else if($('#email2').val().trim().length>0){
		 $('#name2').rules('add', {
		    	required: true, 
	    		//minlength : 10,
	    		maxlength : 30
	    		//digits	: true
	    	});
		  $('#email2').rules('add', {
	    	    required: true,
	    	    email: true,
	    	    laxEmail:true
	    	    /* emailAlreadyExist: true, */
	    	});
	 }
	 else{
		// alert('el');
	    	 $('#name2').rules('remove');
	    	 $('#email2').rules('remove');
	    }
	  
}

function openBestPracticePopUp(){
	 $.fancybox({
		 'minWidth':120,
 		 'padding':10,
 		 'minHeight':60,
		 //'autoScale': true,
	     //'autoDimensions': true,
	     'centerOnScroll': true,
 	     'href' : '#bestPracticePopUp'
 	   
 	  });
}

</script>
</body>



</html>
