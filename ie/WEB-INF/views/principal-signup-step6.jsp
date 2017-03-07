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
                	<form:form action="saveClassesTemp" modelAttribute="dtoUser" method="post" id="saveSignupForm" class="register-form">
                	<input type="hidden" value="${schoolDetailTemp.schoolId}" name="schoolId">
                    	<div class="small-containor">
                    		<div class="new-started-grey">
                        	<div class="new-started-img">
                            	<c:if test="${schoolDetailTemp.promoCode != 'IEHOME2016'}">
                        	<img src="<%=request.getContextPath()%>/NewStyles/images/started-step100.png">
                        	</c:if>
                        	<c:if test="${schoolDetailTemp.promoCode == 'IEHOME2016'}">
                        	<img src="<%=request.getContextPath()%>/NewStyles/images/started-step4-100.png">
                        	</c:if>
                            </div>
                            <div class="new-started-head">
                            	<h3>ADMINISTRATOR SIGNUP</h3>
                                <p>Setup Teacher Accounts Here</p>
                            </div>
                        </div>
                        </div>
                        <div class="get-start-new-form">
                        	<div class="getstartForm_teacher">
                	<label class="start-new-label">Add Classes</label>
                    
					<!-- Adding classes Start -->
                    
                    <div class="school_setup_wrapper" id="progDetail">

							<!--misc tabs start-->
							<div class="misc_tabs">
								<div class="containerSmall">
								<div class="misc_content">
									<!--TAB 1 STARTS-->
									<div id="tab1">
									<c:forEach begin="1" end="${classCount}" varStatus="loop">
									<div class="content_setup background-none padding0none" id="programDiv_${loop.index}">
									<div class="getstartForm">
										<ul>
								 		<div id="parentInfo_${loop.index}">
										<div id="divSection_${loop.index}_0"> 
											<li>
												<div class="contact-row">
													<div class="outer-field-wrap ">
														<div class="outer-field">
														<input type="hidden" id="programId_${loop.index}_0" name="programIds" value="${schoolDetailTempProg}"/>
															<input value="A" type="hidden" name="className_${loop.index}_0" id="className_${loop.index}_0"/>
															<input placeholder="Teacher Name*" type="text" name="teacherName_${loop.index}_0" id="teacherName_${loop.index}_0"/>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="input_relative">
												<div class="input_add_logo">
												<div class="contact-row">
													<div class="outer-field-wrap ">
														<div class="outer-field">
															<input placeholder="Teacher Email*" type="text" name="teacherEmail_${loop.index}_0" id="teacherEmail_${loop.index}_0" class="ignore1"/>
														</div>
													</div>
												</div>
												</div>
												 <!-- <input type="button" class="input_abs_plus">  -->
												 <c:if test="${loop.index ne 1}">
												 
												 <div class="plusImg" id="removeLast_${loop.index}_0">
												 	<a  title="Remove" onclick="removeClassDetails(${loop.index},0);" id="removeParent_1"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon.png" alt="Image" /></a>
												 </div>
												 </c:if>
												</div>
											</li>
											</div>
										</div>
										</ul>
									</div>
								</div>
							</c:forEach>
						</div>
									<!--TAB 1 ENDS-->
			<div class="getstartForm_captcha" >
				<ul><li>
							<div class="contact-row">
								<span id="capCode" class="captcha-txt noselect">${captchaCode}</span><a class="refresh-captcha" title="Generate new text" onclick="updateCode();"> </a>
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Type same text" name="cCode" id="cCode"/>
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
							<!--misc tabs end-->
</div>
                    <!-- Adding Classes End -->
</div>
 </div>
 <div class="back-next-btn">
 	<ul>
    	<li><a onclick="backButtonSubmit(${schoolDetailTemp.schoolId})">Back</a></li>
        	<li>
            	<input type="button" onclick="addClasses();" value="Done">
                	<!-- <a href="javascript:;">Next</a> -->
       	</li>
    </ul>
 </div>
	<input type="hidden" id="isPilot" name="isPilot" value="0">
		</form:form>
		</div>
	</div>
</div>
</section>
</div>
	<form action="saveProgramTemp" id="saveProgramTemp" method="post">
		<input type="text" id="isPilotYes" name="isPilotYes" value="1">
		<input type="text" name="id" id="id">
	</form>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
