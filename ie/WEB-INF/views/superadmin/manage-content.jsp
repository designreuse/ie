<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server

	response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance

	response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
%>
<spring:eval expression="@propertyConfigurer.getProperty('service.url')"
	var="baseURL" />
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>Manage Content</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link
	href="<%=request.getContextPath()%>/NewStyles/css/jquery.mCustomScrollbar.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link
	href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" type="text/css" />
<%-- 	<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css"> --%>
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"> -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/jquery-ui.css">
<style type="text/css">
.has-error .help-block, .has-error .help-inline, .has-error .control-label,
	.has-error .radio, .has-error .checkbox, .has-error .radio-inline,
	.has-error .checkbox-inline {
	color: #a94442;
}
</style>
<style type="text/css">
h3 {
	font-size: 23px;
	font-family: "Open Sans", sans-serif;
	font-weight: 300;
	margin: 0;
	padding: 0;
}
</style>
</head>

<body onload="showProgramAudio('');">
	<spring:eval var="bucketPath"
		expression="@propertyConfigurer.getProperty('bucket_path')" />
	<div class="wrapper">
		<%@include file="header.jsp"%>
		<%-- <section class="slider-inner"> <img src="<%=request.getContextPath()%>/NewStyles/images/slider1.jpg" alt="Slider" /> </section> --%>
		<section class="getStartSct mtop-5">
			<div class="content_inner">
				<div class="pracProgress_hdr">
					<h2>Manage Content</h2>
					<div class="green_line_btm"></div>
				</div>
				<div class="manage_content margin-top-zero">

					<!-- Section - 1 Minimum amount to default message of the day -->
					<div class="mc_col_new">

						<div class="mc_col_msgs margin-top-zero">
							<div class="mc_col_msgs_inner">
								<%-- <div class="msg_overall">
									<div class="msg_label">
										<label>Message of the day</label>
									</div>
									<div class="ntr_msg_contnt">
										<div class="ntr_msg_contnt-main">
											<input type="hidden" id="todayMessageId"
												value="${todayMessage.id}" />
											<textarea placeholder="Type here" id="todayMessage">${todayMessage.message}</textarea>
										</div>
										<div class="btns-outer mtop10">
											<input class="submit-btn fl" type="button"
												onclick="updateTodayMessage();" value="PUBLISH">
										</div>
									</div>
								</div> --%>
								<div class="msg_overall">
									<div class="msg_label">
										<label>Default Message of the day</label>
									</div>
									<div class="ntr_msg_contnt">
										<div class="ntr_msg_contnt-main">
											<input type="hidden" id="defaultMessageId"
												value="${defaultMessage.id}" />
											<textarea placeholder="Type here" id="defaultMessage">${defaultMessage.message}</textarea>
										</div>
										<div class="btns-outer mtop10">
											<input class="submit-btn fl" type="button"
												onclick="updateDefaultMessage();" value="UPDATE"> <a
												href="javascript:;" class="submit-btn fl"
												data-modal-id="popup8" style="margin-left: 30px;">Message
												of the Day</a>
										</div>
									</div>
								</div>
								<div class="msg_overall">
									<div class="msg_label">
										<label>Featured Communities</label>
									</div>
									<div class="ntr_msg_contnt">
										<div class="ntr_msg_contnt-main border0">
											<div class="contact-row" id="featuredCommunities">
												<!-- 										<div class="outer-field-wrap hght-55">
											<div class="outer-field new-input">
												<input type="text" placeholder="All India Physics Group">
											</div>
										</div>
                                        <div class="outer-field-wrap hght-55">
											<div class="outer-field new-input">
												<input type="text" placeholder="All India Elementary Group">
											</div>
										</div>
                                        <div class="outer-field-wrap hght-55">
											<div class="outer-field new-input">
												<input type="text" placeholder="All India Kids Group">
											</div>
										</div> -->
											</div>
										</div>
										<div class="btns-outer">
											<a class="submit-btn fl fancybox" href="#communitiesListBox">EDIT</a>
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="mc_col_new_head">
							<h3>General</h3>
							<div class="min_amount_sec">
								<div class="sub-price-min">
									<label>Minimum Amount to Start a Campaign</label>
									<div class="min-price-field">
										<input type="number" id="contri" min="0"
											value="${minimumContri}" placeholder="$100"
											onblur="updateMinimumContri(this.value);" />
									</div>
								</div>
							</div>
							<div class="min_amount_sec">
								<div class="sub-price-min">
									<label>Teacher Trial Days</label>
									<div class="min-price-field">
										<input type="number" id="trailDays" min="1"
											value="${trailDays}" placeholder="15"
											onblur="updateTrail(this.value);" />
									</div>
								</div>
							</div>

							<div class="min_amount_sec">
								<div class="sub-price-min">
									<label>Student Adjustment</label>
									<div class="min-price-field">
										<input type="number" id="studentAdjustment" min="1"
											value="${studentAdjustment}" placeholder="15"
											onblur="updateStudentAdjustment(this.value);" />
									</div>
								</div>
							</div>
							<h3>Parent Edition</h3>
							<div class="min_amount_sec">
								<div class="sub-price-min">
									<label>Parent Amount For (1 Year)</label>
									<div class="min-price-field">
										<input type="number" id="parentAmount" min="1"
											value="${parentAmount}" placeholder="$30"
											onblur="updateParentPayment(this.value);" />
									</div>
								</div>
							</div>

							<div class="min_amount_sec">
								<div class="sub-price-min">
									<label>Parent Amount For (3 Months)</label>
									<div class="min-price-field">
										<input type="number" id="parentAmount" min="1"
											value="${parentAmountThreeYear}" placeholder="$10"
											onblur="updateParentPaymentThreeMonth(this.value);" />
									</div>
								</div>
							</div>

							<div class="min_amount_sec">
								<div class="sub-price-min">
									<label>Parent Radio Share</label>
									<div class="min-price-field">
										<input type="number" id="parentRadioShareCount" min="1"
											value="${parentRadioShare}"
											onblur="updateParentRadioCount(this.value);" />
									</div>
								</div>
							</div>

							<div class="min_amount_sec">
								<div class="sub-price-min">
									<label>Parent Home Edition Share</label>
									<div class="min-price-field">
										<input type="number" id="parentHomeShareCount" min="1"
											value="${parentHomeEditionShare}"
											onblur="updateParentHomeCount(this.value);" />
									</div>
								</div>
							</div>
							<h3>Principal</h3>
							<div class="min_amount_sec">
								<div class="sub-price-min">
									<label>Principal Monthly Subscription($)</label>
									<div class="min-price-field">
										<input type="number" min="1" value="${principalSubAmtMntly}"
											onblur="updatePrincipalMonthlySub(this.value);" />
									</div>
								</div>
							</div>
							<%-- <div class="min_amount_sec">
                    	<div class="sub-price-min">
                    		<label>Principal Monthly Subscription days</label>
                        	<div class="min-price-field">
								<input type="number" min="1" value="${principalSubAmtMntlyDays}" onblur="updatePrincipalMonthlySubDays(this.value);"/>
							</div>
                    	</div>
                    </div> --%>
							<div class="min_amount_sec">
								<div class="sub-price-min">
									<label>Principal Yearly Subscription($)</label>
									<div class="min-price-field">
										<input type="number" min="1" value="${principalSubAmtYrly}"
											onblur="updatePrincipalYearlySub(this.value);" />
									</div>
								</div>
							</div>

							<div class="min_amount_sec">
								<div class="sub-price-min">
									<label>Principal Yearly Subscription months</label>
									<div class="min-price-field">
										<input type="number" min="1"
											value="${principalSubAmtYrlyDays}"
											onblur="updatePrincipalYearlySubDays(this.value);" />
									</div>
								</div>
							</div>

							<div class="min_amount_sec">
								<div class="sub-price-min">
									<label>Principal Yearly Subscription discount(%)</label>
									<div class="min-price-field">
										<input type="number" min="1"
											value="${principalSubAmtYrlyDiscount}"
											onblur="updatePrincipalYearlySubDiscount(this.value);" />
									</div>
								</div>
							</div>

							<h3>Teacher</h3>
							<div class="min_amount_sec">
								<div class="sub-price-min">
									<label>Teacher Monthly Subscription($)</label>
									<div class="min-price-field">
										<input type="number" min="1" value="${teacherSubAmtMnthly}"
											onblur="updateTeacherMonthlySub(this.value);" />
									</div>
								</div>
							</div>
							<div class="min_amount_sec">
								<div class="sub-price-min">
									<label>Teacher Yearly Subscription($)</label>
									<div class="min-price-field">
										<input type="number" min="1" value="${teacherSubAmtYrly}"
											onblur="updateTeacherYearlySub(this.value);" />
									</div>
								</div>
							</div>
							<div class="min_amount_sec">
								<div class="sub-price-min">
									<label>Teacher Yearly Subscription months</label>
									<div class="min-price-field">
										<input type="number" min="1" value="${teacherSubMnthYrly}"
											onblur="updateTeacherYearlySubDays(this.value);" />
									</div>
								</div>
							</div>

							<%-- <div class="min_goal_sec">
                    	<div class="sub-price-goal">
                    		<label>Goal</label>
                        	<div class="min-price-field">
                        		<input type="hidden" id="goalId" value="${goalId}"/>
								<input type="number" id="goal" min="0" value="${goal}" placeholder="10,000" onblur="updateGoal();"/>
							</div>
                    	</div>
                        <div class="sub-price-goal">
                    		<label>Expires on</label>
                        	<div class="min-price-field">
								<input type="text" id="goalExpire" readonly="readonly" value="${goalExpire}" placeholder="2016-12-23" onchange="updateGoal();" />
							</div>
                    	</div>
                    </div> --%>
						</div>


					</div>

					<!-- Section - 2 Plan Programs -->
					<div class="mc_col_1">
						<input type="hidden" name="subscriptionPlanId"
							value="${subscriptionPlanId}" />
						<c:forEach items="${programs}" var="program"
							varStatus="programCount">
							<div class="img_setup" id="programImg_${program.programId}"
								onclick="showProgramAudio(${program.programId});">
								<div class="imgsetup_lg">
									<input type="hidden"
										id="programDescDetail_${program.programId}"
										value="${program.programDescDetail}"> <img
										src="<%=request.getContextPath()%>${program.imagePath}" alt="" />



									<%-- <div class="fileUpload browse-btn green-bg"> <span>BROWSE</span>
                                        <form:input path="mediaFile" accept="image/*" type="file" class="upload " title="Select image to upload" onchange="this.form.submit()"/>
                                    </div>
                        	 --%>



									<div class="overlay_setup" id="overlay_${program.programId}">

										<%-- <c:set var="string" value="$ ${program.programAmount}"/>
								<c:set var="string1" value="${program.programDesc}"/>
								<c:set var="string2" value="${fn:replace(string1, 
                                '####', string)}" />
								
								${string2} --%>

										<p>${program.programDescDetail}<br>
										</p>


									</div>
									<form:form action="editProgramImage"
										enctype="multipart/form-data" modelAttribute="dtoMedia"
										method="post">

										<div class="edit-img">
											<form:input accept="image/*" path="mediaFile" type="file"
												onchange="this.form.submit()" />
										</div>

										<form:input path="programId" type="hidden"
											value="${program.programId}" />
									</form:form>
								</div>

								<!-- Subscription prize -->
								<div class="sub-price">
									<div class="sub-price-inner">
										<label>Subscription Price</label>
										<div class="sub-price-field">
											<input type="number" placeholder="$3520"
												value="${program.programAmount}"
												onblur="saveSubscription(${program.programId},this.value);" />
										</div>
									</div>
								</div>

							</div>
						</c:forEach>
					</div>
					<div class="mc_col_2 margin-top-zero">
						<div class="mc_content" id="noCat">
							<h5 id="programDesc"></h5>
							<div class="mc_track_wrap" id="programAudioList">
								<%-- <p>Track 1 - Exploring Song</p>
                        <div class="mc_grid_row">
                            <div class="lg_player"><img src="<%=request.getContextPath()%>/NewStyles/images/player-bar-lg2.jpg" alt=""/></div>
                            <div class="playr_btn">
                                <a href="javascript:;" class="bonus_trackbtn">Add Bonus Track</a>
                                <a href="javascript:;"  class="bonus_trackbtn js-open-modal btn" data-modal-id="popup1">Change Track</a>
                            </div>
                        </div> --%>
							</div>
						</div>
						<div class="mc_content" id="catOne">
							<h5 id="cat1DescParent">Home Edition</h5>
							<div class="mc_track_wrap list-music" id="programAudioListCatOne"
								style="display: none;"></div>
						</div>
						<!-- <div class="mc_content" id="catTwo">
                    <h5 id="cat2Desc"></h5>
                    <div class="mc_track_wrap list-music" id="programAudioListCatTwo" style="display:none;">
                    </div>
                </div>
                <div class="mc_content" id="catThree">
                    <h5 id="cat3Desc"></h5>
                    <div class="mc_track_wrap list-music" id="programAudioListCatThree" style="display:none;">
                    </div>
                </div>
                <div class="mc_content" id="catFour">
                    <h5 id="cat4Desc"></h5>
                    <div class="mc_track_wrap list-music" id="programAudioListCatFour" style="display:none;">
                    </div>
                </div> -->
						<div class="btns-outer mtop10">
							<input class="submit-btn fl" type="button" onclick="killRadio();"
								value="Kill Radio">
						</div>
					</div>
				</div>
			</div>
		</section>

		<div class="msg_overall"></div>
	</div>
	<div id="communitiesListBox" style="display: none;">
		<div class="container" style="width: auto;">
			<h3 class="mbtm30">Set Featured community groups</h3>
			<!-- 	<div class="popup-outr">
	<div class="ourStory-Popup dash-popup"> -->
			<div class="hdr bg-clr-wht bdr-btm-none fl">
				<!-- <div class="close"><a href="javascript:;"><img src="images/delete-red-icon.png" alt="" title="Close"></a></div> -->
				<!-- <div class="check-comm-main"> -->
				<ul id="communitiesList">
				</ul>
				<div class="btns-outer width-auto margin-bottom-ten margin-top-ten">
					<input class="submit-btn fl" type="button" value="UPDATE"
						onclick="reloadPage();">
				</div>
				<!-- </div> -->
			</div>
			<!--     </div>
