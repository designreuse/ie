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
<jsp:useBean id="now" class="java.util.Date" />
<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>PRACTICE AREA</title>
    <c:if test="${companyName eq '1'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<c:if test="${companyName eq '2'}">
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
</c:if>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>

</head>

<body>
<spring:eval var="bucketPath" expression="@propertyConfigurer.getProperty('bucket_path')" />
<div class="wrapper">
    <%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--inner_header starts-->
       <!-- <div class="inner_header"> <img src="images/browse-donation-header.jpg"  alt=""/> </div>-->
        
        <!--brow_don_camp starts-->
        <div class="brow_don_camp">
        <div class="container">
	        <div class="pracProgress_hdr">
	            <h2>Practice Area</h2>
	               <div class="green_line_btm"></div>
	              <%--  <div class="teach_dash_update">
		               <c:if test="${not empty seprateTeacher && seprateTeacher=='Y'}">
			               <h3 class="teachr_dsh bdr-btm-none">Your account will expire in <span>${daysRemaining}</span> days. <a href="<%=request.getContextPath()%>/teacher/renewal"  class="green_btn learnclass" >Learn More</a></h3>
		               </c:if>
	               </div>--%>
		           <div class="daily_msg">
		               	<h3><span><img src="<%=request.getContextPath()%>/NewStyles/images/msg-icon.png"></span>Message of the Day<div class="clr"></div></h3>
		                <p id="todayMessage"></p>
		           </div> 
	     	</div>
        </div>
