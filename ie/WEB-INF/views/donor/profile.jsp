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
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>Profile</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link
	href="<%=request.getContextPath()%>/NewStyles/css/autocomplete/main.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"
	id="style_components" rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<link rel="stylesheet"
	href="https://cdn.datatables.net/select/1.1.0/css/select.dataTables.min.css" />
<style type="text/css">
.fancybox-inner {
	height: auto !important;
	overflow: hidden !important;
}
</style>
</head>
<body>
	<div class="wrapper">
		<%@include file="header.jsp"%>
		<section class="makeDonateSct mtop-5">
			<div class="containerSmall">
				<!-- parent profile form start -->
				<form:form name="parentSignup" class="register-form"
					modelAttribute="dtoUser" action="profileUpdate" method="POST"
					enctype="multipart/form-data">
					<div class="pracProgress_hdr">
						<h2>Profile</h2>
						<div class="green_line_btm"></div>
						<div class="clr"></div>
					</div>
					<div class="getstartForm" id="homeEdition">
						<label>Personal Info</label>
						<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input path="firstName" type="text"
												placeholder="First Name" value="${userDetails.firstName}" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input path="lastName" type="text"
												placeholder="Last Name" value="${userDetails.lastName}" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input path="email" type="text" placeholder="Email"
												value="${userDetails.email}" readonly="readonly" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input path="addressParent" id="addressParent"
												type="text" placeholder="Address"
												value="${userDetails.addressParent}" />
											<input type="hidden" name="latitude" id="latitude"
												value="0.0" /> <input type="hidden" name="longitude"
												id="longitude" value="0.0" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input path="zipCodeNew" type="text" name="zipCodeNew"
												placeholder="Zip Code" id="zipCodeNew"
												value="${userDetails.zipCodeNew}" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input path="stateNew" type="text" placeholder="State"
												value="${userDetails.stateNew}" />
											<form:input type="hidden" path="stateShortNew"
												name="stateShortNew" id="state_short" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input path="city" type="text" placeholder="City"
												value="${userDetails.city}" />
										</div>
									</div>
								</div>
							</li>

							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input type="text" path="mobile"
												value="${userDetails.mobile}" placeholder="Mobile Number"
												autocomplete="off" />
										</div>
									</div>
								</div>
							</li>
							<li id="oldSchoolLogo">
								<div class="popup_school_details_img" title="Profile Pic">
									<c:if test="${userDetails.profilePic ne 'NA'}">
										<img
											src="<%=request.getContextPath()%>/NewStyles/images/parent-profile/${userDetails.profilePic}"
											id="schoolSelectedLogo" alt="" />
									</c:if>
									<c:if test="${userDetails.profilePic eq 'NA'}">
										<img
											src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png"
											alt="" id="schoolSelectedLogo">
									</c:if>

									<div class="edit-img" title="Select a profile pic">
										<form:input id="mediaFile" name="mediaFile" accept="image/*"
											type="file" value="" path="image"
											onchange="getImagePathParent(this);" />
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="getstartForm">
						<label>Password Management</label>
						<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="password" name="password" id="oldPassword"
												placeholder="Enter old password" autocomplete="off" />
										</div>
									</div>
								</div>
							</li>
							<li></li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input type="password" path="newPassword"
												id="submit_form_password" placeholder="Enter New password"
												autocomplete="off" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="password" name="rpassword"
												placeholder="Re-enter Password" id="rpassword"
												autocomplete="off" />
										</div>
									</div>
								</div>
							</li>

						</ul>
					</div>
					<c:if test="${not empty userDetails.expiryDate}">
						<div class="hed_content">
							<p style="font-weight: 600;">
								Your Subscription will be expired on ${userDetails.expiryDate} <input
									type="button" value="Renew"
									onClick="location.href='<%=request.getContextPath()%>/donor/upgradeRadio';"
									class="submit-btn" />
							</p>
						</div>
					</c:if>
					<div class="getstartForm">
						<label>Social Media</label>
						<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input type="text" path="facebookId"
												value="${userDetails.facebookId}"
												placeholder="Enter facebook profile url" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input type="text" path="amazonUrl"
												value="${userDetails.amazonUrl}"
												placeholder="Enter amazon contributes link" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input type="text" path="twitterId"
												value="${userDetails.twitterId}"
												placeholder="Enter twitter profile url" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<form:input type="text" path="linkedinId"
												value="${userDetails.linkedinId}"
												placeholder="Enter linkedin profile url" />
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="getstartForm">
						<label>Security Question</label>
						<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<label>Your favorite Dessert</label>
											<form:input type="text" path="answer1"
												value="${dtoUser.answer1}" placeholder="Answer 1" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<label>Your mother's maiden name</label>
											<form:input type="text" path="answer2"
												value="${dtoUser.answer2}" placeholder="Answer 2" />
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="btns-outer mtop10">
						<input type="hidden" name="parentType" id="parentType" /> <input
							type="submit" value="Save" class="submit-btn fl" />
						<c:if test="${paymentType eq '1'}">
							<input type="button" value="Upgrade"
								onClick="location.href='<%=request.getContextPath()%>/donor/upgradeRadio';"
								class="submit-btn fl" style="margin-left: 10px;" />
						</c:if>
						<c:if test="${isSubscribed eq 'Y'}">
							<input type="button" value="Cancel Subscription"
								onClick="cancelSubscription();" class="submit-btn fl"
								style="margin-left: 10px;" />
						</c:if>
						<c:if test="${userDetails.parentType eq '1'}">
					<input type="submit" value="Change Subscription to Yearly"
								onClick="changeSubscription();" class="submit-btn fl" 
								style="margin-left: 10px;" />
					</c:if>
					</div>
				</form:form>
				<!-- parent profile form ends -->
				<!-- parent child table start-->
				<c:if test="${userType ne 'family'}">
					<div class="fam-profile">
						<input type="button" onclick="showParentChild();"
							value="Add Child" class="startBtn fl">
						<div class="ur_grid ur_grid_pop p-font14">

							<table class="table table-striped table-bordered table-hover"
								id="sample_1">
								<thead>
									<tr>
										<th>Child Name</th>
										<th>Teacher Name</th>
										<th>School</th>
										<th>School Address</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="dtoUserKids" items="${dtoUserKids}">
										<tr>
											<td><span class="fd_span">${dtoUserKids.childName}</span></td>
											<td><span class="fd_span">${dtoUserKids.teacherName}</span></td>
											<td><span class="fd_span">${dtoUserKids.schoolName}</span></td>
											<td><span class="fd_span">${dtoUserKids.address}</span></td>
											<td><a
												onclick=editChild(${dtoUserKids.parentTeacherId});>[Edit]
											</a> <a onclick=deleteChild(${dtoUserKids.parentTeacherId});>[Delete]</a>
												<a title="You can add, edit and delete reference emails"
												onclick=radioOptInOut(${dtoUserKids.parentTeacherId});>[Opt
													in/out]</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</c:if>
				<!-- parent child table ends-->
				<!-- parent family table start-->
				<c:if test="${userType ne 'family' && userType ne 'share'}">
					<div class="fam-profile">
						<input type="button" onclick="showParentFamily();"
							value="Add Family Member" class="startBtn fl">
						<div class="ur_grid ur_grid_pop p-font14">

							<table class="table table-striped table-bordered table-hover"
								id="sample_1">
								<thead>
									<tr>
										<th>Parent Name</th>
										<th>Email</th>
										<th>Address</th>
										<th>Actions</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="dtoFamilyUser" items="${dtoFamilyUser}">
										<tr>
											<td><span class="fd_span">${dtoFamilyUser.familyName}</span></td>
											<td><span class="fd_span">${dtoFamilyUser.familyEmail}</span></td>
											<td><span class="fd_span">${dtoFamilyUser.familyAddress}</span></td>
											<td><a
												onclick=editFamily(${dtoFamilyUser.familyMemberRelId});>[Edit]
											</a><a onclick=deleteFamily(${dtoFamilyUser.familyMemberRelId});>[Delete]</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</c:if>
				<!-- parent family table ends-->
			</div>
		</section>
	</div>
	<!-- parent child info popup -->
	<div class="getstartForm_teacher" id="parentEdition"
		style="display: none;">
		<form:form name="kidsForm" id="kidsForm"
			modelAttribute="dtoChildDetails" action="addChildDetails"
			method="POST" enctype="multipart/form-data">
			<label>School Info for Child</label>
			<div id="parentInfo">

				<div id="divSection">
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Child Name" name="childName"
											id="childName" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="hidden" name="schoolId" value="0" id="schoolId" />
										<input type="text" placeholder="School Name" name="schoolName"
											id="schoolName" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="School Address"
											name="schoolAddress" id="schoolAddress" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Zip Code" name="zipcode"
											id="zipcode" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="hidden" name="stateShortChild"
											id="stateShortChild" /> <input type="text"
											placeholder="City/State" name="state" id="state" />
									</div>
								</div>
							</div>
						</li>

						<li style="display: none;" id="regSc">
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field" id="registeredSchool"></div>
								</div>
							</div>
						</li>

						<li style="display: none;" id="tName">
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Teacher Name"
											name="teacherName" id="teacherName" />
									</div>
									<input type="hidden" name="teacherId" value="0" id="teacherId" />
								</div>
							</div>
						</li>
						<li style="display: none;" id="clsName">
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="hidden" name="classId" value="0" id="classId" />
										<!-- <input type="hidden" placeholder="Class" name="className"
											id="className" /> -->
									</div>
								</div>
							</div>
						</li>

						<%-- 
						<li id="childPic" style="display: none;">
							<div class="popup_school_details_img" title="Profile Pic">
								<img
									src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png"
									alt="" id="childProfilePic">
								<div class="edit-img" title="Select a profile pic">
									<input id="mediaFile" name="mediaFile" accept="image/*"
										type="file" value="" name="imageKids"
										onchange="getImagePathKids(this);" />
								</div>
							</div>
						</li> --%>

						<div class="strt-peti" style="display: none;" id="optInRadio">
							<p>

								<input type="checkbox" id="optIn" name="optIn"
									onclick="optInStatusRadio();" /><span>You have access of
									Live Radio for this class</span>
							</p>

						</div>

						<div class="strt-peti" style="display: none;" id="petition">
							<input type="hidden" name="petitionSchoolId"
								id="petitionSchoolId"> <input type="hidden"
								name="ieSchool" id="ieSchool" />


							<p>
								Your kids school does not have IE program running. Start a
								Petition<span><input type="button"
									value="Start a Petition" class="startBtn petbutton"
									onclick="startPetition();" /></span>
							</p>
						</div>
						<div class="strt-peti" style="display: none;" id="sendEmailSch">
							<p>
								Your kids school does not have IE program running for any class.
								Please contact to School Administrator<span> <input
									type="button" value="Send Email" class="startBtn fl"
									onclick="sendEmail();" /></span>
							</p>

						</div>
					</ul>
				</div>
			</div>
			<input type="hidden" name="isUpdateChild" id="isUpdateChild"
				value="N">
			<input type="hidden" name="childId" id="childId" value="0">
			<input type="hidden" name="optInStatus" id="optInStatus" value="N">
			<input type="button" class="startBtn fl" value="Save Child Info"
				id="submitChildForm" onclick="submitFormChild();">
		</form:form>
	</div>

	<!-- parent family info popup -->
	<div class="getstartForm_teacher" id="parentEditionFamily"
		style="display: none;">
		<label>Family Member</label>
		<div id="parentInfoFamily">
			<div id="divSectionFamily">
				<form:form name="familyForm" id="familyForm"
					modelAttribute="dtoUser" action="addFamilyDetails" method="POST"
					enctype="multipart/form-data">
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Name" name="familyName"
											id="familyName" />
									</div>
								</div>
							</div>
						</li>

						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Email" name="familyEmail"
											id="familyEmail" />
									</div>
								</div>
							</div>
						</li>

						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Address" name="familyAddress"
											id="familyAddress" /> <input type="hidden" name="familyLat"
											id="familyLat" value="0.0" /> <input type="hidden"
											name="familyLng" id="familyLng" value="0.0" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Zip Code" name="familyZipcode"
											id="familyZipcode" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="hidden" name="stateShortFamily"
											id="stateShortFamily" /> <input type="text"
											placeholder="State" name="familyState" id="familyState" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input id="familyCity" name="familyCity" type="text"
											placeholder="City" />
									</div>
								</div>
							</div>
						</li>

						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" id="familyMobile" name="familyMobile"
											placeholder="Mobile Number" autocomplete="off" />
									</div>
								</div>
							</div>
						</li>
					</ul>
					<input type="hidden" name="isUpdateFamily" id="isUpdateFamily"
						value="N">
					<input type="hidden" name="familyId" id="familyId" value="0">

					<input class="startBtn fl" type="button" value="Save Family Info"
						onclick="submitFormFamily();">
				</form:form>
			</div>
		</div>
	</div>

	<div class="getstartForm_teacher" id="refenceEmailPopup"
		style="display: none;">
		<section class="getStartSct mtop-5 pb0">
			<h3 class="teachr_dsh bdr-btm-none refdetail">Include my
				following email addresses and phone number to receive notification
				of a live session</h3>
			<form:form method="post" modelAttribute="dtoLetterToParent"
				enctype="multipart/form-data" action="saveRefEmailparent"
				id="saveSignupForm" name="saveSignupForm">
				<div class="steps_getstarted">
					<div id="form3"></div>
					<div id="tab1">
						<div class="section_trial">
							<div class="free_trial_somedays refEmailSave">
								<input class="startBtn fl" type="button" value="Save"
									onclick="proceedToStepFour();">
							</div>
						</div>
					</div>
				</div>
			</form:form>
		</section>
	</div>
	<!-- edit and add refence emails popup -->
	<div class="getstartForm_teacher" id="addEditRefenceEmailPopup"
		style="display: none;">
		<section class="getStartSct mtop-5 pb0">
			<h3 class="teachr_dsh bdr-btm-none refdetail">Include my
				following email addresses and phone number to receive notification
				of a live session</h3>
			<form:form method="post" modelAttribute="dtoLetterToParent"
				enctype="multipart/form-data" action="addEditRefEmailParent"
				id="addEditRefEmailParentForm" name="addEditRefEmailParentForm">
				<div class="steps_getstarted">
					<div id="form4"></div>
					<div id="tab1">
						<div class="section_trial">
							<div class="free_trial_somedays refEmailSave">
								<input class="startBtn fl" type="button" value="Save"
									onclick="addEditRefEmailParent();">
							</div>
						</div>
					</div>
				</div>
			</form:form>
		</section>
	</div>

	<input type="hidden" name="oldFamilyEmail" id="oldFamilyEmail">
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%@include file="../footer.jsp"%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.autocomplete.js"
		type="text/javascript"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/select/1.1.0/js/dataTables.select.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>
	<%-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBDhC2D4zTDZrGXabrWCl4Trh13XRdNmSc&sensor=false&callback=initialize"></script> --%>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBDhC2D4zTDZrGXabrWCl4Trh13XRdNmSc&libraries=places"></script>
	<%-- <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBDhC2D4zTDZrGXabrWCl4Trh13XRdNmSc&callback=initMap"