</div> -->

		</div>
	</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%@include file="../footer.jsp"%>

	<!--Add track modal starts-->

	<div id="popup2" class="modal-box">
		<div class="modal_change_track_new">
			<div class="modal_bodycont">

				<a class="cls-btn js-modal-close close" href="javascript:;">X</a>
				<form:form role="form" class="register-form"
					action="saveProgramAudioTrack" enctype="multipart/form-data"
					modelAttribute="dtoProgramsAudio" method="post">
					<h5>Add Track</h5>
					<input type="hidden" name="audioId" value="0" />
					<input type="hidden" id="addTrackProgramId" name="programId"
						class="input_upl_track" />
					<div class="change_track_new">
						<label>Audio Title</label>
						<div class="inputcontain">
							<input type="text" name="audioTitle" class="input_upl_track">
						</div>
					</div>
					<div class="change_track_new">
						<label>Audio Day</label>
						<div class="inputcontain">
							<input type="text" name="audioDay" class="input_upl_track">
						</div>
					</div>
					<div class="change_track_new">
						<label>Audio Description</label>
						<div class="inputcontain">
							<input type="text" name="audioDescription"
								class="input_upl_track">
						</div>
					</div>
					<div class="change_track_new_qus float-none">
						<label>Select Track</label>
						<div class="inputcontain">
							<input type="text" id="disableAddAudioPath"
								name="disableAudioPath" disabled class="input_upl_track">
						</div>
						<div class="browse_changtrk">
							<span>Browse</span> <input type="file" id="addAudioTrackPath"
								name="audio" accept="audio/*" onchange="copyTrackName();">
						</div>
						<audio id="audio"></audio>
						<input id="duration" name="audioLength" type="hidden"></input>
					</div>
					<div class="change_track_new_tip">
						<label>Tip of the Day</label>
						<div class="inputcontain">
							<textarea rows="6" cols="48" name="audioTip">
Dear Teacher, All of us at Inner Explorer would like to take this opportunity to thank you for what you do every day. We appreciate the challenge and importance of your work and applaud you for shaping the lives of young people. We hope that Inner Explorer has been a useful addition to your classroom routines for you and for your students -IE Team
</textarea>
						</div>
					</div>
					<div class="change_track_qus">
						<label>Suggested Questions</label>
						<div class="inputcontain">
							<textarea rows="6" cols="48" name="suggestedQuestions"
								class="ckeditor">

