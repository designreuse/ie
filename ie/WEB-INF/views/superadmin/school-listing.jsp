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
<title>School Listing</title>
	<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>

<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min1.css" rel="stylesheet" type="text/css"/>
       
       <link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery-ui.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />


	 
	
	<style type="text/css">
	
	input[type="search"]
{
border: 1px solid #ccc;
    padding: 2px 5px;
    border-radius: 3px;
}
	
	</style>
	
</head>

<body>
<div class="wrapper">
    <%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--inner_header starts-->
        <%-- <div class="inner_header"> <img src="<%=request.getContextPath()%>/NewStyles/images/browse-donation-header.jpg"  alt=""/> </div> --%>
        
        <!--about_us starts-->
        <div class="about_us">
            <div class="content_inner">
                <div class="pracProgress_hdr">
                    <h2>Active Programs</h2>
                    <div class="green_line_btm"></div>
                </div>
               <%--  <div style="text-align:center;">
                <a href="<%=request.getContextPath()%>/superadmin/migration" 
                style="color:#02a451;text-decoration:underline;font-size:16px;">Legacy App Users</a>
                </div> --%>
                <div class="total_no_schools">
                <ul>
                <li class="bg_schools">Total No. of Schools <span>${fn:length(schoolDetails)}</span></li>
                <li class="bg_classes">Total No. of Classes <span>${totalClasses}</span></li>
                
<%--                  test<li>
	                 <div class="txtcenter_align">
		                 <input type="button" title="Manage Users" value="Manage Users" 
		                 onclick="window.location.href='<%=request.getContextPath()%>/superadmin/migration'" 
		                 class="startBtn">
	                 </div>
                 </li> --%>
                </ul>
                </div>
                
                <div class="no_school-classes">
                <c:forEach items="${programs}" var="program" varStatus="programCount" begin="0" end="3">
               <div class="nosc_col_1">
                    <div class="ourprograms">
					        <ul>
                <li>
							<img src="<%=request.getContextPath()%>${program.imagePath}" alt="Image">
							<div class="greyText">
								<p>${program.programDescDetail}</p>
							</div>
						</li>
                </ul>
                </div>
                <div class="info_school">
                Total No. of Schools : ${program.numberOfSchools}
                </div>
                <div class="info_classes">
                Total No. of Classes: ${program.numberOfClasses}
                </div>
                </div>
                </c:forEach>
  
            </div>
            
            
            <div class="filter_wrapr" id="searchOption">
            	<div class="containerSmall">
                	<div class="lft_fltr">
                    	<label>Filter Based on State</label>
                        <div class="drop_filter">
                        	<select id="stateDropdown" onchange="stateFilter();">
                            	<option value="0">Select</option>
                            	<option value="AL">Alabama</option>
								<option value="AK">Alaska</option>
								<option value="AZ">Arizona</option>
								<option value="AR">Arkansas</option>
								<option value="CA">California</option>
								<option value="CO">Colorado</option>
								<option value="CT">Connecticut</option>
								<option value="DE">Delaware</option>
								<option value="DC">District Of Columbia</option>
								<option value="FL">Florida</option>
								<option value="GA">Georgia</option>
								<option value="HI">Hawaii</option>
								<option value="ID">Idaho</option>
								<option value="IL">Illinois</option>
								<option value="IN">Indiana</option>
								<option value="IA">Iowa</option>
								<option value="KS">Kansas</option>
								<option value="KY">Kentucky</option>
								<option value="LA">Louisiana</option>
								<option value="ME">Maine</option>
								<option value="MD">Maryland</option>
								<option value="MA">Massachusetts</option>
								<option value="MI">Michigan</option>
								<option value="MN">Minnesota</option>
								<option value="MS">Mississippi</option>
								<option value="MO">Missouri</option>
								<option value="MT">Montana</option>
								<option value="NE">Nebraska</option>
								<option value="NV">Nevada</option>
								<option value="NH">New Hampshire</option>
								<option value="NJ">New Jersey</option>
								<option value="NM">New Mexico</option>
								<option value="NY">New York</option>
								<option value="NC">North Carolina</option>
								<option value="ND">North Dakota</option>
								<option value="OH">Ohio</option>
								<option value="OK">Oklahoma</option>
								<option value="OR">Oregon</option>
								<option value="PA">Pennsylvania</option>
								<option value="RI">Rhode Island</option>
								<option value="SC">South Carolina</option>
								<option value="SD">South Dakota</option>
								<option value="TN">Tennessee</option>
								<option value="TX">Texas</option>
								<option value="UT">Utah</option>
								<option value="VT">Vermont</option>
								<option value="VA">Virginia</option>
								<option value="WA">Washington</option>
								<option value="WV">West Virginia</option>
								<option value="WI">Wisconsin</option>
								<option value="WY">Wyoming</option>
                            </select>
                        </div>
                    </div>
                    <div class="rght_fltr">
                    	<label>Search</label>
                        <div class="drop_filter">
                        	<input type="text" id="searchKeyword" class="Mbtm0 border0" placeholder="School" onchange="getSearchContent();">
                            <div class="srch_btn">
                            	<a href="javascript:;"><img src="<%=request.getContextPath()%>/NewStyles/images/seach-icon.png"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="noRcordFound" style="text-align:center"></div>
            
                <div class="misc_tabar background-none" id="tabDiv">
		<ul>
        <li id="mtab1" class=" selected"><a class="trial" href="javascript:showTab(1,2)">Card View</a>
        </li>
            <li id="mtab2" ><a class="fp" href="javascript:showTab(2,2)">List View</a></li>
        </ul>
    </div>
            <div id="tab1">
            
            <div class="schools_contacts_listing">
            <ul id="schoolsRecordsFound">
            <c:forEach var="schoolDetails" items="${schoolDetails}">
            
            	<li>
            <div class="schl_contcs_colum_listing">
            <h3>${schoolDetails.schoolName}</h3>
            <div class="schools_logos">
            <c:if test="${not empty schoolDetails.schoolLogo}">
                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${schoolDetails.schoolLogo}"  alt=""/>
                </c:if>
            <c:if test="${empty schoolDetails.schoolLogo}">
                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
                </c:if>
                 </div>
                 
                 <div id="schoolDetail-${schoolDetails.schoolId}" style="display:none" class="show-absolute-div">
                 <h3 class="funding_margin">Funding Status</h3>
                 <%-- <div class="tar_btnwrap"> <a href="javascript;:" style="width:50%" class="selected">School Contribution <span>$190</span></a> <a href="javascript;:">Need Funding <span>$300</span></a> </div> --%>
                 <input type="hidden" value="${schoolDetails.totalCampAmount}" id="totalCampaignAmount${schoolDetails.schoolId}">
                            <input type="hidden" value="${schoolDetails.schoolContribution}" id="schoolContributionTotal${schoolDetails.schoolId}">
                            <input type="hidden" value="${schoolDetails.donorContribution}" id="donorContributionTotal${schoolDetails.schoolId}">

                 <div class="tar_container tar_container_small">
                             <div class="tar_wrapper_camp">
                            <div class="range_wrpr">
                            <div class="progress" style="border: 5px solid #dadada; border-radius:35px; overflow: hidden; ">
							    <div class="progress-bar progress-bar-warning pinpoint" id="contributeSchoolFirst${schoolDetails.schoolId}" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">
							     
							    </div>
							    <div class="progress-bar progress-bar-danger pinpoint" role="progressbar" id="donorContributedAmount${schoolDetails.schoolId}" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff;">
							    
							  	</div>
							    <div class="progress-bar progress-bar-success pinpoint" id="needAssistanceSecond${schoolDetails.schoolId}" role="progressbar" style="border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;">
							    
							    </div>
							    <div class="progress-bar progress-bar-overload pinpoint" role="progressbar" id="donorContributedAmountOverload${schoolDetails.schoolId}" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;">
							     
							  	</div>
							   	
							  </div>
							  <div class="amountBarDetail">
							  <span id="totalDonationRaised${schoolDetails.schoolId}"></span>
							  </div>
                            </div>
                            </div>
                            </div>
                 
                 <c:if test = "${schoolDetails.totalClassCountUnderSchool == 0}">
                 <h3 style="visibility: hidden;margin: -10px;">Total No. of Classes : ${schoolDetails.totalClassCountUnderSchool}</h3>
                 </c:if>
                  <c:if test = "${schoolDetails.totalClassCountUnderSchool != 0}">
                 <h3>Total No. of Classes : ${schoolDetails.totalClassCountUnderSchool}</h3>
                 </c:if>
                
                 
                 <div class="txtcenter_align">
                 <a onclick="getPrincipalInfo('${schoolDetails.userId}')" style="cursor: pointer;"  class="viewcontct_detail mrg_tp20">View Contact Detail</a>
                 </div>
                 
                 <div class="txtcenter_align">
                 <a onclick="getPlaybackAPI('${schoolDetails.schoolId}')" style="cursor: pointer;"  class="viewcontct_detail mrg_tp20">Playback Stats</a>
                 </div>
                </div>
                <span id="schoolBox-${schoolDetails.schoolId}" class="view-hide">View Detail</span>
            </div>
            	</li>
            
            </c:forEach>
            </ul>
           
            </div>
            </div>
            <div id="tab2" style="display:none;">
            <div class="ur_grid ur_grid_pop">
			            <!-- <a id="sendMailToAllOnce" onclick="getSendMailToAllSchoolPopup();">[Send new session mail to all schools and teachers]</a> -->
			                 <table class="table table-striped table-bordered table-hover"  id="sample_2">
			         <thead>
			        	<tr>
			        			<th><strong>School Name</strong></th>
			        			<th><strong>Address</strong></th>
			        			<th><strong>Fund Raised</strong></th>
								<th><strong>Classes</strong></th>
								<th><strong>Expire On</strong></th>
								<th><strong>Action</strong>
								
								
						</tr>
					</thead>
					<tbody>
						 	<c:forEach var="schoolDetails" items="${schoolDetails}">
						<tr>
							 <td>${schoolDetails.schoolName}</td>
							 <td>${schoolDetails.address}</td> 
							 <td id="totalDonationRaisedTable${schoolDetails.schoolId}"></td>
							 <td>${schoolDetails.totalClassCountUnderSchool}</td>
							 <td>${schoolDetails.schoolExpireDate}</td>
							 
							 <td>
							 <a onclick="getPrincipalInfo('${schoolDetails.userId}')">[View Contact Detail] </a>
							 
							 <a onclick="getPlaybackAPI('${schoolDetails.schoolId}')">[Playback Stats]</a>
							 
							 <%-- <a id="sendMailToAll${schoolDetails.schoolId}" onclick="getSendMailToSchoolPopup('${schoolDetails.schoolId}')">[Send New Session Mail]</a> --%>
							 
							 </td>
						
						</tr>
							</c:forEach>
					</tbody> 
					</table>

			
			        
			        </div>
            </div>
            
        </div>
        <!--about_us ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends--> 
