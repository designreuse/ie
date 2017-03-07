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
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>App Users</title>
<%-- <link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
 <link href="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/>
 	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
	<link rel="stylesheet" href="https://cdn.datatables.net/select/1.1.0/css/select.dataTables.min.css" />
	<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/> --%>

<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link
	href="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jqvmap.css"
	rel="stylesheet" type="text/css" />
<link
	href="<%=request.getContextPath()%>/NewStyles/jquery-easy-pie-chart/jquery.easy-pie-chart.css"
	rel="stylesheet" type="text/css" media="screen" />
<link
	href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />

<link
	href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />

<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"
	id="style_components" rel="stylesheet" type="text/css" />

<style type="text/css">
.table {
	width: 100% !important;
}

.fc-widget-content {
	min-height: 170px !important;
	height: auto !important;
}

.fc-center h2 {
	font-size: 32px !important;
}

.grid_weekly .fc-month-view .fc-body thead td {
	background: #079b4f !important;
	text-align: center !important;
	border-right: 1px solid #fff;
	color: #fff;
	font-size: 14px;
	padding: 10px 5px !important;
	font-weight: 600;
}

.grid_weekly .fc-month-view .fc-head {
	display: none !important;
}
/* .fc-right{ margin:40px 0 50px 0 !important; padding:0 !important; float:left !important; width:100% !important;}
.fc-right .fc-button-group{ margin:0 !important; padding:0 !important; text-align:center !important;}
.fc-right .fc-button-group button{  margin:0 1% !important; padding:0 !important; display:inline-block !important;  vertical-align:top !important; background:#ebecf0 !important; color:#000 !important;} */
/*.fc-right .fc-button-group li a{ display:block; padding:15px 50px; position:relative;  color:#000; font-size:16px;}
.fc-right .fc-button-group li span{ display:block; font-size:14px;}
.week_months ul li.bg-week a{ background:#079b4f; }
.week_months ul li.bg-week a:after {    border-left: 10px solid transparent;    border-right: 10px solid transparent;    border-top: 10px solid #079b4f;    bottom: -10px;    content: "";    height: 0;    left: 0;    margin: 0 auto;    position: absolute;    right: 0;    width: 0;}
.week_months ul li.bg-month a{ background:#ebecf0; color:#000000 } */
</style>



</head>