<p>Q1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean finibus, nibh vitae rhoncus consectetur, urna augue mollis tellus, quis fermentum libero&nbsp;</p>

<p>Q2. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean finibus, nibh vitae rhoncus consectetur, urna augue mollis tellus, quis fermentum libero&nbsp;</p>


</textarea>
							<input type="submit" value="Save Track"
								class="change_trackbtn_qus">
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<!--Add track modal ends-->
	<!--Add Bonus track modal starts-->

	<div id="popup3" class="modal-box">
		<div class="modal_change_track">
			<div class="modal_bodycont">

				<a class="cls-btn js-modal-close close" href="javascript:;">X</a>
				<form:form role="form" class="register-form2"
					action="saveProgramAudioBonusTrack" enctype="multipart/form-data"
					modelAttribute="dtoProgramsAudio" method="post">
					<h5>Add Bonus Track</h5>
					<input type="hidden" name="audioId" id="bonusAudioId" />
					<input type="hidden" value="0" name="programId"
						class="input_upl_track" />
					<div class="change_track">
						<label>Audio Description</label>
						<div class="inputcontain">
							<input type="text" name="audioDescription"
								class="input_upl_track">
						</div>
					</div>
					<div class="change_track">
						<label>Select Track</label>
						<div class="inputcontain_new">
							<input type="text" id="disableAddBonusAudioPath"
								name="disableAudioPath" disabled class="input_upl_bns_track">
							<input type="submit" value="Save Track"
								class="change_trackbtn_qus">
						</div>
						<div class="browse_changtrk_lft">
							<span>Browse</span> <input type="file"
								id="addBonusAudioTrackPath" name="audio" accept="audio/*"
								onchange="copyBonusTrackName();">
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<!--Add Bonus track modal ends-->
	<!--change bonus track modal starts-->

	<div id="popup4" class="modal-box">
		<div class="modal_change_track">
			<div class="modal_bodycont">

				<a class="cls-btn js-modal-close close" href="javascript:;">X</a>
				<form:form role="form" class="register-form1"
					action="updateProgramAudioBonusTrack" enctype="multipart/form-data"
					modelAttribute="dtoProgramsAudio" method="post">
					<h5>Change Bonus Track</h5>
					<input type="hidden" name="bounsTrackId" id="editBonusAudioId" />
					<input type="hidden" name="audioId" value="0" />
					<input type="hidden" name="programId" value="0" />
					<div class="change_track">
						<label>Audio Description</label>
						<div class="inputcontain">
							<input type="text" id="editBonusAudioDescription"
								name="audioDescription" class="input_upl_track">
						</div>
					</div>
					<div class="change_track">
						<label>Select Track</label>
						<div class="inputcontain_new">
							<input type="text" id="disableEditBounsAudioPath"
								name="disableAudioPath" disabled class="input_upl_bns_track">
							<input type="submit" value="Change Track"
								class="change_trackbtn_qus">
						</div>
						<div class="browse_changtrk_lft">
							<span>Browse</span> <input type="file"
								id="editBonusAudioTrackPath" name="audio" accept="audio/*"
								onchange="copyEditBonusTrackName();">
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<!--change bonus track modal ends-->
	<!--change track modal starts-->

	<div id="popup1" class="modal-box">
		<div class="modal_change_track_new">
			<div class="modal_bodycont">

				<a class="cls-btn js-modal-close close" href="javascript:;">X</a>
				<form:form role="form" class="register-form3"
					action="updateProgramAudioTrack" enctype="multipart/form-data"
					modelAttribute="dtoProgramsAudio" method="post">
					<h5>Change Track</h5>
					<input type="hidden" name="bounsTrackId" id="bounsTrackId"
						value="0" />
					<input type="hidden" name="audioId" id="editAudioId" />
					<input type="hidden" name="programId" id="editTrackProgramId" />
					<div class="change_track_new">
						<label>Audio Title</label>
						<div class="inputcontain">
							<input type="text" id="audioTitle" name="audioTitle"
								class="input_upl_track">
						</div>
					</div>
					<div class="change_track_new">
						<label>Audio Day</label>
						<div class="inputcontain">
							<input type="text" id="audioDay" name="audioDay"
								class="input_upl_track">
						</div>
					</div>
					<div class="change_track_new">
						<label>Audio Description</label>
						<div class="inputcontain">
							<input type="text" id="editAudioDescription"
								name="audioDescription" class="input_upl_track">
						</div>
					</div>
					<div class="change_track_new_qus float-none">
						<label>Select Track</label>
						<div class="inputcontain">
							<input type="text" id="disableEditAudioPath"
								name="disableAudioPath" disabled class="input_upl_track">
						</div>
						<div class="browse_changtrk">
							<span>Browse</span> <input type="file" id="editAudioTrackPath"
								name="audio" accept="audio/*" onchange="copyEditTrackName();">
						</div>
						<audio id="audio1"></audio>
						<input id="duration1" name="audioLength" type="hidden"></input>
					</div>
					<div class="change_track_new_tip">
						<label>Tip of the Day</label>
						<div class="inputcontain">
							<textarea rows="6" cols="48" id="editAudioTip" name="audioTip"></textarea>
						</div>
					</div>
					<div class="change_track_qus">
						<label>Suggested Questions</label>
						<div class="inputcontain">
							<textarea rows="6" cols="48" id="editSuggestedQuestions"
								name="suggestedQuestions" class="ckeditor"></textarea>
							<input type="submit" value="Change Track"
								class="change_trackbtn_qus">
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<!--change track modal ends-->

	<!--Message for the day starts-->
	<div id="popup8" class="modal-box">
		<div class="modal_change_track_new">
			<div class="modal_bodycont">

				<a class="cls-btn js-modal-close close" href="javascript:;" style="top:1%;">X</a>
			<%-- 	<form:form role="form" class="register-form3"
					action="updateProgramAudioTrack" enctype="multipart/form-data"
					modelAttribute="dtoProgramsAudio" method="post"> --%>
					<h5>Message for the day</h5>
					<input type="hidden" name="bounsTrackId" id="bounsTrackId"
						value="0" />
					<input type="hidden" name="audioId" id="editAudioId" />
					<input type="hidden" name="programId" id="editTrackProgramId" />
					<c:forEach items="${todayMessage}" var="todayMessage">
					<div class="msg_overall" style="margin:0px;">
						<div class="msg_label">
							<label>Message for ${todayMessage.days}</label>
						</div>
						 <div class="ntr_msg_contnt" style="padding-right:20px; padding-top:10px;">
							<div class="ntr_msg_contnt-main">
								<input type="hidden" id="todayMessageId_${todayMessage.id}"
									value="${todayMessage.id}" />
								<textarea placeholder="Type here" id="todayMessage_${todayMessage.days}">${todayMessage.message}</textarea>
							</div>
							
						</div>
					</div>
				</c:forEach>
				<div class="btns-outer mtop10">
								<input class="submit-btn fl" type="button"
									onclick="updateTodayMessage();" style="float:none !important;" value="PUBLISH">
							</div>
			</div>
		</div>
	</div>



	<!--Add track modal starts-->

	<div id="popup5" class="modal-box">
		<div class="modal_change_track_new">
			<div class="modal_bodycont">

				<a class="cls-btn js-modal-close close" href="javascript:;">X</a>
				<form:form role="form" class="register-form4"
					action="saveProgramAudioTrack" enctype="multipart/form-data"
					modelAttribute="dtoProgramsAudio" method="post">
					<h5>Add Track</h5>
					<input type="hidden" name="audioId" value="0" />
					<input type="hidden" id="addTrackProgramIdParent" name="programId"
						class="input_upl_track" />
					<div class="change_track_new">
						<label>Audio Title</label>
						<div class="inputcontain">
							<input type="text" name="audioTitle" class="input_upl_track">
						</div>
					</div>
					<div class="change_track_new">
						<label>Audio Category</label>
						<div class="inputcontain">
							<input type="hidden" name="categoryId" id="categoryId"> <input
								type="text" name="categoryName" id="categoryName"
								class="input_upl_track" readonly="readonly">
						</div>
					</div>
					<div class="change_track_new_qus float-none">
						<label>Select Track</label>
						<div class="inputcontain">
							<input type="text" id="disableAddAudioPathParent"
								name="disableAudioPath" disabled class="input_upl_track">
						</div>
						<div class="browse_changtrk">
							<span>Browse</span> <input type="file"
								id="addAudioTrackPathParent" name="audio" accept="audio/*"
								onchange="copyTrackNameParent();">
						</div>
					</div>
					<div class="change_track_qus">
						<input type="submit" value="Save Track"
							class="change_trackbtn_qus">
					</div>

				</form:form>
			</div>
		</div>
	</div>
	<!--Add track modal ends-->

	<!--change track modal starts-->

	<div id="popup6" class="modal-box">
		<div class="modal_change_track_new">
			<div class="modal_bodycont">

				<a class="cls-btn js-modal-close close" href="javascript:;">X</a>
				<form:form role="form" class="register-form5"
					action="updateProgramAudioTrackParent"
					enctype="multipart/form-data" modelAttribute="dtoProgramsAudio"
					method="post">
					<h5>Change Track Home Edition</h5>
					<input type="hidden" name="bounsTrackId" id="bounsTrackIdParent"
						value="0" />
					<input type="hidden" name="audioId" id="editAudioIdParent" />
					<input type="hidden" name="programId" id="editTrackProgramIdParent" />
					<div class="change_track_new">
						<label>Audio Title</label>
						<div class="inputcontain">
							<input type="text" id="audioTitleParent" name="audioTitle"
								class="input_upl_track">
						</div>
					</div>
					<!-- <div class="change_track_new">