</div>

</div>
<!-- fancybox start -->
<div id="view_contact_detail" style="display: none; width: 700px;">
    <h3 id="popup-header"></h3>
            <div class="product-page product-pop-up">
              <!-- <div class="row"> -->
                <!-- <div class="col-md-6 col-sm-6 col-xs-9"> -->
                  
                    <div class="popup_school_details_main">
                     <form:form class="form-horizontal form-without-legend" id="form_sample_1" role="form" action="updatePrincipalDetail" method="post" modelAttribute="dtoUser" enctype="multipart/form-data">
                     <form:hidden path="schoolId" id="priUserId" />
                    	<div class="popup_school_details_img" title="School logo">
                    	
                    	 	
              			  		<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt="" id="logoImage"/>
               				
                    	
	                    	<div class="edit-img" title="Select a school logo">
								<!-- <input id="mediaFile" name="mediaFile" accept="image/*" type="file" onchange="this.form.submit()" value=""> -->
								<form:input id="mediaFile" name="mediaFile" accept="image/*" type="file" value="" path="image" onchange="getImagePath(this);"/>
							</div>
                    	
                    	</div>
                    	<div class="popup_school_details">
                    <div class="form-group pop-margin-left">
                      <label class="col-lg-4 control-label pt-0 width130">First Name: </label>
                      <div class="col-lg-4">
                        <form:input id="fname" class="popup_input" path="firstName"/>
                      </div>
                    </div>
                    <div class="form-group pop-margin-left">
                      <label class="col-lg-4 control-label pt-0 width130">Last Name: </label>
                      <div class="col-lg-4">
                        <form:input id="lname" class="popup_input" path="lastName"/>
                      </div>
                    </div>
                    <div class="form-group pop-margin-left">
                      <label class="col-lg-4 control-label width130">Principal Email: </label>
                      <div>
                      <div id="emailDropDown"> 
                      
                      </div>
                     
                        <!-- <label id="email"></label> -->
                      </div>
                    </div>
                    <div class="form-group pop-margin-left">
                      <label class="col-lg-4 control-label pt-0 width130">Mobile: </label>
                      <div class="col-lg-4">
                        <form:input id="mobile" class="popup_input" path="mobile"/>
                      </div>
                    </div>
                   
			            
			        </div>
			        <div class="edit-prncpl-pop-btn">
			        <input type="button" value="Update" class="startBtn" onclick="submitUpdatePriFrom();"/>
			        </div>
			          </form:form>
			         </div>
                    <div class="ur_grid ur_grid_pop">
			            	
			            	 
			            	
			        <table class="table table-striped table-bordered table-hover"  id="sample_1">
			         <thead>
			        	<tr>
			        			<th><strong>Teacher Name</strong></th>
			        			<th><strong>Email</strong></th>
								<th><strong>Action</strong></th>
								<th style="display:none;"></th><th style="display:none;"></th>
								</tr></thead>
								<tbody></tbody> 
					</table>
			
			        
			        </div>
                 
                  
                  
                  

                <!-- <div id="accountTypeId" class="sticker"></div> -->
             <!--  </div> -->
            </div>
    </div> 
    
    
    
    
    <div  id="playbackApiBySchool" style="display: none;">
    	       <div>
				<input class="submit-btn fl" type="button" id="sendEmailAudioQualityButton" value="Send Email" onclick="openSendEmailPopup();"> 
			</div>    
            <div class="ur_grid ur_grid_pop">
            	
            	 
            	
        <table class="table table-striped table-bordered table-hover"  id="sample_6">
         <thead>
        	<tr>
        			<th><strong>Teacher Name</strong></th>
					<th><strong>Program</strong></th>
					<th><strong>Feedback Rate</strong></th>
					<th><strong>Average Feedback</strong></th>
					<th><strong>Daily Practice Rate</strong></th>
					<th><strong>Repeat Rate</strong></th>
					<th><strong>Skip Play Rate</strong></th>
					<th style="display:none;"></th><th style="display:none;"></th>
					</tr></thead>
					<tbody></tbody> 