<body>
	<spring:eval var="bucketPath"
		expression="@propertyConfigurer.getProperty('bucket_path')" />
	<div class="wrapper">
		<%@include file="header.jsp"%>

		<!--inner_wrapper starts-->
		<div class="inner_wrapper">

			<!--inner_header starts-->
			<%-- <div class="inner_header"> <img src="<%=request.getContextPath() %>/NewStyles/images/browse-donation-header.jpg"  alt=""/> </div> --%>

			<!--about_us starts-->
			<div class="about_us">
				<div class="content_inner_practice_history">
					<div class="pracProgress_hdr">
						<h2>Practice History</h2>
						<div class="green_line_btm"></div>
					</div>
					<!--misc tabs start-->
					<div class="misc_tabs">
						<div class="misc_tabar background-none">
							<ul class="tabPAreanew">

								<li id="mtab1"><a class="fp"
									onclick="getHistoryForTeacher();" href="javascript:showTab(1,2)">Teacher</a></li>
								<li id="mtab2"><a class="fp"
									onclick="getHistoryForParent();" href="javascript:showTab(2,2)">Parent</a></li>

							</ul>
						</div>
						
						<div id="tab4" style="display: none;">

		<div class="ourStory-Popup" id="letterToParentDashTrack">
			<!-- <h4>Track Invite</h4> -->
			<div class="ur_grid ur_grid_pop">

				<table class="table table-striped table-bordered table-hover"
					id="sample_7">
					<thead>
						<tr>
							<th class="center"><strong>Parent Email</strong></th>
							<th class="center"><strong>Date of Invitation</strong></th>
							<th class="center"><strong>Name</strong></th>
							<th class="center"><strong>Status</strong></th>
							<th class="center"><strong>Status1</strong></th>
							<th style="display: none;"></th>
							<th style="display: none;"></th>
						</tr>
					</thead>
					<tbody></tbody>
				</table>


			</div>

		</div>

	</div>
						<%-- 			<div class="misc_content">
							<!--TAB 1 STARTS-->
							<div id="tab1" style="display: none;">

								<div class="ourStory-Popup" id="letterToParentDash">
									<div class="ur_grid ur_grid_pop overflw-vis">

										<form:form method="post" modelAttribute="dtoLetterToParent"
											enctype="multipart/form-data"
											action="${pageContext.request.contextPath}/teacher/sendletterToAllParents"
											id="saveLetterEmail" class="register-form">
											<div class="school_setup_wrapper margin-top-zero"
												id="progDetail">
												<div class="getstartForm new-letterPar">
													<ul>
														<div id="parentInfo_${schoolId}">
															<div id="divSection_${schoolId}_0">

																<li>
																	<!-- <div class="input_relative"> --> <!-- <div class="input_add_logo width-less"> -->
																	<div class="contact-row">
																		<div class="outer-field-wrap">
																			<div class="outer-field">
																				<input placeholder="Parent Email*" type="text"
																					name="parentEmail" id="parentEmail_${schoolId}_0"
																					class="ignore1" />
																			</div>
																		</div>
																	</div> <!-- </div> --> <!-- <input type="button" class="input_abs_plus">  -->
																	 <div class="plusImg" id="removeLast_${schoolId}_0"><a  title="Add More" onclick="addMoreClass(${schoolId},0);" id="addMoreClass_${schoolId}"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div>
																	<!-- </div> -->
																</li>

																<li>
																	<div class="contact-row">
																		<div class="outer-field-wrap">
																			<div class="outer-field full-width-input">
																				<input placeholder="Parent Mobile" type="text"
																					name="parentMobile" id="parentMobile_${schoolId}_0"
																					class="ignore1" />
																			</div>
																		</div>
																	</div>
																</li>

																<li>
																	<div class="input_relative">
																		<div class="input_add_logo width-less">
																			<div class="contact-row">
																				<div class="outer-field-wrap">
																					<div class="outer-field">
																						<input placeholder="Name" type="text"
																							name="comments" id="comments_${schoolId}_0"
																							class="ignore1" />
																					</div>
																				</div>
																			</div>
																		</div>
																		<!-- <input type="button" class="input_abs_plus">  -->
																		<div class="plusImg" id="removeLast_${schoolId}_0">
																			<a title="Add More"
																				onclick="addMoreClass(${schoolId},0);"
																				id="addMoreClass_${schoolId}"><img
																				src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png"
																				alt="Image" /></a>
																		</div>
																	</div>
																</li>
													</ul>
												</div>

											</div>
											<div id="tab1">
												<div class="section_trial Mbtm0">
													<div class="free_trial_somedays margin-top-twnty">
														<!-- <h5>Experience for next 45 sessions</h5> -->
														<div class="txtcenter_align">
															<a class="blueBtn" onclick="sendingEmailToParents();">SEND</a>
														</div>
													</div>
												</div>
											</div>
										</form:form>
									</div>
								</div>


							</div>
							<!--TAB 1 ENDS-->
							<!--TAB 2 STARTS-->
							<div id="tab2" style="display: none;">

								<div class="ourStory-Popup" id="letterToParentDashTrack">
									<!-- <h4>Track Invite</h4> -->
									<div class="ur_grid ur_grid_pop">

										<table class="table table-striped table-bordered table-hover"
											id="sample_6">
											<thead>
												<tr>
													<th class="center"><strong>Parent Email</strong></th>
													<th class="center"><strong>Date of Invitation</strong></th>
													<th class="center"><strong>Name</strong></th>
													<th class="center"><strong>Status</strong></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
												</tr>
											</thead>
											<tbody></tbody>
										</table>


									</div>

								</div>

							</div>
							<section class="tehDsh-step1 mtop-5">
								<div id="tab3" class="containerSmall">
									<div class="ourStory-Popup" id="letterToParentDashTrack">
										<!-- <h4>Track Invite</h4> -->
										<div class="ur_grid ur_grid_pop">
											<form:form name="letterToParent" id="letterToParent"
												modelAttribute="dtoOwner" action="sendletter" method="POST"
												enctype="multipart/form-data">
												<div class="techForm width50p">
													<label>Enter Email Address</label>
													<div class="step4-textInput">
														<!-- <div class="contact-row">
							<div class="outer-field-wrap">
								<div class="outer-field">
									<input type="text" placeholder="Email">
									
									<div class="bs-example">
					                	<input type="text" class="form-control" id="tokenfield" data-tokens="me|me@example.com,you@example.com,not really an email" />
					              </div>
									
								</div>
							</div>
						</div> -->
														<div class="bs-example multi-input formMulInput_out">
															<form:textarea rows="4" cols="50" path="parentEmails"
																type="text" class="form-control formMulInput"
																id="tokenfield" placeholder="Enter Email and press tab"></form:textarea>
														</div>
													</div>

													<!-- <input type="button" value="Go" class="startBtn fl"/> -->
												</div>

												<div class="step4-export">
													<div class="step4-expOuter width100 fl mtop80">
														<!-- <label>Import List from Excel</label> -->
														<div class="fileUpload browse-btn">
															<span>Import List from Excel</span>
															<form:input path="letterToParentExcell" type="file"
																accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
																class="upload" onchange="fileupload()" />
														</div>
														<div class="new_send-letter" style="width: 43%;">
															<a href="javascript:;" class="js-open-modal blueBtn"
																data-modal-id="popup2"
																style="text-transform: none; padding: 10px;">Preview
																& Edit Letter</a>
														</div>
														<span >
														<u><a href="<%=request.getContextPath()%>/NewStyles/sample-excel.xlsx" title="Skip" style="color: green; float: left; width: 40%; text-decoration: underline;" download >Sample Excel</a></u>
														<u><a href="<%=request.getContextPath()%>/NewStyles/pdf/Parent-Letter-PDF.doc" title="Skip" style="float: right; width: 55%; text-decoration: underline; " title="Skip" download >Parent Letter PDF</a></u> 
														<u><a href="<%=request.getContextPath()%>/NewStyles/pdf/Parent-Letter-Spanish.pdf" title="Skip" style="color: green;float: right; width: 55%; text-decoration: underline;" download>Parent Letter Spanish PDF</a></u>
														<u><a href="<%=request.getContextPath()%>/NewStyles/pdf/Photo-Consent-Form.pdf" title="Skip" style="color: green; float: right; width: 55%; text-decoration: underline;" download>Photo Consent Form PDF</a></u> 
														</span>
														
													</div>
												</div>

												<div class="videobtn mtop50">
													<input type="button" value="VIEW LETTER"  class="blueBtn mright15" onclick="location.href = '<%=request.getContextPath()%>/teacher/teacher-dash-step4';"/>
													<!-- <a href="#term-condition"  title="VIEW LETTER" class="fancybox blueBtn mright15">VIEW LETTER</a> -->

													<form:hidden path="content" id="content_id" />



													<!-- <a href="javascript:;" class="js-open-modal blueBtn" data-modal-id="popup2">SEND LETTER</a> -->
													<a href="<%=request.getContextPath()%>/teacher/teacher-dash-step4"  title="Skip" class="fancybox blueBtn mright15">SKIP</a>
													<!-- <input type="submit" value="SEND LETTER" title="SEND LETTER" class="blueBtn"/> -->
												</div>

											</form:form>

										</div>
									</div>
								</div>
							</section>
							<!--TAB 3 ENDS-->

							<div id="tab4" style="display: none;">

								<div class="ourStory-Popup" id="letterToParentDashTrack">
									<!-- <h4>Track Invite</h4> -->
									<div class="ur_grid ur_grid_pop">

										<table class="table table-striped table-bordered table-hover"
											id="sample_7">
											<thead>
												<tr>
													<th class="center"><strong>Parent Email</strong></th>
													<th class="center"><strong>Date of Invitation</strong></th>
													<th class="center"><strong>Name</strong></th>
													<th class="center"><strong>Status</strong></th>
													<th style="display: none;"></th>
													<th style="display: none;"></th>
												</tr>
											</thead>
											<tbody></tbody>
										</table>


									</div>

								</div>

							</div>
						</div> --%>

						<!--TAB 4 ENDS-->
					</div>
					<!--                 <div class="week_months">
	                <ul>
		                <li id="mtab1" class="selected"><a href="javascript:showTab(1,2)">Week</a></li>
		                <li id="mtab2" ><a href="javascript:showTab(2,2)">Month</a></li>
	                </ul>
                </div> -->
					<!-- <!-- 	<div class="containerSmall">
            	<div class="weekly_details">
		            <div  id="calander1" class="grid_weekly"></div> -->
					<!-- uncomment when to add calendar
		            <div  id="calander2" class="grid_weekly" ></div>
        		</div>
        		</div> -->
					<!--about_us ends-->
					<!--inner_header ends-->
				</div>
				<!--inner_wrapper ends-->
			</div>
		</div>
	</div>
	<div id="popup1" class="modal-box">
		<div class="modal_change_track">
			<div class="modal_bodycont">
				<a class="cls-btn js-modal-close close_fb" href="javascript:;">X</a>
				<h5>Track of the Day</h5>

				<div class="change_track_ph">
					<span id="trackDesc"></span>
					<audio id="audioId" controls>
						<source id="trackSrc" type="audio/mpeg"></source>
					</audio>
				</div>
				<div id="bnsTrack" style="display: none;">
					<h5>Bonus Track</h5>
					<div class="change_track_ph">
						<span id="trackDescBns"></span>
						<audio id="audioIdBns" controls>
							<source id="trackSrcBns" type="audio/mpeg"></source>
						</audio>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%-- <div id="tab4">

		<div class="ourStory-Popup" id="letterToParentDashTrack">
			<!-- <h4>Track Invite</h4> -->
			<div class="ur_grid ur_grid_pop">

				<table class="table table-striped table-bordered table-hover"
					id="sample_7">
					<thead>
						<tr>
							<th class="center"><strong>Parent Email</strong></th>
							<th class="center"><strong>Date of Invitation</strong></th>
							<th class="center"><strong>Name</strong></th>
							<th class="center"><strong>Status</strong></th>
							<th style="display: none;"></th>
							<th style="display: none;"></th>
						</tr>
					</thead>
					<tbody></tbody>
				</table>


			</div>

		</div>

	</div> --%>

	<div id="popup2" class="modal-box">
		<div class="modal_change_track">
			<div class="modal_bodycont">
				<a class="cls-btn js-modal-close close_fb" href="javascript:;">X</a>
				<h5>Feedback Comments</h5>
				<div class="feed_track_outer">
					<div class="feed_track">
						<label>Comments</label>
						<!-- <textarea rows="6" id="comment" name="comment" disabled="disabled"></textarea> -->
						<div class="read_comments">
							<p id="comment" name="comment"></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="popup3" class="modal-box">
		<div class="modal_change_track">
			<div class="modal_bodycont">
				<a class="cls-btn js-modal-close close_fb" href="javascript:;">X</a>
				<form name="feedback" id="feedback" action="savefeedback"
					method="POST">
					<h5>We Value Your Input</h5>
					<div class="leave_feedbk" id="leave_feedbk">
						<div class="getstartForm">
							<ul>
								<li>
									<div class="contact-row">
										<div class="common_label">
											<label>How many students in attendance today?</label>
										</div>
										<div class="outer-field-wrap">
											<div class="outer-field">
												<input placeholder="No. Of Students" name="studentNumber"
													type="text" />
											</div>
										</div>
									</div>
								</li>
								<li>
									<div class="contact-row">
										<div class="common_label">
											<label>How was the audio quality?</label>
										</div>
										<div class="outer-field-wrap">
											<div class="outer-field">
												<select name="audioQuality" class="select-dept">
													<option value="HIGH">High</option>
													<option value="MEDIUM">Medium</option>
													<option value="LOW">Low</option>
												</select>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
						<div class="fieldbox_leave">
							<input id="audioIdFeed" name="audioId" type="hidden" value="" />
							<input id="rating" name="rating" type="hidden" value="0" /> <label>Please
								rate the engagement level of the class(5=max)</label>
							<div class="star_rating mrgtp_0" id="audiofeedback">
								<img
									src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"
									alt="" onclick="changeRating(1);" /><img
									src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"
									alt="" onclick="changeRating(2);" /><img
									src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"
									alt="" onclick="changeRating(3);" /><img
									src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"
									alt="" onclick="changeRating(4);" /><img
									src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"
									alt="" onclick="changeRating(5);" />

							</div>
							<span id="ratingError" style="color: #a94442;"> </span>
						</div>
						<div class="fieldbox_leave">
							<label>Share your observation from today's session</label>
							<textarea rows="6" id="comment" name="comment"></textarea>
						</div>


						<div class="fieldbox_leave mrgtp25">
							<input type="submit" value="SUBMIT" class="input_submit_btn_fb">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<div class="ourStory-Popup" id="audioFeedbackDetail" style="display:none;">
		<div class="ur_grid ur_grid_pop">

			<table class="table table-stri 200,ped table-hover table-bordered"
				id="sample_16">
				<thead>
					<tr>
						<th><strong>Teacher Name</strong></th>
						<th><strong>Program</strong></th>
						<th><strong>Audio Quality</strong></th>
						<th><strong>Rating</strong></th>
						<th><strong>Comment</strong></th>
						<th><strong>Rating</strong></th>
						<th><strong>Comment</strong></th>
						
				
						
					</tr>
				</thead>
				<tbody></tbody>
			</table>


		</div>
	</div>
	
	<div class="ourStory-Popup" id="audioFeedbackDetailForParent" style="display:none;">
		<div class="ur_grid ur_grid_pop">

			<table class="table table-stri 200,ped table-hover table-bordered"
				id="sample_15">
				<thead>
					<tr>
						<th><strong>Teacher Name</strong></th>
						<th><strong>Program</strong></th>
						<th><strong>Audio Quality</strong></th>
						<th><strong>Rating</strong></th>
						<th><strong>Comment</strong></th>
						<th><strong>Comment</strong></th>
						
				
						
					</tr>
				</thead>
				<tbody></tbody>
			</table>


		</div>
	</div>
	<%-- 	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>  
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
   
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
   
   <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
   <script type="text/javascript" src="https://cdn.datatables.net/select/1.1.0/js/dataTables.select.min.js"></script>
   
	<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>  
	