<label>Audio Category</label>
<div class="inputcontain">
<input type="hidden" name="categoryId" id="categoryIdParent">
<input type="text" name="categoryName"  id="categoryNameParent" class="input_upl_track" readonly="readonly">
</div>
</div> -->
					<div class="change_track_new_qus float-none change_track_qus">
						<label>Select Track</label>
						<div class="inputcontain">
							<input type="text" id="disableEditAudioPathParent"
								name="disableAudioPath" disabled class="input_upl_track">
						</div>
						<div class="browse_changtrk">
							<span>Browse</span> <input type="file"
								id="editAudioTrackPathParent" name="audio" accept="audio/*"
								onchange="copyEditTrackNameParent();">
						</div>
					</div>
					<div class="change_track_qus">
						<div class="inputcontain">
							<input type="submit" value="Change Track"
								class="change_trackbtn_qus">
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<!--change track modal ends-->

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.mCustomScrollbar.concat.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/ckeditor/ckeditor.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
	<%-- <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script> --%>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery-ui.js"></script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/moment.min.js"></script>
	<%-- <script src="https://rawgit.com/moment/moment/2.2.1/min/moment.min.js"></script> --%>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script type="text/javascript">

var objectUrl;

$("#audio").on("canplaythrough", function(e){
    var seconds = e.currentTarget.duration;
    $("#duration").val(seconds);
    URL.revokeObjectURL(objectUrl);
});
$("#addAudioTrackPath").change(function(e){
    var file = e.currentTarget.files[0];
    objectUrl = URL.createObjectURL(file);
    $("#audio").prop("src", objectUrl);
});
$("#audio1").on("canplaythrough", function(e){
    var seconds = e.currentTarget.duration;
    $("#duration1").val(seconds);
    URL.revokeObjectURL(objectUrl);
});
$("#editAudioTrackPath").change(function(e){
    var file = e.currentTarget.files[0];
    objectUrl = URL.createObjectURL(file);
    $("#audio1").prop("src", objectUrl);
});


</script>
	<script type="text/javascript">
<%-- function updateGoal(){
	var goalId = $("#goalId").val();
	var goal = $("#goal").val();
	var goalExpire = $("#goalExpire").val();
	if(goalExpire!='' && goal !=''){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/updateGoal/",
		type : 'POST',
		data:{goalId:goalId,goal:goal,goalExpire:goalExpire},
		success : function(result) {
			$("#goalId").val(result);
			location.reload();
			}
		});
	}
} --%>
function updateMinimumContri(val){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/updateMinimumContri/",
		type : 'POST',
		data:{amount:val},
		success : function(result) {
			location.reload();
			}
		});
}


function updateStudentAdjustment(val){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/updateStudentAdjustment/",
		type : 'POST',
		data:{amount:val},
		success : function(result) {
			location.reload();
			}
		});
}


function updateTrail(val){
	if(val.trim()!=''){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/updateTrialDays/",
		type : 'POST',
		data:{days:val},
		success : function(result) {
			location.reload();
			}
		});
	}else{
		location.reload();
	}
}
function updateTodayMessage(){
	var todayMessageMonday = $('#todayMessage_Monday').val();
	var todayMessageTuesday = $('#todayMessage_Tuesday').val();
	var todayMessageWednesday = $('#todayMessage_Wednesday').val();
	var todayMessageThursday = $('#todayMessage_Thursday').val();
	var todayMessageFriday = $('#todayMessage_Friday').val();
	var todayMessageSaturday = $('#todayMessage_Saturday').val();
	var todayMessageSunday = $('#todayMessage_Sunday').val();
	var todayMessageIdMonday = $('#todayMessageId_17').val();
	var todayMessageIdTuesday = $('#todayMessageId_18').val();
	var todayMessageIdWednesday = $('#todayMessageId_19').val();
	var todayMessageIdThursday = $('#todayMessageId_20').val();
	var todayMessageIdFriday = $('#todayMessageId_21').val();
	var todayMessageIdSaturday = $('#todayMessageId_22').val();
	var todayMessageIdSunday = $('#todayMessageId_23').val();
	  var selected = new Array();
	  var days = new Array();
	  var todaymessage=new Array();
	   if(todayMessageMonday!=null){
		   
		   selected.push(todayMessageIdMonday); 
		   todaymessage.push(todayMessageMonday); 
		   days.push("Monday"); 
	   }
	   if(todayMessageIdTuesday!=null){
		   selected.push(todayMessageIdTuesday);
		   todaymessage.push(todayMessageTuesday); 
		   days.push("Tuesday"); 
	   }
	 
	   if(todayMessageIdWednesday!=null){
		   selected.push(todayMessageIdWednesday);
		   todaymessage.push(todayMessageWednesday); 
		   days.push("Wednesday");
	   }
	   if(todayMessageIdThursday!=null){
		   selected.push(todayMessageIdThursday);
		   todaymessage.push(todayMessageThursday); 
		   days.push("Thursday");
	   }
	   if(todayMessageIdFriday!=null){
		   selected.push(todayMessageIdFriday); 
		   todaymessage.push(todayMessageFriday); 
		   days.push("Friday");
	   }
	   if(todayMessageIdSaturday!=null){
		   selected.push(todayMessageIdSaturday); 
		   todaymessage.push(todayMessageSaturday); 
		   days.push("Saturday");
	   }
	   if(todayMessageIdSunday!=null){
		   selected.push(todayMessageIdSunday); 
		   todaymessage.push(todayMessageSunday); 
		   days.push("Sunday");
	   }
	 
	    
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/updateTodayMessage/",
		type : 'POST',
		data:{id1:selected,message1:todaymessage,days1:days},
		success : function(result) {
			
			$.each(result,function(key,value){
				
				$('#todayMessage_Monday').val(value);
				$('#todayMessageId_17').val(key);
				$('#todayMessage_Tuesday').val(value);
				$('#todayMessageId_18').val(key);
				$('#todayMessage_Wednesday').val(value);
				$('#todayMessageId_19').val(key);
				$('#todayMessage_Thursday').val(value);
				$('#todayMessageId_20').val(key);
				$('#todayMessage_Friday').val(value);
				$('#todayMessageId_21').val(key);
				$('#todayMessage_Saturday').val(value);
				$('#todayMessageId_22').val(key);
				$('#todayMessage_Sunday').val(value);
				$('#todayMessageId_23').val(key);
				location.reload();
			});
			}
		});
}