</table>

        
        </div>
        
    </div>
    
<div  id="sendEmailPopup" class="playback-Popup" style="display: none;">
           <div class="hdr hdr_new padding-btm">
            <form name="schoolListingEmail" id="schoolListingEmail" >
            <div class="popup-form">
        	<p>Send Email</p>
            <div class="pop-form-field">
				<input type="text" placeholder="Subject" id="emailTitle" name="emailTitle" />
			</div>
            <div class="pop-form-field">
				<textarea placeholder="Write Message" id="emailMessage" name="emailMessage"></textarea>
			</div>
            <div class="btns-outer mtop10">
				<input class="submit-btn fl" type="button" value="SEND" onclick="submitEmail();">
			</div>
        </div>
            </form>
        
        </div>
        
</div>

<input type="hidden" name="schoolId" id="schoolId" value="0"/>

<div id="editTeachers" style="display: none">
		<form action="editTeacherDetails" id="editTeachersForm" name="editTeachersForm" method="post">
			<h3 class="migChngPass">Change Teacher Program</h3>
			
			<label>Teacher Name: </label>
			<div class="outer-field-wrap">
			<div class="outer-field">
				<input type="text" id="teacherName" name="teacherName" style="margin:auto; width:100%" readonly="readonly"/><br>
			</div>
			</div>
			
			<label>Teacher Email: </label>
			<div class="outer-field-wrap">
			<div class="outer-field">
				<input type="text" id="teacherEmail"name="teacherEmail" style="margin:auto; width:100%" readonly="readonly"/><br> 
				
			</div>
			</div>
			
			<label>Class Name:</label>
			<div class="outer-field-wrap">
			<div class="outer-field">
			<div id="classDropdown"></div>
				<!-- <input type="text" id="className" name="className" style="margin:auto; width:100%"/><br> -->
			</div> 
			</div>
			
			<label>Program Name : </label>
			<div class="outer-field-wrap">
			<div class="outer-field">
			<div id="programDropdown"></div>
				<!-- <input type="text" id="programName" name="programName" readonly="readonly" style="width:100%"/> -->
			</div>
			</div>
		
			<div class="outer-field">
			<input type="submit" title="Save" value="Save" class="startBtn" />
			</div>
			
			<input type="hidden" id="classTeacherReleationId" name="classTeacherReleationId">
			<input type="hidden" id="currentEmail" name="currentEmail">
			
		</form>
	</div>

<!-- Change Password Pop Up -->

<div id="teacherChangePassword" style="display:none">
<form action="" id="teacherChangePasswordForm" name="teacherChangePasswordForm">
<h3 class="migChngPass">Change Password</h3>
<label>New Password : </label><input type="text" id="newPassword" name="newPassword"/>
<label>Confirm Password: </label><input type="text" id="confirmPassword" name="confirmPassword"/><br>
<input type="hidden" id="teacherUserId" name="teacherUserId">
<input type="button" title="Save" value="Save" onclick="changePasswordFrom();" class="startBtn"/>
</form>
</div>

<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
       <%@include file="../footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery-ui.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script>  