<!--tab start --> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script>  
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script> --%>

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.counterup.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/waypoints.min.js"></script>

	<%@include file="../footer.jsp"%>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/tab.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jquery.vmap.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/maps/jquery.vmap.usa.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/data/jquery.vmap.sampledata.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
		type="text/javascript"></script>


	<script
		src="<%=request.getContextPath()%>/NewStyles/jquery-easy-pie-chart/jquery.easy-pie-chart.js"
		type="text/javascript"></script>
	<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/app.js" type="text/javascript"></script> --%>
	<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/index.js" type="text/javascript"></script> --%>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.resize.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.pie.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.stack.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.crosshair.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.time.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.axislabels.js"></script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/charts.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.tooltip.js"></script>
	<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/select2/select2.min.js"></script> --%>
	<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script> --%>

	<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script> --%>
	<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jquery-ui.min.js"></script> --%>


	<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script> --%>
	<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.numberformatter-1.2.3.min.js"></script> --%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/charts-flotcharts.js"></script>
	<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jshashtable-2.1.js"></script> --%>
	<script language="javascript">
				function showTab(current,max){
					for (i=1;i<=max;i++){
					//getMyHTMLElement('tab' + i).style.display = 'none';
					getMyHTMLElement('mtab' + i).className = '';
					}
					//getMyHTMLElement('tab' + current).style.display = '';
					getMyHTMLElement('mtab' + current).className = 'selected';
					}