<%--             <c:if test="${not empty seprateTeacher && seprateTeacher=='Y'}">
            <div style="text-align:center;"><h4>Your account will expire in ${daysRemaining} days. &nbsp;
            <a href="<%=request.getContextPath()%>/teacher/renewal"  class="green_btn learnclass" >Learn More</a>
            </h4></div>
            </c:if> --%>

            <!-- <div style="color:red;text-align:center;"><h4>Your are at day 1 and 45 days to access the program &nbsp;<a href="javascript:;"  class="green_btn learnclass" >Learn More</a></h4></div> -->
            
            <!--misc tabs start-->
            
             
            
            <div class="misc_tabs mrg_top25">
            <div class="misc_tabar">
                <ul class="tabPAreanew">
                    <li id="mtab2" ><a class="trial" href="javascript:showTab(2,3)">Completed Sessions</a></li>
                    <li id="mtab1" class=" selected"><a class="fp" href="javascript:showTab(1,3)">Today's Practice 
                    - <fmt:formatDate type="date" value="<%= new java.util.Date() %>" />
                    </a>
                    </li>
                    <li id="mtab3" ><a class="hybrid" href="javascript:showTab(3,3)">Upcoming Sessions</a></li>
                </ul>
            </div>
            <div class="misc_content">
            <!--TAB 1 STARTS-->
                <div id="tab2" style="display:none;">
                    <div class="tdm_player_notes ">
                    	<ul>
                    	<c:set var="recordCheck"  value="${0}" />
                    	<c:forEach var="audio" items="${audioList}" varStatus="loop" >
                    	<fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${audio.completeDate}" var="dateTest" /> 
                    	<fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${now}" var="dateTestCurrent" /> 
                    	<c:if test="${dateTest lt dateTestCurrent}">
                    	<c:if test="${audio.isEnable eq 'N'.charAt(0)}">
                    	<c:set var="recordCheck"  value="${recordCheck+1}" />
                			<li>
							<p>${audio.audioDay}: ${audio.audioTitle}</p>				
							<div class="mp3_playerbar_notes">
									<audio  preload="none" id="player-${audio.audioId}" class="music-player_notes" controls data-audio-id="${audio.audioId}" data-program-id="${audio.programId}" data-length="${audio.cursorEnd}" data-audio-feedback="${audio.feedbackId}">
										<source src="${bucketPath}/audioFiles/${audio.audioName}" type="audio/mpeg"></source>
									</audio>
									<c:forEach var="bonusAudio" items="${audio.programsAudios}" varStatus="loop1" >
									<img src="<%=request.getContextPath()%>/NewStyles/images/bounce_plyr.png" alt="" class="new_bounce">
									<audio id="player-bonus-${bonusAudio.audioId}" controls class="mp3_playerbar_notes_rgt">
										<source src="<%=request.getContextPath()%>/bonusTracks/${bonusAudio.audioName}" type="audio/mpeg"></source>
									</audio>
									</c:forEach>
									<p>${audio.audioDescription}</p>
	    					</div>	
			        				<%-- <div class="daily_notes_content">
							        	<h5>About Today's Practice</h5>
							            <p>${audio.audioNote}</p>
							            <div class="pin">
							            	<img src="<%=request.getContextPath()%>/NewStyles/images/pin.png">
							            </div>
							        </div> --%>
							<div class="leave_feedbk_tab">
	      						<c:if test="${not empty audio.rating}">
	   							<div class="fieldbox_leave_first_tab">   
						   		<label>Summary of session</label>
						      <p>${audio.comment}</p>
						      </div>
						      <div class="fieldbox_leave">
						      <div class="star_rating">
						             <c:forEach var="i" begin="1" end="${audio.rating}" step="1">
						            	<span><img src="<%=request.getContextPath()%>/NewStyles/images/star-table-yellow.png" alt=""></span>
						           </c:forEach>
						           <c:forEach var="i" begin="${audio.rating}" end="4" step="1">
						                <span><img src="<%=request.getContextPath()%>/NewStyles/images/star-table-grey.png" alt=""></span>
						            </c:forEach>
						      </div>
						      </div>
						      </c:if>
						      <%-- <c:if test="${empty audio.rating}">
						      <a href="javascript:;"  class="green_btn_tod js-open-modal btn" onclick="setAudioId(${audio.audioId});" id="leaveFeedbackBtn" data-modal-id="popup1">SUMMARIZE THIS SESSION</a>
						      </c:if> --%>
						      </div>	
						     </li>
						     </c:if>
						     </c:if>
							</c:forEach>
							<c:if test="${recordCheck lt 1}">
								<div class="notfound" style="text-align:center"><h4>No Record Found</h4></div>
							</c:if>
						</ul>
				
					</div>
					

                </div>
                <!--TAB 1 ENDS-->
                <!--TAB 2 STARTS-->
                <div id="tab1">
                    <div class="tdm_player_notes">
			   				<c:forEach var="audio" items="${audioList}" varStatus="loop" >
			     				<c:if test="${audio.isEnable eq 'Y'.charAt(0)}">
			     				<c:set var="count" value="${fn:substringAfter(audio.audioDay,' ')}" />
			     					<!--  <div class="overall-position">-->
			    						<p>Day <span class="day-counter">${count}</span><img style="margin: 0px; vertical-align:middle;" alt="" src="<%=request.getContextPath()%>/NewStyles/images/calender-icon.png"> ${audio.audioTitle}<%--  - on ${date} --%>
			    					<!--</div>-->
			    					<input type="button" value="Recommended Best Practices" style="margin:  0px 0 20px !important; font-size:12px !important" onclick="openBestPracticePopUp();" class="startBtn">
			    					<%-- <span><a class="best-pra-btn" onclick="openBestPracticePopUp();">Recommended Best Practices</a>  </span> --%>
			    					</p>
			    					<div class="mp3_playerbar_notes">
									<audio id="currentPlayer" class="music-player_notes"  controls data-audio-id="${audio.audioId}" data-program-id="${audio.programId}" data-length="${audio.cursorEnd}" data-audio-feedback="${audio.feedbackId}" preload="auto">
										<source src="${bucketPath}/audioFiles/${audio.audioName}" type="audio/mpeg"></source> 
									</audio><c:if test="${companyName eq '2'}">
									<p style="float:right;"><img src="<%=request.getContextPath()%>/NewStyles/images/poweredbyCompass.jpg" alt="powered By Compass" style="float:right;"></p>
									</c:if>