<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/dateFormat.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	$.format = DateFormat.format;
	$("#header").sticky({ topSpacing: 0 });
	
	
	$('[id^=sample_2]').dataTable({"aLengthMenu": [[15, 50, 100, -1],[15, 50, 100, "All"] ],columnDefs: [ {
        orderable: false,
        className: 'select-checkbox',
        targets:   0
    } ],
    select: {
        style:    'os',
        selector: 'td:first-child'
    },
    order: [[ 1, 'asc' ]], "iDisplayLength": 15});
	
	
	$("[id^=schoolBox-]").click(function () {

	    $header = $(this);
	    //getting the next element
	    var id=$(this).attr("id");
	    id = id.replace("Box","Detail");
	    //$content = $header.previous();
	    $content =$("#"+id);
	    //open up the content needed - toggle the slide- if visible, slide up, if not slidedown.
	    $content.slideToggle(500, function () {
	        //execute this after slideToggle is done
	        //change text of header based on visibility of content div
 	        $header.text(function () {
	            //change text based on condition
	            if($content.is(":visible")){
	            	$header.addClass("mtop280");
	            }else{
	            	$header.removeClass("mtop280");
	            }
	            return $content.is(":visible") ? "Hide Detail" :"View Detail";
	        }); 
	    });

	});
	
	
	 $('#teacherChangePasswordForm').validate({
         errorElement: 'span', //default input error message container
         errorClass: 'help-block', // default input error message class
         focusInvalid: false, // do not focus the last invalid input
         //ignore: "",
         rules: {
        	 newPassword: {
                 required: true,
          		minlength : 6,
          		maxlength : 20
              },
              confirmPassword: {
                  equalTo: "#newPassword"
              }

         },


         invalidHandler: function(event, validator) { //display error alert on form submit   
         },

         highlight: function(element) { // hightlight error inputs
             $(element)
                 .addClass('has-error'); // set error class to the control group
             $(element).next('.fancybox').next('.fancybox').addClass('has-error');
         },
         
         success: function(label) {
             label.removeClass('has-error');
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
	
	
	 
	 $('#form_sample_1').validate({
         errorElement: 'span', //default input error message container
         errorClass: 'help-block', // default input error message class
         focusInvalid: false, // do not focus the last invalid input
         //ignore: "",
         rules: {
         	
        	 mobile:{
         		//required: true,
         		minlength : 10,
         		maxlength : 30
         		//digits	: true
         	},
         	
         	firstName: {
                 required: true,
                 //nameRegex:true,
                 maxlength : 20
             },
             lastName: {
                 /* required: true, */
                // nameRegex:true,
                 maxlength : 20
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
	 
	
	
	
	$(".fancybox").fancybox();
   	
    		'<c:forEach var="schoolDetails" items="${schoolDetails}">'
                	 
                 var firstValId='${schoolDetails.schoolId}';
                 var schoolConhtribution = $("#schoolContributionTotal"+firstValId).val();
                	
                	var totalAmount = $("#totalCampaignAmount"+firstValId).val();
                	
                	var totalDonationAmount = $("#donorContributionTotal"+firstValId).val();
                	
                	var clientDate = $.format.date(new Date(), 'MM/dd/yyyy')
                	
                	$("#totalDonationRaised"+firstValId).text("$"+parseInt(totalDonationAmount)+" raised till "+clientDate);
                	$("#totalDonationRaisedTable"+firstValId).text("$"+parseInt(totalDonationAmount)+" raised till "+clientDate);
                	
                 	 var resultPer1 ;
                	 var resultPer2 ; //(100-(schoolConhtribution * 100/ totalAmount).toFixed())+"%";
                	 var resultPer3;
                	 if((Number(totalDonationAmount)+Number(schoolConhtribution))>(Number(totalAmount))){
                		 resultPer1 = (schoolConhtribution * 100/ (Number(totalDonationAmount)+Number(schoolConhtribution)));
                		 resultPer2 = (totalDonationAmount * 100/ (Number(totalDonationAmount)+Number(schoolConhtribution)));
                		 if((Number(totalDonationAmount)>0)){
                			 resultPer2 = resultPer2-1;
                		 }else{
                			 resultPer1 = resultPer1-1;
                		 }
                		 resultPer3 = 0;
                		 $('#donorContributedAmountOverload'+firstValId).width("1%");
                	 }else{
                		 resultPer1 = (schoolConhtribution * 100/ totalAmount);
                		 resultPer2 = (totalDonationAmount * 100/ totalAmount);
                		 resultPer3 = 100-(resultPer1+resultPer2);
                	 }
/*                 	 var resultPer1 = (schoolConhtribution * 100/ totalAmount);
                	 var resultPer2 = (totalDonationAmount * 100/ totalAmount); //(100-(schoolConhtribution * 100/ totalAmount).toFixed())+"%";
                	 if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
            			 resultPer2 = 100-resultPer1-1;
            			 var resultPer3 = (100-(resultPer1+resultPer2)-1);
            		 }
            		 else{
            			 var resultPer3 = 100-(resultPer1+resultPer2);
            		 } */
                		 
                	 resultPer1 = resultPer1.toFixed()+"%";
                	 resultPer2 = resultPer2.toFixed()+"%";
                	 resultPer3 = resultPer3.toFixed()+"%";
                		 
                	 $('#contributeSchoolFirst'+firstValId).width(resultPer1);
                	 $('#contributeSchoolFirst'+firstValId).addClass("xtra_padding");
                	 $('#donorContributedAmount'+firstValId).width(resultPer2);
                	 $('#donorContributedAmount'+firstValId).addClass("xtra_padding");
                	 $('#needAssistanceSecond'+firstValId).width(resultPer3);
/*                 	 if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
           			 	$('#donorContributedAmountOverload'+firstValId).width("1%");
           			 } */
                	 $('#needAssistanceSecond'+firstValId).addClass("xtra_padding");
                		 
                	 var fundingAmount = (Number(schoolConhtribution))+(Number(totalDonationAmount));
                	 var pendingAmount = totalAmount-fundingAmount;
                		 
                	 $("#contriAmount"+firstValId).html("$ "+schoolConhtribution)
                	 $("#donorAmount"+firstValId).html("$ "+totalDonationAmount)
                	 $("#assisAmount"+firstValId).html("$ "+pendingAmount)
                	 
                 '</c:forEach>'
                 
                 
                	 $('#schoolListingEmail').validate({
             			rules:{
             				emailTitle: {
             	                required:true
             	            },
             	           emailMessage: {
             	                required:true
             	            }
             	           		
             				},
             			 messages:{			
             				
             				
             			}
             		});
                	 
                	  
   });


function getSearchContent(){
    var searchKeyword = $("#searchKeyword").val().trim();
 if(searchKeyword!=""){
    var url='<%=request.getContextPath()%>/superadmin/searchResults';
    $.ajax({
           url:url,
           method:'GET',
           async :false,
           data:{searchKeyword:searchKeyword},
           success:function(response){
                 if(response != null){
                	 var status="0";
                	
                	 var contextPath = '<%=request.getContextPath()%>';
                	 var htmlcontent='';
                	 
                	$.each( response.modelMap.schoolDetails, function(index,value) {
                		 var status="1";
						//alert("title = "+value.title);
						//alert("title = "+value.description);
						var schoolImage = value.schoolLogo;
						if(typeof value.title === 'undefined'){
							if(typeof value.schoolLogo === 'undefined'){
								schoolImage = 'default-school-logo.png'
							}
							htmlcontent +=
							//'<ul>'+				
							'<li>'+
					            '<div class="schl_contcs_colum_listing">'+
					            '<h3>'+value.schoolName+'</h3>'+
					            '<div class="schools_logos">'+
					                '<img src="'+contextPath+'/NewStyles/images/school-profile/'+schoolImage+'"  alt=""/>'+
					                 '</div>'+
					                 '<div id="schoolDetail-'+value.schoolId+'" style="display:none" class="show-absolute-div">'+
					                 '<h3 class="funding_margin">Funding Status</h3>'+
					                 
					                 '<input type="hidden" value="'+value.totalCampAmount+'" id="totalCampaignAmount'+value.schoolId+'">'+
					                            '<input type="hidden" value="'+value.schoolContribution+'" id="schoolContributionTotal'+value.schoolId+'">'+
					                            '<input type="hidden" value="'+value.donorContribution+'" id="donorContributionTotal'+value.schoolId+'">'+ 
					                 
					                 
					                 '<div class="tar_container tar_container_small">'+
					                             '<div class="tar_wrapper_camp">'+
					                            '<div class="range_wrpr">'+
					                            '<div class="progress" style="border: 5px solid #dadada; border-radius:35px; overflow: hidden; ">'+
												    '<div class="progress-bar progress-bar-warning pinpoint" id="contributeSchoolFirst'+value.schoolId+'" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">'+
												     
												    '</div>'+
												    '<div class="progress-bar progress-bar-danger pinpoint" role="progressbar" id="donorContributedAmount'+value.schoolId+'" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff;">'+							    
												  	'</div>'+
												    '<div class="progress-bar progress-bar-success pinpoint" id="needAssistanceSecond'+value.schoolId+'" role="progressbar" style="border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;">'+
												    
												    '</div>'+
												    '<div class="progress-bar progress-bar-overload pinpoint" role="progressbar" id="donorContributedAmountOverload'+value.schoolId+'" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;">'+
												     
												  	'</div>'+
												   	
												  '</div>'+
					                            '</div>'+
					                            '</div>'+
					                            '</div>'
					                 if(value.totalClassCountUnderSchool==undefined){
					                	 htmlcontent += '<h3 style="visibility: hidden;margin: -10px;">Total No. of Classes : '+value.totalClassCountUnderSchool+'</h3>'
					                 }
					                 else{
					                	 htmlcontent += '<h3>Total No. of Classes : '+value.totalClassCountUnderSchool+'</h3>' 
					                 }
					                            
					                 
					                 htmlcontent +='<div class="txtcenter_align">'+
					                 '<a onclick="getPrincipalInfo('+value.userId+')" style="cursor: pointer;"  class="viewcontct_detail mrg_tp20">View Contact Detail</a>'+
					                 '</div>'+
					                 
					                 '<div class="txtcenter_align">'+
					                 '<a onclick="getPlaybackAPI('+value.schoolId+')" style="cursor: pointer;"  class="viewcontct_detail mrg_tp20">Playback API</a>'+
					                 '</div>'+
					                 '</div><span id="schoolBox-'+value.schoolId+'" class="view-hide">View Detail</span>'+
					            '</div>'+
					            	'</li>';
					            	//'</ul>'	;		
							
							
					    
					   // $("#contentNew").html('');
						} 
                     });
                	if(htmlcontent == ''){
                		htmlcontent = 'No record Found';
                		$("#noRcordFound").html(htmlcontent);
                		$("#schoolsRecordsFound").html('');
                		
                	}else{
                		$("#noRcordFound").html('');
                		$("#schoolsRecordsFound").html(htmlcontent);
                	}
                	$.each( response.modelMap.schoolDetails, function(index,value) {
                		 var firstValId=value.schoolId;
                         var schoolConhtribution = $("#schoolContributionTotal"+firstValId).val();
                        	
                        	var totalAmount = $("#totalCampaignAmount"+firstValId).val();
                        	
                        	var totalDonationAmount = $("#donorContributionTotal"+firstValId).val();

                        	 var resultPer1 ;
                        	 var resultPer2 ; //(100-(schoolConhtribution * 100/ totalAmount).toFixed())+"%";
                        	 var resultPer3;
                        	 if((Number(totalDonationAmount)+Number(schoolConhtribution))>(Number(totalAmount))){
                        		 resultPer1 = (schoolConhtribution * 100/ (Number(totalDonationAmount)+Number(schoolConhtribution)));
                        		 resultPer2 = (totalDonationAmount * 100/ (Number(totalDonationAmount)+Number(schoolConhtribution)));
                        		 if((Number(totalDonationAmount)>0)){
                        			 resultPer2 = resultPer2-1;
                        		 }else{
                        			 resultPer1 = resultPer1-1;
                        		 }
                        		 resultPer3 = 0;
                        		 $('#donorContributedAmountOverload'+firstValId).width("1%");
                        	 }else{
                        		 resultPer1 = (schoolConhtribution * 100/ totalAmount);
                        		 resultPer2 = (totalDonationAmount * 100/ totalAmount);
                        		 resultPer3 = 100-(resultPer1+resultPer2);
                        	 }
/*                         	 var resultPer1 = (schoolConhtribution * 100/ totalAmount);
                        	 var resultPer2 = (totalDonationAmount * 100/ totalAmount); //(100-(schoolConhtribution * 100/ totalAmount).toFixed())+"%";
                        	 if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
                    			 resultPer2 = 100-resultPer1-1;
                    			 var resultPer3 = (100-(resultPer1+resultPer2)-1);
                    		 }
                    		 else{
                    			 var resultPer3 = 100-(resultPer1+resultPer2);
                    		 } */
                        		 
                        	 resultPer1 = resultPer1.toFixed()+"%";
                        	 resultPer2 = resultPer2.toFixed()+"%";
                        	 resultPer3 = resultPer3.toFixed()+"%";
                        		 
                        	 $('#contributeSchoolFirst'+firstValId).width(resultPer1);
                        	 $('#contributeSchoolFirst'+firstValId).addClass("xtra_padding");
                        	 $('#donorContributedAmount'+firstValId).width(resultPer2);
                        	 $('#donorContributedAmount'+firstValId).addClass("xtra_padding");
                        	 $('#needAssistanceSecond'+firstValId).width(resultPer3);
/*                         	 if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
                   			 	$('#donorContributedAmountOverload'+firstValId).width("1%");
                   			 } */
                        	 $('#needAssistanceSecond'+firstValId).addClass("xtra_padding");
                        		 
                        	 var fundingAmount = (Number(schoolConhtribution))+(Number(totalDonationAmount));
                        	 var pendingAmount = totalAmount-fundingAmount;
                        		 
                        	 $("#contriAmount"+firstValId).html("$ "+schoolConhtribution)
                        	 $("#donorAmount"+firstValId).html("$ "+totalDonationAmount)
                        	 $("#assisAmount"+firstValId).html("$ "+pendingAmount)
                	});
                	
                	
                }
                 
                 
             	$("[id^=schoolBox-]").click(function () {

            	    $header = $(this);
            	    //getting the next element
            	    var id=$(this).attr("id");
            	    id = id.replace("Box","Detail");
            	    //$content = $header.previous();
            	    $content =$("#"+id);
            	    //open up the content needed - toggle the slide- if visible, slide up, if not slidedown.
            	    $content.slideToggle(500, function () {
            	        //execute this after slideToggle is done
            	        //change text of header based on visibility of content div
             	        $header.text(function () {
            	            //change text based on condition
            	            if($content.is(":visible")){
            	            	$header.addClass("mtop280");
            	            }else{
            	            	$header.removeClass("mtop280");
            	            }
            	            return $content.is(":visible") ? "Hide Detail" :"View Detail";
            	        }); 
            	    });

            	});
                 
           }
           
    });  
 }
 if(searchKeyword==""){
    location.reload();
 }
    
}
function stateFilter(){
    var searchKeyword = $("#stateDropdown").val();
 if(searchKeyword!=""){
    var url='<%=request.getContextPath()%>/superadmin/searchStateResults';
    $.ajax({
           url:url,
           method:'GET',
           async :false,
           data:{searchKeyword:searchKeyword},
           success:function(response){
                 if(response != null){
                	 var status="0";
                	
                	 var contextPath = '<%=request.getContextPath()%>';
                	 var htmlcontent='';
                	 
                	$.each( response.modelMap.schoolDetails, function(index,value) {
                		 var status="1";
						//alert("title = "+value.title);
						//alert("title = "+value.description);
 						var schoolImage = value.schoolLogo;
						if(typeof value.title === 'undefined'){
							if(typeof value.schoolLogo === 'undefined'){
								schoolImage = 'default-school-logo.png'
							}
							htmlcontent +=
					'<li>'+
			            '<div class="schl_contcs_colum_listing">'+
			            '<h3>'+value.schoolName+'</h3>'+
			            '<div class="schools_logos">'+
			                '<img src="'+contextPath+'/NewStyles/images/school-profile/'+schoolImage+'"  alt=""/>'+
			                 '</div>'+
			                 '<div id="schoolDetail-'+value.schoolId+'" style="display:none" class="show-absolute-div">'+
			                 '<h3 class="funding_margin">Funding Status</h3>'+
			                 
			                 '<input type="hidden" value="'+value.totalCampAmount+'" id="totalCampaignAmount'+value.schoolId+'">'+
			                            '<input type="hidden" value="'+value.schoolContribution+'" id="schoolContributionTotal'+value.schoolId+'">'+
			                            '<input type="hidden" value="'+value.donorContribution+'" id="donorContributionTotal'+value.schoolId+'">'+ 
			                 
			                 
			                 '<div class="tar_container tar_container_small">'+
			                             '<div class="tar_wrapper_camp">'+
			                            '<div class="range_wrpr">'+
			                            '<div class="progress" style="border: 5px solid #dadada; border-radius:35px; overflow: hidden; ">'+
										    '<div class="progress-bar progress-bar-warning pinpoint" id="contributeSchoolFirst'+value.schoolId+'" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">'+
										     
										    '</div>'+
										    '<div class="progress-bar progress-bar-danger pinpoint" role="progressbar" id="donorContributedAmount'+value.schoolId+'" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff;">'+							    
										  	'</div>'+
										    '<div class="progress-bar progress-bar-success pinpoint" id="needAssistanceSecond'+value.schoolId+'" role="progressbar" style="border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;">'+
										    
										    '</div>'+
										    '<div class="progress-bar progress-bar-overload pinpoint" role="progressbar" id="donorContributedAmountOverload'+value.schoolId+'" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;">'+
										     
										  	'</div>'+
										   	
										  '</div>'+
			                            '</div>'+
			                            '</div>'+
			                            '</div>'
			                            if(value.totalClassCountUnderSchool==undefined){
			                            	htmlcontent +='<h3 style="visibility: hidden;margin: -10px;">Total No. of Classes : '+value.totalClassCountUnderSchool+'</h3>'
			                            }
			                            else{
			                            	htmlcontent +='<h3>Total No. of Classes : '+value.totalClassCountUnderSchool+'</h3>'
			                            }
			                 			                               
			                            htmlcontent +='<div class="txtcenter_align">'+
			                 '<a onclick="getPrincipalInfo('+value.userId+')" style="cursor: pointer;"  class="viewcontct_detail mrg_tp20">View Contact Detail</a>'+
			                 '</div>'+
			                 
			                 '<div class="txtcenter_align">'+
			                 '<a onclick="getPlaybackAPI('+value.schoolId+')" style="cursor: pointer;"  class="viewcontct_detail mrg_tp20">Playback API</a>'+
			                 '</div>'+
			                 '</div><span id="schoolBox-'+value.schoolId+'" class="view-hide">View Detail</span>'+
			            '</div>'+
			            	'</li>';
			            	//'</ul>';		
							
					    //$("#schoolsRecordsFound").html(htmlcontent);
					   // $("#contentNew").html('');
						} 
                     });
                	if(htmlcontent == ''){
                		htmlcontent = 'No record Found';
                		$("#noRcordFound").html(htmlcontent);
                		$("#schoolsRecordsFound").html('');
                		
                	}else{
                		$("#noRcordFound").html('');
                		$("#schoolsRecordsFound").html(htmlcontent);
                	}
                	$.each( response.modelMap.schoolDetails, function(index,value) {
                		 var firstValId=value.schoolId;
                         var schoolConhtribution = $("#schoolContributionTotal"+firstValId).val();
                        	
                        	var totalAmount = $("#totalCampaignAmount"+firstValId).val();
                        	
                        	var totalDonationAmount = $("#donorContributionTotal"+firstValId).val();
                        	
                        	 var resultPer1 ;
                        	 var resultPer2 ; //(100-(schoolConhtribution * 100/ totalAmount).toFixed())+"%";
                        	 var resultPer3;
                        	 if((Number(totalDonationAmount)+Number(schoolConhtribution))>(Number(totalAmount))){
                        		 resultPer1 = (schoolConhtribution * 100/ (Number(totalDonationAmount)+Number(schoolConhtribution)));
                        		 resultPer2 = (totalDonationAmount * 100/ (Number(totalDonationAmount)+Number(schoolConhtribution)));
                        		 if((Number(totalDonationAmount)>0)){
                        			 resultPer2 = resultPer2-1;
                        		 }else{
                        			 resultPer1 = resultPer1-1;
                        		 }
                        		 resultPer3 = 0;
                        		 $('#donorContributedAmountOverload'+firstValId).width("1%");
                        	 }else{
                        		 resultPer1 = (schoolConhtribution * 100/ totalAmount);
                        		 resultPer2 = (totalDonationAmount * 100/ totalAmount);
                        		 resultPer3 = 100-(resultPer1+resultPer2);
                        	 }
/*                         	 var resultPer1 = (schoolConhtribution * 100/ totalAmount);
                        	 var resultPer2 = (totalDonationAmount * 100/ totalAmount); //(100-(schoolConhtribution * 100/ totalAmount).toFixed())+"%";
                        	 if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
                    			 resultPer2 = 100-resultPer1-1;
                    			 var resultPer3 = (100-(resultPer1+resultPer2)-1);
                    		 }
                    		 else{
                    			 var resultPer3 = 100-(resultPer1+resultPer2);
                    		 } */
                        		 
                        	 resultPer1 = resultPer1.toFixed()+"%";
                        	 resultPer2 = resultPer2.toFixed()+"%";
                        	 resultPer3 = resultPer3.toFixed()+"%";
                        		 
                        	 $('#contributeSchoolFirst'+firstValId).width(resultPer1);
                        	 $('#contributeSchoolFirst'+firstValId).addClass("xtra_padding");
                        	 $('#donorContributedAmount'+firstValId).width(resultPer2);
                        	 $('#donorContributedAmount'+firstValId).addClass("xtra_padding");
                        	 $('#needAssistanceSecond'+firstValId).width(resultPer3);
/*                         	 if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
                   			 	$('#donorContributedAmountOverload'+firstValId).width("1%");
                   			 } */
                        	 $('#needAssistanceSecond'+firstValId).addClass("xtra_padding");
                        		 
                        	 var fundingAmount = (Number(schoolConhtribution))+(Number(totalDonationAmount));
                        	 var pendingAmount = totalAmount-fundingAmount;
                        		 
                        	 $("#contriAmount"+firstValId).html("$ "+schoolConhtribution)
                        	 $("#donorAmount"+firstValId).html("$ "+totalDonationAmount)
                        	 $("#assisAmount"+firstValId).html("$ "+pendingAmount)
                	});
                /* 	if(status=="0"){
                        $("#noRcordFound").html('<div class="notfound"><h4>No Campaign Found</h4></div>');
                  } */
                	
                }
                 
              	$("[id^=schoolBox-]").click(function () {

            	    $header = $(this);
            	    //getting the next element
            	    var id=$(this).attr("id");
            	    id = id.replace("Box","Detail");
            	    //$content = $header.previous();
            	    $content =$("#"+id);
            	    //open up the content needed - toggle the slide- if visible, slide up, if not slidedown.
            	    $content.slideToggle(500, function () {
            	        //execute this after slideToggle is done
            	        //change text of header based on visibility of content div
             	        $header.text(function () {
            	            //change text based on condition
            	            if($content.is(":visible")){
            	            	$header.addClass("mtop280");
            	            }else{
            	            	$header.removeClass("mtop280");
            	            }
            	            return $content.is(":visible") ? "Hide Detail" :"View Detail";
            	        }); 
            	    });

            	});
                  
           }
           
    });  
 }
 if(searchKeyword==""){
    location.reload();
 }
	
	
}

function getPrincipalInfo(userId){
	$("#sample_1").dataTable().fnDestroy();
	$("#sample_1").html('');
	var userId = userId;
	
	$("#priUserId").val(userId);
	
	var url='<%=request.getContextPath()%>/superadmin/getPrincipalProfile';
	$.ajax({
		url:url,
		method:'POST',
		async :false,
		data:{userId:userId},
		success:function(response){
			if(response!=null){
				$("#fname").val(response.modelMap.userInfo.firstName);
				$("#lname").val(response.modelMap.userInfo.lastName);
				
				if(typeof (response.modelMap.userInfo.logo) =="undefined"){
					$('#logoImage').attr('src', '<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png');
				}
				
				else if(response.modelMap.userInfo.logo){
					$('#logoImage').attr('src', '<%=request.getContextPath()%>/NewStyles/images/school-profile/'+response.modelMap.userInfo.logo);
				}
				
					
				var emaildrop="";
				if(response.modelMap.userInfo.email == '' || typeof response.modelMap.userInfo.email == "undefined"){	
					emaildrop+='<div class="makePtPrincipal"><select id="selectEmailDrop">';
					$.each( response.modelMap.userInfo.listTeacher, function(index,value) {
						
						emaildrop+='<option value="'+value.teacherId+'">'+value.email+'</option>';

					});
					emaildrop+='</select><input title="Select a teacher and make principal" type="button" onclick=makeTeacherPrincipal(); class="submit-btn fr paddingtopbtm5" name="makePrincipal" value="Make Principal"></div>';
				}
				else{
					emaildrop+= '<a id="mailto" target="_top" class="listing-email-anchr"><label style="cursor:pointer" id="email">'+response.modelMap.userInfo.email+'</label></a>'+
					'<input title="Select a teacher and make principal" type="button" onclick=changeTeacherPrincipal('+response.modelMap.userInfo.userId+'); class="submit-btn paddingtopbtm5 fr" name="chnagePrincipal" value="Change Principal">';
				}
					
					$("#emailDropDown").html(emaildrop);
					
					//$("#email").text(response.modelMap.userInfo.email);
				$("#mailto").attr("href","mailto:"+response.modelMap.userInfo.email)
				$("#mobile").val(response.modelMap.userInfo.mobile);
				
				
				
			/* 	$.each( response.modelMap.userInfo.listTeacher, function(index,value) {
					$("#mobile").text(value.teacherName);
				});
				 */
				
				
				  var teacherDetail='';
				 teacherDetail+='<thead><tr><th><strong>Teacher Name</strong></th>'+
				 '<th ><strong>Email</strong></th>'+	
				 '<th ><strong>Class</strong></th>'+
				 '<th ><strong>Action</strong></th>'+
					'<th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';
					
					$.each( response.modelMap.userInfo.listTeacher, function(index,value) {
						teacherDetail+='<tr><td ><p>'+value.teacherName+'</p></td>'+
						'<td ><p><a href="mailto:'+value.email+'">'+value.email+'</a></p></td>'+
						'<td><p>'+value.teacherClasses+'</p></td>'+
						'<td><a onclick=teacherAction('+value.teacherId+'); id="bloackStatus-'+value.teacherId+'">['+value.status+'] </a>'
						+'<a onclick=teacherChangePassword('+value.teacherId+'); >[Change Password]</a></td>'+
						/* '<a onclick=editDetails('+value.teacherId+'); >[Edit]</a></td>'+ */
						'<td style="display:none;"></td><td style="display:none;"></td></tr>';
					});
		    	
					teacherDetail+='</tbody>';
				 
					$("#sample_1").html(teacherDetail);
				    $("#sample_1").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15}); 
				
				
				
				if(response.modelMap.userInfo.isTrail == 'Y'){
					$("#popup-header").text("Pioneer Teacher Detail");
				}
				else{
					$("#popup-header").text("Principal Details");
				}
				
				
				
				
				
				
				 $.fancybox({
				     'autoScale': true,
				     'autoDimensions': true,
				     'centerOnScroll': true,
				     'href' : '#view_contact_detail'
				  });
			
			return true;
		}
		else{
			
		}
		}
	});
}

/* function getPlaybackAPI(schoolId){
	alert("sss");
	$.fancybox({
		 'minWidth':300,
		 'padding':45,
		 'minHeight':150,
	     'autoScale': true,
	     'autoDimensions': true,
	     'centerOnScroll': true,
	     'href' : '#playbackApiBySchool'
	  });
} */


function getPlaybackAPI(schoolId){
	
	$("#schoolId").val(schoolId);
	
		$("#sample_6").dataTable().fnDestroy();
		$("#sample_6").html('');
	   var url='<%=request.getContextPath()%>/superadmin/getPlaybackAPIDetails';
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{schoolId:schoolId},
			cache:false,
			success:function(response){
				
				if(response != null  && response.modelMap.dtoContentPlaybacks!=null){
					var audioQualityDetail='';
					audioQualityDetail+='<thead><tr><th><strong>Teacher Name</strong></th>'+
					'<th ><strong>Program</strong></th><th ><strong>Feedback Rate</strong></th>'+
					'<th ><strong>Average Feedback</strong></th><th ><strong>Daily Practice Rate</strong></th>'+
					'<th ><strong>Repeat Rate</strong></th><th ><strong>Skip Play Rate</strong></th>'+
					'<th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';
					
					$.each( response.modelMap.dtoContentPlaybacks, function(index,value) {
						audioQualityDetail+='<tr><td ><p>'+value.name+'</p></td>'+
						'<td ><p>'+value.progName+'</p></td>'+
						'<td><p>'+value.feedbackRate+'%</p></td>'+
						'<td><p>';
						
						for(var i=1;i<=5;i++){
							
							if(i <= value.starRating){
								
								audioQualityDetail+='<img src="<%=request.getContextPath()%>/NewStyles/images/star-table-yellow.png">';
							}
							else{
								audioQualityDetail+='<img src="<%=request.getContextPath()%>/NewStyles/images/star-table-grey.png">';
							}
							
						}
						
						audioQualityDetail+='</p></td>'+
						
						'<td><p>'+value.dailyPractice+'</p></td>'+
						'<td><p>'+value.repeatRate+'%</p></td>'+
						'<td ><p>'+value.skipPlayRate+'</p></td><td style="display:none;"></td><td style="display:none;"></td></tr>';
					});
		    	
		    	audioQualityDetail+='</tbody>';
		    	
			$("#sample_6").html(audioQualityDetail);
		    $("#sample_6").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
		    //jQuery('#sample_6_wrapper .dataTables_info ').attr("style","display:none");
		    //jQuery('#sample_6_wrapper .dataTables_paginate ').attr("style","display:none");
		    //jQuery('#sample_6_wrapper .dataTables_length ').attr("style","display:none");
		    
		    
		    if(response.modelMap.dtoContentPlaybacksSize=='0'){
		    	$("#sendEmailAudioQualityButton").hide();
		    }
		    else{
		    	$("#sendEmailAudioQualityButton").show();
		    }
		    
				
				 $.fancybox({
					 'minWidth':900,
					 'padding':45,
					 'minHeight':150,
				     'autoScale': true,
				     'autoDimensions': true,
				     'centerOnScroll': true,
				     'href' : '#playbackApiBySchool'
				  });
	
				}
			}
		});
}

function openSendEmailPopup(){
	
	 $.fancybox({
		 'minWidth':300,
		 'padding':45,
		 'minHeight':150,
	     'autoScale': true,
	     'autoDimensions': true,
	     'centerOnScroll': true,
	     'href' : '#sendEmailPopup'
	  });
	  
 }

function submitEmail(){
	//alert("test");
	  if($("#schoolListingEmail").valid()){
		  //alert("test eeee");
	  var schoolId=$("#schoolId").val();
	  var title=$("#emailTitle").val();
	  var message=$("#emailMessage").val();
	  var url='<%=request.getContextPath()%>/superadmin/sendSchoolPlaybackAPIEmail';
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{schoolId:schoolId,title:title,message:message},
			cache:false,
			success:function(response){
				$.fancybox.close();
	
				}
			
		});
	  }
}
function teacherAction(teacherId){
	var userId = teacherId;
	var url='<%=request.getContextPath()%>/superadmin/setTeacherStatus';
	$.ajax({
		url:url,
		method:'POST',
		async :false,
		data:{userId:userId},
		success:function(response){
			if(response!=null){
				if($("#bloackStatus-"+teacherId).text()=='Block'){
					$("#bloackStatus-"+teacherId).text('Unblock');
				}else{
					$("#bloackStatus-"+teacherId).text('Block');
				}
				//alert("success");
			return true;
		}
		
	}
});
	
}

