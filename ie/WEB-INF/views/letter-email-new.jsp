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
<title>Notification Settings</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">	
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
</head>

<body>
	<div class="wrapper">
	<section class="makeDonateSct mtop-5">
		<div class="containerSmall">
         <div class="pracProgress_hdr">
         	<div class="radio-logo">
            	<a href="javascript:;"><img src="<%=request.getContextPath()%>/NewStyles/images/logo-radio.png"></a>
            </div>
		<h3 class="teachr_dsh bdr-btm-none">Include my following email addresses and phone number
to receive notification of a live session</h3>
				<div class="clr"></div>
				<div class="check-select-out">
						<form:form  method="post" modelAttribute="dtoLetterToParent" enctype="multipart/form-data" action="saveLetterEmailparent111" id="saveSignupForm" class="register-form" >
                	<div class="parent-dash-out notification-receiving">
                    	<div class="notf-form">
                    		<div class="mail-section">
                            <div id="parentEmail_${dtoLetterToParent.letterToParentId}">
								<div id="divEmail_${dtoLetterToParent.letterToParentId}_0">    
                                <div class="contact-row">
                                	<label>Enter Email</label>
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" placeholder="Email Address" name="parentEmail" id="parentEmail_${dtoLetterToParent.letterToParentId}_0"/>
										</div>
									</div>
                                	<div class="add-child">
                                   		<div id="removeLast_${dtoLetterToParent.letterToParentId}_0">
                                   		<a onclick="addMoreEmail(${dtoLetterToParent.letterToParentId},0);" id="addMoreEmail_${dtoLetterToParent.letterToParentId}"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png"></span>Add another Email</a>
                                   		</div>
                                	</div>
								</div>
                            </div>
                           </div>
                            </div>
                            <div class="number-section">
                                <div id="parentMobile_${dtoLetterToParent.letterToParentId}">
								<div id="divMobile_${dtoLetterToParent.letterToParentId}_0">   
                                <div class="contact-row">
                                	<label>Enter Phone Number</label>
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" placeholder="Phone Number" name="parentMobile" id="parentMobile_${dtoLetterToParent.letterToParentId}_0"/>
										</div>
									</div>
                                	<div class="add-child">
                                   		<div id="removeLast_${dtoLetterToParent.letterToParentId}_0">
                                   		<a onclick="addMoreMobile(${dtoLetterToParent.letterToParentId},0);" id="addMoreClass_${dtoLetterToParent.letterToParentId}"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png"></span>Add another Phone Number</a>
                                   		</div>
                                	</div>
								</div>
                            </div>
                            </div>
                            </div>
                            <div class="btns-outer">
                            <input type="hidden" value="${dtoLetterToParent.letterToParentId}" name="letterToParentId" id="letterToParentId">
					<input type="button" value="SUBMIT" class="submit-btn "onclick="proceedToStepFour();" />
				</div>
                        </div>                     
                    </div>
                    </form:form>
                </div>
            </div>
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
   <script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
	});
	</script>
	
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>

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
<script>
function changeImage() {
    var image = document.getElementById('myImage');
    if (image.src.match("bulbon")) {
        image.src = "<%=request.getContextPath()%>/NewStyles/images/Grey-Small.png";
    } else {
        image.src = "<%=request.getContextPath()%>/NewStyles/images/Green-Small.gif";
    }
}


function addMoreEmail(programId,index){
	var divId = index + 1;
	var htmlContents='<a title="Remove" onclick="removeClassDetails('+programId+','+ index + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon.png" alt="Image" /></a>';
	$($("#removeLast_"+programId+"_" + index + '')).empty();
	$($("#removeLast_"+programId+"_" + index + '')).html(htmlContents);
	$("#addMoreClass_"+programId).remove();
	$("#parentEmail_"+programId).append('<div id="divEmail_'+programId+'_'+ divId + '">'+
			'<div class="contact-row"><label>Enter Email</label><div class="outer-field-wrap"><div class="outer-field"><input type="text"  placeholder="Email Address" name="parentEmail" id="parentEmail_'+programId+'_'+ divId +'" />'+
			'</div></div></div>'+
    '<div class="add-child" id="removeLast_'+programId+'_'+divId+'"><a onclick="removeClassEmailLast('+programId+','+ divId +');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon.png" alt="Image" /></a><a onclick="addMoreEmail('+programId+','+ divId +');" id="addMoreEmail_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a></div>'+
    '</div>');

}

