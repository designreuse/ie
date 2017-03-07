<%@ page import="java.util.Date"%>
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
<jsp:useBean id="now" class="java.util.Date" />
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<title>PRACTICE AREA</title>
<c:if test="${companyName eq '1'}">
	<link rel="icon"
		href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
		type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
	<link rel="icon"
		href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
		type="image/x-icon">
</c:if>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/owl.theme.css">



<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"
	id="style_components" rel="stylesheet" type="text/css" />
<style type="text/css">
#owl-demo .item {
	background: #f0f0f0;
	padding: 20px 0px;
	margin: 18px 10px;
	color: #FFF;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	text-align: center;
}

#owl-demo .item:hover {
	background: #dcdcdc;
}

#owl-demo .item_select {
	background: #dcdcdc;
	padding: 30px 0px;
	margin: 10px;
	color: #FFF;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
	text-align: center;
}

#owl-demo .item_select:after {
	border-left: 13px solid transparent;
	border-right: 13px solid transparent;
	border-top: 13px solid #dcdcdc;
	bottom: 0px;
	content: "";
	height: 0;
	left: 0;
	margin: 0 auto;
	position: absolute;
	right: 0;
	width: 0;
}

.highcharts-button {
	display: none;
}

.screenshot {
	width: 100%;
	float: left;
	text-align: center;
}

.screenshot img {
	max-width: 1152px;
	margin-left: -196px;
}

.outer-grn-list .new-center {
	width: 100% !important;
}

.transction-btn {
	width: 100%;
	float: left;
	text-align: center !important;
}

.transction-button {
	float: none !important;
	border: 1px solid #02a451;
	border-radius: 20px;
	background-color: transparent !important;
	padding: 7px 18px;
	color: #fff;
	font-size: 14px;
	text-transform: uppercase;
}
</style>
</head>