function teacherChangePassword(teacherId){
	
	$("#teacherUserId").val(teacherId);
	$("#newPassword").val("");
	$("#confirmPassword").val("");

	 $.fancybox({
	     'autoScale': true,
	     'autoDimensions': true,
	     'centerOnScroll': true,
	     'href' : '#teacherChangePassword'
	  });
	 
	 
}


function changePasswordFrom(){
	
	if($("#teacherChangePasswordForm").valid()){
	
	var teacherUserId = $("#teacherUserId").val();
	var newPass=$("#newPassword").val();
	var url='<%=request.getContextPath()%>/superadmin/setTeacherPassword';
	
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{teacherUserId:teacherUserId,newPass:newPass},
			success:function(response){
				
					alert("Password Change successfully");
				
			}
	});
		
		$.fancybox.close();
}
}
function makeTeacherPrincipal(){
	
	var teacherUserId = document.getElementById("selectEmailDrop").value;
	
	var url='<%=request.getContextPath()%>/superadmin/makeTeacherPrincipal';
	
	$.ajax({
		url:url,
		method:'POST',
		async :false,
		data:{teacherUserId:teacherUserId},
		success:function(response){
			
			alert("Principal Created Sucessfully");
		}
});
	
	$.fancybox.close();
	
}

function submitUpdatePriFrom(){
	
	if($("#form_sample_1").valid()){
	
	$("#form_sample_1").submit();
	}
}