function updateDefaultMessage(){
	var defaultMessage = $('#defaultMessage').val();
	var defaultMessageId = $('#defaultMessageId').val();
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/updateDefaultMessage/",
		type : 'POST',
		data:{id:defaultMessageId,message:defaultMessage},
		success : function(result) {
			$.each(result,function(key,value){
				$('#defaultMessage').val(value);
				$('#defaultMessageId').val(key);
				location.reload();
			});
			}
		});
}
function copyTrackName(){
	   var fullPath  = $("#addAudioTrackPath").val();
	   if (fullPath) {
	         var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
	         var filename = fullPath.substring(startIndex);
	         if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
	                 filename = filename.substring(1);
	         }
	         $("#disableAddAudioPath").val(filename);
	}
}
function copyTrackNameParent(){
	   var fullPath  = $("#addAudioTrackPathParent").val();
	   if (fullPath) {
	         var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
	         var filename = fullPath.substring(startIndex);
	         if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
	                 filename = filename.substring(1);
	         }
	         $("#disableAddAudioPathParent").val(filename);
	}
}
function copyBonusTrackName(){
	   var fullPath  = $("#addBonusAudioTrackPath").val();
	   if (fullPath) {
	         var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
	         var filename = fullPath.substring(startIndex);
	         if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
	                 filename = filename.substring(1);
	         }
	         $("#disableAddBonusAudioPath").val(filename);
	}
}
function copyEditTrackName(){
	   var fullPath  = $("#editAudioTrackPath").val();
	   if (fullPath) {
	         var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
	         var filename = fullPath.substring(startIndex);
	         if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
	                 filename = filename.substring(1);
	         }
	        // alert(fileName);
	         $("#disableEditAudioPath").val(filename);
	}
}
function copyEditTrackNameParent(){
	   var fullPath  = $("#editAudioTrackPathParent").val();
	   if (fullPath) {
	         var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
	         var filename = fullPath.substring(startIndex);
	         if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
	                 filename = filename.substring(1);
	         }
	        // alert(fileName);
	         $("#disableEditAudioPathParent").val(filename);
	}
}
function copyEditBonusTrackName(){
	   var fullPath  = $("#editBonusAudioTrackPath").val();
	   if (fullPath) {
	         var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
	         var filename = fullPath.substring(startIndex);
	         if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
	                 filename = filename.substring(1);
	         }
	         $("#disableEditBounsAudioPath").val(filename);
	}
}
function showProgramAudio(programId){
	if(programId == ''){
		programId = '${programs[0].programId}';
	}
	var contextPath = '<%=request.getContextPath()%>';
	if(programId != '5'){
		$.ajax({
			url : "<%=request.getContextPath()%>/superadmin/getProgramAudios/"+programId,
			type : 'GET',
			success : function(result) {
				$('#programDesc').html('');
				var progDesc = $("#programDescDetail_"+programId).val();
				$('#programDesc').html(progDesc+'<a href="javascript:;" onclick="scrollToTop();" class="bonus_trackbtn js-open-modal btn" data-modal-id="popup2" style="float:right;margin-bottom:15px;">Add New Track</a>');
				$('#noCat').show();
				$('#programAudioList').html('');
				$('#programAudioList').show();
				$('#catOne').hide();
				$('#catTwo').hide();
				$('#catThree').hide();
				$('#catFour').hide();
				$('#programAudioListCatOne').html('');
				$('#programAudioListCatOne').hide();
				$('#programAudioListCatTwo').html('');
				$('#programAudioListCatTwo').hide();
				$('#programAudioListCatThree').html('');
				$('#programAudioListCatThree').hide();
				$('#programAudioListCatFour').html('');
				$('#programAudioListCatFour').hide();
				$.each($('[id^=overlay_]'),function(i,ele){
					//$(ele).removeAttr('style');
					$(ele).removeClass('overlay_setup_active');
				});
				//$('#overlay_'+programId).attr('style',"background-color:green");
				$('#overlay_'+programId).addClass("overlay_setup_active");
				if(!jQuery.isEmptyObject(result.audioList)){
					var records = '';
				    $.each(result.audioList,function(index,value){
				    	//alert(value.suggestedQuestions);
				    		var bonusTracks = '';
					    	var addBonusTrack='';
					    	if(jQuery.isEmptyObject(value.programsAudios)){
					    		addBonusTrack = '<a href="javascript:;" class="bonus_trackbtn js-open-modal btn" data-modal-id="popup3" onclick="addBonusTrack('+value.audioId+')">Add Bonus Track</a>';
					    	}
					    	records =records+'<p>'+value.audioDay+'-'+value.audioTitle+'</p>'+
	                        '<div class="mc_grid_row">'+
	                        '<div class="lg_player"><audio preload="none" controls>';
	                        if(value.programId == 1){
	                        	records =records+'<source src="${bucketPath}bitrate/lowbitrate/Exploring-Me/English/'+value.audioName+'" type="audio/mpeg"></source></audio></div>';
	                        }
	                        else if(value.programId == 2){
	                        	records =records+'<source src="${bucketPath}bitrate/lowbitrate/Exploring-Originality/English/'+value.audioName+'" type="audio/mpeg"></source></audio></div>';
	                        }
	                        else if(value.programId == 3){
	                        	records =records+'<source src="${bucketPath}bitrate/lowbitrate/Exploring-Potential/English/'+value.audioName+'" type="audio/mpeg"></source></audio></div>';
	                        }
	                        else if(value.programId == 4){
	                        	records =records+'<source src="${bucketPath}bitrate/lowbitrate/Exploring-Relevance/English/'+value.audioName+'" type="audio/mpeg"></source></audio></div>';
	                        }
	                        records =records+'<div class="playr_btn">'+
	                        addBonusTrack+
	                            '<a href="javascript:;" onclick="getAudioDetail('+value.programId+','+value.audioId+',\''+value.audioNameOrignal+'\');" class="bonus_trackbtn js-open-modal btn" data-modal-id="popup1">Change Track</a>'+
	                            '<div style="display:none;" id="audioDesc_'+value.audioId+'">'+value.audioDescription+'</div>'+
	                            '<div style="display:none;" id="audioTip_'+value.audioId+'">'+value.audioTip+'</div>'+
	                            '<div style="display:none;" id="suggestedQues_'+value.audioId+'">'+value.suggestedQuestions+'</div>'+
	                            '<div style="display:none;" id="audioDay_'+value.audioId+'">'+value.audioDay+'</div>'+
	                            '<div style="display:none;" id="audioTitle_'+value.audioId+'">'+value.audioTitle+'</div>'+
	                        '</div>'+
	                    '</div>';
	                    if(!jQuery.isEmptyObject(value.programsAudios)){
		                    $.each(value.programsAudios,function(i,val){
		                    	bonusTracks = bonusTracks+'<div class="click_bonus">'+
			                    		'<div class="bonus_track">'+
					                    	'<img src="'+contextPath+'/NewStyles/images/bounce_plyr.png" alt="">'+
					                    '</div>'+
					                    '<div class="track_player">'+
					                    	'<p>'+val.audioDescription+'</p>'+
					                    	'<audio preload="none" controls><source src="'+contextPath+'/bonusTracks/'+val.audioName+'" type="audio/mpeg"></source></audio>'+
					                    '</div>'+
					                    '<div class="chng_trk_btn">'+
					                        '<a href="javascript:;"  class="bonus_trackbtn js-open-modal btn" onclick="getBonusTrackDetail('+val.bounsTrackId+',\''+(val.audioDescription).replace("'","'+'")+'\');" data-modal-id="popup4">Change Track</a>'+
					                    '</div>'+
					                '</div>';
		                    });
	                    }
	                    records = records+bonusTracks;
				    });
				    $('#programAudioList').html(records);
				} else{
					$('#programAudioList').html('<p>No record found</p>');
				}
				initDialog();
			}
		});
		$('#addTrackProgramId').val(programId);
	}else{
		$.ajax({
			url : "<%=request.getContextPath()%>/superadmin/getProgramAudios/"+programId,
			type : 'GET',
			success : function(result) {
				
				$('#programDesc').html('');
				var progDesc = $("#programDescDetail_"+programId).val();
				$('#programDesc').html(progDesc);
				$('#noCat').hide();
				$('#programAudioList').html('');
				$('#programAudioList').hide();
				$('#catOne').show();
				$('#catTwo').show();
				$('#catThree').show();
				$('#catFour').show();
				$('#programAudioListCatOne').html('');
				$('#programAudioListCatOne').show();
				$('#programAudioListCatTwo').html('');
				$('#programAudioListCatTwo').show();
				$('#programAudioListCatThree').html('');
				$('#programAudioListCatThree').show();
				$('#programAudioListCatFour').html('');
				$('#programAudioListCatFour').show();
				$.each($('[id^=overlay_]'),function(i,ele){
				$(ele).removeClass('overlay_setup_active');
				});
				$('#overlay_'+programId).addClass("overlay_setup_active");
					var records = '';
					var recordsCatTwo = '';
					var recordsCatThree = '';
					var recordsCatFour = '';
					var cat1 =0;
					var cat2 =0;
					var cat3 =0;
					var cat4 =0;
				    $.each(result.audioList,function(index,value){
				    	/* if(value.categoryId == 1){ */
					    	records =records+'<p>'+value.audioTitle+'</p>'+
	                        '<div class="mc_grid_row">'+
	                        '<div class="lg_player"><audio preload="none" controls><source src="${bucketPath}bitrate/lowbitrate/Exploring-Potential/English/'+value.audioName+'" type="audio/mpeg"></source></audio></div>'+
	                        '<div class="playr_btn">'+
	                            '<a href="javascript:;" onclick="getAudioDetailParent('+value.programId+','+value.audioId+',\''+value.audioNameOrignal+'\');" class="bonus_trackbtn js-open-modal btn" data-modal-id="popup6">Change Track</a>'+
	                            '<div style="display:none;" id="categoryId_'+value.audioId+'">'+value.categoryId+'</div>'+
	                            '<div style="display:none;" id="categoryName_'+value.audioId+'">'+value.categoryName+'</div>'+
	                            '<div style="display:none;" id="audioTitle_'+value.audioId+'">'+value.audioTitle+'</div>'+
	                        '</div>'+
	                    	'</div>';
	                    	cat1++;
				    	/* }else if(value.categoryId == 2){
				    		recordsCatTwo =recordsCatTwo+'<p>'+value.audioTitle+'</p>'+
	                        '<div class="mc_grid_row">'+
	                        '<div class="lg_player"><audio preload="none" controls><source src="'+contextPath+'/audioFiles/'+value.audioName+'" type="audio/mpeg"></source></audio></div>'+
	                        '<div class="playr_btn">'+
	                            '<a href="javascript:;" onclick="getAudioDetailParent('+value.programId+','+value.audioId+',\''+value.audioNameOrignal+'\');" class="bonus_trackbtn js-open-modal btn" data-modal-id="popup6">Change Track</a>'+
	                            '<div style="display:none;" id="categoryId_'+value.audioId+'">'+value.categoryId+'</div>'+
	                            '<div style="display:none;" id="categoryName_'+value.audioId+'">'+value.categoryName+'</div>'+
	                            '<div style="display:none;" id="audioTitle_'+value.audioId+'">'+value.audioTitle+'</div>'+
	                        '</div>'+
	                    	'</div>';
	                    	cat2++;
				    	}else if(value.categoryId == 3){
				    		recordsCatThree =recordsCatThree+'<p>'+value.audioTitle+'</p>'+
	                        '<div class="mc_grid_row">'+
	                        '<div class="lg_player"><audio preload="none" controls><source src="'+contextPath+'/audioFiles/'+value.audioName+'" type="audio/mpeg"></source></audio></div>'+
	                        '<div class="playr_btn">'+
	                            '<a href="javascript:;" onclick="getAudioDetailParent('+value.programId+','+value.audioId+',\''+value.audioNameOrignal+'\');" class="bonus_trackbtn js-open-modal btn" data-modal-id="popup6">Change Track</a>'+
	                            '<div style="display:none;" id="categoryId_'+value.audioId+'">'+value.categoryId+'</div>'+
	                            '<div style="display:none;" id="categoryName_'+value.audioId+'">'+value.categoryName+'</div>'+
	                            '<div style="display:none;" id="audioTitle_'+value.audioId+'">'+value.audioTitle+'</div>'+
	                        '</div>'+
	                    	'</div>';
	                    	cat3++;
				    	}else if(value.categoryId == 4){
				    		recordsCatFour =recordsCatFour+'<p>'+value.audioTitle+'</p>'+
	                        '<div class="mc_grid_row">'+
	                        '<div class="lg_player"><audio preload="none" controls><source src="'+contextPath+'/audioFiles/'+value.audioName+'" type="audio/mpeg"></source></audio></div>'+
	                        '<div class="playr_btn">'+
	                            '<a href="javascript:;" onclick="getAudioDetailParent('+value.programId+','+value.audioId+',\''+value.audioNameOrignal+'\');" class="bonus_trackbtn js-open-modal btn" data-modal-id="popup6">Change Track</a>'+
	                            '<div style="display:none;" id="categoryId_'+value.audioId+'">'+value.categoryId+'</div>'+
	                            '<div style="display:none;" id="categoryName_'+value.audioId+'">'+value.categoryName+'</div>'+
	                            '<div style="display:none;" id="audioTitle_'+value.audioId+'">'+value.audioTitle+'</div>'+
	                        '</div>'+
	                    	'</div>';
	                    	cat4++;
				    	} */
				    });
				    $('#programAudioListCatOne').html(records);
					$('#programAudioListCatTwo').html(recordsCatTwo);
					$('#programAudioListCatThree').html(recordsCatThree);
					$('#programAudioListCatFour').html(recordsCatFour);
					if(records == ''){
						$('#programAudioListCatOne').html('<p>No record found</p>');
					}
					if(recordsCatTwo == ''){
						$('#programAudioListCatTwo').html('<p>No record found</p>');
					}
					if(recordsCatThree == ''){
						$('#programAudioListCatThree').html('<p>No record found</p>');
					}
					if(recordsCatFour == ''){
						$('#programAudioListCatFour').html('<p>No record found</p>');
					}

				initDialog();
				$.ajax({
					url : "<%=request.getContextPath()%>/superadmin/getProgramAudiosCatgories",
					type : 'GET',
					success : function(result) {
						 $.each(result.categoryList,function(index,value){
							 $("#cat"+(index+1)+"Desc").html(value.categoryName+'<a href="javascript:;" id="addCatLink-'+(index+1)+'" onclick="addCatTrack('+value.categoryId+',\''+value.categoryName+'\')" class="bonus_trackbtn js-open-modal btn" data-modal-id="popup5" style="float:right;margin-bottom:15px;">Add New Track</a>');
							 initDialog();
						 });
						    if(cat1==4){
						    	$("#addCatLink-1").remove();
						    }
						    if(cat2==4){
						    	$("#addCatLink-2").remove();
						    }
						    if(cat3==4){
						    	$("#addCatLink-3").remove();
						    }
						    if(cat4==4){
						    	$("#addCatLink-4").remove();
						    }
					}
				});

			}
		});
		$('#addTrackProgramIdParent').val(programId);
	}
}