</script>

	<script type="text/javascript">
$(document).ready(function(){
	$("#header").sticky({ topSpacing: 0 });
	 $('#calander1').fullCalendar({
		 weekends:false,
		 header: {
		     left   : 'prev,next',
		     center : 'title',
		     //week:  "d [MMM]{ '&#8211;' d MMM}",
		     right: 'month,basicWeek'
		     
		    },
		    firstDay:1,
		defaultView: 'basicWeek',
               eventRender: function (event, element) {
            		   //alert(event.title);
                       element.find('.fc-content').html(event.title);

               },
              // eventColor: '#378006'
        });
	 //calendarEvents();
	 $(".fc-month-button").attr("onclick","calendarEvents()");
	 $(".fc-basicWeek-button").attr("onclick","calendarEvents()"); 
    $.validator.addMethod("nameRegex", function(value, element) {
        return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
    }, "Field must contain letters only.");
    
    $('#feedback').validate({
        errorElement: 'span', //default input error message container
        errorClass: 'help-block', // default input error message class
        focusInvalid: false, // do not focus the last invalid input
        ignore: "",
        rules: {
     	   studentNumber:{
        		//required: true,
        		digits : true,
        		/* minlength : 3,*/
        		maxlength : 4 
        	},
        	comment:{
        		//required: true,
        		maxlength : 1000
        	}/* ,
        	description:{
        		required: true,
        		maxlength : 450
        	} */
        },


        invalidHandler: function(event, validator) { //display error alert on form submit   
        },

        highlight: function(element) { // hightlight error inputs
            $(element)
                .closest('.outer-field').addClass('has-error'); // set error class to the control group
            $(element)
                .closest('.fieldbox_leave').addClass('has-error'); // set error class to the control group
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
        	 var ratingVal=$("#rating").val();
      	   if(ratingVal == "0"){
      		   
      		   $("#ratingError").html("This field is required.")
      		   
      	   }
      	   else
      		   {
      		   form.submit();
      		   }
        }
    });
	});
	