<%-- 									<c:if test="${fn:length(audio.programsAudios) eq 0}">
										<img src="<%=request.getContextPath()%>/NewStyles/images/player_bar-2.gif" alt="" class="bonus-player">
									</c:if>
									</div>
									<div class="mp3_playerbar_notes"> --%>
									<c:forEach var="bonusAudio" items="${audio.programsAudios}" varStatus="loop1" >
									<input type="hidden" id="bonus-player-${audio.audioId}" value="<%=request.getContextPath()%>/bonusTracks/${bonusAudio.audioName}">
									<img src="<%=request.getContextPath()%>/NewStyles/images/bounce_plyr.png" alt="" class="new_bounce">
									<audio  id="player-bonus-${audio.audioId}" controls class="mp3_playerbar_notes_rgt">
										<source src="" id="bonus-player-src-${audio.audioId}" type="audio/mpeg"></source>
									</audio>
									</c:forEach>
									<%-- <p>${audio.audioDescription}</p> --%>
									<p>${audio.audioNote}</p>
									</div>
								
									<%-- <img style=" position: absolute;left: 51%;top:41px;" src="<%=request.getContextPath()%>/NewStyles/images/player_bar-2.gif" alt="Logo" title="logo" width="50px;" height="30px;"/> --%>
			   						<%-- <div class="daily_notes_content" style="margin: 0px;padding: 12px;float: right;display: inline-block;width: 42%;background: #dce1dd;">
			        				<h5>Daily Notes</h5>
			         				<p>${audio.audioNote}</p>
			        				</div> --%>
			        				
			        	<%-- 			<div class="daily_notes_content">
							        	<h5>About Today's Practice</h5>
							            <p>${audio.audioNote}</p>
							            <div class="pin">
							            	<img src="<%=request.getContextPath()%>/NewStyles/images/pin.png">
							            </div>
							        </div> --%>
							        
							        
							        
							         <div class="daily_notes_content">
							    	<!-- <h4>Tip of the Day</h4> -->
							    	<h4>Today's Practice Session</h4>
							        <p>Track Title</p>
							        <p class="margin-bottom-five weight-lght">${audio.audioTitle}</p>
							        <p>Narrated By</p>
							        <p class="margin-bottom-five weight-lght">${audio.narratedBy}</p>
							        <p>Practice Duration</p>
							        <p class="margin-bottom-five weight-lght">
							        <c:set var="min" value="${fn:substringBefore((audio.audioLength div 60), '.')}"/>  
    								 <fmt:formatNumber var="sec"  value="${audio.audioLength mod 60}" pattern="##"/>  
<%-- 							        <c:set var="dur" value="${audio.audioLength/60}"></c:set>
									<fmt:formatNumber maxFractionDigits="2" minFractionDigits="2" value="${dur}" type="number"/> --%>
							        ${min}:${sec} minutes</p>
							        <%-- <p>Tip of the Day</p>
							        <p class="margin-bottom-ten weight-lght">${audio.audioNote}</p> --%>
							        <p>Last Played on</p>
							        <p class="margin-bottom-five weight-lght"><fmt:formatDate type="date" value="<%= new java.util.Date() %>" /></p>
							        <div class="pin">
							        	<img src="<%=request.getContextPath()%>/NewStyles/images/pin.png">
							        </div>
			        				<%-- <c:if test="${letterToParentShowStatus}">
			        				<input type="button" value="Letter To Parent" style="margin: 25px 25px 0 0 !important;" onclick="location.href='<%=request.getContextPath()%>/teacher/radio';" class="startBtn">
			        				</c:if> --%>
							    </div>

			   					</c:if>
			   				</c:forEach>
			   					<div id="feedbacknote">
										<!-- <p>Your feedback is valuable to us</p> -->
										
									</div>
			   				
						 	<div class="todays_des" id="suggestedQuestions">
						 	<%-- <c:if test="${fn:length(audioList) gt 0}"> --%>
						        	<c:forEach var="audio" items="${audioList}" varStatus="loop" >
							     		<c:if test="${audio.isEnable eq 'Y'.charAt(0)}">
							     		<c:if test="${fn:length(audio.audioQuestions) gt 0}">
						    	<p>Suggested Questions for Today's Discussion</p>
						        	<ul>

							     		<li class="green-font">
							     			<c:forEach var="audioQuestion" items="${audio.audioQuestions}" varStatus="loop" >
							     				${audioQuestion.questionDesc}
							     			</c:forEach>
							     	 		</li>

<!-- 						     		<li>
						        <div class="chng_trk_btn" id="leaveFeedbackBtn">
					            	<a href="javascript:;"  class="bonus_trackbtn js-open-modal btn"  data-modal-id="popup1">Leave Feedback</a>
					            </div>
						     		</li> -->
						        </ul>
						        </c:if>
							     		</c:if>
						     		</c:forEach>
						        <%-- </c:if> --%>