<body>

	<spring:eval var="bucketPath"
		expression="@propertyConfigurer.getProperty('bucket_path')" />

	<%-- <c:set var="bucketPath" value="<%=request.getContextPath()%>" /> --%>
	<div class="wrapper">
		<%@include file="header.jsp"%>


		<!--inner_wrapper starts-->
		<div class="inner_wrapper">

			<!--inner_header starts-->
			<!-- <div class="inner_header"> <img src="images/browse-donation-header.jpg"  alt=""/> </div>-->

			<!--brow_don_camp starts-->
			<div class="brow_don_camp">
				<div class="container">
					<div class="pracProgress_hdr">
						<h2>Bonus Tracks</h2>
						<div class="green_line_btm"></div>
						<%--  <div class="teach_dash_update">
		               <c:if test="${not empty seprateTeacher && seprateTeacher=='Y'}">
			               <h3 class="teachr_dsh bdr-btm-none">Your account will expire in <span>${daysRemaining}</span> days. <a href="<%=request.getContextPath()%>/teacher/renewal"  class="green_btn learnclass" >Learn More</a></h3>
		               </c:if>
	               </div>--%>

						<%-- <div class="daily_msg">
		               	<h3><span><img src="<%=request.getContextPath()%>/NewStyles/images/msg-icon.png"></span>Message of the Day<div class="clr"></div></h3>
		                 <p id="todayMessage"></p>
		           </div> --%>
						<c:if test="${isChanged eq 'Y'}">
							<h4 style="margin-left: 200px;">
								<b>Your subscription has been changed from monthly to yearly</b>
							</h4>
						</c:if>
					</div>
				</div>



				<div class="misc_tabs mrg_top25">
					<%-- 		<div class="misc_tabar" style="display: none;">
						<ul class="tabPAreanew">
							<li id="mtab2"><a class="trial"
								href="javascript:showTab(2,3)">Completed Sessions</a></li>
							<li id="mtab1" class=" selected"><a class="fp"
								href="javascript:showTab(1,3)">Today's Practice - <fmt:formatDate
										type="date" value="<%= new java.util.Date() %>" />
							</a></li>
							<li id="mtab3"><a class="hybrid"
								href="javascript:showTab(3,3)">Upcoming Sessions</a></li>
						</ul>
					</div> --%>
					<div class="misc_content">
						<!--TAB 1 STARTS-->
						<div id="tab2">
							<%-- <div class="left-grn-list-outer">
								<div class="pracProgress_hdr">
									<div class="outer-grn-list">
										<div class="right-grn-list">
											<img src="<%=request.getContextPath()%>/NewStyles/images/clock-gr.png" alt=""/>
											<div id="container"
												style="min-width: 310px; max-width: 400px; height: 300px; margin: 0 auto"></div>
												
											<!-- <p>You are on 9th Track</p> -->
										</div>
										<div class="left-grn-list">
											<ul>
												<li>
													<div class="left-grn-crcl">
														${dtoPracticeProgress.completeStatus}%

														<!-- 5 Track Badge -->
														<c:if
															test="${dtoPracticeProgress.completeStatus ge '5' && dtoPracticeProgress.completeStatus lt '10'}">
															<div class="ribbon-main">
																<img
																	src="<%=request.getContextPath()%>/NewStyles/images/batch1.png">
															</div>
														</c:if>


														<!-- 10 Track Badge -->
														<c:if
															test="${dtoPracticeProgress.completeStatus ge '10' && dtoPracticeProgress.completeStatus lt '15'}">
															<div class="ribbon-main">
																<img
																	src="<%=request.getContextPath()%>/NewStyles/images/batch2.png">
															</div>
														</c:if>

														<!-- 15 Track Badge -->

														<c:if
															test="${dtoPracticeProgress.completeStatus ge '15' && dtoPracticeProgress.completeStatus lt '20'}">
															<div class="ribbon-main">
																<img
																	src="<%=request.getContextPath()%>/NewStyles/images/batch3.png">
															</div>
														</c:if>

														<!-- 20 Track Badge -->

														<c:if
															test="${dtoPracticeProgress.completeStatus ge '20' && dtoPracticeProgress.completeStatus lt '25'}">
															<div class="ribbon-main">
																<img
																	src="<%=request.getContextPath()%>/NewStyles/images/batch4.png">
															</div>
														</c:if>

														<!-- 25 Track Badge -->

														<c:if test="${dtoPracticeProgress.completeStatus ge '25'}">
															<div class="ribbon-main">
																<img
																	src="<%=request.getContextPath()%>/NewStyles/images/batch-25.png">
															</div>
														</c:if>
													</div>
													<div class="left-grn-hd  ptop17">Progress Level</div>
												</li>
												<li>
													<div class="left-grn-crcl">
														${dtoPracticeProgress.teacherWithSameProg}</div>
													<div class="left-grn-hd">Teachers using IE program in
														your school</div>
												</li>
												<li>
													<div class="left-grn-crcl">
														${dtoPracticeProgress.sameStateTeacherCount}</div>
													<div class="left-grn-hd">
														Teachers using IE program near you
														<!-- (Zip Code + 5 miles) -->
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div> --%>
							<div class="ie_pra-player">
								<div class="container">

									<div id="circle"></div>

									<div id="owl-demo" class="owl-carousel">

										<c:forEach items="${audioMap}" var="audio">

											<c:set var="selectItem" value="item" />
											<c:if test="${audio.value}">
												<c:set var="selectItem" value="item_select" />
											</c:if>

											<c:if test="${!audio.value}">
												<c:set var="selectItem" value="item" />
											</c:if>

											<div class="${selectItem} position-relative"
												name="item${audio.key.audioId}"
												id="item${audio.key.audioId}"
												onclick="getTrackInfo(${audio.key.audioId});">
												<a href="javascript:;">
													<p>Narrator : ${audio.key.narratedBy}</p>
													<p>
															<c:set var="min"
																value="${fn:substringBefore((audio.key.audioLength div 60), '.')}" />
															<fmt:formatNumber var="sec"
																value="${audio.key.audioLength mod 60}" pattern="##" />

															${min}:${sec} minutes
														</p>
													 <c:if
														test="${selectItem == 'item_select'}">
														<c:set var="string2"
															value="${fn:replace(audio.key.audioDay, 
                                								'Day ', '')}" />
														<input type="hidden" value="${string2}" id="currentTrack"
															name="currentTrack">
													</c:if>
													<div class="ie_ply_img">
														<audio id="song${audio.key.audioId}" preload="none"
															ontimeupdate="updateTime()" class="music-player_notes"
															data-refid="${audio.key.audioId}"
															data-audio-id="${audio.key.audioId}"
															data-program-id="${audio.key.programId}"
															data-length="${audio.key.cursorEnd}">
															<source
																src="${bucketPath}/audioFiles/${audio.key.audioName}"
																type="audio/mpeg" data-refid="${audio.key.audioId}">
														</audio>



														<div class="progress-bar position" data-percent="0"
															data-duration="0" id="progressive${audio.key.audioId}"
															data-ref="${audio.key.audioId}">
															<div class="ply-pau-ie">
																<div id="songPlay"
																	onclick="play('song${audio.key.audioId}','${audio.key.audioId}')">
																	<div id="play-pause${audio.key.audioId}"
																		class="play-ie-p"></div>
																</div>
															</div>
														</div>

													</div>
													<p>${audio.key.audioTitle}</p>
													<div id="songSlider${audio.key.audioId}"
														onclick="setSongPosition(this,event)"
														style="width: 195px; height: 38px; color: #000000">
														<div id="trackProgress${audio.key.audioId}"
															style="background-color: #008000; height: 10px; width: 0px;"></div>
													</div> <!-- 	</div> -->
													<div id="songTime${audio.key.audioId}"
														style="color: #000000"></div>
												</a>

												<c:if
													test="${(audio.key.isPlayed ne 'null') &&  (audio.key.isPlayed eq 'Y')}">
													<div class="played-tick"></div>
												</c:if>
											</div>
										</c:forEach>
									</div>



									<!-- Tip start -->
									<%-- <div class="containerSmall">
										<div class="ie_player_outer">
											<c:forEach var="audio" items="${audioList}" varStatus="loop">
												<c:if test="${audio.isEnable eq 'Y'.charAt(0)}">
													<c:set var="count"
														value="${fn:substringAfter(audio.audioDay,' ')}" />

													<!--  <div class="overall-position">-->

													<!--</div>-->

													<span><a class="best-pra-btn" onclick="openBestPracticePopUp();">Recommended Best Practices</a>  </span>
													</p>
													<div class="mp3_playerbar_notes">
														<p>
															Day <span class="day-counter" id="dayCountText">${count}</span><img
																style="margin: 0px; vertical-align: middle;" alt=""
																src="<%=request.getContextPath()%>/NewStyles/images/calender-icon.png">
															<span id="audioTitleTxt">${audio.audioTitle}</span>
															 - on ${date}
															<audio id="currentPlayer" class="music-player_notes"  controls data-audio-id="${audio.audioId}" data-program-id="${audio.programId}" data-length="${audio.cursorEnd}" data-audio-feedback="${audio.feedbackId}" preload="auto">
										<source src="${bucketPath}/audioFiles/${audio.audioName}" type="audio/mpeg"></source> 
									</audio> 
									<p style="float:right;"><img src="<%=request.getContextPath()%>/NewStyles/images/poweredbyCompass.jpg" alt="powered By Compass" style="float:right;"></p>

															<c:forEach var="bonusAudio"
																items="${audio.programsAudios}" varStatus="loop1">
																<input type="hidden" id="bonus-player-${audio.audioId}"
																	value="<%=request.getContextPath()%>/bonusTracks/${bonusAudio.audioName}">
																<img
																	src="<%=request.getContextPath()%>/NewStyles/images/bounce_plyr.png"
																	alt="" class="new_bounce">
																<audio id="player-bonus-${audio.audioId}" controls
																	class="mp3_playerbar_notes_rgt">
																	<source src="" id="bonus-player-src-${audio.audioId}"
																		type="audio/mpeg"></source>
																</audio>
															</c:forEach>
															<p id="audioNoteTxt">${audio.audioNote}</p>
														<p id="audioJournalQuestions">${audio.journalQuestions}</p>
														<div class="ie_plyr_btn">
															<input type="button" value="Recommended Best Practices"
																onclick="openBestPracticePopUp();" class="startBtn">
														</div>
													</div>

													<div class="daily_notes_content">
														<!-- <h4>Tip of the Day</h4> -->
														<h4>Today's Practice Session</h4>
														<p>Track Title</p>
														<p class="margin-bottom-five weight-lght"
															id="audioTodayTitle">${audio.audioTitle}</p>
														<p>Narrated By</p>
														<p class="margin-bottom-five weight-lght"
															id="audioTodayNarrated">${audio.narratedBy}</p>
														<p>Practice Duration</p>
														<p class="margin-bottom-five weight-lght"
															id="audioTodayDuration">
															<c:set var="min"
																value="${fn:substringBefore((audio.audioLength div 60), '.')}" />
															<fmt:formatNumber var="sec"
																value="${audio.audioLength mod 60}" pattern="##" />

															${min}:${sec} minutes
														</p>

														<p>Last Played on</p>
														<p class="margin-bottom-five weight-lght"
															id="todayLastPlayedDate">
															<fmt:formatDate type="date"
																value="<%=new java.util.Date()%>" />
														</p>
														<div class="pin">
															<img
																src="<%=request.getContextPath()%>/NewStyles/images/pin.png">
														</div>

													</div>

												</c:if>
											</c:forEach>
											<div id="feedbacknote">
												<!-- <p>Your feedback is valuable to us</p> -->

											</div>


										</div>
									</div> --%>
								</div>
							</div>
						</div>
						<!--brow_don_camp ends-->
						<!--inner_header ends-->

					</div>
					<!--inner_wrapper ends-->
				</div>

				<div id="loadingTrack" class="playback-Popup"
					style="display: none; width: 100% !important;">
					<div class="hdr hdr_new padding-btm">
						<c:if test="${companyName eq '1'}">
							<img
								src="<%=request.getContextPath()%>/NewStyles/images/loading-audio.gif"
								alt="" style="width: 20%;" />
						</c:if>
						<c:if test="${companyName eq '2'}">
							<img
								src="<%=request.getContextPath()%>/NewStyles/images/crim-lodder.gif"
								alt="" style="width: 20%;" />
						</c:if>
						<p class="slide_rtext">
						<h4>
							Working on your Network Settings to ensure<br />Highest Quality
							of Audio Experience<br /> <br />Please Wait...
						</h4>
						</p>
					</div>
				</div>

				<div id="bestPracticePopUp" class="playback-Popup"
					style="display: none; max-width: 700px;">

					<div>
						<div class="tech-step-6-left">
							<h3>Following are the Recommended Best Practices:</h3>
							<ul>
								<li class="green-dot-left-1">Pick a time of day that is a
									normal transition to run the program - try to stick with it.</li>
								<li class="green-dot-left-2">Adjust the volume on the
									speakers each day; some tracks are louder than others.</li>
								<li class="green-dot-left-3">Ask students to all face the
									same direction so no one is “looking” at anyone else.</li>
								<li class="green-dot-left-4">Ask the students to put their
									journal on desk before you start so they are ready.</li>
								<li class="green-dot-left-5">Turn out the lights if
									possible to inspire a sense of calm.</li>
								<li class="green-dot-left-6">Participate with your students
									(even close your eyes). They’ll take it seriously if you do!</li>
								<li class="green-dot-left-7">Expect some students to be
									squirrelly; this is different from what they normally do.</li>
								<li class="green-dot-left-8">Expect after a few weeks for
									some students to say, "This is stupid” or “What’s the point, I
									don’t think it’s working”. As they go inward, it can be
									uncomfortable to face aspects of their lives that may be easier
									to avoid through distraction. Any discomfort will subside and
									they will be healthier and happier as a result.</li>
								<li class="green-dot-left-9">Expect some students to have
									strong reactions, maybe related to past trauma. Handle them as
									you normally would, through the school social worker and/or
									counselors/psychologists.</li>
								<li class="green-dot-left-10">Building a habit takes time.
									Gently guide the students to remain quiet through the
									practices. Even if they seem disengaged, they will hear the
									instruction and will move through this phase.</li>
								<li>Enjoy a deepening sense of community and calm in your
									classroom!</li>
							</ul>

						</div>

					</div>
				</div>
				<!-- changed by avneet -->


				<%-- <div id="popup1" class="modal-box" style="border-style: none;">
					<div class="modal_change_track">
						<div class="modal_bodycont">
							<a href="javascript:;" onclick="openFeedbackPopUp();" style="width:30px; height:30px; text-align:center; font-size:14px; font-weight:normal; color:#606872; margin:0; padding:5px 0 0 0; position:absolute; right:2%; background:#cccccc; border-radius:50%; top:2%">X</a>
							<form name="feedback" id="feedback">
								<h5>Suggested Questions for Today's Discussion</h5>
								</form>
								<div class="todays_des" id="suggestedQuestions"></div>
								<div class="fieldbox_leave mrgtp25">
								 <input type="button" value="SKIP" class="input_submit_btn_fb" onclick="openFeedbackPopUp();"></div>
						</div>
					</div>
				</div> --%>
				<%-- <div id="popup2" class="modal-box" style="border-style: none;">
					<div class="modal_change_track">
						<div class="modal_bodycont">
							<a class="cls-btn js-modal-close close_fb" href="javascript:;">X</a>
							<form name="feedback" id="feedback"
								action="${pageContext.request.contextPath}/teacher/savefeedback"
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
																<option value="">Select Quality</option>
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
										<input id="audioId" name="audioId" type="hidden" value="" />
										<input id="rating" name="rating" type="hidden" value="0" /> <label>Please
											rate the engagement level of the class (5=max)</label>
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
										<label>Share your observations from today's session</label>
										<textarea rows="6" id="comment" name="comment"></textarea>
									</div>


									<div class="fieldbox_leave mrgtp25">
										<input type="submit" value="SUBMIT"
											class="input_submit_btn_fb"> <input type="button"
											value="SKIP" class="input_submit_btn_fb"
											onclick="hideFeedbackPopUp();">
									</div>
								</div>
							</form>
						</div>
					</div>
				</div> --%>
				<input type="hidden" id="msgOfDay" name="msgOfDay"
					value="${todayMessage}" />

				<script
					src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
					type="text/javascript"></script>
				<%@include file="../footer.jsp"%>
				<script
					src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
					type="text/javascript"></script>
				<script
					src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
				<script type="text/javascript"
					src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
				<script type="text/javascript"
					src="<%=request.getContextPath()%>/NewStyles/js/dateFormat.js"></script>

				<script type="text/javascript"
					src="<%=request.getContextPath()%>/NewStyles/js/owl.carousel.min.js"></script>

				<link rel="stylesheet"
					href="<%=request.getContextPath()%>/NewStyles/css/jQuery-plugin-progressbar.css">
				<script
					src="<%=request.getContextPath()%>/NewStyles/js/jQuery-plugin-progressbar.js"></script>

				<script type="text/javascript"
					src="<%=request.getContextPath()%>/NewStyles/js/SSUhtml5Audio.js"></script>
				<link rel="stylesheet" type="text/css"
					href="<%=request.getContextPath()%>/NewStyles/css/SSUhtml5audio.css" />
				<script type="text/javascript"
					src="<%=request.getContextPath()%>/NewStyles/js/jquery-URI.js"></script>

				<script
					src="<%=request.getContextPath()%>/NewStyles/js/highcharts.js"></script>
				<script
					src="<%=request.getContextPath()%>/NewStyles/js/highcharts-more.js"></script>
				<script
					src="<%=request.getContextPath()%>/NewStyles/js/exporting.js"></script>



				<script type="text/javascript">	