function addCatTrack(id,name){
	$("#categoryId").val(id);
	$("#categoryName").val(name);
	 $(window).scrollTop(0);
}
function getAudioDetailParent(programId,audioId,audioName){
	//alert(audioId+audioDesc+audioTip+audioTitle+audioDay);
	$("#editAudioIdParent").val(audioId);
	$("#audioTitleParent").val($("#audioTitle_"+audioId).text());
	$("#categoryIdParent").val($("#categoryId_"+audioId).text());
	$("#categoryNameParent").val($("#categoryName_"+audioId).text());
	$("#disableEditAudioPathParent").val(audioName);
	$("#editTrackProgramIdParent").val(programId);
	 $(window).scrollTop(0);
	//$("#editSuggestedQuestions").val(suggestedQuestions);
}
function getAudioDetail(programId,audioId,audioName){
	//alert(audioId+audioDesc+audioTip+audioTitle+audioDay);
	$("#editAudioDescription").val($("#audioDesc_"+audioId).text());
	$("#editAudioId").val(audioId);
	$("#audioTitle").val($("#audioTitle_"+audioId).text());
	$("#audioDay").val($("#audioDay_"+audioId).text());
	$("#editAudioTip").val($("#audioTip_"+audioId).text());
	CKEDITOR.instances['editSuggestedQuestions'].setData($('#suggestedQues_'+audioId).html());
	$("#disableEditAudioPath").val(audioName);
	$("#editTrackProgramId").val(programId);
	 $(window).scrollTop(0);
	//$("#editSuggestedQuestions").val(suggestedQuestions);
}
function getBonusTrackDetail(audioId,audioDesc){
	$("#editBonusAudioDescription").val(audioDesc);
	$("#editBonusAudioId").val(audioId);
	 $(window).scrollTop(0);
}
function addBonusTrack(audioId){
	$("#bonusAudioId").val(audioId);
	 $(window).scrollTop(0);

}
</script>
	<script>
		(function($){
			$(window).load(function(){
				$(".mc_track_wrap").mCustomScrollbar();
			});
		})(jQuery);
	</script>

	<script>
  var objectUrl; 
  var fileNameExt='';