function getImagePath(input){
	
	if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e)  {
            $('#logoImage').attr('src', e.target.result);
        };

        reader.readAsDataURL(input.files[0]);
        
    }
	
}

function changeTeacherPrincipal(userId){
	
	var userId = userId;
	
	//$("#priUserId").val(userId);
	
	var url='<%=request.getContextPath()%>/superadmin/getPrincipalProfile';
	$.ajax({
		url:url,
		method:'POST',
		async :false,
		data:{userId:userId},
		success:function(response){
			if(response!=null){
				$("#fname").val(response.modelMap.userInfo.firstName);
				$("#lname").val(response.modelMap.userInfo.lastName);
				
				if(typeof (response.modelMap.userInfo.logo) =="undefined"){
					$('#logoImage').attr('src', '<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png');
				}
				
				else if(response.modelMap.userInfo.logo){
					$('#logoImage').attr('src', '<%=request.getContextPath()%>/NewStyles/images/school-profile/'+response.modelMap.userInfo.logo);
				}
				
					
				var emaildrop="";
				
					emaildrop+='<div class="makePtPrincipal"><select id="selectEmailDrop" >';
					$.each( response.modelMap.userInfo.listTeacher, function(index,value) {
						
						if(response.modelMap.userInfo.email == value.email){	
						
						emaildrop+='<option value="'+value.teacherId+'" selected>'+value.email+'</option>';
						}
						else
							{
							emaildrop+='<option value="'+value.teacherId+'">'+value.email+'</option>';
							}

					});
					emaildrop+='</select><input title="Select a teacher and make principal" type="button" onclick=makeTeacherPrincipal(); class="submit-btn fr paddingtopbtm5" name="makePrincipal" value="Make Principal"></div>';
				
				
					
					$("#emailDropDown").html(emaildrop);
					
					//$("#email").text(response.modelMap.userInfo.email);
				$("#mailto").attr("href","mailto:"+response.modelMap.userInfo.email)
				$("#mobile").val(response.modelMap.userInfo.mobile);
				
			
			
			return true;
		}
		else{
			
		}
		}
	});
}