<!-- <a href="javascript:;"  class="green_btn_tod js-open-modal btn" id="leaveFeedbackBtn" data-modal-id="popup1">SUMMARIZE THIS SESSION</a> -->
						    </div>
    						<!-- <img src="images/player_bar.gif" alt="" class="music-player">  -->
        					<!-- <img src="images/player_bar-2.gif" alt="" class="bonus-player"> -->

								</div>
							</div>
                
                <!--TAB 2 ENDS-->
                <!--TAB 3 STARTS-->
                <div id="tab3" style="display:none;" >
                	<div class="tdm_player_notes">
                    	<!-- <div class="mp3_playerbar_notes"> -->
                    	<ul>
                    	<c:set var="count"  value="${0}" />
						<c:forEach var="audio" items="${audioList}" varStatus="loop">
						<c:if test="${audio.isEnable eq 'N'.charAt(0)}">
						<fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${audio.completeDate}" var="dateTest" /> 
                    	<fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${now}" var="dateTestCurrent" /> 
								<c:if test="${(empty audio.completeDate || dateTest gt dateTestCurrent) && count lt 5}">
								 
								<c:set var="count"  value="${count+1}" />
							   <li>
							   
							   <p>${audio.audioDay}: ${audio.audioTitle}</p>
							   <div class="mp3_playerbar_notes">
							   <%-- <p>${audio.audioDay}-${audio.audioTitle}</p> --%>
							    <audio id="player-${audio.audioId}" controls data-audio-id="${audio.audioId}" class="music-player_notes">
							    	<c:if test="${count eq 1}">
							  			<source src="${bucketPath}/audioFiles/${audio.audioName}" type="audio/mpeg" ></source>
							  		</c:if>
								</audio>
								<p>${audio.audioDescription}</p>
								</div>
								<%-- <c:if test="${count eq 1}">
			        				<div class="daily_notes_content">
							        	<h5>About Today's Practice</h5>
							            <p>${audio.audioNote}</p>
							            <div class="pin">
							            	<img src="<%=request.getContextPath()%>/NewStyles/images/pin.png">
							            </div> 
							        </div>
							       </c:if> --%>
								</li>
								</c:if>
							   </c:if>
						   </c:forEach>
                    	</ul>
                        <!-- </div> -->
                    </div>
                 </div>
                 <!--TAB 3 ENDS-->
    					<div id="popup1" class="modal-box">
    					<div class="modal_change_track">
						<div class="modal_bodycont">
    					<a class="cls-btn js-modal-close close_fb" href="javascript:;">X</a>
								<form name="feedback" id="feedback"
									action="${pageContext.request.contextPath}/teacher/savefeedback" method="POST">
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
																<input placeholder="No. Of Students"
																	name="studentNumber" type="text" />
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
											<input id="rating" name="rating" type="hidden" value="0" /> <label>Please rate the engagement level of the class(5=max)</label>
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
											<span id="ratingError" style="color:#a94442;"> </span>
										</div>
										<div class="fieldbox_leave">
											<label>Share your observations from today's session</label>
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
			</div>
            </div>
        </div>
            <!--misc tabs end-->
            
            
            
        </div>
        <!--brow_don_camp ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends--> 
</div>

<div  id="loadingTrack" class="playback-Popup" style="display: none; width: 100% !important;">
           <div class="hdr hdr_new padding-btm">
            <c:if test="${companyName eq '1'}">
             <img src="<%=request.getContextPath()%>/NewStyles/images/loading-audio.gif"  alt="" style="width: 20%;"/>
             </c:if>
              <c:if test="${companyName eq '2'}">
              <img src="<%=request.getContextPath()%>/NewStyles/images/crim-lodder.gif"  alt="" style="width: 20%;"/>
              </c:if>
		<p class="slide_rtext"><h4>Working on your Network Settings to ensure<br/>Highest Quality of Audio Experience<br/><br/>Please Wait...</h4></p>
        </div>
        
</div>


 
<div  id="bestPracticePopUp" class="playback-Popup" style="display: none; max-width:700px;">
           
           <div >
													<div class="tech-step-6-left">
                    	<h3>Following are the Recommended Best Practices:</h3>
                        <ul>
<li class="green-dot-left-1">Pick a time of day that is a normal transition to run the program - try to stick with it.</li> 
<li class="green-dot-left-2">Adjust the volume on the speakers each day; some tracks are louder than others. </li>
<li class="green-dot-left-3">Ask students to all face the same direction so no one is “looking” at anyone else. </li>
<li class="green-dot-left-4">Ask the students to put their journal on desk before you start so they are ready. </li>
<li class="green-dot-left-5">Turn out the lights if possible to inspire a sense of calm. </li>
<li class="green-dot-left-6">Participate with your students (even close your eyes). They’ll take it seriously if you do!</li>
<li class="green-dot-left-7">Expect some students to be squirrelly; this is different from what they normally do. </li>
<li class="green-dot-left-8">Expect after a few weeks for some students to say, "This is stupid” or “What’s the point, I don’t think it’s working”. 
As they go inward, it can be uncomfortable to face aspects of their lives that may be easier to avoid through distraction. 
Any discomfort will subside and they will be healthier and happier as a result.</li> 
<li class="green-dot-left-9">Expect some students to have strong reactions, maybe related to past trauma. Handle them as you normally would, through the school social worker and/or counselors/psychologists. </li>
<li class="green-dot-left-10">Building a habit takes time. Gently guide the students to remain quiet through the practices. Even if they seem disengaged, they will hear the instruction and will move through this phase. </li>
<li>Enjoy a deepening sense of community and calm in your classroom! </li></ul>
                       
                    </div>
       
        </div>
