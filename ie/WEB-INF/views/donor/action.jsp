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
<title>Act now</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<%-- <link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/> --%>
<style type="text/css">
.fancybox-inner{height: auto !important; overflow: hidden !important;}
</style>
</head>

<body>
<div class="wrapper">
   <%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--inner_header starts-->
        <!--<div class="inner_header"> <img src="images/browse-donation-header.jpg"  alt=""/> </div>-->
        
        <!--about_us starts-->
        <div class="about_us">
            <div class="content_inner">
                <div class="pracProgress_hdr">
                    <h2>Action</h2>
                    <div class="green_line_btm"></div>
                </div>
               <c:if test="${userType ne 'share' && userType ne 'family'}">         
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
            </c:if>      
        <%--         <div class="act_detail_img">
                <img src="<%=request.getContextPath()%>/NewStyles/images/act.jpg"  alt=""/> 
                </div> --%>
               	
                <div class="act-cntnt">
                	<div class="left-act-cntnt">
                    	<!-- <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt varius sollicitudin. Sed non auctor dolor. Aenean nec mauris ac velit hendrerit blandit porttitor elementum nisl. Phasellus fermentum arcu sodales elementum dictum. Integer efficitur blandit sem condimentum feugiat.</p> -->
                        
                      <div class="steps-act">
                        	<ul>
                        		<li><h3 class="act-step-1">Tell Your Friends About Inner Explorer</h3></li>
                                <li>
                                	<div class="act-sharing-new">
                                    	<a href="http://www.linkedin.com/shareArticle?mini=true&url=${baseURL}" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;" title="Linkedin"><img src="<%=request.getContextPath()%>/NewStyles/images/act-link.png"></a>
                                        <a href="http://www.facebook.com/sharer.php?u=${baseURL}" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;" title="Facebook"><img src="<%=request.getContextPath()%>/NewStyles/images/act-fb.png"></a>
                                        <a href="https://twitter.com/share?url=${baseURL}" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;" title="Twitter"><img src="<%=request.getContextPath()%>/NewStyles/images/act-twt.png"></a>
                                        <%-- <a href="http://pinterest.com/pin/create/button/?url=http://innerexplorer.org&media=https://www.innerexplorer.org/wp-content/uploads/2014/12/inner-explorer-mindful-awareness-in-schools.jpg&description=Compass" class="pin-it-button" count-layout="none" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;" title="Pinterest"><img src="<%=request.getContextPath()%>/NewStyles/images/act-pin.png"></a> --%>
                                        <a href="http://smile.amazon.com/ref=smi_ge_rl_rd_gw?_encoding=UTF8&newts=1&pldnNewCustomer=1&ref_=smi_ge_rsr_btnr1_setch#" title="Amazon Smile" target="_blank"><img src="<%=request.getContextPath()%>/NewStyles/images/amazon.png"></a>
                                    </div>
                                </li>
                            	<li><h3 class="act-step-2">Follow us on Social Media Channels</h3></li>
                            	 <li>
                                	<div class="act-sharing-new">
                                    	<a href="https://www.linkedin.com/company/inner-explorer-inc-" target="_blank" title="Linkedin"><img src="<%=request.getContextPath()%>/NewStyles/images/act-link.png"></a>
                                        <a href="https://www.facebook.com/InnerExplorer" target="_blank" title="Facebook"><img src="<%=request.getContextPath()%>/NewStyles/images/act-fb.png"></a>
                                        <a href="https://twitter.com/Inner_Explorer" target="_blank" title="Twitter"><img src="<%=request.getContextPath()%>/NewStyles/images/act-twt.png"></a>
                                        <%-- <a href="http://pinterest.com/pin/create/button/?url=http://innerexplorer.org&media=https://www.innerexplorer.org/wp-content/uploads/2014/12/inner-explorer-mindful-awareness-in-schools.jpg&description=Compass" class="pin-it-button" count-layout="none" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;" title="Pinterest"><img src="<%=request.getContextPath()%>/NewStyles/images/act-pin.png"></a> --%>
                                        <a href="http://smile.amazon.com/ref=smi_ge_rl_rd_gw?_encoding=UTF8&newts=1&pldnNewCustomer=1&ref_=smi_ge_rsr_btnr1_setch#" title="Amazon Smile" target="_blank"><img src="<%=request.getContextPath()%>/NewStyles/images/amazon.png"></a>
                                    </div>
                                </li>
                            	<!-- <li><h3 class="act-step-3">Take Action, Join the Revolution</h3></li> -->
                          </ul>
                          
                    <%--       <div>
                          <span>Search near me(zipcode): </span>
                           <input type="text" name="newZip" id="newZip" value="${zipCode}" onchange="getZipLatLong();" style="width:60px; border: 1px solid;" title="Add zipcode"/> 
                          <img src="<%=request.getContextPath()%>/NewStyles/images/search.png"  alt=""/>
                          </div> --%>
                          
                        </div>
                 