function getSelectData(teacherId){
	var teacherId = teacherId;
	
	//$("#priUserId").val(teacherId);
	
	var url='<%=request.getContextPath()%>/superadmin/getTeacherData';
	$.ajax({
		url:url,
		method:'POST',
		async :false,
		data:{teacherId:teacherId},
		success:function(response){
			if(response!=null){
				$("#fname").val(response.modelMap.userInfo.firstName);
				$("#lname").val(response.modelMap.userInfo.lastName);
				
				
				$("#mobile").val(response.modelMap.userInfo.mobile);
				
			
			
			return true;
		}
		else{
			
		}
		}
	});
}

function editDetails(teacherId)
{
	
	var url='<%=request.getContextPath()%>/superadmin/getTeacherByTeacherId';
	$.ajax({
		url:url,
		method:'POST',
		async :false,
		data:{teacherId:teacherId},
		success:function(response){
			if(response!=null){
				
				var programDropdown="";
				programDropdown+='<select id="programName" name="schoolProgramId">';
					$.each( response.modelMap.practiceProgress, function(index,value) {
						
						programDropdown+='<option value="'+value.schoolProgramId+'">'+value.programName+'</option>';
					
					});
					programDropdown+='</select>';
					
					$("#programDropdown").html(programDropdown);
				
				var classDropdown="";
				classDropdown+='<select id="classNameAll" name="classNameAll">';
					$.each( response.modelMap.practiceProgress, function(index,value) {
						
						classDropdown+='<option value="'+value.classId+'">'+value.className+'</option>';

					});
					classDropdown+='</select>';
					$("#classDropdown").html(classDropdown);
				
					$.each( response.modelMap.practiceProgress, function(index,value) {
						$("#teacherName").val(value.teacherName);
						$("#teacherEmail").val(value.teacherEmail);
						
						$("#classTeacherReleationId").val(value.classTeacherRelationId);
						$("#currentEmail").val(value.teacherEmail);
						
					});
					
				/* $("#className").val(response.modelMap.practiceProgress.className); */
				/* $("#programName").val(response.modelMap.practiceProgress.schoolProgramId); */
				/* $("#teacherName").val(response.modelMap.practiceProgress.teacherName);
				$("#teacherEmail").val(response.modelMap.practiceProgress.teacherEmail);
				$("#classTeacherReleationId").val(response.modelMap.practiceProgress.classTeacherRelationId);
				$("#currentEmail").val(response.modelMap.practiceProgress.teacherEmail); */
			
			return true;
		}
		else{
			
		}
		}
	});
	
	 $.fancybox({
		 'minWidth':200,
		 'padding':45,
		 'minHeight':250,
	     'autoScale': true,
	     'autoDimensions': true,
	     'centerOnScroll': true,
	     'href' : '#editTeachers'
	  });
}