function calendarEvents(){
	var contextPath = '<%=request.getContextPath()%>';
	$.ajax({
	    url: '<%=request.getContextPath()%>/teacher/getCalanderValuesFromDatabase',
	    type:'GET',
	    async:true,
	    success: function(result) {
			if(!jQuery.isEmptyObject(result)){
				var monthStrAry = new Array();
				monthStrAry[1] = "January";
				monthStrAry[2] = "February";
				monthStrAry[3] = "March";
				monthStrAry[4] = "April";
				monthStrAry[5] = "May";
				monthStrAry[6] = "June";
				monthStrAry[7] = "July";
				monthStrAry[8] = "August";
				monthStrAry[9] = "September";
				monthStrAry[10] = "October";
				monthStrAry[11] = "November";
				monthStrAry[12] = "December";
				var records = '';
				var newEvent = new Object();
				var reco = new Array();
				var test='';
				var i = 0;
		    	var d = new Date();
		    	var day = ""+d.getDate()+"";
		    	if(day.length==1){
		    		day = "0"+day;
		    	}
		    	var mon = ""+(d.getMonth()+1)+"";
		    	if(mon.length==1){
		    		mon = "0"+mon;
		    	}
		    	var currentDate = (d.getFullYear()+"-"+mon+"-"+day);
		    	var disabled ='js-open-modal btn';
		    	var trackPlay = '';
		    	var bonusTrackPlay = '';
		    	var startRating='';
		    	var starts = '';
		    	var firstTrackFlag = 0;
		    	//alert(new Date("March 29, 2016").toISOString());
		    	//alert(new Date(Date.UTC(2016,03,29,0,0,0)).toISOString());
			    $.each(result,function(key,value){
			    	newEvent = new Object();
					var dtAry = value.completionDate.split("-");
					var cdtAry = currentDate.split("-");
					var monthVal = parseInt(dtAry[1]);
					var cmonthVal = parseInt(cdtAry[1]);
			    		var bonusTracks = '';
				    	var addBonusTrack='';
				    	bonusTrackPlay = '';
				    	//var buttonText = "Play Again";
		                if(!jQuery.isEmptyObject(value.programsAudios)){
		                    $.each(value.programsAudios,function(i,val){
						    	bonusTrackPlay = 'getAudioDetailBns(\''+val.audioDescription+'\',\'${bucketPath}/audioFiles/'+val.audioName+'\');';
		                    	if((new Date(''+monthStrAry[monthVal]+' '+dtAry[2]+', '+dtAry[0]+'').getTime() > new Date(''+monthStrAry[cmonthVal]+' '+cdtAry[2]+', '+cdtAry[0]+'').getTime())){
						    		bonusTrackPlay = '';
						    	}
		                    });
		                }
				    	trackPlay = 'onclick="getAudioDetail(\''+value.audioDescription+'\',\'${bucketPath}/audioFiles/'+value.audioName+'\');'+bonusTrackPlay+'" data-modal-id="popup1"';
				    	var buttonText = '<a href="javascript:;" '+trackPlay+' class="playbtns '+disabled+'">Play Again</a>';
				    	if(value.completionDate == currentDate || (value.completionDate == null && firstTrackFlag==0)){
				    		//buttonText = "Play";
				    		buttonText = '<a href="javascript:;" '+trackPlay+' class="play-btn-grn"><img src="'+contextPath+'/NewStyles/images/play.png"/></a>';
				    		firstTrackFlag = 1;
				    	}
				    	if((new Date(''+monthStrAry[monthVal]+' '+dtAry[2]+', '+dtAry[0]+'').getTime() > new Date(''+monthStrAry[cmonthVal]+' '+cdtAry[2]+', '+cdtAry[0]+'').getTime())){
				    		//buttonText = "Play";
				    		disabled = 'disabled';
				    		bonusTrackPlay = '';
				    		trackPlay = '';
				    		buttonText = '<a href="javascript:;" '+trackPlay+' class="play-btn-grn"><img src="'+contextPath+'/NewStyles/images/play-grey.png"/></a>';
				    	}
				    	test = '<p>'+value.audioDescription+'</p><div class="clr"></div>'+buttonText+'<div class="clr"></div>';
/* 	                if(!jQuery.isEmptyObject(value.programsAudios)){
	                    $.each(value.programsAudios,function(i,val){
					    	bonusTrackPlay = 'onclick="getAudioDetail(\''+val.audioDescription+'\',\''+contextPath+'/audioFiles/'+val.audioName+'\');" data-modal-id="popup1"';
	                    	if((new Date(value.completionDate).getTime() > new Date(currentDate).getTime())){
					    		bonusTrackPlay = '';
					    	}
	                    	test+='<p>'+value.audioDescription+'</p><div class="clr"></div><a href="javascript:;" '+bonusTrackPlay+' class="playbtns '+disabled+'">Play Bonus Track</a><div class="clr"></div>';
	                    });
	                } */
 	                 if(value.feedbackId != '' && value.feedbackId!=0 && typeof value.feedbackId !== "undefined"){
	                	startRating = '<div class="star_rating">';
	                	var count = parseInt(value.rating);
       	                if(count>0){
	    	               	for(var t=1;t<=count;t++){
	 	                		starts=starts+'<span><img src="'+contextPath+'/NewStyles/images/star-yellow.png" alt=""></span>';
		                	}
		                	for(var t=(count+1);t<=5;t++){
		                		starts=starts+'<span><img src="'+contextPath+'/NewStyles/images/star-grey.png" alt=""></span>';
		                	}    
	                	}else{
		                	for(var t=0;t<=4;t++){
		                		starts=starts+'<span><img src="'+contextPath+'/NewStyles/images/star-grey.png" alt=""></span>';
		                	} 
	                	}     
       	             /* <a href="javascript:;" class="session_sum js-open-modal btn" data-modal-id="popup2" onclick="getCommentDetail(\''+value.comment+'\');">Session Summary</a>' */
	                	startRating+=starts+'</div><div class="clr"></div><p>Audio Quality: '+value.audioQuality+'</p><p>No. of Students : '+value.studentNumber+'</p>';
	                	test+=startRating;
	                	starts = ''; 
	                }  else{
	                	if((new Date(''+monthStrAry[monthVal]+' '+dtAry[2]+', '+dtAry[0]+'').getTime() < new Date(''+monthStrAry[cmonthVal]+' '+cdtAry[2]+', '+cdtAry[0]+'').getTime()) && value.completionDate != currentDate){
		                	startRating='';
		                	
		                	/* <a href="javascript:;" class="session_sum js-open-modal btn" data-modal-id="popup3" onclick="setAudioId('+value.audioId+');">Session Summary<span class="hov_show"><img src="'+contextPath+'/NewStyles/images/notifiy.png"><div class="text"><img src="'+contextPath+'/NewStyles/images/feed-back.png"></div></span></a>' */
		                	
		                	startRating+='<div class="clr"></div>';
		                	test+=startRating;
	                	}
	                }
	                newEvent.title = test;
	                //newEvent.start = '\''+value.completionDate+'\'';
	                //alert(dtAry[0]);
	                //newEvent.start = new Date(Date.UTC(parseInt(dtAry[0]),monthVal,parseInt(dtAry[2]),0,0,0)).toISOString();
	                //alert(newEvent.start);
					newEvent.start = new Date(''+monthStrAry[monthVal]+' '+dtAry[2]+', '+dtAry[0]+'').toISOString();
	                newEvent.allDay= false;
	                reco[i]=newEvent;
	                i++;
	                //records = records+'\', start: \''+value.completionDate+'\'},';
			    });
			   // eventsAry =jQuery.parseJSON('"{events:['+(records.slice(0,-1))+']"}');
			  // eventsAry = '['+(records.slice(0,-1))+']';
			    //var events = JSON.stringify('['+(records.slice(0,-1))+']');
			    //alert(reco[0].title);
			    $('#calander1').fullCalendar( 'removeEvents');
		    $('#calander1').fullCalendar('removeEventSources');  // works 
		  	 $('#calander1').fullCalendar( 'addEventSource', reco); 
			$('#calander1').fullCalendar( 'refresh' );
			initDialog();
			}
	    }
	  });
}
function setAudioId(audioId){
	document.getElementById("audioIdFeed").value=audioId;
	$(window).scrollTop(0);
}
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
	        top: ($(window).height() - $(".modal-box").outerHeight()) / 2,
	        left: ($(window).width() - $(".modal-box").outerWidth()) / 2
	    });
	});
	/*$("#popup3").css({
        top: ($(window).height() - $(".modal-box").outerHeight()) / 3.4
	});*/
	$(window).resize();
	
	}
	