<%-- 				
<section class="actnow-tbl">
  	<div class="ur_grid ur_grid_pop p-font14">
  	
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
    <thead>
    	<tr>
        	<th><strong>School name</strong></th>
        	<th><strong>Favorite</strong></th>
        	<!--<th width="25%"><strong>Track</strong></th>-->
        	<th class="txtcenter_align"><strong>action</strong></th>
    	</tr>
    	</thead>
    	<tbody id="schoolsList">

               
	</tbody>
</table>

<div id="adminLoader" align="center" style="margin-top: 20px; display: none;"> <img src="<%=request.getContextPath()%>/NewStyles/images/adminLoader.gif"  alt=""/> </div>        
        </div>
  </section> --%>
				
				
                    </div>
                    
                    <div class="rght-act-cntnt">
                    	<!-- <h3>Video of the Day</h3> -->
                  <!--  	<div class="act-video">
                        	
                        	<iframe width="402" height="303" src="https://www.youtube.com/embed/XyP8h7rkp38?enablejsapi=1&playerapiid=myvideo&version=3&rel=0" frameborder="0" allowfullscreen=""></iframe>
                        	
                        </div> -->
                        <div class="latest-twts">
                        	<h3>Latest Tweets</h3>
                        	
                        	
                        	<a class="twitter-timeline" href="https://twitter.com/Inner_Explorer" data-widget-id="699308146817372160">Tweets by @Inner_Explorer</a>
                        	
                        	
                        	<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?
                        			'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";
                        			fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
                        	
                        	
                        	
                        	
                            <%-- <ul>
                            	<li>
                                	<img src="<%=request.getContextPath()%>/NewStyles/images/twt-1.png">
                                    <h4>@ Rexona Kumi<span>30 min ago</span></h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt <span>#varius sollicitudin.</span></p>
                                </li>
                                <li>
                                	<img src="<%=request.getContextPath()%>/NewStyles/images/twt-2.png">
                                    <h4>@ Tina Braxton<span>30 min ago</span></h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt <span>#varius sollicitudin.</span></p>
                                </li>
                            	<li>
                                	<img src="<%=request.getContextPath()%>/NewStyles/images/twt-1.png">
                                    <h4>@ Rexona Kumi<span>30 min ago</span></h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt <span>#varius sollicitudin.</span></p>
                                </li>
                                <li>
                                	<img src="<%=request.getContextPath()%>/NewStyles/images/twt-2.png">
                                    <h4>@ Tina Braxton<span>30 min ago</span></h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt <span>#varius sollicitudin.</span></p>
                                </li>
                                <li>
                                	<img src="<%=request.getContextPath()%>/NewStyles/images/twt-3.png">
                                    <h4>@ Judith Scott<span>30 min ago</span></h4>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt <span>#varius sollicitudin.</span></p>
                                </li>
                            </ul> --%>
                        </div>
                    </div>
                    
                </div> 
                
             
               
            </div>
        </div>
        <!--about_us ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends--> 
</div>
<form action="signup" method="GET" id="subscriptionForm">
    <input type="hidden" name="planId" id="planId"/>
     
</form>

<form action="volunteer" method="POST" id="volunteerForm">
    <input type="hidden" name="schoolId" id="schoolId"/>
     
</form>

<form action="donate" method="POST" id="donateForm">
    <input type="hidden" name="campaignId" id="campaignId"/>
     
</form>

