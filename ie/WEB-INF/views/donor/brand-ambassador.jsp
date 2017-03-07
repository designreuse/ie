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
<title>Brand Ambassador</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" /> --%>
<style type="text/css">
.fancybox-inner{
height: auto !important;
}
</style>
</head>

<body>
<div class="wrapper">
   <%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
		<section class="getStartSct mtop-5">
    <div class="steps_getstarted">
			<div class="container">
				<div class="pracProgress_hdr">
					 <h2>Ambassador</h2>
					 <div class="green_line_btm"></div>
				 </div>
				
				
				<div class="procod">
					<div class="procodIn">
						<!-- <p>Use Promo Code #1MMC to launch IE Programs at a school of your choice, today</p> -->
						<p>Bring inner Explorer to School of your choice</p>
					</div>
					
				</div>
										<div class="IE-sub-link max-width">
						<a href="<%=request.getContextPath()%>/donor/brand-ambassador-main" >back</a>
					</div>
				<div class="Clkur_grid">

						<table width="100%" border="0" cellspacing="0" cellpadding="0"
							id="sample_7">
							<!-- <table width="100%" border="0" cellspacing="0" cellpadding="0"> -->
							<thead>
								<tr>
									<th width="30%">school name</th>
									<th width="30%">address</th>
									<th width="20%">Set Favorite</th>
									<th class="txtcenter_align" width="15%">Action</th>
								</tr>
								</thead>
								<tbody>
								<c:forEach items="${dtoParent}" var="dtoParent">
									<tr>
										<td>${dtoParent.schoolName}</td>
										<td>${dtoParent.schoolAddress}</td>
										<td>
										<c:if test="${dtoParent.isFavorite eq 'Y'}">
										<a id="fav-${dtoParent.schoolId}" onclick="deleteFavorite('${dtoParent.schoolId}','${dtoParent.isIESchool}');"><img src="<%=request.getContextPath()%>/NewStyles/images/red-hrt.png"></a>
										</c:if>
										
										<c:if test="${dtoParent.isFavorite eq 'N'}">
										<a id="fav-${dtoParent.schoolId}" onclick="setFavorite('${dtoParent.schoolId}','${dtoParent.isIESchool}');"><img src="<%=request.getContextPath()%>/NewStyles/images/grey-hrt.png"></a>
										</c:if>
										</td>
										<td class="txtcenter_align">
										<c:if test="${dtoParent.isIESchool eq 'N'}">
											<c:if test="${dtoParent.isPetition eq 'Y'}">
												<c:if test="${dtoParent.joinPetition eq 'N'}">
												<%-- <a class="text-green-link" href="<%=request.getContextPath()%>/donor/petition?schoolId=${dtoParent.schoolId}">Reach Out</a> --%>
												<input type="button"
											value="Reach Out" class="startBtn-Clkur" onclick="window.location.href='<%=request.getContextPath()%>/donor/petition?schoolId=${dtoParent.schoolId}'">
												</c:if>
											</c:if>
										
											<c:if test="${dtoParent.isPetition eq 'N'}">
											<%-- <a class="text-green-link" href="<%=request.getContextPath()%>/donor/joinPetition?petitionId=${dtoParent.petitionId}">Reach Out</a> --%>
											<input type="button"
											value="Reach Out" class="startBtn-Clkur" onclick="window.location.href='<%=request.getContextPath()%>/donor/petition?schoolId=${dtoParent.schoolId}'">
											</c:if>
										</c:if>
										<c:if test="${dtoParent.isIESchool eq 'Y'}">
										<a class="text-green-link" onclick="sendMailToAll('${dtoParent.contactEmail}');">Send Email</a>
										<%-- <input type="button"
											value="Send Email" class="startBtn-Clkur" onclick="sendMailToAll('${dtoParent.contactEmail}');"> --%>
										</c:if>
										</td>

									</tr>
								</c:forEach>


							</tbody>
						</table>
					</div>
		
				<!-- <div class="g-or">
					<p>OR</p>
				</div>
				
				<div class="btns-outer">
					<input type="submit" value="ENTER SCHOOL INFORMATION" class="submit-btn" onclick="showSchoolForm();">
				</div> -->
				<form id="schoolInfoForm" name="schoolInfoForm" style="display:none;">
				<div class="getstartForm gclickform">
					<label>School Info</label>
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="School Name">
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="School Address" id="address" name="address">
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Contact Email" id="otherSchoolEmail">
									</div>
								</div>
							</div>
						</li>
					</ul>
				</div>
				
				<div class="btns-oute mtop10r">
					<input type="button" value="Submit" class="submit-btn" onclick="sendMailToAllOther();">
					<input type="button" value="Cancel" class="submit-btn" onclick="hideSchoolFrom();">
				</div>
				</form>
				
			</div>
      </div>
		</section>
    <!--inner_wrapper ends--> 