function addMoreMobile(programId,index){
	var divId = index + 1;
	var htmlContents='<a title="Remove" onclick="removeClassDetails('+programId+','+ index + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon.png" alt="Image" /></a>';
	$($("#removeLast_"+programId+"_" + index + '')).empty();
	$($("#removeLast_"+programId+"_" + index + '')).html(htmlContents);
	$("#addMoreClass_"+programId).remove();
	$("#parentMobile_"+programId).append('<div id="divMobile_'+programId+'_'+ divId + '">'+
			'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" id="programId_'+programId+'_'+ divId +'" name="programIds"/>'+
			'</div></div></div></li><br/>'+
    '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
    '<input type="text" name="parentMobile_'+programId+'_'+ divId +'" placeholder="Parent Mobile*"  class="ignore1" id="parentMobile_'+programId+'_'+ divId + '" /></div></div></div></li>'+
    '<li><div class="input_relative"><div class="input_add_logo"><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
    '<input type="text" name="parentEmail_'+programId+'_'+ divId +'" placeholder="Parent Email*" class="ignore1"  id="parentEmail_'+programId+'_'+ divId + '"/></div></div></div></div>'+
    '<div class="plusImg" id="removeLast_'+programId+'_'+divId+'"><a onclick="removeClassMobileLast('+programId+','+ divId +');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon.png" alt="Image" /></a><a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a></div>'+
    '</div></li>');

}

function removeEmailDetails(programId,index){
	$($("#divEmail_"+programId+"_" + index + '')).remove();
	if($('[id^=removeLast_'+programId+'_]').length == 1){
		var divId = $('[id^=removeLast_'+programId+'_]').attr('id').replace('removeLast_'+programId+'_','');
		$('[id^=removeLast_'+programId+'_]').empty('');
		$('[id^=removeLast_'+programId+'_]').html('<a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a>');
	}

}

function removeMobileDetails(programId,index){
	$($("#divMobile_"+programId+"_" + index + '')).remove();
	if($('[id^=removeLast_'+programId+'_]').length == 1){
		var divId = $('[id^=removeLast_'+programId+'_]').attr('id').replace('removeLast_'+programId+'_','');
		$('[id^=removeLast_'+programId+'_]').empty('');
		$('[id^=removeLast_'+programId+'_]').html('<a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a>');
	}

}

function removeEmailDetailsLast(programId,index){
	var previous = index - 1;
	var htmlContents = '<a onclick="removeEmailDetailsLast('+programId+','+ previous + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon.png" alt="Image" /></a><a onclick="addMoreClass('+programId+','+ previous +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a>';
	
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

function removeMobileDetailsLast(programId,index){
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

function proceedToStepFour(){
	
	$("#saveSignupForm").validate({ ignore: []});
	$("#saveSignupForm").validate();

	$('[id^=parentMobile_]').each( function( index, el ) {
	    $( el ).rules('add', {
	    	required: true,
    		minlength : 10,
    		maxlength : 30
    		//digits	: true
    	});
	});
	$('[id^=parentEmail_]').each( function( index, el ) {
	    $( el ).rules('add', {
    	    required: true,
    	    email: true
    	    /* emailAlreadyExist: true, */
    	    //notEqual:true
    	});
	});

	
	if($("#saveSignupForm").valid()){
		//alert("hiiii"+true);
		
		$('[id^=parentMobile_]').each( function( index, el ) {
			$( el ).attr('name',"parentMobile");
		});
		$('[id^=parentEmail_]').each( function( index, el ) {
			$( el ).attr('name',"parentEmail");
		});
		
		
		 $("#saveSignupForm").submit();
		return true;
	}else{
		return false;
	}

}
</script>
</body>
</html>
  