<div id="sendRadioInvitePopUp" style="display: none" class="getstartForm_teacher margin-top-zero">
			<h3 class="migChngPass pophdr">Share The Radio</h3>
		<form:form  method="post" id="sendRadioInviteForm" modelAttribute="dtoLetterToParent"  action="sendParentRadioInvite" class="register-form" >
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
															<input placeholder="Enter Name" type="text" name="parentName_0_0" id="parentName_0_0" class="ignore1"/>
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
															<input placeholder="Enter Email*" type="text" name="parentEmail_0_0" id="parentEmail_0_0" class="ignore1"/>
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
															<input placeholder="Enter Name" type="text" name="parentName_0_1" id="parentName_0_1" class="ignore1"/>
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
															<input placeholder="Enter Email*" type="text" name="parentEmail_0_1" id="parentEmail_0_1" class="ignore1"/>
														</div>
													</div>
													
												</div>
												<div class="plusImg plus-pos" id="removeLast_0_0">
										        <a  title="Add More" onclick="addMoreClass(0,2);" id="addMoreClass_0">
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
	<div id="emailDiv"></div>
	
	
	<div id="sendSubscriptionPopUp" style="display: none" class="getstartForm_teacher margin-top-zero">
		<h3 class="migChngPass pophdr">Share Home Edition</h3>
		<form:form action="saveSubscriptionParent1" id="parentSubscriptionForm" modelAttribute="dtoParentInvite" name="parentSubscriptionForm" method="post" class="register-principal">
		
		<h3 class="migChngPass popsubhdr" id="pendingInvitesMsg"></h3>
			<ul id="inviteDetail">
               <c:forEach var="homeEdiShare" begin="0" end="${parentHomeEditionShare-1}">
               <li>
               <label>Enter Name</label>
               		<div class="contact-row">
               			<div class="outer-field-wrap">
							<div class="outer-field">
								<input type="text" placeholder="Enter Name" id="name_${homeEdiShare}" name="name_${homeEdiShare}">
							</div>
						</div>
					</div>
				</li>
				<li>
               <label>Enter Email</label>
               		<div class="contact-row">
               			<div class="outer-field-wrap">
							<div class="outer-field">
								<input type="text" placeholder="Enter Email" id="email_${homeEdiShare}" name="email_${homeEdiShare}">
							</div>
						</div>
					</div>
				</li>
				</c:forEach>
				<!-- <li>
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
				</li> -->
              </ul>
              
			<input type="submit" value="SEND INVITE" id="submitEmail" class="change_trackbtn_qus" onclick="submitEmailFrom();">
		</form:form>
	</div>


<%-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script> --%> 
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>  
   <%@include file="../footer.jsp" %>
   <script src="<%=request.getContextPath()%>/NewStyles/js/woco.accordion.min.js"></script> 
   	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>

<script>
jQuery(document).ready
(function($){

	$("#header").sticky({ topSpacing: 0 });
	//$("#newZip").focus();
	/* $.daisyNav(); */
	
	
	 $.validator.addMethod("emailAlreadyExist", function(value, element) {
          return emailAlreadyCheck(value);
     }, "Invite already sent to this mail address.");
        
	jQuery.validator.addMethod("notEqual", function(value, element) {
		var status = true;
		$('[id^=parentEmail_]').each( function( index, el ){
			if(($( el ).val() == value) && $( el ).attr("id") != $(element).attr("id") ){
				status = false;
			}
		});
		  return this.optional(element) || status;
		}, "Please use unique email address.");
	
	jQuery.validator.addMethod("notEqualHomeE", function(value, element) {
		var status = true;
		$('[id^=email_]').each( function( index, el ){
			if(($( el ).val() == value) && $( el ).attr("id") != $(element).attr("id") ){
				status = false;
			}
		});
		  return this.optional(element) || status;
		}, "Invite already sent on this email.");
	
	
	
  
	
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
	
	
	
});

function emailAlreadyCheck(value){
	var email = value;
	var url = '<%=request.getContextPath()%>';
	$.ajax({
		url : url+'/donor/checkParentInviteEmailExist',
		data:{email:email},
		method : 'POST',
		async:false,
		success : function(result) {
			var emailStatus;
			if(result == false){
				//alert('hai');
				$('#emailDiv').addClass('existClass');
				 if($('#emailDiv').hasClass('notExistClass')){
				   $('#emailDiv').removeClass('notExistClass');
				 }
			}
			else{
				//alert('nai hai');
				$('#emailDiv').addClass('notExistClass');
				if($('#emailDiv').hasClass('existClass')){
					   $('#emailDiv').removeClass('existClass');
					 }
			}
		}
	});

	if($('#emailDiv').hasClass('existClass')){
		return false;
	}else if($('#emailDiv').hasClass('notExistClass')){
		return true;
	}else{
		//alert('nnaaiii');
		return true;
	}
	
}

/* function submitVolunteerForm(schoolId){
	$("#schoolId").val(schoolId);
	$("#volunteerForm").submit();
}

function submitDonateForm(campaignId){
	$("#campaignId").val(campaignId);
	$("#donateForm").submit();
} */