function setAudioId(audioId){
	document.getElementById("audioId").value=audioId;
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
	        top: ($(window).height() - $(".modal-box").outerHeight()) / 7,
	        left: ($(window).width() - $(".modal-box").outerWidth()) / 2
	    });
	});
	 
	$(window).resize();
	}
	$(document).ready(function($){
		  
		var questionDescription;  
		var source = $("#msgOfDay").val();
		source = source.replace(/\r?\n/g, '<br />');
		var result = URI.withinString(source, function(url) {
		    return "<a href='"+url+"' target='_blank'>" + url + "</a>";
		});
		
		$("#todayMessage").html(result);
		
		$(".progress-bar").loading();
		//code to restrict multiple audio plays
		 $(".music-player_notes").bind('play', function (e) {
			 $(".music-player_notes").each(function(){
				if($(this).attr("id") != e.target.id)
				 {
					$(this).trigger('pause');
					$("#play-pause"+$(this).data('refid')).addClass("play-ie-p");
			        $("#play-pause"+$(this).data('refid')).removeClass("pause-ie-p");
			        
				 }
			 });
		 });
		 
		$("#header").sticky({ topSpacing: 0 });
		$("#leaveFeedbackBtn").hide();
		$("#leave_feedbk").hide();
		$("#suggestedQuestions").hide();
		$.daisyNav();
		 <%-- <script type="text/javascript">	
		 jQuery(document).ready
		 	(function($){

		 			
		 		
		 		$.ajax({
		 			url : "<%=request.getContextPath()%>/teacher/questionsForTeacher",
		 			method : 'POST',
		 			
		 			headers: { 
		 				'Content-Type':'application/json'
		 				},
		 			
		 			async:false,
		 			success : function(response) {
		 				if(response != null && response.modelMap.questions!=null){
		 					//&& response.modelMap.questions!=null
		 					alert("wq"+response.modelMap.questions);
		 					$.each( response.modelMap.questions, function(index,value) {
		 						//alert("as"+value);
		 						audioQualityDetail+='<tr><td ><p>'+value.questions+'</p></td></tr>';
		 						'<td style="display:none;"></td><td style="display:none;"></td></tr>';
		 					});
		 					
		 		    	
		 		    	audioQualityDetail+='</tbody>';;
		 		    	$("#sample_7").html(audioQualityDetail);
		 								}}});
		 	});
		 	
		 </script>  
		 --%>
		/////////////////////////////////////////////////
	 
	 
	 /* 
	    $("#song").trigger('load');
	    var audioElements = document.getElementById('song');
	    audioElements.preload = "auto";
	    audioElements.load();
	    audioElements.addEventListener('loadstart', function(e){
	        //console.log('Loading started...');
	        $.fancybox({
	      		 'minWidth':120,
	      		 'padding':10,
	      		 'minHeight':80,
	      	     'autoScale': true,
	      	     'autoDimensions': true,
	      	     'centerOnScroll': true,
	      	     'href' : '#loadingTrack',
	      	   closeClick  : false,
	      	 helpers   : { 
	      	   overlay : {closeClick: false} // prevents closing when clicking OUTSIDE fancybox 
	      	  }
	      	  });
	    });
	    
	    audioElements.addEventListener('canplaythrough', function(e){
	        //console.log('Can play through video without stopping...');
	       $.fancybox.close();
	    });
	    
	    
	    var elementId = 'song';
	  
	    //audio element click
		$("#"+elementId).bind('play', function (e) {
			   // alert("clicked."+$(this).attr('data-audio-id'));
			    sendData(elementId, $(this).attr('data-audio-id'),$(this).attr('data-program-id'),$(this).attr('data-length'),$(this).attr('data-audio-feedback'), e);
		});
	     */
		$(".music-player_notes").each(function(){
			//console.log($(this).hasClass("additional"))
			//if($(this).hasClass("additional"))
		//	{
				
				$("#"+$(this).attr("id")).bind('play', function (e) {
					sendData($(this).attr("id"), $(this).attr('data-audio-id'),$(this).attr('data-program-id'),$(this).attr('data-length'),$(this).attr('data-audio-feedback'), e);
				});
				
			//}
		});
		
	    
	    ////////////////////////////////////////
	    /*Track progress circle*/
	    var currentTrack = parseInt($("#currentTrack").val());
	   		 $('#container').highcharts({
		        chart: {
		            type: 'gauge',
		            plotBackgroundColor: null,
		            plotBackgroundImage: null,
		            plotBorderWidth: 0,
		            plotShadow: false
		        },
		        title: {
		            text: 'You are on Track'+currentTrack
		        },

		        pane: {
		            startAngle: 0,
		            endAngle: 360,
		            background: [{
		                backgroundColor: {
		                    linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
		                    stops: [
		                        [0, '#FFF'],
		                        [1, '#333']
		                    ]
		                },
		                borderWidth: 0,
		                outerRadius: '109%'
		            }, {
		                backgroundColor: {
		                    linearGradient: { x1: 0, y1: 0, x2: 0, y2: 1 },
		                    stops: [
		                        [0, '#333'],
		                        [1, '#FFF']
		                    ]
		                },
		                borderWidth: 1,
		                outerRadius: '107%'
		            }, {
		                // default background
		            }, {
		                backgroundColor: '#DDD',
		                borderWidth: 0,
		                outerRadius: '105%',
		                innerRadius: '103%'
		            }]
		        },

		        // the value axis
		        yAxis: {
		            min: -0.2,
		            max: 90.2,

		            minorTickInterval: 'auto',
		            minorTickWidth: 1,
		            minorTickLength: 10,
		            minorTickPosition: 'inside',
		            minorTickColor: '#666',

		            tickPixelInterval: 30,
		            tickWidth: 2,
		            tickPosition: 'inside',
		            tickLength: 10,
		            tickColor: '#666',
		            labels: {
		                step: 2,
		                rotation: 'auto'
		            },
		            title: {
		                text: 'Track Progress'
		            },
		            plotBands: [{
		                from: 0,
		                to: 360,
		                color: '#02a451' // green
		            }/*, {
		                from: 120,
		                to: 160,
		                color: '#DDDF0D' // yellow
		            }, {
		                from: 160,
		                to: 200,
		                color: '#DF5353' // red
		            }*/]
		        },

		        series: [{
		            name: 'Track',
		            data: [currentTrack]/* ,
		            tooltip: {
		                valueSuffix: ' Track'
		            } */
		        }]

		    }/* , */
		    // Add some life
		    /* function (chart) {
		        if (!chart.renderer.forExport) {
		            setInterval(function () {
		                var point = chart.series[0].points[0],
		                    newVal,
		                    inc = Math.round((Math.random() - 0.5) * 20);

		                newVal = point.y + inc;
		                if (newVal < 0 || newVal > 200) {
		                    newVal = point.y - inc;
		                }

		                point.update(newVal);

		            }, 3000);
		        }
		    } */);
	    
	    
	    
	});
	  $(document).ready(function() {   
		  $.format = DateFormat.format;
		   	//ComponentsPickers.init();
initDialog();
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
		                       	},
		                       	audioQuality:{
		                       		required: true
		                       	}
		                       	
		                       	
		                       	
		                       	/* ,
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
	
	function sendData(elementId, id,programId,audioLength,feedbackExist, event){
		//var clientDate = new Date();
		
		var clientDate = $.format.date(new Date(), 'yyyy-MM-dd HH:mm:ss')
		
		var playFlag = false;
		var endFlag = false;
		console.log("########### feedback ::"+elementId);
		console.log("########### feedback ::"+id);
		var idOfTrack  = id;
		/* alert(supriya); */
		var audioElement = document.getElementById(elementId);
    
		//alert("${ffmpeg.path}")
		// PLAYER PAUSE FUNCTION
	    audioElement.addEventListener('timeupdate', function(e){
	        //console.log('Audio playback has been playing ...');
	      //  console.log('Playback playing at : '+ e.target.currentTime +" seconds"+e.target.duration );
	        var factor = e.target.currentTime/e.target.duration*100;
	        //console.log('Audio playback factor ... '+factor);
	        if(factor >= 1.0)
	        {
	        	
	        	playFlag = false;
	        	//audioElement.pause();
		        //console.log('Playback has been marked complete');
	        	var day = new Date().getDay();
	        	var isWeekend = (day == 6) || (day == 0);
	        	if(!isWeekend && !endFlag){
	        		endFlag = true;
		        $.ajax({  
		            type : "POST",   
		            url : "<%=request.getContextPath()%>/teacher/audioTrackInfo",   
		            data : "cursorEnd=" + e.target.currentTime + "&audioId=" + id + "&programId="  
		              + programId+ "&clientDate="+clientDate+ "&complete=1&event=2", 
		             async:false,
		            success : function(response) {  
		            	
		            	$("#item"+$("#"+elementId +" > source").data('refid')+"   a").append('<div class="played-tick"></div>');
		            	
		            	if($("#bonus-player-"+id)){
		            	var srcVal = $("#bonus-player-"+id).val();
		            	$("#bonus-player-src-"+id).attr("src",srcVal);
		            	var audioId=document.getElementById("player-bonus-"+id);
		            	if(audioId!=null){
		            		audioId.load();
		            		}
		            	}
		            	
		            	$("#feedbacknote").hide();
		            	
		             if(response == "showFeedback"){
		            	 $("#leave_feedbk").focus();
		            	 if(feedbackExist != 1){
		            		 $("#leaveFeedbackBtn").show();
		            		 $("#leave_feedbk").show();
		            		 window.location.hash = '#leave_feedbk';
		            		 document.getElementById('leave_feedbk').focus();
		            		
		            	 }
		            	 document.getElementById("audioId").value=id;
		             }   
		            },  
		            error : function(e) {  
		             alert('Error: ' + e);   
		            }  
		           });   
	        	}else{
	            	if($("#bonus-player-"+id)){
		            	var srcVal = $("#bonus-player-"+id).val();
		            	$("#bonus-player-src-"+id).attr("src",srcVal);
		            	var audioId=document.getElementById("player-bonus-"+id);
		            	if(audioId!=null){
		            		audioId.load();
		            		}
		            	}
		            	$("#suggestedQuestions").show();
	        	}
	        }	
	        	
	    });
		
		// PLAYER PAUSE FUNCTION
	    audioElement.addEventListener('pause', function(e){
	        console.info('Audio playback has been paused ...');
	        console.info('Playback paused at : '+ e.target.currentTime +" seconds");
	        console.info('Playback paused at : '+ e.target.duration +" seconds");
	        console.info('Playback paused cursor end  : '+ audioLength +" seconds");
	        playFlag = false;
	        if(audioLength != e.target.duration){
	        	var day = new Date().getDay();
	        	var isWeekend = (day == 6) || (day == 0);
	        	if(!isWeekend && !endFlag){
	        	 $.ajax({  
	 	            type : "POST",   
	 	            url : "<%=request.getContextPath()%>/teacher/audioTrackInfo",   
	 	            data : "cursorEnd=" + e.target.currentTime + "&audioId=" + id + "&programId="  
	 	              + programId+ "&clientDate="+clientDate+"&complete=0&event=1",   
	 	             async:false,
	 	            success : function(response) {  
	 	             //alert(response);   
	 	            	//sleep(1000);
	 	            },  
	 	            error : function(e) {  
	 	             //alert('Error: ' + e);   
	 	            }  
	 	           }); 
	        	}
	 	       }
	        }, false);
	       

	    // PLAYER ENDED FUNCTION
	    audioElement.addEventListener('ended', function(e){
	    	playFlag = false;
	    	
	        console.info('Playback has ended');
	        
	        
	        openQuestionsPopUp(idOfTrack);
	       getquestion(id);
	       $("#suggestedQuestions").show();
	       /*  $("#sample_7").html(''); */
	     
	        //
        	var day = new Date().getDay();
        	var isWeekend = (day == 6) || (day == 0);
        	if(!isWeekend && !endFlag){
        		endFlag = true;
	        $.ajax({  
	            type : "POST",   
	            url : "<%=request.getContextPath()%>/teacher/audioTrackInfo",   
	            data : "cursorEnd=" + e.target.currentTime + "&audioId=" + id + "&programId="  
	              + programId+ "&clientDate="+clientDate+"&complete=1&event=2", 
	             async:false,
	            success : function(response) {
	            	
	            	if($("#bonus-player-"+id)){
	            	var srcVal = $("#bonus-player-"+id).val();
	            	$("#bonus-player-src-"+id).attr("src",srcVal);
	            	var audioId=document.getElementById("player-bonus-"+id);
	            	if(audioId!=null){
	            		audioId.load();
	            		}
	            	}
	            	
	            	$("#feedbacknote").hide();
	            	$("#suggestedQuestions").show();
	             if(response == "showFeedback"){
	            	 $("#leave_feedbk").focus();
	            	 if(feedbackExist != 1){
	            		 $("#leaveFeedbackBtn").show();
	            		 $("#leave_feedbk").show();
	            		 window.location.hash = '#leave_feedbk';
	            		 document.getElementById('leave_feedbk').focus();
	            		
	            	 }
	            	 document.getElementById("audioId").value=id;
	             }   
	            },  
	            error : function(e) {  
	            /*  alert('Error: ' + e);  */  
	            }  
	           });   
        	}else{
            	if($("#bonus-player-"+id)){
	            	var srcVal = $("#bonus-player-"+id).val();
	            	$("#bonus-player-src-"+id).attr("src",srcVal);
	            	var audioId=document.getElementById("player-bonus-"+id);
	            	if(audioId!=null){
	            		audioId.load();
	            		}
	            	}
	            	$("#suggestedQuestions").show();
        	}
	    },false);

	    if(!playFlag)
	   {
	    	endFlag = false;
	    	console.info('PLAY STARTED')
        	var day = new Date().getDay();
        	var isWeekend = (day == 6) || (day == 0);
        	if(!isWeekend){
	    	 $.ajax({  
	 	            type : "POST",   
	 	            url : "<%=request.getContextPath()%>/teacher/audioTrackInfo",   
	 	            data : "cursorEnd=" + event.target.currentTime + "&audioId=" + id + "&programId="  
	 	              + programId+ "&clientDate="+clientDate+"&complete=0&event=0",   
	 	             async:false,
	 	            success : function(response) {  
	 	             //alert(response);   
	 	            	//sleep(1000);
	 	            },  
	 	            error : function(e) {  
	 	             alert('Error: ' + e);   
	 	            }  
	 	           }); 
        	 }
	   }
	    
	}   function getquestion(id){
    	/* alert("gya");
    	alert("id "+id); */
		$.ajax({
			
			url : "<%=request.getContextPath()%>/teacher/getQuestionsForTeacher",
			type : 'POST',
			 data : {id:id},
			
			async:false,
			success : function(response) {
				/* alert('inside success'); */
				if(response!=null){
					var htmlContent = '<ul>';
					/* alert("in response"+response); */
				questionDescription='<p style="align:center;width: 650px;">'+response +'</p>'}
				 $("#suggestedQuestions").html(questionDescription); 
				
			}});}
	</script>
				<script type="text/javascript"
					src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
				<script defer
					src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
				<script type="text/javascript">
    $(function(){
      
    	/* SyntaxHighlighter.all(); */
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
    function clearForm(){
    	location.href = "<%=request.getContextPath()%>/teacher/feedback";
   	$('#leaveFeedback').val('');
    	var audiofeedback = '';
        for(var i=1;i<=5;i++){
            	audiofeedback+='<img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""   onclick="changeRating('+i+');">';
		}
        $("#audiofeedback").html('');
        $("#audiofeedback").html(audiofeedback); 
    }
	
</script>

				<!--tab start -->
				<script type="text/javascript"
					src="<%=request.getContextPath()%>/NewStyles/js/tab.js"></script>
				<script type="text/javascript">
				function showTab(current,max){
					for (i=1;i<=max;i++){
					getMyHTMLElement('tab' + i).style.display = 'none';
					getMyHTMLElement('mtab' + i).className = '';
					}
					getMyHTMLElement('tab' + current).style.display = '';
					getMyHTMLElement('mtab' + current).className = 'selected';
					}
				</script>
				<script type="text/javascript">
    $(function(){
    	
    	var owl = $("#owl-demo"),
        status = $("#owlStatus");
   
    owl.owlCarousel({
      navigation : true,
      afterAction : afterAction,
      paginationNumbers: true,
      rewindNav:false
    });
   
    function updateResult(pos,value){
      status.find(pos).find(".result").text(value);
    }
   
    function afterAction(){
      updateResult(".owlItems", this.owl.owlItems.length);
      updateResult(".currentItem", this.owl.currentItem);
      updateResult(".prevItem", this.prevItem);
      updateResult(".visibleItems", this.owl.visibleItems);
      updateResult(".dragDirection", this.owl.dragDirection);
    }
   
  //get carousel instance data and store it in variable owl
    var owl = $(".owl-carousel").data('owlCarousel');
     
     // Go to x slide
     
    var totalSlides = $(".owl-item").length;
    var count = 0;
    $(".owl-item").each(function(){
        count++;
        //console.log($(this).children().first().attr("class"));
        if($(this).children().first().hasClass("item_select"))
        {
//      owl.goTo(Math.round((count+1)/(totalSlides%5)));
                var jump = Math.round((count+2)/(totalSlides%5));
                console.log(jump)
                if((count -  3) > 0 )
                	owl.jumpTo(count-3);
                else if((count -  2) == 0 )
                	owl.jumpTo(count-2);
                else if((count -  1) == 0 )
                	owl.jumpTo(count-1);
//              owl.css2slide(owl.positionsInArray[jump],1);//owl.positionsInArray[jump], 1);
  //            owl.afterGo();
                // base.currentItem = base.owl.currentItem = position;

                // goToPixel = base.positionsInArray[position];

                return false;
        }
    })

    
    
    
    /*  owl.trigger('to.owl.carousel', [0, 500]); */
   
    /*
    All owl object information listed below:
   
    base.owl = {
      "userOptions" : base.userOptions,
      "baseElement" : base.$elem,   
      "userItems"   : base.$userItems,
      "owlItems"    : base.$owlItems,
      "currentItem" : base.currentItem,
      "prevItem"    : base.prevItem,
      "visibleItems": base.visibleItems,
      "isTouch"     : base.browser.isTouch,
      "browser"     : base.browser,
      "dragDirection": base.dragDirection
    }
    */
    	
    	
      /* SyntaxHighlighter.all(); */
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
    	//consle.log(document.getElementById("rating").value);
    }
    function clearForm(){
    	location.href = "<%=request.getContextPath()%>/teacher/feedback";
   	$('#leaveFeedback').val('');
    	var audiofeedback = '';
        for(var i=1;i<=5;i++){
            	audiofeedback+='<img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""   onclick="changeRating('+i+');">';
		}
        $("#audiofeedback").html('');
        $("#audiofeedback").html(audiofeedback); 
    }
    
    
    function openBestPracticePopUp(){
    	 $.fancybox({
    		 'minWidth':120,
      		 'padding':10,
      		 'minHeight':60,
    		 'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
      	     'href' : '#bestPracticePopUp'
      	   
      	  });
    }
    
    function openQuestionsPopUp(id){
    	
    	$("#popup1")[0].style.display = "block"
    		$(window).scrollTop(0);
    	getquestion(id);
    	/* alert(id); */
   }
    function hideQuestionsPopUp(){
    	$("#popup1")[0].style.display = "none"
    		$(window).scrollTop(0);
   }
    
    /* function openFeedbackPopUp(){
    	$("#popup2")[0].style.display = "block"
    		$(window).scrollTop(0);
   }
    function hideFeedbackPopUp(){
    	$("#popup2")[0].style.display = "none"
    		$(window).scrollTop(0);
    	hideQuestionsPopUp()
   }  */
    
    
     function getTrackInfo(trackId){
    	
    	var url='<%=request.getContextPath()%>/teacher/getTrackDetail';
    	$.ajax({
    		url:url,
    		method:'POST',
    		async :false,
    		data:{trackId:trackId},
    		success:function(response){
    			if(response!=null){
    				
    				$.each( response.modelMap.audioList, function(index,value) {
    					if(trackId == value.audioId){
    						//alert(value.audioTitle);
    						$("#audioTitleTxt").text(value.audioTitle);
    						$("#audioTodayTitle").text(value.audioTitle);
    						$("#audioTodayNarrated").text(value.narratedBy);
    						$("#audioTodayDuration").text(value.audioTrackDuratuion);
    						$("#todayLastPlayedDate").text(value.audioTrackDate);
    						$("#audioJournalQuestions").text(value.journalQuestions);
    						//alert(value.journalQuestions);
    						 var audioDay=value.audioDay;
    						var day=audioDay.substring(3, audioDay.length);
    						$("#dayCountText").text(day);
    						
    					}
    					
    				});
    				
    				
    				
    			
    			
    			return true;
    		}
    		else{
    			
    		}
    		}
    	});
    	
    	
    } 
     
    /*  function loadSelectedTrack(id){
    	    $.fancybox({
	      		 'minWidth':120,
	      		 'padding':10,
	      		 'minHeight':80,
	      	     'autoScale': true,
	      	     'autoDimensions': true,
	      	     'centerOnScroll': true,
	      	     'href' : '#loadingTrack',
	      	   closeClick  : false,
	      	 helpers   : { 
	      	   overlay : {closeClick: false} // prevents closing when clicking OUTSIDE fancybox 
	      	  }
	      	  });
    	 
    	 $("#"+id).trigger('load');
 	    var audioElements = document.getElementById(id);
 	    audioElements.preload = "auto";
 	    audioElements.load();
 	    audioElements.addEventListener('loadstart', function(e){
 	        console.log('Loading started...');
 	    
 	    });
 	    
 	    audioElements.addEventListener('canplaythrough', function(e){
 	        console.log('Can play through video without stopping...');
 	       $.fancybox.close();
 	    });
 	    
     } */
     
     function loadSelectedTrack(id){
     	var audioElements = document.getElementById(id);
     	if(audioElements.currentTime == 0.0)
    		{
     		$.fancybox({
 	      		 'minWidth':120,
 	      		 'padding':10,
 	      		 'minHeight':80,
 	      	     'autoScale': true,
 	      	     'autoDimensions': true,
 	      	     'centerOnScroll': true,
 	      	     'href' : '#loadingTrack',
 	      	   	closeClick  : false,
 	      		helpers   : {
 	      	   	overlay : {closeClick: false} // prevents closing when clicking OUTSIDE fancybox 
 	      	  }
       	  	});
 	    	 $("#"+id).trigger('load');
 			   
 			    audioElements.preload = "auto";
 			    audioElements.load();
 			   
 		    audioElements.addEventListener('loadstart', function(e){
 			    	console.log('Loading started...');
 			        e.target.removeEventListener(e.type, arguments.callee);
 		    });
 		    
 		    audioElements.addEventListener('canplaythrough', function(e){
 		        console.log('Can play through video without stopping...');
 		       $.fancybox.close();
 		       audioElements.play();
 		       e.target.removeEventListener(e.type, arguments.callee);
 		    });
    		}
     	else
    		{
     		  audioElements.play();
    		}
  	}
	function loadSong(id)
	{

	    $("#"+id).trigger('load');
	    var audioElements = document.getElementById("song"+id);
	    audioElements.preload = "auto";
	    audioElements.load();
	    audioElements.addEventListener('loadstart', function(e){
	        console.log('Loading started...');
	        $.fancybox({
	      		 'minWidth':120,
	      		 'padding':10,
	      		 'minHeight':80,
	      	     'autoScale': true,
	      	     'autoDimensions': true,
	      	     'centerOnScroll': true,
	      	     'href' : '#loadingTrack',
	      	   closeClick  : false,
	      	 helpers   : { 
	      	   overlay : {closeClick: false} // prevents closing when clicking OUTSIDE fancybox 
	      	  }
	      	  });
	    });
	    
	    audioElements.addEventListener('canplaythrough', function(e){
	        console.log('Can play through video without stopping...');
	       $.fancybox.close();
	    });
	    
	    
	    //audio element click
		$("#"+id).bind('play', function (e) {
			   // alert("clicked."+$(this).attr('data-audio-id'));
			    sendData(id, $(this).attr('data-audio-id'),$(this).attr('data-program-id'),$(this).attr('data-length'),$(this).attr('data-audio-feedback'), e);
		});
	}
	
	function ordinal_suffix_of(i) {
	    var j = i % 10,
	        k = i % 100;
	    if (j == 1 && k != 11) {
	        return i + "st";
	    }
	    if (j == 2 && k != 12) {
	        return i + "nd";
	    }
	    if (j == 3 && k != 13) {
	        return i + "rd";
	    }
	    return i + "th";
	}
</script>
				<!--tab end -->
</body>
</html>