</div>
       

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/dateFormat.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery-URI.js"></script>

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
		
		

		var source = '${todayMessage}';

		
		var result = URI.withinString(source, function(url) {
		    return "<a href='"+url+"' target='_blank'>" + url + "</a>";
		});
		
		$("#todayMessage").html(result);
		
		
		//code to restrict multiple audio plays
		 $(".music-player_notes").bind('play', function (e) {
			 $(".music-player_notes").each(function(){
				if($(this).attr("id") != e.target.id)
				 $(this).trigger('pause');
			 });
		 });
		 
		$("#header").sticky({ topSpacing: 0 });
		$("#leaveFeedbackBtn").hide();
		//$("#leave_feedbk").hide();
		$("#suggestedQuestions").hide();
		$.daisyNav();
	 
	    $("#currentPlayer").trigger('load');
	    var audioElements = document.getElementById('currentPlayer');
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
		$("#currentPlayer").bind('play', function (e) {
			   // alert("clicked."+$(this).attr('data-audio-id'));
			    sendData($(this).attr('data-audio-id'),$(this).attr('data-program-id'),$(this).attr('data-length'),$(this).attr('data-audio-feedback'), e);
		});
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
	
	function sendData(id,programId,audioLength,feedbackExist, event){
		//var clientDate = new Date();
		
		var clientDate = $.format.date(new Date(), 'yyyy-MM-dd HH:mm:ss')
		
		var playFlag = false;
		var endFlag = false;
		console.log("########### feedback ::"+feedbackExist);
		
		//alert(id);
		var audioElement = document.getElementById('currentPlayer');
    
		//alert("${ffmpeg.path}")
		// PLAYER PAUSE FUNCTION
	    audioElement.addEventListener('timeupdate', function(e){
	        //console.log('Audio playback has been playing ...');
	        //console.log('Playback playing at : '+ e.target.currentTime +" seconds"+e.target.duration );
	        var factor = e.target.currentTime/e.target.duration*100;
	        if(factor == 90)
	        {
	        	
	        	playFlag = false;
		    	
		        console.log('Playback has ended');
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
		            	 //$("#leave_feedbk").focus();
		            	 if(feedbackExist != 1){
		            		 $("#leaveFeedbackBtn").show();
		            		 //$("#leave_feedbk").show();
		            		 //window.location.hash = '#leave_feedbk';
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
	        console.log('Audio playback has been paused ...');
	        console.log('Playback paused at : '+ e.target.currentTime +" seconds");
	        console.log('Playback paused at : '+ e.target.duration +" seconds");
	        console.log('Playback paused cursor end  : '+ audioLength +" seconds");
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
	    	
	        console.log('Playback has ended');
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
	            	 //$("#leave_feedbk").focus();
	            	 if(feedbackExist != 1){
	            		 $("#leaveFeedbackBtn").show();
	            		 //$("#leave_feedbk").show();
	            		 //window.location.hash = '#leave_feedbk';
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
	    },false);

	    if(!playFlag)
	   {
	    	endFlag = false;
	    	console.log('PLAY STARTED')
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
	    
	}
	</script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script> 
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script> 
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
<%--     	$('#leaveFeedback').val('');
    	var audiofeedback = '';
        for(var i=1;i<=5;i++){
            	audiofeedback+='<img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""   onclick="changeRating('+i+');">';
		}
        $("#audiofeedback").html('');
        $("#audiofeedback").html(audiofeedback); --%>
    }
	
</script>

<!--tab start --> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script> 
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
<%--     	$('#leaveFeedback').val('');
    	var audiofeedback = '';
        for(var i=1;i<=5;i++){
            	audiofeedback+='<img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""   onclick="changeRating('+i+');">';
		}
        $("#audiofeedback").html('');
        $("#audiofeedback").html(audiofeedback); --%>
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
	
</script>
<!--tab end -->

</body>
</html>