function getAudioDetail(desc,src){
	$("#trackDesc").html(desc);
	$("#trackSrc").attr("src",src);
	var audioId=document.getElementById("audioId");
	audioId.load();
	$("#bnsTrack").hide();
	$(window).scrollTop(0);
}
function getAudioDetailBns(desc,src){
	$("#trackDescBns").html(desc);
	$("#trackSrcBns").attr("src",src);
	var audioId=document.getElementById("audioIdBns");
	audioId.load();
	$("#bnsTrack").show();
	$(window).scrollTop(0);
}
function getCommentDetail(comment){
	$("#comment").text(comment);
	$(window).scrollTop(0);
}
/*$('#month').click(function(){

	// alert("month");
		$('#calander1').hide();
		$('#calander2').show();
	 $('#calander2').fullCalendar({
		
		 weekends: true ,
		 header: {
		     left   : 'prev,next',
		     center : 'title',
		     right  : 'month,agendaWeek,agendaDay',
		    
		    }
	 });
});
}); */
function changeRating(rating){
	
	var audiofeedback = '';
    for(var i=1;i<=5;i++){
        if(i <= rating){
        	audiofeedback+='<img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png"  alt=""  onclick="changeRating('+i+');">';
        }
        else{
        	audiofeedback+='<img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""   onclick="changeRating('+i+');">';
        }
	}
   
    $("#audiofeedback").html('');
    $("#audiofeedback").html(audiofeedback);
    document.getElementById("rating").value=rating;
	consle.log(document.getElementById("rating").value);
}

		
function getHistoryForTeacher(){
	
	
	/* //$("#sample_16").dataTable().fnDestroy(); */
	$("#sample_16").html('');
	
	 var url='<%=request.getContextPath()%>/teacher/getHistoryForTeacher';
	$.ajax({
		url:url,
		method:'GET',
		async :true,
		success:function(response){
			if(response!=null){
				
				$("#audioFeedbackDetail").show();

				 var audioDetails='';
				 audioDetails+='<thead><tr><th><strong>Email</strong></th>'+
				 '<th><strong>Program Name</strong></th>'+
				 '<th><strong>Modified Date</strong></th>'+
				 '<th><strong>Audio Name</strong></th>'+
				 '<th><strong>Is Complete</strong></th>'+
				 '<th><strong>Rating</strong></th>'+
				 '<th><strong>Feedback</strong></th></thead><tbody>';
	
				 if(response.modelMap.dtoUsers!=null){
	$.each(response.modelMap.dtoUsers, function(index,value) {
		
			
		audioDetails+='<tr><td>'+value.email+'</td>'+
						'<td>'+value.programName+'</td>'+
						'<td>'+value.timeZone+'</td>'+
						'<td>'+value.audioName+'</td>'+
						'<td>'+value.isComplete+'</td>'+
						'<td>'+value.rating+'</td>'+
						'<td>'+value.commnets+'</td></tr>';




					});
		    	
				
				 }
				
				
					audioDetails+='</tbody>';
				 
					$("#sample_16").html(audioDetails);
				     $("#sample_16").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15}); 
				
				 
				 $.fancybox({
						 'minWidth':1000,
						 'minHeight':500,
					     'autoScale': true,
					     'autoDimensions': true,
					     'centerOnScroll': true,
					     'href' : '#audioFeedbackDetail'
					  }); 
		}
		
		}
	});
}

