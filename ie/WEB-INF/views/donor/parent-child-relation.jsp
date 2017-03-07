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
<title>Experience</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
</head>

<body>
	<div class="wrapper">
	  <%@include file="header.jsp" %>
	  
	  <!--<section class="slider-inner">
			<img src="images/browse-donation-header.jpg" alt="Slider" />
		</section>-->

		<section class="makeDonateSct mtop-5">
			<div class="container">
         		<div class="pracProgress_hdr">
            		<h2>Parent Teacher Experience</h2>
            		<div class="green_line_btm"></div>
					<div class="teach_dash_update"><h3 class="teachr_dsh bdr-btm-none">Start your Inner Explorer experience today</h3>
               		</div>
            	</div>
			</div>
		</section>
        <section class="home-edition-dshbd">
        	<div class="container">
            	<p class="school-hd">IE School</p>
            	<div class="overall-dashbd">
                	<div class="experience-main">
                    	<ul>
                    	<c:set var="ieTeacher" value="0"></c:set>
                    	<c:forEach var="listDtoSchool" items="${listDtoSchool}">
                    	
                    	<c:if test="${listDtoSchool.teacherId ne '0'}">
                    	<form:form  method="post" modelAttribute="dtoLetterToParent" enctype="multipart/form-data" action="saveEmailReference" id="saveSignupForm_${listDtoSchool.teacherId}" class="register-form" >
                    	<c:set var="ieTeacher" value="${ieTeacher+1}"></c:set>
                    		<li>
                            	<div class="school-info-up">
                                	<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${listDtoSchool.schoolLogo}">
                                    <p>${listDtoSchool.schoolName}</p>
									<p>${listDtoSchool.className}</p>
									<p>${listDtoSchool.name}</p>
                                </div>
                                <div class="check-mail">
                                <c:if test="${listDtoSchool.letterStatus eq 'Y'}">
                                	<input type="checkbox" name="group2" value="Home Edition" id="check_${listDtoSchool.teacherId}" onchange="hideEmailMobileDetail(${listDtoSchool.teacherId},${listDtoSchool.classId},'check_${listDtoSchool.teacherId}');" checked> <label  for="check-1">Send Email/Phone Notification</label>
                                	         <div class="notf-form" id="addEmailPhone_${listDtoSchool.teacherId}" >