</div>

<div class="ourStory-Popup" id="letterToBrandAmbassador" style="display: none;">
            <h4>Send mail</h4>
            <div class="ur_grid ur_grid_pop">

<form:form  method="post" modelAttribute="dtoLetterToParent" enctype="multipart/form-data" action="${pageContext.request.contextPath}/donor/sendletterToAllAmbassador" id="saveLetterEmail" class="register-form" >
							<div class="clickPopIn">
							<div class="school_setup_wrapper margin-top-zero" id="progDetail">
									<div class="clickPopIn-top">
										<ul>
										<c:set var="inputId" value="1"></c:set>
										<div id="parentInfo_${inputId}">
										<div id="divSection_${inputId}_0">
											<%-- <li>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Parent Mobile*" class="widthlessinput" type="text" name="parentMobile" id="parentMobile_${inputId}_0" class="ignore1"/>
														</div>
													</div>
												</div>
											</li> --%>
											<!-- <li>
												<div class="getstart-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input type="text" placeholder="martin jabob@hotmail.com">
														</div>
													</div>
												</div>
												<div class="gplusIcon"><a title="" href="#"><img alt="Image" src="images/icon-plus42.png"></a></div>
											</li> -->
											<li>
												<div class="input_relative">
												<div class="input_add_logo width-less">
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Contact Email*" type="text" name="parentEmail" id="parentEmail_${inputId}_0" class="ignore1"/>
														</div>
													</div>
												</div>
												</div>
												 <!-- <input type="button" class="input_abs_plus">  -->
												 <div class="plusImg" id="removeLast_${inputId}_0"><a  title="Add More" onclick="addMoreClass(${inputId},0);" id="addMoreClass_${inputId}"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div> 
												</div>
											</li>
											</ul>
											</div>
											
											<div class="clickPopIn-bottm">
				<label>Subject</label>
				<ul>
				<li>
					<div class="contact-row">
						<div class="outer-field-wrap">
							<div class="outer-field">
								<form:input path="subject" type="text" placeholder="Subject"/>
							</div>
						</div>
					</div>
				</li>
				<li>
					<div class="contact-row">
						<div class="outer-field-garea">
							<div class="outer-fieldg">
								<form:textarea path="message" placeholder="Email Body"></form:textarea>
							</div>
						</div>
					</div>
				</li>
				
			</ul>
			</div>
										
									</div>
							<div id="tab1" >
	        					<div class="section_trial Mbtm0">
	        						<div class="free_trial_somedays margin-top-twnty">
	                            		<!-- <h5>Experience for next 45 sessions</h5> -->
	                            		<div class="txtcenter_align"> <a class="blueBtn"  onclick="sendingEmailToParents();">SEND</a> </div>
	                        		</div>
						     	</div>
						     </div>
						     </div>
				</form:form>
        </div>
    </div>

<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="../footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
</body>
<script type="text/javascript">

$(document).ready(function (){
	$("#header").sticky({ topSpacing: 0 });
	//App.init();
	            $('#sample_7').dataTable({
                "aoColumns": [
                  { "bSortable": true },
                  { "bSortable": true },
                  { "bSortable": true },
                  { "bSortable": true }
                ],
                "aLengthMenu": [
                    [5, 15, 20, -1],
                    [5, 15, 20, "All"] // change per page values here
                ],
                // set the initial value
               
                
                
               
            });

	
	
	});
function showSchoolForm(){
	$("#schoolInfoForm").show();
}
function hideSchoolFrom(){
	$("#schoolInfoForm").hide();
}
function sendMailToAll(selectedEmail){
	//alert("selectedEmail " + selectedEmail);
	$("#parentEmail_1_0").val(selectedEmail);
	 $.fancybox({
		 'minWidth':900,
		 'padding':45,
		 'minHeight':250,
	     'autoScale': true,
	     'autoDimensions': true,
	     'centerOnScroll': true,
	     'href' : '#letterToBrandAmbassador'
	  });
}
function sendMailToAllOther(){
	//alert("selectedEmail " + selectedEmail);
	var emailOther = $("#otherSchoolEmail").val();
	$("#parentEmail_1_0").val(emailOther);
	 $.fancybox({
		 'minWidth':900,
		 'padding':45,
		 'minHeight':250,
	     'autoScale': true,
	     'autoDimensions': true,
	     'centerOnScroll': true,
	     'href' : '#letterToBrandAmbassador'
	  });
}