<script	src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"	type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
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
		    	    emailAlreadyExistForTeacher: true,
		    	    //notEqual:true
		    	});
			});
			if($("#saveSignupForm").valid()){
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
		
		$("#header").sticky({ topSpacing: 0 });
		
		$("#login").click(function(e) {
	        $(".login_panel").toggle();
	        e.stopPropagation();
	    });
		
        $.validator.addMethod("emailAlreadyExist", function(value, element) {
            return this.optional(element) || emailAlreadyCheck(value);
        }, "Email already exists.");
        $.validator.addMethod("emailAlreadyExistForTeacher", function(value, element) {
            return this.optional(element) || emailAlreadyCheckForTeacher(value);
        }, "Email already exists with another role.");
        $.validator.addMethod("nameRegex", function(value, element) {
            return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
        }, "Field must contain letters only.");
        $.validator.addMethod("cCodeValid", function(value, element) {
            return this.optional(element) || cCodeValid(value);
        }, "Please re-enter given text");
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
            
            rules: {
                cCode:{
             		required:true,
             		cCodeValid: true
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
		   $('#programDiv_'+programId).show();
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
		   var sectionLength = $('[id^=divSection_'+programId+'_]').length;
		   var divId = 0;
				$("#parentInfo_"+programId).html('<div id="divSection_'+programId+'_'+ divId + '">'+
						'<li><div class="contact-row"><div class="outer-field-wrap "><div class="outer-field"><input type="hidden" id="programId_'+programId+'_'+ divId +'" name="programIds"/>'+
						'<input type="text" name="className_'+programId+'_'+ divId + '" placeholder="Class*" id="className_'+programId+'_'+ divId + '" onchange="setProgramId(this.value,'+ divId + ','+programId+');"/></div></div></div></li><br/>'+
			    '<li><div class="contact-row"><div class="outer-field-wrap "><div class="outer-field">'+
			    '<input type="text" name="teacherName_'+programId+'_'+ divId + '" placeholder="Teacher Name*"  id="teacherName_'+programId+'_'+ divId + '" /></div></div></div></li>'+
			    '<li><div class="input_relative"><div class="input_add_logo"><div class="contact-row"><div class="outer-field-wrap "><div class="outer-field">'+
			    '<input type="text" name="teacherEmail_'+programId+'_'+ divId + '" placeholder="Teacher Email*"  id="teacherEmail_'+programId+'_'+ divId + '"/></div></div></div></div>'+
			    '<div class="plusImg" id="removeLast_'+programId+'_'+divId+'"><a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a></div>'+
			    '</div></li>');
		   $('#programDiv_'+programId).hide();
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
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
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
    $(window).load(function(){
		
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
});
   
</script>
<script type="text/javascript">
function addMoreClass(programId,index){
	var divId = index + 1;
	var htmlContents='<a title="Remove" onclick="removeClassDetails('+programId+','+ index + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon.png" alt="Image" /></a>';
	$($("#removeLast_"+programId+"_" + index + '')).empty();
	$($("#removeLast_"+programId+"_" + index + '')).html(htmlContents);
	$("#addMoreClass_"+programId).remove();
	$("#parentInfo_"+programId).append('<div id="divSection_'+programId+'_'+ divId + '">'+
			'<li><div class="contact-row"><div class="outer-field-wrap "><div class="outer-field"><input type="hidden" id="programId_'+programId+'_'+ divId +'" name="programIds"/>'+
			'<input type="text" name="className_'+programId+'_'+ divId + '" placeholder="Class*" id="className_'+programId+'_'+ divId + '" onchange="setProgramId(this.value,'+ divId + ','+programId+');"/></div></div></div></li><br/>'+
    '<li><div class="contact-row"><div class="outer-field-wrap "><div class="outer-field">'+
    '<input type="text" name="teacherName_'+programId+'_'+ divId + '" placeholder="Teacher Name*"  id="teacherName_'+programId+'_'+ divId + '" /></div></div></div></li>'+
    '<li><div class="input_relative"><div class="input_add_logo"><div class="contact-row"><div class="outer-field-wrap "><div class="outer-field">'+
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
function backButtonSubmit(tempSchoolId){
	$("#id").val(tempSchoolId);
	$("#saveProgramTemp").submit();
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
</script>

</body>
</html>