$(function(){
	$("#header").sticky({ topSpacing: 0 });
	/* $( "#goalExpire" ).datepicker({
        defaultDate: "+1w",
        changeMonth: true,
        minDate: 0,
        dateFormat: 'yy-mm-dd'
      }); */
	initDialog();
	                    
	                    $('.register-form').validate({
	                        errorElement: 'span', //default input error message container
	                        errorClass: 'help-block', // default input error message class
	                        focusInvalid: false, // do not focus the last invalid input
	                        //ignore: "",
	                        rules: {
	                        	audioTitle:{
	                        		required: true,
	                        		maxlength : 50
	                        	},
	                        	audioDay:{
	                        		required: true,
	                        		maxlength : 50
	                        	},
	                        	audioDescription:{
	                        		required: true,
	                        		//maxlength : 50
	                        	},
	                        	disableAudioPath:{
	                        		required: true
	                        	},
	                        	audio:{
	                        		required: true
	                        	}
	                        },


	                        invalidHandler: function(event, validator) { //display error alert on form submit   
	                        },

	                        highlight: function(element) { // hightlight error inputs
	                            $(element)
	                                .closest('.inputcontain').addClass('has-error'); // set error class to the control group
	                            $(element)
                                .closest('.change_track').addClass('has-error');
	                            $(element)
                                .closest('.change_track_new_qus').children('.inputcontain').addClass('has-error');
	                        },

	                        success: function(label) {
	                            label.closest('.inputcontain').removeClass('has-error');
	                            label.closest('.change_track').removeClass('has-error');
	                            label.closest('.change_track_new_qus').children('.inputcontain').removeClass('has-error');
	                            label.remove();
	                        },

	                        errorPlacement: function(error, element) {
	                            if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
	                                error.insertAfter($('#register_tnc_error'));
	                            } else if (element.closest('.input-icon').size() === 1) {
	                                error.insertAfter(element.closest('.input-icon'));
	                            }else if (element.closest('.change_track_new_qus').children('.inputcontain').children('.input_upl_track').size() === 1) {
	                                error.insertAfter(element.closest('.change_track_new_qus').children('.inputcontain').children('.input_upl_track'));
	                            } else {
	                                error.insertAfter(element);
	                            }
	                        },

	                        submitHandler: function(form) {
	                            form.submit();
	                        }
	                    });
	                    
	                    $('.register-form1').validate({
	                        errorElement: 'span', //default input error message container
	                        errorClass: 'help-block', // default input error message class
	                        focusInvalid: false, // do not focus the last invalid input
	                        //ignore: "",
	                        rules: {
	                        	audioDescription:{
	                        		required: true,
	                        		maxlength : 50
	                        	},
	                        	disableAudioPath:{
	                        		required: true
	                        	},
	                        	audio:{
	                        		required: true
	                        	}
	                        },


	                        invalidHandler: function(event, validator) { //display error alert on form submit   
	                        },

	                        highlight: function(element) { // hightlight error inputs
	                            $(element)
	                                .closest('.inputcontain').addClass('has-error'); // set error class to the control group
	                            $(element)
                                .closest('.change_track').children('.inputcontain_new').addClass('has-error');
	                            
	                        },

	                        success: function(label) {
	                            label.closest('.inputcontain').removeClass('has-error');
	                            label.closest('.change_track').children('.inputcontain_new').removeClass('has-error');
	                            label.remove();
	                        },

	                        errorPlacement: function(error, element) {
	                            if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
	                                error.insertAfter($('#register_tnc_error'));
	                            } else if (element.closest('.input-icon').size() === 1) {
	                                error.insertAfter(element.closest('.input-icon'));
	                            }else if (element.closest('.change_track').children('.inputcontain_new').children('.input_upl_bns_track').size() === 1) {
	                                error.insertAfter(element.closest('.change_track').children('.inputcontain_new').children('.input_upl_bns_track'));
	                            }   else {
	                                error.insertAfter(element);
	                            }
	                        },

	                        submitHandler: function(form) {
	                            form.submit();
	                        }
	                    });
	                    
	                    $('.register-form2').validate({
	                        errorElement: 'span', //default input error message container
	                        errorClass: 'help-block', // default input error message class
	                        focusInvalid: false, // do not focus the last invalid input
	                        //ignore: "",
	                        rules: {
	                        	audioDescription:{
	                        		required: true,
	                        		maxlength : 50
	                        	},
	                        	disableAudioPath:{
	                        		required: true
	                        	},
	                        	audio:{
	                        		required: true
	                        	}
	                        },


	                        invalidHandler: function(event, validator) { //display error alert on form submit   
	                        },

	                        highlight: function(element) { // hightlight error inputs
	                            $(element)
	                                .closest('.inputcontain').addClass('has-error'); // set error class to the control group
	                            $(element)
                                .closest('.change_track').addClass('has-error');
	                            $(element)
                                .closest('.change_track').children('.inputcontain_new').addClass('has-error');
	                        },

	                        success: function(label) {
	                            label.closest('.inputcontain').removeClass('has-error');
	                            label.closest('.change_track').removeClass('has-error');
	                            label.closest('.change_track').children('.inputcontain_new').removeClass('has-error');
	                            label.remove();
	                        },

	                        errorPlacement: function(error, element) {
	                            if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
	                                error.insertAfter($('#register_tnc_error'));
	                            } else if (element.closest('.input-icon').size() === 1) {
	                                error.insertAfter(element.closest('.input-icon'));
	                            }else if (element.closest('.change_track').children('.inputcontain_new').children('.input_upl_bns_track').size() === 1) {
	                                error.insertAfter(element.closest('.change_track').children('.inputcontain_new').children('.input_upl_bns_track'));
	                            } else {
	                                error.insertAfter(element);
	                            }
	                        },

	                        submitHandler: function(form) {
	                            form.submit();
	                        }
	                    });
	                    
	                    $('.register-form3').validate({
	                        errorElement: 'span', //default input error message container
	                        errorClass: 'help-block', // default input error message class
	                        focusInvalid: false, // do not focus the last invalid input
	                        //ignore: "",
	                        rules: {
	                        	audioTitle:{
	                        		required: true,
	                        		maxlength : 50
	                        	},
	                        	audioDay:{
	                        		required: true,
	                        		maxlength : 50
	                        	},
	                        	audioDescription:{
	                        		required: true,
	                        		maxlength : 50
	                        	},
	                        	disableAudioPath:{
	                        		required: true
	                        	}/* ,
	                        	audio:{
	                        		required: true
	                        	} */
	                        },


	                        invalidHandler: function(event, validator) { //display error alert on form submit   
	                        },

	                        highlight: function(element) { // hightlight error inputs
	                            $(element)
	                                .closest('.inputcontain').addClass('has-error'); // set error class to the control group
	                            $(element)
                                .closest('.change_track').addClass('has-error');
	                            $(element)
                                .closest('.change_track_new_qus').children('.inputcontain').addClass('has-error');
	                        },

	                        success: function(label) {
	                            label.closest('.inputcontain').removeClass('has-error');
	                            label.closest('.change_track').removeClass('has-error');
	                            label.closest('.change_track_new_qus').children('.inputcontain').removeClass('has-error');
	                            label.remove();
	                        },

	                        errorPlacement: function(error, element) {
	                            if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
	                                error.insertAfter($('#register_tnc_error'));
	                            } else if (element.closest('.input-icon').size() === 1) {
	                                error.insertAfter(element.closest('.input-icon'));
	                            }else if (element.closest('.change_track_new_qus').children('.inputcontain').children('.input_upl_track').size() === 1) {
	                                error.insertAfter(element.closest('.change_track_new_qus').children('.inputcontain').children('.input_upl_track'));
	                            } else {
	                                error.insertAfter(element);
	                            }
	                        },

	                        submitHandler: function(form) {
	                            form.submit();
	                        }
	                    });
	                    
	                    $('.register-form4').validate({
	                        errorElement: 'span', //default input error message container
	                        errorClass: 'help-block', // default input error message class
	                        focusInvalid: false, // do not focus the last invalid input
	                        //ignore: "",
	                        rules: {
	                        	audioTitle:{
	                        		required: true,
	                        		maxlength : 50
	                        	},
	                        	disableAudioPath:{
	                        		required: true
	                        	},
	                        	audio:{
	                        		required: true
	                        	}
	                        },


	                        invalidHandler: function(event, validator) { //display error alert on form submit   
	                        },

	                        highlight: function(element) { // hightlight error inputs
	                            $(element)
	                                .closest('.inputcontain').addClass('has-error'); // set error class to the control group
	                            $(element)
                                .closest('.change_track').addClass('has-error');
	                            $(element)
                                .closest('.change_track_new_qus').children('.inputcontain').addClass('has-error');
	                        },

	                        success: function(label) {
	                            label.closest('.inputcontain').removeClass('has-error');
	                            label.closest('.change_track').removeClass('has-error');
	                            label.closest('.change_track_new_qus').children('.inputcontain').removeClass('has-error');
	                            label.remove();
	                        },

	                        errorPlacement: function(error, element) {
	                            if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
	                                error.insertAfter($('#register_tnc_error'));
	                            } else if (element.closest('.input-icon').size() === 1) {
	                                error.insertAfter(element.closest('.input-icon'));
	                            }else if (element.closest('.change_track_new_qus').children('.inputcontain').children('.input_upl_track').size() === 1) {
	                                error.insertAfter(element.closest('.change_track_new_qus').children('.inputcontain').children('.input_upl_track'));
	                            } else {
	                                error.insertAfter(element);
	                            }
	                        },

	                        submitHandler: function(form) {
	                            form.submit();
	                        }
	                    });