function showTab(current,max){
	for (i=1;i<=max;i++){
	getMyHTMLElement('tab' + i).style.display = 'none';
	getMyHTMLElement('mtab' + i).className = '';
	
	
	
	}
	getMyHTMLElement('tab' + current).style.display = '';
	getMyHTMLElement('mtab' + current).className = 'selected';
	
	if(current==2){
		$("#searchOption").hide();
		$("#tabDiv").addClass('tab-new-margin');
	}
	if(current==1){
		$("#searchOption").show();
		$("#tabDiv").removeClass('tab-new-margin');
	}
	
	
	}

function getSendMailToSchoolPopup(schoolId){
	var url='<%=request.getContextPath()%>/superadmin/sendMailToAllSchoolEmp';
	$.ajax({
		url:url,
		method:'POST',
		async :false,
		data:{schoolId:schoolId},
		success:function(response){
		if(response!=null){
			alert("Mail sent to all Principals and Teachers");
			$("#sendMailToAll"+schoolId).prop('onclick',null).off('click');
			return true;
		}
		else{
			alert("oops something went wrong!!!");
		}
		}
	});
}
function getSendMailToAllSchoolPopup(){
	var url='<%=request.getContextPath()%>/superadmin/sendMailToAllSchoolEmpOnce';
	$.ajax({
		url:url,
		method:'POST',
		async :false,
		success:function(response){
		if(response!=null){
			alert("Mail sent to all Principals and Teachers");
			$("#sendMailToAllOnce").prop('onclick',null).off('click');
			return true;
		}
		else{
			alert("oops something went wrong!!!");
		}
		}
	});
}
</script>

</body>
</html>
