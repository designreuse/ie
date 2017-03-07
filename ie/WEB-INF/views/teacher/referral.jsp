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
<title>Refer a Friend</title>
    <c:if test="${companyName eq '1'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery-anyslider.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
</head>

<body>
	<div class="wrapper">
	  <%@include file="header.jsp" %>
	  <!--<section class="slider-inner">
			<img src="images/browse-donation-header.jpg" alt="Slider" />
		</section>-->

		<section class="makeDonateSct">
			<div class="container">
			
        
         <div class="pracProgress_hdr">
            <h2>Refer a Friend</h2>
            <div class="green_line_btm"></div>

            </div>
				
				<div class="clr"></div>
			
			</div>
		</section>
        <section>
        <div class="container">
        	<div class="dev-form">
        	
        	<form:form  method="post" name="saveReferralEmailForm" modelAttribute="dtoReferralEmail" enctype="multipart/form-data" action="saveReferralEmail" id="saveReferralEmailForm" class="register-form" >
        	
        	<form:input type="hidden" path="userId" name="userId" id="userId"/>
        	
        	<div id="ReferInfo_${dtoReferralEmail.userId}">
    			<div class="dev-form-inner add-refer-main" id="divSection_${dtoReferralEmail.userId}_0">
    				<ul>
                    	<label>Refer To</label>
        				<li>
            				<input type="text"  placeholder="First Name" name="referFName_${dtoReferralEmail.userId}_0" id="referFName_${dtoReferralEmail.userId}_0">
            			</li>
            			<li>
            				<input type="text" placeholder="Last Name" name="referLName_${dtoReferralEmail.userId}_0" id="referLName_${dtoReferralEmail.userId}_0">
            			</li>
            			<li>
            				<input type="text" placeholder="Email Address" name="referEmail_${dtoReferralEmail.userId}_0" id="referEmail_${dtoReferralEmail.userId}_0">
            			</li>
                     </ul>
                     
                     <div class="add-refer" id="removeLast_${dtoReferralEmail.userId}_0">
                     	<a title="Add More" onclick="addMoreClass(${dtoReferralEmail.userId},0);" id="addMoreClass_${dtoReferralEmail.userId}">
                     	<img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image"></a>
                     </div>
    			</div>
    		</div>
     <p>
          <input type="button" value="SUBMIT" class="home_act_btn_2 fl" onClick="proceedToStepFour();"/>
          </p>
          </form:form> 
  </div>
  	<div class="thankyou_refer">
    	<h5>Thank You!</h5>
    	<p> We will extend your subscription by 10 days when any of your referral subscribes</p>
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
   <%-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script> --%> 
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.counterup.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/waypoints.min.js"></script> 
 <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script>

var emailStatus = false;
function emailAlreadyCheck(email){
	//var email = $("#email").val().trim();
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

    jQuery(document).ready(function( $ ) {
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });

                        $.validator.addMethod("emailAlreadyExist", function(value, element) {
                            return this.optional(element) || emailAlreadyCheck(value);
                        }, "Email already exists.");
                        $.validator.addMethod("nameRegex", function(value, element) {
                            return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
                        }, "Field must contain letters only.");
            			jQuery.validator.addMethod("notEqual", function(value, element) {
            				var status = true;
            				$('[id^=referEmail_]').each( function( index, el ){
            					if($( el ).val() == value  && $( el ).attr("id") != $(element).attr("id") ){
            						status = false;
            					}
            				});
            				  return this.optional(element) || status;
            				}, "Please use unique email address.");
                        
                        $('.saveReferralEmailForm').validate({
                            errorElement: 'span', //default input error message container
                            errorClass: 'help-block', // default input error message class
                            focusInvalid: false, // do not focus the last invalid input
                            //ignore: "",
                            rules: {
                            	referFName:{
                            		required: true,
                            		maxlength : 20
                            	},
                          
                            	referLName: {
                                    required: true,
                                   // nameRegex:true,
                                    maxlength : 20
                                },
                           

                                referEmail: {
                                    required: true,
                                    email: true,
                                    emailAlreadyExist: true
                                    //notEqual:true
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
    
    
    function addMoreClass(programId,index){
    	var divId = index + 1;
    	var htmlContents='<a title="Remove" onclick="removeClassDetails('+programId+','+ index + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a>';
    	$($("#removeLast_"+programId+"_" + index + '')).empty();
    	$($("#removeLast_"+programId+"_" + index + '')).html(htmlContents);
    	$("#addMoreClass_"+programId).remove();
    	$("#ReferInfo_"+programId).append('<div class="dev-form-inner add-refer-main" id="divSection_'+programId+'_'+ divId + '">'+
    			'<ul><label>Refer To</label><li><input type="text"  placeholder="First Name" name="referFName_'+programId+'_'+ divId + '" id="referFName_'+programId+'_'+ divId + '">'+
    			'</li><li><input type="text" placeholder="Last Name" name="referLName_'+programId+'_'+ divId + '" id="referLName_'+programId+'_'+ divId + '">'+
    			'</li><li><input type="text" placeholder="Email Address" name="referEmail_'+programId+'_'+ divId + '" id="referEmail_'+programId+'_'+ divId + '">'+
    			'</li></ul>'+     
        '<div class="add-refer" id="removeLast_'+programId+'_'+divId+'"><a style="margin: 0 10px 0 0;" onclick="removeClassDetailsLast('+programId+','+ divId +');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a><a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div>'+
        '</div></li>');

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
    
    
    function proceedToStepFour(){
		
		$("#saveReferralEmailForm").validate({ ignore: []});
		$("#saveReferralEmailForm").validate();

		$('[id^=referFName_]').each( function( index, el ) {
		    $( el ).rules('add', {
		    	required: true,
        		maxlength : 20
        		
	    	});
		});
		$('[id^=referLName_]').each( function( index, el ) {
		    $( el ).rules('add', {
		    	required: true,
		    	maxlength : 20
	    	});
		});
	
		$('[id^=referEmail_]').each( function( index, el ) {
		    $( el ).rules('add', {
	    	    required: true,
	    	    email: true,
	    	    emailAlreadyExist: true,
	    	    notEqual:true
	    	});
		});
		
		if($("#saveReferralEmailForm").valid()){
			//alert("hiiii"+true);
			
			$('[id^=referFName_]').each( function( index, el ) {
				$( el ).attr('name',"referFName");
			});
			$('[id^=referLName_]').each( function( index, el ) {
				$( el ).attr('name',"referLName");
			});
			$('[id^=referEmail_]').each( function( index, el ) {
				$( el ).attr('name',"referEmail");
			});
			
			
			 $("#saveReferralEmailForm").submit();
			return true;
		}else{
			return false;
		}
	
}
    
    
    
</script> 


</body>
</html>