type="text/javascript"></script> --%>
	<script type="text/javascript">	
   function emailAlreadyCheck(){
	   var emailOld = '${userDetails.email}';
		var email = $("#email").val().trim();
		if(email != "" && emailOld != email){
			$.ajax({
				url : "<%=request.getContextPath()%>/check/availability/parent/email",
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
   
   function emailAlreadyFamilyCheck(){
	   var emailOld = $("#oldFamilyEmail").val();
		var email = $("#familyEmail").val().trim();
		if(email != "" && emailOld != email){
			$.ajax({
				url : "<%=request.getContextPath()%>/donor/checkFamily",
				method : 'POST',
				headers: { 
					'Content-Type':'application/json'
					},
				data : JSON.stringify({"email":email}),
				async:false,
				success : function(result) {
					if(result){
						emailStatus = false;
					}
					else{
						emailStatus = true;
					}
				}
			});
		}else{
			emailStatus = true;
		}
		return emailStatus;
   }
   
	jQuery(document).ready(function($){
		
		
		jQuery.validator.addMethod("notEqual", function(value, element) {
			var status = true;
			$('[id^=parentEmail_]').each( function( index, el ){
				if(($( el ).val() == value || $("#parentEmail").val() == value) && $( el ).attr("id") != $(element).attr("id") ){
					status = false;
				}
			});
			  return this.optional(element) || status;
			}, "Please use unique email address.");
		
		
		$('[id^=sample_1]').dataTable({"aLengthMenu": [[5, 10, 50, -1],[5, 10, 50, "All"] ],columnDefs: [ {
	        orderable: false,
	        className: 'select-checkbox',
	        targets:   0
	    } ],
	    select: {
	        style:    'os',
	        selector: 'td:first-child'
	    },
	    order: [[ 1, 'asc' ]], "iDisplayLength": 5});
		
		$("#zipCodeNew").blur(function(event) {
    		$.ajax({
    			url : "http://zip.getziptastic.com/v2/US/"+$(this).val(),
    			success : function(result) {
    				$("#state_short").val(result.state_short);
    				$("#stateNew").val(result.state);
    				$("#city").val(result.city);
    			}
    			
    		});
    	});
		
		$("#zipCodeFamily_0").blur(function(event) {
    		$.ajax({
    			url : "http://zip.getziptastic.com/v2/US/"+$(this).val(),
    			success : function(result) {
    				$("#stateShortFamily_0").val(result.state_short);
    				$("#stateFamily_0").val(result.state);
    				$("#cityFamily_0").val(result.city);
    			}
    			
    		});
    	});
		if('${userDetails.profilePic}' == ''){
    		$('#newSchoolLogo').show();
    		$('#oldSchoolLogo').hide();
    	}else{
    		$('#newSchoolLogo').hide();
    		$('#oldSchoolLogo').show();
    	}
		$("#header").sticky({ topSpacing: 0 });
		 $("#removeParentChild").hide();
		$("#parentEdition").hide();
		$("#homeEdition").show();
		$("#parentType").val(2);
		
		$("#removeParentFamily").hide();
		$("#parentEditionFamily").hide();
		$.daisyNav();
	    var oldPwd = '${userDetails.password}';
	    function oldPasswordCheck(){
        	var oldPassword = $('#oldPassword').val();
        	if(oldPassword!=''){
        		if(oldPwd != oldPassword){
        			pwdStatus = false;
        		}else{
        			pwdStatus = true;
        		}
        	}else{
        		pwdStatus = true;
        	}
        	return pwdStatus;
        }
						    $.validator.addMethod("oldPasswordNotMatch", function(value, element) {
					            return this.optional(element) || oldPasswordCheck();
					        }, "Old password do not match.");
		
		                    $.validator.addMethod("emailAlreadyExist", function(value, element) {
		                        return this.optional(element) || emailAlreadyCheck();
		                    }, "Email already exists.");
		                    $.validator.addMethod("nameRegex", function(value, element) {
		                        return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
		                    }, "Field must contain letters only.");
		                    $.validator.addMethod("specialChar", function(value, element) {
		                        return this.optional(element) || /^[a-zA-Z0-9- ]+$/i.test(value);
		                    }, "Remove special characters.");
		                    
		                    $.validator.addMethod("emailFamilyAlreadyExist", function(value, element) {
		                        return this.optional(element) || emailAlreadyFamilyCheck();
		                    }, "Email already exists.");
		                    
		                    /* parent profile validation */
		                    $('.register-form').validate({
		                        errorElement: 'span',
		                        errorClass: 'help-block',
		                        focusInvalid: false,
		                        rules: {
		                            firstName: {
		                                required: true,
		                                maxlength : 20,
		                                specialChar :true
		                            },
		                            lastName: {
		                                maxlength : 20,
		                                specialChar :true
		                            },
		                           email: {
		                                required: true,
		                                email: true,
		                                emailAlreadyExist: true
		                            }, 
									city : {
										required: true,
										maxlength:80
									},
		                            password: {
		                            	oldPasswordNotMatch: true
		                            },
		                         	newPassword: {
		                                 minlength: 6,
		                                 maxlength: 20
		                             },
		                         	rpassword: {
		                                equalTo: "#submit_form_password"
		                            },
		                            mobile:{
		                        		minlength : 10,
		                        		maxlength : 30
		                        	},
		                        	check:{
		                        		required:true
		                        	}
		                        },
		                        invalidHandler: function(event, validator) {   
		                        },
		                        highlight: function(element) {
		                            $(element)
		                                .closest('.outer-field').addClass('has-error');
		                            $(element).next('.fancybox').next('.fancybox').addClass('has-error');
		                        },
		                        success: function(label) {
		                            label.closest('.outer-field').removeClass('has-error');
		                            label.next('.fancybox').next('.fancybox').removeClass('has-error');
		                            label.remove();
		                        },
		                        errorPlacement: function(error, element) {
		                            if (element.attr("name") == "tnc") {                  
		                                error.insertAfter(element.next('.fancybox').next('.fancybox'));
		                            } else if (element.closest('.input-icon').size() === 1) {
		                                error.insertAfter(element.closest('.input-icon'));
		                            } else {
		                                error.insertAfter(element);
		                            }
		                        },
		                        submitHandler: function(form) {
		                				setLatLongValueAndSubmit(form);
		                				return true;
		                        }
		                    });
		                    hideProgramContent();
		                    /* child popup validation */
		                    $('#kidsForm').validate({
		                        errorElement: 'span',
		                        errorClass: 'help-block',
		                        focusInvalid: false,
		                        rules: {
		                        	childName: {
		                                required: true,
		                                maxlength : 20,
		                                specialChar :true
		                            },
		                            schoolName: {
		                                required: true,
		                                //maxlength : 20,
		                                specialChar :true
		                            },
		                            schoolAddress: {
		                                required: true,
		                            }, 
		                            zipcode : {
										required: true,
										maxlength:6
									},
									state: {
										required: true
		                            }
		                        },
		                        invalidHandler: function(event, validator) {   
		                        },
		                        highlight: function(element) {
		                            $(element)
		                                .closest('.outer-field').addClass('has-error');
		                            $(element).next('.fancybox').next('.fancybox').addClass('has-error');
		                        },
		                        
		                        success: function(label) {
		                            label.closest('.outer-field').removeClass('has-error');
		                            label.next('.fancybox').next('.fancybox').removeClass('has-error');
		                            label.remove();
		                        },

		                        errorPlacement: function(error, element) {
		                            if (element.attr("name") == "tnc") {                  
		                                error.insertAfter(element.next('.fancybox').next('.fancybox'));
		                            } else if (element.closest('.input-icon').size() === 1) {
		                                error.insertAfter(element.closest('.input-icon'));
		                            } else {
		                                error.insertAfter(element);
		                            }
		                        },
		                        submitHandler: function(form) {
		                        	form.submit();
		                				//return true;
		                        }
		                    });
		                    /* family form popup validation */
		                    $('#familyForm').validate({
		                        errorElement: 'span',
		                        errorClass: 'help-block',
		                        focusInvalid: false,
		                        rules: {
		                        	familyName: {
		                                required: true,
		                                maxlength : 20,
		                                specialChar :true
		                            },
		                            familyEmail: {
		                            	required: true,
		                                email: true,
		                                emailFamilyAlreadyExist: true
		                            },
		                            familyAddress: {
		                                required: true,
		                            }, 
		                            familyZipcode : {
										required: true,
										maxlength:6
									},
									familyState: {
										required: true
		                            },
		                            familyCity: {
										required: true
		                            },
		                            familyMobile: {
										required: true
		                            }
		                        },

		                        invalidHandler: function(event, validator) {   
		                        },
		                        highlight: function(element) {
		                            $(element)
		                                .closest('.outer-field').addClass('has-error');
		                            $(element).next('.fancybox').next('.fancybox').addClass('has-error');
		                        },
		                        success: function(label) {
		                            label.closest('.outer-field').removeClass('has-error');
		                            label.next('.fancybox').next('.fancybox').removeClass('has-error');
		                            label.remove();
		                        },
		                        errorPlacement: function(error, element) {
		                            if (element.attr("name") == "tnc") {                  
		                                error.insertAfter(element.next('.fancybox').next('.fancybox'));
		                            } else if (element.closest('.input-icon').size() === 1) {
		                                error.insertAfter(element.closest('.input-icon'));
		                            } else {
		                                error.insertAfter(element);
		                            }
		                        },
		                        submitHandler: function(form) {
		                        	form.submit();
		                				//return true;
		                        }
		                    });
	});
	function getParentAddressLatLong(){
        var homeAddress = document.getElementById('addressParent');
        var autoCompleteHomeAddress = new google.maps.places.Autocomplete(homeAddress);
        var geocoder = new google.maps.Geocoder;
        
        google.maps.event.addListener(autoCompleteHomeAddress,	'place_changed', function() {
       	  $("#latitude").val(autoCompleteHomeAddress.getPlace().geometry.location.lat());
    		 $("#longitude").val(autoCompleteHomeAddress.getPlace().geometry.location.lng());
    		 var latlng = {lat: parseFloat($("#latitude").val()), lng: parseFloat($("#longitude").val())};
    		
    		 geocoder.geocode({'location': latlng}, function(results, status) {
    			    if (status === google.maps.GeocoderStatus.OK) {
     			    	  for (var i = 0; i < results[0].address_components.length; i++) {
    			    		    var addressType = results[0].address_components[i].types[0];
    			    		    if (addressType == 'postal_code') { 
    			    		    	$("#zipCodeNew").val(results[0].address_components[i].long_name);
    			    		    	$("#zipCodeNew").blur();
    			    		    } 
    			    		    if(addressType == 'locality'){
    			    		    	var loc = results[0].address_components[i].long_name;
										$('#city').val(loc);    			    		    	
    			    		    }
     			    	  }
    			    	}
    			    });
    	});
    }
	
	function getFamilyAddressLatLong(){
        var homeAddress = document.getElementById('familyAddress');
        var autoCompleteHomeAddress = new google.maps.places.Autocomplete(homeAddress);
        var geocoder = new google.maps.Geocoder;
        
        google.maps.event.addListener(autoCompleteHomeAddress,	'place_changed', function() {
       	  $("#familyLat").val(autoCompleteHomeAddress.getPlace().geometry.location.lat());
    		 $("#familyLng").val(autoCompleteHomeAddress.getPlace().geometry.location.lng());
    		 var latlng = {lat: parseFloat($("#familyLat").val()), lng: parseFloat($("#familyLng").val())};
    		
    		 geocoder.geocode({'location': latlng}, function(results, status) {
    			    if (status === google.maps.GeocoderStatus.OK) {
     			    	  for (var i = 0; i < results[0].address_components.length; i++) {
    			    		    var addressType = results[0].address_components[i].types[0];
    			    		    if (addressType == 'postal_code') { 
    			    		    	$("#familyZipcode").val(results[0].address_components[i].long_name);
    			    		    	$("#familyZipcode").blur();
    			    		    } 
    			    		    if(addressType == 'locality'){
    			    		    	var loc = results[0].address_components[i].long_name;
										$('#familyCity').val(loc);    			    		    	
    			    		    }
     			    	  }
    			    	}
    			    });
    	});
    }


	google.maps.event.addDomListener(window, 'load', getParentAddressLatLong);
	google.maps.event.addDomListener(window, 'load', getFamilyAddressLatLong);

	/* For getting Lat & Long of Student Address */
	    function hideProgramContent(){
				$('#schoolName').autocomplete({
	    	        serviceUrl: '<%=request.getContextPath()%>/searchSchoolWithIeStatus',
	    	        paramName: "name",
	    	        delimiter: ",",
	    	        delay: 3,
	    	        minChars: 1,
	    		    transformResult: function(response) {
	    		        return {
	    		            suggestions: $.map($.parseJSON(response), function(item) {	
	    		                return { value: item.masterSchoolName , data: item.masterSchoolId };
	    		            })
	    		        };
	    		    },
	    		     onSelect:  function (event,ui) {
	    		        
	    		         if(event.data!=0){
	    		        	// $("#address").val(event.data);
	    		        	 
	    		        	 var schoolId = event.data;
	    		        	 
	    		        	 
	    		        	 if(schoolId!=null){
	    		        	 
	    		        	 $.ajax({
	    		     			url : "<%=request.getContextPath()%>/donor/getMasterSchoolDetailsWithIEStatus",
	    		     			type : 'POST',
	    		     			data : {schoolId:schoolId},
	    		     			success : function(result) {
	    		     				/* alert("1 = "+result.modelMap.dtoTeacherSignOn.schoolId);
	    		     				alert("2 = "+result.modelMap.dtoTeacherSignOn.masterSchoolId); */
	    		     				if(result.modelMap.dtoTeacherSignOn.isIESchool=="Y"){
	    		     					$("#petition").hide();
	    		     					$("#schoolAddress").val(result.modelMap.dtoTeacherSignOn.address);
	    		     					/* $("#address1").val(result.modelMap.dtoTeacherSignOn.address); */
	    		     					
					     				$("#zipcode").val(result.modelMap.dtoTeacherSignOn.zipCode);
					     				$("#state").val(result.modelMap.dtoTeacherSignOn.state);
					     				 var classOption = '';
					     				 if(result.modelMap.dtoTeacherSignOn.dtoClasses.length !="0"){
					     				$.each(result.modelMap.dtoTeacherSignOn.dtoClasses,function(index,value){
					     					classOption +='<option value="'+value.classId+'">'+value.className+'</option>';
					     					if(index==0){
					     						$("#teacherId").val(value.dtoTeacher.teacherId);
					     						$("#teacherName").val(value.dtoTeacher.teacherName);
					     						$("#teacherName").attr("readOnly","true");
					     						$("#optInRadio").show();
					     						if(value.dtoReference.status=="Y"){
					     							$("#optIn").prop('checked', true);
					     							$("#optInStatus").val("Y");
					     						}
					     						else{
					     							$("#optIn").prop('checked', false);
					     							$("#optInStatus").val("N");
					     						}
					     						
					     					}
					     				});
					     				$("#regSc").show();
					     				$("#clsName").show();
					     				$("#tName").show();
					     				$("#childPic").show();
					     				 $("#submitChildForm").show();
					     				 $("#sendEmailSch").hide();
					     				$("#registeredSchool").removeClass("outer-field");
					     				$("#registeredSchool").addClass("outer-field_sel");
					     				$("#registeredSchool").html('<select id="classIdSelect" name="classIds" onchange="getClassDetail(this.value);">'+classOption+'</select><input type="hidden" name="className" placeholder="Class Name"  value="" id="className" />');
					     				}
					     				 else
					     					{
					     				 	$("#regSc").hide();
						     				$("#clsName").hide();
						     				$("#tName").hide();
						     				$("#childPic").hide(); 
					     					 $("#sendEmailSch").show();
					     					 $("#submitChildForm").hide();
					     					 }
					     				$('#schoolId').val(result.modelMap.dtoTeacherSignOn.schoolId);
					     				$("#ieSchool").val("Y");
	    		     					
	    		     				}
	    		     			else{
	    		     					$("#schoolAddress").val(result.modelMap.dtoTeacherSignOn.address);
					     				$("#zipcode").val(result.modelMap.dtoTeacherSignOn.zipCode);
					     				$("#state").val(result.modelMap.dtoTeacherSignOn.state);
					     				$('#schoolId').val(result.modelMap.dtoTeacherSignOn.schoolId);
					     				$('#petitionSchoolId').val(result.modelMap.dtoTeacherSignOn.schoolId);
					     				$("#regSc").hide();
					     				$("#clsName").hide();
					     				$("#tName").hide();
					     				$("#childPic").hide();
					     				 $("#submitChildForm").hide();
					     				$("#sendEmailSch").hide();
					     				if(result.modelMap.dtoTeacherSignOn.isAlreadyPetition=="Y"){
					     					$("#petition").hide();
					     				}
					     				else{
					     					$("#petition").show();
					     				}
					     				$("#ieSchool").val("N");
					     				
	    		     					
	    		     				} 
	    		     			}
	    		     		});
	    		        	 
	    		        }
	    		         }
	    		        
	    		     } 
	    		}); 
	}
	</script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
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
    /* $(window).load(function(){
		
      $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
}); */
    
function startPetition(){
	var idnew = $("#petitionSchoolId").val();
	window.location.href='<%=request.getContextPath()%>/donor/petition?schoolId='+idnew+'';
}
function changeLogo(){
	$('#newSchoolLogo').show();
	$('#oldSchoolLogo').hide();
}
function copyImageName(){
	   var fullPath  = $("#imagePath").val();
	   if (fullPath) {
	         var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
	         var filename = fullPath.substring(startIndex);
	         if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
	                 filename = filename.substring(1);
	         }
	         $("#disableImagePath").val(filename);
	}
}
function getImagePathParent(input){
	
	if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e)  {
            $('#schoolSelectedLogo').attr('src', e.target.result);
        };

        reader.readAsDataURL(input.files[0]);
        
    }
	
}
function getImagePath(input, id){
	
	if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e)  {
            $('#schoolSelectedLogo_'+id).attr('src', e.target.result);
        };

        reader.readAsDataURL(input.files[0]);
        
    }
	
}
function cancelSubscription(){
	var url='<%=request.getContextPath()%>/donor/cancelSubscription';
	$.ajax({
		url:url,
		method:'GET',
		async :false,
		success:function(response){
			if(response=='success'){
				alert("Subcription cancelled successfully");
				location.reload(true);
			}
			else{
				
			}
		}
	});
	
}
function setLatLongValueAndSubmit(form){
	var lat = $("#latitude").val() ;
	var lng = $("#longitude").val() ;
	//alert(lat +","+lng);
	console.log(lat +":"+lng);
	if(lat == 0.0 && lng == 0.0){
		if($('#city').val().trim().length>0){
		    var zipCodeAddress = $('#addressParent').val();
		    //alert(zipCodeAddress);
		    var geocoder = new google.maps.Geocoder();
		    geocoder.geocode( { 'address': zipCodeAddress}, function(results, status) {
		      if (status == google.maps.GeocoderStatus.OK) {
		         lat = results[0].geometry.location.lat();
		         lng = results[0].geometry.location.lng();
		         //alert(lat+",,,"+lng);
		         $("#latitude").val(lat);
		         $("#longitude").val(lng);
		         form.submit();
		         }
		       else {
		    	   //alert('eror');
				    var zipCodeAddress = $('#city').val() +","+ $('#zipCodeNew').val();
		    	    geocoder.geocode( { 'address': zipCodeAddress}, function(results, status) {
		 		       if (status == google.maps.GeocoderStatus.OK) {
		 		         lat = results[0].geometry.location.lat();
		 		         lng = results[0].geometry.location.lng();
		 		         //alert(lat+",,,"+lng);
		 		         $("#latitude").val(lat);
		 		         $("#longitude").val(lng);
		 		         form.submit();
		 		         }
		 		       else {
		 		    	   //alert('eror');
		 		    	   form.submit();
		 		      }
		 		    });
		    	   
		      }
		    });
	     }else{
	    	 form.submit();
	    	 }
		}
		else{
	    	 form.submit();
	    	 }
}
function showParentChild(){
	   $.fancybox({
			 'minWidth':250,
			 'maxWidth':700,
			 'padding':25,
			 'minHeight':250,
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#parentEdition'
		  });
		
}
function getClassDetail(index){
	  $("#classId").val(index);
	  // $("#teacherName").val($("#classId"+index+" option:selected").text());
	 $.ajax({
		url : "<%=request.getContextPath()%>/donor/getClassTeacher",
		type : 'POST',
		data : {classId:index},
		success : function(result) {
		    $("#teacherId").val(result.modelMap.dtoTeacher.teacherId);
			$("#teacherName").val(result.modelMap.dtoTeacher.teacherName);
			$("#teacherName").attr("readOnly","true");
			if(result.modelMap.dtoTeacher.dtoReference.status=="Y"){
					$("#optIn").prop('checked', true);
					$("#optInStatus").val("Y");
				}
				else{
					$("#optIn").prop('checked', false);
					$("#optInStatus").val("N");
				}
			//$("#className").val(result.modelMap.dtoTeacher.className);
		}
	});
}