<%--                     		<div class="mail-section">
                                <div class="contact-row">
                                	<label>Enter Email</label>
									<div class="outer-field-wrap">
										<div class="outer-field width-less">
											<input type="text" placeholder="Email Address" />
										</div>
									</div>
                                	<div class="add-child">
                                   		<a href="javascript:;"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png"></span>Add another Child</a>
                                	</div>
								</div>
                            </div>
                            <div class="number-section">
                                <div class="contact-row">
                                	<label>Enter Phone Number</label>
									<div class="outer-field-wrap">
										<div class="outer-field width-less">
											<input type="text" placeholder="Phone Number" />
										</div>
									</div>
                                	<div class="add-child">
                                   		<a href="javascript:;"><span><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png"></span>Add another Phone Number</a>
                                	</div>
								</div>
                            </div> --%>
									<div class="mail-section">
										<ul>
										<div id="parentInfo_${listDtoSchool.teacherId}">
										<div id="divSection_${listDtoSchool.teacherId}_0">
											<li>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Parent Mobile*" type="text" name="parentMobile" id="parentMobile_${listDtoSchool.teacherId}_0" class="ignore1"/>
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
															<input placeholder="Parent Email*" type="text" name="parentEmail" id="parentEmail_${listDtoSchool.teacherId}_0" class="ignore1"/>
														</div>
													</div>
												</div>
												</div>
												 <!-- <input type="button" class="input_abs_plus">  -->
												 <div class="plusImg" id="removeLast_${listDtoSchool.teacherId}_0"><a  title="Add More" onclick="addMoreClass(${listDtoSchool.teacherId},0);" id="addMoreClass_${listDtoSchool.teacherId}"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div> 
												</div>
											</li>
											</ul>
											</div>
                            <div class="btns-outer">
					<input type="button" value="SUBMIT" onclick="parentEmailSave('${listDtoSchool.teacherId}');" class="submit-btn" />
				</div>
                        </div>
                                </c:if>
                                
                                <c:if test="${listDtoSchool.letterStatus ne 'Y'}">
                                	<input type="checkbox" name="group2" value="Home Edition" id="check_${listDtoSchool.teacherId}" onchange="showEmailMobileDetail(${listDtoSchool.teacherId},${listDtoSchool.classId},'check_${listDtoSchool.teacherId}');"> <label  for="check-1">Send Email/Phone Notification</label>
                                	
                                	
                                	 <div class="notf-form" id="addEmailPhone_${listDtoSchool.teacherId}" >
                     		
									<div class="mail-section">
										<ul>
										<div id="parentInfo_${listDtoSchool.teacherId}">
										<div id="divSection_${listDtoSchool.teacherId}_0">
											
											</ul>
											</div>
                            <div class="btns-outer" id="emailSubmitButton">
					
				</div>
                        </div>
                                	
                                	
                                </c:if>
                                	<input type="hidden" value="${listDtoSchool.teacherId}" name="teacherId"/>
                                	<input type="hidden" value="${listDtoSchool.classId}" name="classId"/>
                                </div>
                       
                                
                            </li>
                    	</form:form>
                    	</c:if>
                    	
                    	</c:forEach>
                    	<c:if test="${ieTeacher eq 0}">No Record Found</c:if>
                        	
                           
                        </ul>
                    </div>    
            	</div>
                
                
            	<p class="school-hd">Other School</p>
            	<div class="overall-dashbd">
                	<div class="experience-main">
                    	<ul>
                    	<c:set var="nonIeTeacher" value="0"></c:set>
                    	<c:forEach var="listDtoSchool" items="${listDtoSchool}">
                    	
                    	<c:if test="${listDtoSchool.teacherId eq '0'}">
                    	<c:set var="nonIeTeacher" value="${nonIeTeacher+1}"></c:set>
                    		<li>
                            	<div class="school-info-up">
                                	<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png">
                                    <p>${listDtoSchool.schoolName}</p>
									<p>${listDtoSchool.className}</p>
									<p>${listDtoSchool.name}</p>
                                </div>
                                <div class="btns-outer fl">
									<input class="submit-btn fl" type="button" value="Start Petition" onClick="setPetition('${listDtoSchool.parentTeacherId}');">
								</div>
                            </li>
                    	
                    	</c:if>
                    	
                    	</c:forEach>
                    	<c:if test="${nonIeTeacher eq 0}">No Record Found</c:if>
                    	
                        	
                           
                        </ul>
                    </div>    
            	</div>
            </div>
        </section>
	</div>
	
	<form action="petition" name="parentteacherForm" id="parentteacherForm" method="get">
	<input type="hidden" id="parentTeacherId" name="parentTeacherId">
	</form>
	
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
     <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
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
   /*  $(function(){
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
    function parentEmailSave(teacherId){
			$("#saveSignupForm_"+teacherId).validate({ ignore: []});
			$("#saveSignupForm_"+teacherId).validate();
	
			$('[id^=parentMobile_'+teacherId+'_]').each( function( index, el ) {
			    $( el ).rules('add', {
			    	required: true,
          		minlength : 10,
          		maxlength : 30
          		//digits	: true
		    	});
			});
			$('[id^=parentEmail_'+teacherId+'_]').each( function( index, el ) {
			    $( el ).rules('add', {
		    	    required: true,
		    	    email: true
		    	    /* emailAlreadyExist: true, */
		    	    //notEqual:true
		    	});
			});
		
			
			if($("#saveSignupForm_"+teacherId).valid()){
				//alert("hiiii"+true);
				
				$('[id^=parentMobile_'+teacherId+'_]').each( function( index, el ) {
					$( el ).attr('name',"parentMobile");
				});
				$('[id^=parentEmail_'+teacherId+'_]').each( function( index, el ) {
					$( el ).attr('name',"parentEmail");
				});
				
				$("#saveSignupForm_"+teacherId).submit();
				return true;
			}else{
				return false;
			}
		
	}
    
    function setPetition(parentTeacherId){
    	$("#parentTeacherId").val(parentTeacherId);
    	$("#parentteacherForm").submit();
    	
    }
    function hideEmailMobileDetail(programId,classId,id){
    	var divId = 0;
    	$("#parentInfo_"+programId).html('<div id="divSection_'+programId+'_'+ divId + '">'+
        '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
        '<input type="text" name="parentMobile_'+programId+'_'+ divId +'" placeholder="Parent Mobile*"  class="ignore1" id="parentMobile_'+programId+'_'+ divId + '" /></div></div></div></li>'+
        '<li><div class="input_relative"><div class="input_add_logo"><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
        '<input type="text" name="parentEmail_'+programId+'_'+ divId +'" placeholder="Parent Email*" class="ignore1"  id="parentEmail_'+programId+'_'+ divId + '"/></div></div></div></div>'+
        '<div class="plusImg" id="removeLast_'+programId+'_'+divId+'"><a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div>'+
        '</div></li>');
    	$("#addEmailPhone_"+programId).hide();
    	
    	$.ajax({
			url : "<%=request.getContextPath()%>/donor/setDeActiveLetterToParentEmail",
			method : 'POST',
			data : {teacherId:programId,classId:classId},
			async:false
		});
    	
    	
    	
    	
    	$("#"+id).attr("onchange","showEmailMobileDetail("+programId+","+classId+",\'"+id+"\')");

    }
    function showEmailMobileDetail(programId,classId,id){
    	
    	$.ajax({
			url : "<%=request.getContextPath()%>/donor/setActiveLetterToParentEmail",
			method : 'POST',
			data : {teacherId:programId,classId:classId},
			async:false
		});
    	
    	var divId = 0;
    	$("#parentInfo_"+programId).html('<div id="divSection_'+programId+'_'+ divId + '">'+
        '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
        '<input type="text" name="parentMobile_'+programId+'_'+ divId +'" placeholder="Parent Mobile*"  class="ignore1" id="parentMobile_'+programId+'_'+ divId + '" /></div></div></div></li>'+
        '<li><div class="input_relative"><div class="input_add_logo"><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
        '<input type="text" name="parentEmail_'+programId+'_'+ divId +'" placeholder="Parent Email*" class="ignore1"  id="parentEmail_'+programId+'_'+ divId + '"/></div></div></div></div>'+
        '<div class="plusImg" id="removeLast_'+programId+'_'+divId+'"><a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div>'+
        '</div></li>');
    	
    	$("#addEmailPhone_"+programId).show();
    	
    	$("#emailSubmitButton").html('<input type="button" value="SUBMIT" onclick="parentEmailSave(programId);" class="submit-btn" />');
    	
    	$("#"+id).attr("onchange","hideEmailMobileDetail("+programId+","+classId+",\'"+id+"\')");
    }
    function addMoreClass(programId,index){
    	var divId = index + 1;
    	var htmlContents='<a title="Remove" onclick="removeClassDetails('+programId+','+ index + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a>';
    	$($("#removeLast_"+programId+"_" + index + '')).empty();
    	$($("#removeLast_"+programId+"_" + index + '')).html(htmlContents);
    	$("#addMoreClass_"+programId).remove();
    	$("#parentInfo_"+programId).append('<div id="divSection_'+programId+'_'+ divId + '">'+
        '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
        '<input type="text" name="parentMobile_'+programId+'_'+ divId +'" placeholder="Parent Mobile*"  class="ignore1" id="parentMobile_'+programId+'_'+ divId + '" /></div></div></div></li>'+
        '<li><div class="input_relative"><div class="input_add_logo"><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
        '<input type="text" name="parentEmail_'+programId+'_'+ divId +'" placeholder="Parent Email*" class="ignore1"  id="parentEmail_'+programId+'_'+ divId + '"/></div></div></div></div>'+
        '<div class="plusImg" id="removeLast_'+programId+'_'+divId+'"><a onclick="removeClassDetailsLast('+programId+','+ divId +');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a><a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div>'+
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
    	var htmlContents = '<a onclick="removeClassDetailsLast('+programId+','+ previous + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a><a onclick="addMoreClass('+programId+','+ previous +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a>';
    	
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