function getHistoryForParent(){
	
	
	/* //$("#sample_16").dataTable().fnDestroy(); */
	$("#sample_15").html('');
	
	 var url='<%=request.getContextPath()%>/teacher/getHistoryForParent';
	$.ajax({
		url:url,
		method:'GET',
		async :true,
		success:function(response){
			if(response!=null){
				
				$("#audioFeedbackDetailForParent").show();

				 var audioDetails='';
				 audioDetails+='<thead><tr><th><strong>Email</strong></th>'+
								 '<th><strong>Modified Date</strong></th>'+
								 '<th><strong>Audio Name</strong></th>'+
								 '<th><strong>Is Complete</strong></th>'+
								 '<th><strong>Rating</strong></th></thead><tbody>';
								 
								 if(response.modelMap.dtoUsers!=null)
									 {
					$.each(response.modelMap.dtoUsers, function(index,value) {
						
						
						audioDetails+='<tr><td>'+value.email+'</td>'+
										'<td>'+value.timeZone+'</td>'+
										'<td>'+value.audioName+'</td>'+
										'<td>'+value.isComplete+'</td>'+
										'<td>'+value.rating+'</td></tr>';

					});
		    	
				
				
				
				
					audioDetails+='</tbody>';
									 }
					$("#sample_15").html(audioDetails);
				     $("#sample_15").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15}); 
				
				     $.fancybox({
						 'minWidth':1000,
						 'minHeight':500,
					     'autoScale': true,
					     'autoDimensions': true,
					     'centerOnScroll': true,
					     'href' : '#audioFeedbackDetailForParent'
					  }); 
		}
		
		}
	});
}

	</script>
</body>
</html>