function sendEmail(){
	var schoolId=$("#schoolId").val();
	 $.ajax({
			url : "<%=request.getContextPath()%>/donor/sendEmailPrincipal",
			type : "POST",
			data : {schoolId:schoolId},
			success : function(result) {
				window.location.reload(true);
			}
		});
}
function getImagePathKids(input){
	
	if (input.files && input.files[0]) {
        var reader = new FileReader();

        reader.onload = function (e)  {
            $('#childProfilePic').attr('src', e.target.result);
        };

        reader.readAsDataURL(input.files[0]);
        
    }
	
}
function submitFormChild(){
	var selectClassID=$("#classIdSelect option:selected").val();
	$("#classId").val(selectClassID);
	var isUpdateChild = $("#isUpdateChild").val();
	if(isUpdateChild == 'N'){
		$.ajax({
		    type : 'POST',
		    url : '<%=request.getContextPath()%>/donor/addNewChild',
		    data : $('#kidsForm').serialize(),
		    success:function(result){
			if(result!=0){
				var status = $("#optInStatus").val();
				if(status=='Y'){
					var innerHtml="";
					
					innerHtml+= '<div class="section_makpaymnt padding-btm-zero">'+
					'<div class="school_setup_wrapper refDetails" id="progDetail">'+
							'<input type="hidden" value="'+result+'" name="letterToParentId" id="letterToParentId">'+
							'<div class="getstartForm">'+
								'<ul>'+
								'<div id="parentInfo_'+result+'">'+
								'<div id="divSection_'+result+'_0">'+
									'<li>'+
										'<div class="contact-row">'+
											'<div class="outer-field-wrap">'+
												'<div class="outer-field">'+
													'<input placeholder="Parent Mobile" type="text" name="parentMobile" id="parentMobile_'+result+'_0" class="ignore1"/>'+
												'</div>'+
											'</div>'+
										'</div>'+
									'</li>'+
									'<li>'+
										'<div class="input_relative">'+
										'<div class="input_add_logo width-less">'+
										'<div class="contact-row">'+
											'<div class="outer-field-wrap">'+
												'<div class="outer-field">'+
													'<input placeholder="Parent Email*" type="text" name="parentEmail" id="parentEmail_'+result+'_0" class="ignore1"/>'+
												'</div>'+
											'</div>'+
										'</div>'+
										'</div>'+
										 '<div class="plusImg" id="removeLast_'+result+'_0"><a  title="Add More" onclick="addMoreClass('+result+',0);" id="addMoreClass_'+result+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div>'+ 
										'</div>'+
									'</li>'+
									'</ul>'+
									'</div>'+
							'</div>'+
						'</div>';
						$("#form3").html(innerHtml);
					
					$.fancybox({
						 'minWidth':250,
						 'maxWidth':700,
						 'padding':25,
						 'minHeight':250,
					     'autoScale': true,
					     'autoDimensions': true,
					     'centerOnScroll': true,
					     'href' : '#refenceEmailPopup'
					  });
				}
				else{
					window.location.reload(true);
				}
			
				}
			else
				{
				window.location.reload(true);
				}
		    }
			});
	}
	else{
		alert("edit child");
		$('#kidsForm').valid();
		$("#kidsForm").submit();
	}
}
function editChild(childId) {
	$("#isUpdateChild").val("Y");
	$("#childId").val(childId);
	 $.ajax({
			url : "<%=request.getContextPath()%>/donor/getChild",
			type : "POST",
			data : {childId:childId},
			success : function(result) {
				$("#childName").val(result.modelMap.childDetails.childName);
				$("#schoolName").val(result.modelMap.childDetails.schoolName);
				$("#schoolAddress").val(result.modelMap.childDetails.address);
				$("#zipcode").val(result.modelMap.childDetails.zipCode);
				$("#state").val(result.modelMap.childDetails.state);
				var classOption = '';
				$.each(result.modelMap.childDetails.dtoClasses,function(index,value){
 					classOption +='<option value="'+value.classId+'">'+value.className+'</option>';
 					if(index==0){
 						$("#teacherId").val(value.dtoTeacher.teacherId);
 						$("#teacherName").val(value.dtoTeacher.teacherName);
 						$("#teacherName").attr("readOnly","true");
 					}
 				});
				
				$("#clsName").show();
 				$("#tName").show();
				$("#regSc").show();
				$("#registeredSchool").removeClass("outer-field");
 				$("#registeredSchool").addClass("outer-field_sel");				
				$("#registeredSchool").html('<select id="classIdSelect" name="classIds" onchange="getClassDetail(this.value);">'+classOption+'</select><input type="hidden" name="className" placeholder="Class Name"  value="" id="className" />');
				
				
				$.fancybox({
					 'minWidth':250,
					 'maxWidth':700,
					 'padding':25,
					 'minHeight':250,
				     'autoScale': true,
				     'autoDimensions': true,
				     'centerOnScroll': true,
				     'href' : '#parentEdition'
				  });
			}
		});
	
	
	
}
function deleteChild(childId) {
	 $.ajax({
			url : "<%=request.getContextPath()%>/donor/delChild",
			type : "POST",
			data : {childId:childId},
			success : function(result) {
				if(result=="deleted"){
					window.location.reload(true);
				}
				else{
					alert("Something went wrong, not able to delete");
				}
			}
		});
	
}
function showParentFamily(){
	   $.fancybox({
			 'minWidth':250,
			 'maxWidth':700,
			 'padding':25,
			 'minHeight':250,
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#parentEditionFamily'
		  });
		
}
function submitFormFamily(){
	var submitFamily = $('#familyForm').valid();
	if(submitFamily){
		$("#familyForm").submit();
	}
}
function editFamily(memId) {
	$('#familyEmail').prop('readonly', true);
	$("#familyId").val(memId);
	$("#isUpdateFamily").val("Y");
	 $.ajax({
			url : "<%=request.getContextPath()%>/donor/getFamilyMember",
			type : "POST",
			data : {memId:memId},
			success : function(result) {
				$("#familyName").val(result.modelMap.memDetails.familyName);
				$("#familyEmail").val(result.modelMap.memDetails.familyEmail);
				$("#familyAddress").val(result.modelMap.memDetails.familyAddress);
				
				$("#familyZipcode").val(result.modelMap.memDetails.familyZipcode);
				$("#familyState").val(result.modelMap.memDetails.familyState);
				$("#familyCity").val(result.modelMap.memDetails.familyCity);
				$("#familyMobile").val(result.modelMap.memDetails.familyMobile);
				$("#oldFamilyEmail").val(result.modelMap.memDetails.familyEmail)
				$.fancybox({
					 'minWidth':250,
					 'maxWidth':700,
					 'padding':25,
					 'minHeight':250,
				     'autoScale': true,
				     'autoDimensions': true,
				     'centerOnScroll': true,
				     'href' : '#parentEditionFamily'
				  });
			}
		});
	
	
	
}
function deleteFamily(memId) {
	 $.ajax({
			url : "<%=request.getContextPath()%>/donor/delFamilyMember",
			type : "POST",
			data : {memId:memId},
			success : function(result) {
				if(result=="deleted"){
					window.location.reload(true);
				}
				else{
					alert("Something went wrong, not able to delete");
				}
			}
		});
	
}
/* $(document).on('click', '.fancybox-close', function () {
	 $("#parentEditionFamily")[0].reset();
	 $("#parentEdition")[0].reset();
}); */
function optInStatusRadio(){
	var optInStatus = $("#optIn").prop('checked');
	if(optInStatus){
		$("#optInStatus").val("Y");
	}
	else{
		$("#optInStatus").val("N");
	}
	
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
    '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
    '<input type="text" name="parentMobile_'+programId+'_'+ divId +'" placeholder="Parent Mobile"  class="ignore1" id="parentMobile_'+programId+'_'+ divId + '" /></div></div></div></li>'+
    '<li><div class="input_relative"><div class="input_add_logo width-less"><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
    '<input type="text" name="parentEmail_'+programId+'_'+ divId +'" placeholder="Parent Email*" class="ignore1"  id="parentEmail_'+programId+'_'+ divId + '"/></div></div></div></div>'+
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
function proceedToStepFour(){
	
	$("#saveSignupForm").validate({ ignore: []});
	$("#saveSignupForm").validate();

	$('[id^=parentMobile_]').each( function( index, el ) {
	    $( el ).rules('add', {
	    	/* required: true, */
    		minlength : 10,
    		maxlength : 30
    		//digits	: true
    	});
	});
	$('[id^=parentEmail_]').each( function( index, el ) {
	    $( el ).rules('add', {
    	    required: true,
    	    email: true,
    	    /* emailAlreadyExist: true, */
    	    notEqual:true
    	});
	});

	
	if($("#saveSignupForm").valid()){
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
function addEditRefEmailParent(){
	
	$("#addEditRefEmailParentForm").validate({ ignore: []});
	$("#addEditRefEmailParentForm").validate();

	$('[id^=parentMobile_]').each( function( index, el ) {
	    $( el ).rules('add', {
	    	/* required: true, */
    		minlength : 10,
    		maxlength : 30
    		//digits	: true
    	});
	});
	$('[id^=parentEmail_]').each( function( index, el ) {
	    $( el ).rules('add', {
    	    required: true,
    	    email: true,
    	    /* emailAlreadyExist: true, */
    	    notEqual:true
    	});
	});

	
	if($("#addEditRefEmailParentForm").valid()){
		$('[id^=parentMobile_]').each( function( index, el ) {
			$( el ).attr('name',"parentMobile");
		});
		$('[id^=parentEmail_]').each( function( index, el ) {
			$( el ).attr('name',"parentEmail");
		});
		
		
		 $("#addEditRefEmailParentForm").submit();
		return true;
	}else{
		return false;
	}

}
function radioOptInOut(result){
	
	$.ajax({
		url : "<%=request.getContextPath()%>/donor/getRefenceEmail",
		type : "POST",
		data : {childId:result},
		success : function(result) {
			var innerHtml="";
			innerHtml+= '<div class="section_makpaymnt padding-btm-zero">'+
			'<div class="school_setup_wrapper refDetails" id="progDetail">'+
					'<input type="hidden" value="'+result.modelMap.letterToParentId+'" name="letterToParentId" id="letterToParentId">'+
					'<div class="getstartForm">'+
						'<ul><div id="parentInfo_'+result.modelMap.letterToParentId+'">';
						
						var listSize=result.modelMap.dtoReferenceEmailsList.length;
						
						
						$.each(result.modelMap.dtoReferenceEmailsList,function(index,value){
							
							innerHtml+= ''+
						'<div id="divSection_'+value.letterToParentId+'_'+ index + '">'+
							'<li>'+
								'<div class="contact-row">'+
									'<div class="outer-field-wrap">'+
										'<div class="outer-field">';
										if(typeof value.mobile === 'undefined'){
											innerHtml+='<input value="" placeholder="Parent Mobile" type="text" name="parentMobile" id="parentMobile_'+value.letterToParentId+'_0" class="ignore1"/>';
										}
										else
											{
											innerHtml+='<input value="'+value.mobile+'" placeholder="Parent Mobile" type="text" name="parentMobile" id="parentMobile_'+value.letterToParentId+'_0" class="ignore1"/>';
											}
										
										innerHtml+=	'</div>'+
									'</div>'+
								'</div>'+
							'</li>'+
							'<li>'+
								'<div class="input_relative">'+
								'<div class="input_add_logo width-less">'+
								'<div class="contact-row">'+
									'<div class="outer-field-wrap">'+
										'<div class="outer-field">'+
											'<input value="'+value.email+'" placeholder="Parent Email*" type="text" name="parentEmail" id="parentEmail_'+value.letterToParentId+'_0" class="ignore1"/>'+
										'</div>'+
									'</div>'+
								'</div>'+
								'</div>'+
								 '<div class="plusImg" id="removeLast_'+value.letterToParentId+'_'+ index + '">';
								 
								 if(listSize==1){
									 innerHtml+= '<a  title="Add More" onclick="addMoreClass('+value.letterToParentId+','+ index + ');" id="addMoreClass_'+value.letterToParentId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div>';
								 }
								 else{
								 
								 if((index+1)==listSize){
									 innerHtml+=  '<a title="Remove" onclick="removeClassDetailsLast('+value.letterToParentId+','+ index + ');" id="removeParent_'+value.letterToParentId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a>';
									 innerHtml+= '<a  title="Add More" onclick="addMoreClass('+value.letterToParentId+','+ index + ');" id="addMoreClass_'+value.letterToParentId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div>';
								 }else{
									 innerHtml+= '<a title="Remove" onclick="removeClassDetails('+value.letterToParentId+','+ index + ');" id="removeParent_'+value.letterToParentId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a>';
								 }
								 }
								 innerHtml+='</div>'+
							'</li></div>';
						});
						innerHtml+= '</div></ul>'+
							'</div>'+
					'</div>'+
				'</div>';
				$("#form4").html(innerHtml);
			
		}
	});
	
	
	
	$.fancybox({
		 'minWidth':250,
		 'maxWidth':700,
		 'padding':25,
		 'minHeight':250,
	     'autoScale': true,
	     'autoDimensions': true,
	     'centerOnScroll': true,
	     'href' : '#addEditRefenceEmailPopup'
	  });
	
	
	
}
/* <!-- Added By Taman --> */
function changeSubscription(){

	
	var url='<%=request.getContextPath()%>/donor/changeSubscriptionToYearlyParent';

			$.ajax({
				url : url,
				method : "POST",
				async : false,
				success : function(response) {
					alert('Loading..');
				

				

				}
			});

		}
		/* <!-- Added By Taman -->	 */
</script>

</body>
</html>