/* 	                    var myInput = $('#contri');
	                    myInput.addEventListener('keypress', function(e) {
	                    	  var key = !isNaN(e.charCode) ? e.charCode : e.keyCode;
	                    	  function keyAllowed() {
	                    	    var keys = [8,9,13,16,17,18,19,20,27,46,48,49,50,
	                    	                51,52,53,54,55,56,57,91,92,93];
	                    	    if (key && keys.indexOf(key) === -1)
	                    	      return false;
	                    	    else
	                    	      return true;697
	                    	  }
	                    	  if (!keyAllowed())
	                    	    e.preventDefault();
	                    	}, false);

	                    	// EDIT: Disallow pasting non-number content
	                    	myInput.addEventListener('paste', function(e) {
	                    	  var pasteData = e.clipboardData.getData('text/plain');
	                    	  if (pasteData.match(/[^0-9]/))
	                    	    e.preventDefault();
	                    	}, false); */
	                    	featuredCommunities();
	                    	allCommunitiesList();
});
function initDialog(){
	
var appendthis =  ("<div class='modal-overlay js-modal-close'></div>");

	$('a[data-modal-id]').click(function(e) {
		e.preventDefault();
    $("body").append(appendthis);
    $(".modal-overlay").fadeTo(500, 0.7);
    //$(".js-modalbox").fadeIn(500);
		var modalBox = $(this).attr('data-modal-id');
		$('#'+modalBox).fadeIn($(this).data());
	});  
  
  
$(".js-modal-close, .modal-overlay").click(function() {
    $(".modal-box, .modal-overlay").fadeOut(500, function() {
        $(".modal-overlay").remove();
    });
 
});
 
$(window).resize(function() {
    $(".modal-box").css({
        top: ($(window).height() - $(".modal-box").outerHeight()) / 7,
        left: ($(window).width() - $(".modal-box").outerWidth()) / 2
    });
});
 
$(window).resize();


}

function saveSubscription(progId, amount){
	if(amount!=null && 0 != amount.length){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/saveSubsciptionAmount",
		type : 'POST',
		data : {progId:progId,amount:amount},
		success : function(result) {
			location.reload();
		}
	});
	}
	else{
		alert("Please add an amount");
	}
}

function killRadio()
{
	$.ajax({  
        	type : "GET",   
        	url : "<%=request.getContextPath()%>/superadmin/live/stopRadio",   
         	async:true
     });
	
}
function scrollToTop(){
	 $(window).scrollTop(0);
}

function featuredCommunities(){
	var featuredCommunities = '';
	$.getJSON('${baseURL}webservice.php?method=allcommunity', function(data) {
		//if(data.data.length>0){
			$.each(data.data, function(index,value) {
				if(value.status == 1){
					featuredCommunities +='<div class="outer-field-wrap hght-55"><div class="outer-field new-input">'
					+'<input type="text" readOnly="readOnly" value="'+value.title+'">'
				+'</div></div>';
				}
			});
			if(featuredCommunities==''){
				featuredCommunities = '<div class="outer-field-wrap hght-55"><div class="outer-field new-input">'
					+'<label>No community marked as featured</label>'
					+'</div></div>';
			}
			$("#featuredCommunities").html(featuredCommunities);
		//}
	});
}

function allCommunitiesList(){
	var featuredCommunities = '';
	$.getJSON('${baseURL}webservice.php?method=allcommunity', function(data) {
		//if(data.data.length>0){
			$.each(data.data, function(index,value) {
				if(value.status == 1){
					featuredCommunities +='<li><div class="chk-cmnty">'
					+'<label for="toggle-1"><input type="checkbox" id="community-'+value.id+'" onclick="setUnfeatured('+value.id+');" checked>'+value.title+'</label>'
				+'</li></div>';
				}else{
					featuredCommunities +='<li><div class="chk-cmnty">'
						+'<label for="toggle-1"><input type="checkbox" onclick="setFeatured('+value.id+');" id="community-'+value.id+'">'+value.title+'</label>'
					+'</li></div>';
				}
			});
			if(featuredCommunities==''){
				featuredCommunities = '<li><div class="chk-cmnty">'
					+'<label for="toggle-1">No community found</label>'
					+'</li></div>';
			}
			$("#communitiesList").html(featuredCommunities);
		//}
	});
}
function setUnfeatured(id){
	$.getJSON('${baseURL}webservice.php?method=updatefeaturedcommunity&communityid='+id+"&status=0", function(data) {
		if(data.status){
			$("#community-"+id).attr("onclick", "setFeatured("+id+")");
		}
	});
}

function setFeatured(id){
	var chk = false;
	var count = 0;
	$('[id^=community-]').each(function(){
		chk = $(this).is(':checked');
		if(chk){
			count++;
		}
	});
	if(count<4){
		$.getJSON('${baseURL}webservice.php?method=updatefeaturedcommunity&communityid='+id+"&status=1", function(data) {
			if(data.status){
				$("#community-"+id).attr("onclick", "setFeatured("+id+")");
			}
		});
	}else{
		alert("You can marked only 3 communities as featured.");
		 $("#community-"+id).attr("checked", false);
	}
	
}
function reloadPage(){
	location.reload();
}

function updateParentPayment(val){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/updateParentPayment/",
		type : 'POST',
		data:{amount:val},
		success : function(result) {
			location.reload();
			}
		});
}

function updateParentPaymentThreeMonth(val){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/updateParentPaymentThreeMonth/",
		type : 'POST',
		data:{amount:val},
		success : function(result) {
			location.reload();
			}
		});
}
function updateParentRadioCount(val){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/updateParentRadioCount/",
		type : 'POST',
		data:{count:val},
		success : function(result) {
			location.reload();
			}
		});
}
function updateParentHomeCount(val){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/updateParentHomeCount/",
		type : 'POST',
		data:{count:val},
		success : function(result) {
			location.reload();
			}
		});
}
function updatePrincipalMonthlySub(val){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/updatePrincipalMonthlySub/",
		type : 'POST',
		data:{amt:val},
		success : function(result) {
			location.reload();
			}
		});
}
function updatePrincipalYearlySub(val){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/updatePrincipalYearlySub/",
		type : 'POST',
		data:{amt:val},
		success : function(result) {
			location.reload();
			}
		});
}
function updatePrincipalMonthlySubDays(val){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/updatePrincipalMonthlySubDays/",
		type : 'POST',
		data:{days:val},
		success : function(result) {
			location.reload();
			}
		});
}
function updatePrincipalYearlySubDays(val){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/updatePrincipalYearlySubDays/",
		type : 'POST',
		data:{days:val},
		success : function(result) {
			location.reload();
			}
		});
}
function updatePrincipalYearlySubDiscount(val){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/updatePrincipalYearlySubDiscount/",
		type : 'POST',
		data:{discount:val},
		success : function(result) {
			location.reload();
			}
		});
}

function updateTeacherMonthlySub(val){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/updateTeacherMonthlySub/",
		type : 'POST',
		data:{amt:val},
		success : function(result) {
			location.reload();
			}
		});
}

function updateTeacherYearlySub(val){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/updateTeacherYearlySub/",
		type : 'POST',
		data:{amt:val},
		success : function(result) {
			location.reload();
			}
		});
}


function updateTeacherYearlySubDays(val){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/updateTeacherYearlySubDays/",
		type : 'POST',
		data:{days:val},
		success : function(result) {
			location.reload();
			}
		});
}

</script>
</body>
</html>