function addMoreClass(programId,index){
	var divId = index + 1;
	var htmlContents='<a title="Remove" onclick="removeClassDetails('+programId+','+ index + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a>';
	$($("#removeLast_"+programId+"_" + index + '')).empty();
	$($("#removeLast_"+programId+"_" + index + '')).html(htmlContents);
	$("#addMoreClass_"+programId).remove();
	$("#parentInfo_"+programId).append('<div id="divSection_'+programId+'_'+ divId + '">'+
			'<li><div class="contact-row" style="height: 10px;"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" id="programId_'+programId+'_'+ divId +'" name="programIds"/>'+
			'</div></div></div></li><br/>'+
    
    '<li><div class="input_relative"><div class="input_add_logo width-less"><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
    '<input type="text" name="parentEmail_'+programId+'_'+ divId +'" placeholder="Contact Email*" class="ignore1"  id="parentEmail_'+programId+'_'+ divId + '"/></div></div></div></div>'+
    '<div class="plusImg" id="removeLast_'+programId+'_'+divId+'"><a style="margin: 0 10px 0 0;" onclick="removeClassDetailsLast('+programId+','+ divId +');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a><a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div>'+
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

function sendingEmailToParents(){
	
	$("#saveLetterEmail").validate({ ignore: []});
	$("#saveLetterEmail").validate();

	/* $('[id^=parentMobile_]').each( function( index, el ) {
	    $( el ).rules('add', {
    		minlength : 10,
    		maxlength : 30
    		//digits	: true
    	});
	}); */
	$('[id^=parentEmail_]').each( function( index, el ) {
	    $( el ).rules('add', {
    	    required: true,
    	    email: true
    	    /* emailAlreadyExist: true, */
    	    //notEqual:true
    	});
	});

	
	if($("#saveLetterEmail").valid()){
		//alert("hiiii"+true);
		
		/* $('[id^=parentMobile_]').each( function( index, el ) {
			$( el ).attr('name',"parentMobile");
		}); */
		$('[id^=parentEmail_]').each( function( index, el ) {
			$( el ).attr('name',"parentEmail");
		});
		
		 $("#saveLetterEmail").submit();
		return true;
	}else{
		return false;
	}

}
function getStudentAddressLatLong(){
    var homeAddress = document.getElementById('address');
    var autoCompleteHomeAddress = new google.maps.places.Autocomplete(homeAddress);
    var geocoder = new google.maps.Geocoder;
    google.maps.event.addListener(autoCompleteHomeAddress,	'place_changed', function() {
		 var latlng = {lat: parseFloat($("#latitude").val()), lng: parseFloat($("#longitude").val())};
		 geocoder.geocode({'location': latlng}, function(results, status) {
			    if (status === google.maps.GeocoderStatus.OK) {
 			    	  for (var i = 0; i < results[0].address_components.length; i++) {
			    		    var addressType = results[0].address_components[i].types[0];
 			    	  }
			    	}
			    });
	});
}
google.maps.event.addDomListener(window, 'load', getStudentAddressLatLong);


function setFavorite(schoolId,ieSchoolStatus){
	var url = '<%=request.getContextPath()%>';
	$.ajax({
		url : url+'/donor/setFavorite',
		data:{schoolId:schoolId,ieSchoolStatus:ieSchoolStatus},
		success : function(result) {
			if(result){
				$("#fav-"+schoolId).removeAttr("onclick");
				$("#fav-"+schoolId).html('<img src="<%=request.getContextPath()%>/NewStyles/images/red-hrt.png"/>');
			}
		}
	});
}


function deleteFavorite(schoolId,ieSchoolStatus){
	var url = '<%=request.getContextPath()%>';
	$.ajax({
		url : url+'/donor/deleteFavorite',
		data:{schoolId:schoolId,ieSchoolStatus:ieSchoolStatus},
		success : function(result) {
			if(result){
				$("#fav-"+schoolId).removeAttr("onclick");
				$("#fav-"+schoolId).html('<img src="<%=request.getContextPath()%>/NewStyles/images/grey-hrt.png"/>');
			}
		}
	});
}
</script>
</html>