function openShareInvite(){
	var sysShareCount = ${parentHomeEditionShare};
	$.ajax({
	    type : 'POST',
	    url : '<%=request.getContextPath()%>/donor/getSubscriptionDetail',
	    success:function(result){
	    if(result.length <= sysShareCount){
	    	if(result.length != 0){
	    		$("#pendingInvitesMsg").text((sysShareCount-result.length)+" Invite Left");
	    	}else{
	    		$("#pendingInvitesMsg").text("You can send invites to "+sysShareCount+" users.");
	    	}
	    }else{
	    	$("#pendingInvitesMsg").text("");
	    }
	    if(result.length >= sysShareCount){
	    	$("#submitEmail").hide();
	    }
		    $.each(result,function(index,value){
		    	$("#name_"+index).val(value.name);
		    	$("#email_"+index).val(value.email);
		    	$("#name_"+index).attr("readOnly","true");
	    		$("#email_"+index).attr("readOnly","true");
		    	/* if(index==0){
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
		    	} */
		    	
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


function submitEmailFrom(){
	
	$("#parentSubscriptionForm").validate({ ignore: []});
	$("#parentSubscriptionForm").validate();
	
	$('[id^=name_]').each( function( index, el ) {
		$('[id^=email_]').each( function( index1, el1 ) {
			if(index ==  index1 && $(el1).val() != ''){
				$( el ).rules('add', {
		    	    required: true ,
		    	    maxlength:40
		    	});
			}
		});
	});
	$('[id^=email_]').each( function( index, el ) {
		$('[id^=name_]').each( function( index1, el1 ) {
			if(index ==  index1 && $(el1).val() != ''){
			    $( el ).rules('add', {
		    	    required: true,
		    	    email: true,
		    	    notEqualHomeE:true
		    	    
		    	    //notEqual:true
		    	});
			}
		});
	});
	if($("#parentSubscriptionForm").valid()){
		
		$('[id^=name_]').each( function( index, el ) {
			$( el ).attr('name',"name");
		});
		$('[id^=email_]').each( function( index, el ) {
			$( el ).attr('name',"email");
		});
		$("#parentSubscriptionForm").submit();
		return true;
	}else{
		return false;
	}
	
	
		/*  if($('#name2').val().trim().length>0){
			  $('#name2').rules('add', {
			    	required: true, 
		    		maxlength : 30
		    	});
			  $('#email2').rules('add', {
		    	    required: true,
		    	    email: true,
		    	    laxEmail:true
		    	});
			  
		    }
		 else if($('#email2').val().trim().length>0){
			 $('#name2').rules('add', {
			    	required: true, 
		    		maxlength : 30
		    	});
			  $('#email2').rules('add', {
		    	    required: true,
		    	    email: true,
		    	    laxEmail:true
		    	});
		 }
		 else{
		    	 $('#name2').rules('remove');
		    	 $('#email2').rules('remove');
		    } */
		  
	}


function sendingEmailToParents(){
	$("#sendRadioInviteForm").validate({ ignore: []});
	$("#sendRadioInviteForm").validate();

	$('[id^=parentName_]').each( function( index, el ) {
		var id  = '#'+el.id;
		//console.log($(id));
		//$(id).removeClass('error');
		if(id != '#parentName_0_1'){
	    $( el ).rules('add', {
	    	required: true, 
    		//minlength : 10,
    		maxlength : 30
    		//digits	: true
    	});
		}
		
		else if(id == '#parentName_0_1'){
			if($('#parentName_0_1').val().trim().length>0){
				
				$('#parentName_0_1').rules('add', {
					required: true,
		    		maxlength : 30
		    	});
				
				$('#parentEmail_0_1').rules('add', {
			    	   required: true,
			    	    email: true,
			    	    notEqual:true,
			    	    emailAlreadyExist:true 
			    	});
				
			}
			else if($('#parentEmail_0_1').val().trim().length>0){
				$('#parentEmail_0_1').rules('add', {
			    	   required: true,
			    	    email: true,
			    	    notEqual:true,
			    	    emailAlreadyExist:true 
			    	})
				
			
				$('#parentName_0_1').rules('add', {
		    	    required: true,
		    	    maxlength : 30
		    	});
			}
			else{
				 $('#parentName_0_1').rules('remove');
				 $('#parentEmail_0_1').rules('remove');
			}
			
		}
		else{
			 $('#parentName_0_1').rules('remove');
			 $('#parentEmail_0_1').rules('remove');
		}
	});
	$('[id^=parentEmail_]').each( function( index, el ) {
		var id  = '#'+el.id;
		//console.log(id);
		//$(id).removeClass('error');
		if(id != '#parentEmail_0_1'){
	    $( el ).rules('add', {
    	    required: true,
    	    email: true,
    	    notEqual:true,
    	    emailAlreadyExist:true 
    	});
		}
		 else if(id == '#parentEmail_0_1' && $(id).val().trim().length>0){
			 $( el ).rules('add', {
		    	    required: true, 
		    	    email: true,
		    	    notEqual:true,
		    	    emailAlreadyExist:true 
		    	})
		} 
	    
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
</script>
</body>
</html>
