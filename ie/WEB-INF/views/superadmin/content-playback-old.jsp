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
<title>Playback Stats</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/NewStyles/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
 	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	
	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
	
	<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/> 
	
	
	
	
	
	
	
</head>

<body>
<div class="wrapper">
<%@include file="header.jsp" %>

<div class="inner_wrapper"> 
  
  <section class="OurprgRow_new">
    <div class="container">
    <div class="pracProgress_hdr">
     <h2>Playback Stats</h2>
  <div class="green_line_btm"></div>
     </div>
      <div class="OurprgCol1_new">
        <ul>
          <c:forEach items="${programs}" var="program" varStatus="programCount" begin="0" end="3">
          <li onclick="program(${program.programId});" style="cursor: pointer;"> 
          	<div class="play-demo-con">
            	<div class="play-demo-conTxt">
              </div>
            </div>
          <img src="<%=request.getContextPath()%>${program.imagePath}" alt="" />
            <div class="overlay_setup" id="overlay_${program.programId}">
            <%-- <c:set var="string" value="$ ${program.programAmount}"/>
													<c:set var="string1" value="${program.programDesc}"/>
													<c:set var="string2" value="${fn:replace(string1, 
					                                '####', string)}" />
													
													${string2} --%>
             <!-- <div class="greyText"> -->
            <p>${program.programDescDetail}</p>
             <!-- </div> -->
            </div>
          </li>
          </c:forEach>
          <%-- <li onclick="program(1);"> 
          	<div class="play-demo-con">
            	<div class="play-demo-conTxt">
              </div>
            </div>
          <img src="<%=request.getContextPath()%>/NewStyles/images/img1.jpg" alt="Image" />
            <div class="overlay_setup" id="program1">
              <p>Exploring Me™</p>
              <p> Pre-k–Kindergarten</p>
            </div>
          </li>
          <li onclick="program(2);"> 
          <div class="play-demo-con">
          <div class="play-demo-conTxt">
              </div>
            </div>
          <img src="<%=request.getContextPath()%>/NewStyles/images/img2.jpg" alt="Image"/>
            <div class="greyText">
              <p>Exploring Originality™</p>
              <p>Elementary School</p>
            </div>
          </li>
          <li onclick="program(3);"> 
          <div class="play-demo-con">
          <div class="play-demo-conTxt">
              </div>
            </div>
          <img src="<%=request.getContextPath()%>/NewStyles/images/img3.jpg" alt="Image"/>
            <div class="greyText">
              <p>Exploring Potential™</p>
              <p>Middle School</p>
            </div>
          </li>
          <li onclick="program(5);">
          <div class="play-demo-con">
          <div class="play-demo-conTxt">
              </div>
            </div>
           <img src="<%=request.getContextPath()%>/NewStyles/images/img4.jpg" alt="Image"/>
            <div class="greyText">
              <p>Exploring Relevance™</p>
              <p>High School</p>
            </div>
          </li> --%>
        </ul>
      </div>
      <div class="Ourprg_grey_dash">
      	
       <div class="audio_qua" style="cursor: pointer;" onclick="audioPopup();">
        <%-- <img src="<%=request.getContextPath()%>/NewStyles/images/playback-dash.png"> --%>
        
        <div id="donut" class="chart" style="width:300px;">
							</div>
        
       </div>
        <div class="quality_btns">
        	<h3>Audio Quality</h3>
        	<ul>
        		<li><a href="javascript:;"><img src="<%=request.getContextPath()%>/NewStyles/images/low-qualty.png"></a></li>
            	<li><a href="javascript:;"><img src="<%=request.getContextPath()%>/NewStyles/images/med-qualty.png"></a></li>
            	<li><a href="javascript:;"><img src="<%=request.getContextPath()%>/NewStyles/images/high-qualty.png"></a></li>
            </ul>
        </div>
      </div>
    </div>
  </section>
  
  <section class="dashboard-list">
  	<div class="container">	
  		<div class="dashboard_listing_main">
        	<ul>
        	
        	<li style="cursor: pointer;" onclick="dailyStatusPopup();"><img src="<%=request.getContextPath()%>/NewStyles/images/icon-daily-practice.png" width="69px;"><h4>DAILY ACTIVITY</h4></li>
            	<li style="cursor: pointer;" onclick="starRatingPopup();"><img src="<%=request.getContextPath()%>/NewStyles/images/dash-star.png"><h4 id="startRating">${dtoContentPlayback.starRating} STARS</h4></li>
                <li style="cursor: pointer;" onclick="dailyPractice();"><h3>N/A</h3><h4>DAILY PRACTICE</h4></li>
                <li style="cursor: pointer;" onclick="repeatRate();"><h3 id="repeatRate">${dtoContentPlayback.repeatRate}%</h3><h4>REPEAT RATE</h4></li>
                <li style="cursor: pointer;" onclick="skipPlayRate();"><h3>N/A</h3><h4>SKIP  PLAY RATE</h4></li>
                <li style="cursor: pointer;" onclick="feedbackRate();"><h3 id="feedbackRate">${dtoContentPlayback.feedbackRate}%</h3><h4>FEEDBACK RATE</h4></li>
            </ul>
        </div>
  	</div>
  </section>
  
  <section class="dashboard-graph_main">
  	<div class="container">	
  		<h4 style="text-align:center;">Number of Tracks Played vs Time of The Day</h4>
  		<div class="dashboard_graph">
        	<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/playback-graph.png"> --%>
        	
        	<div id="chart_1_1" class="chart">
							</div>
        	
        </div>
  	</div>
  </section>
  
  
  
   
  
  
  
  
  
  
</div>
<!-- <footer>
  <div class="container">
    <div class="footerLeft">
      <p>Copyright © 2016 Inner Explorer</p>
    </div>
    <div class="footerRight">
      <ul>
        <li><a href="javascript:;">Privacy Policy</a></li>
        <li><a href="javascript:;">Terms & Conditions</a></li>
      </ul>
    </div>
  </div>
</footer> -->


<%-- <div id="uniqueDonors" style="display:none; width: 1100px;">
							<div class="container" style="width: 95%">
							<h3>Unique Donors</h3>
								<div class="ur_grid_new_fd" style="margin:0 0 0 0;">
									<table class="table table-striped table-hover table-bordered" id="sample_1">
									<thead>
										<tr>
											<th>Name</th>
											<th>Email</th>
											<th>Zip Code</th>
											<th>City/State</th>
											<th>Last Donation</th>
											<th>Cumulative Amount</th>
										</tr>
										</thead>
										<tbody>
										<c:forEach var="uniqueDonor" items="${uniqueDonorsList}">
											<tr>
												<td><span class="fd_span">sdfsdf</span></td>
												<td><span class="fd_span">dfsdfsd</span></td>
												<td><span class="fd_span">xfdsdfsd</span></td>
												<td><span class="fd_span">sadfdbfd</span></td>
												<td><span class="fd_span">fdgfdgfd</span></td>
												<td><span class="fd_span">ghgfhgfh</span></td>
											</tr>
											
										</c:forEach>
										</tbody>

									</table>


								</div>
							</div>
                </div> --%>
	<div class="ourStory-Popup" id="star-rating-popup" style="display: none;">
                <div>
				<input class="submit-btn fl" type="button" id="sendStarRatingButton" value="Send Email" onclick="openSendEmailStarRatingPopup();"> 
			</div>     		
            <div class="ur_grid ur_grid_pop">

        <table class="table table-striped table-hover table-bordered" id="sample_5">
        
        <thead>
        	<tr>
        	<th><strong>Class Name</strong></th>
        	<th><strong>Teacher Name</strong></th>
        	<th><strong>Program</strong></th>
        	<th><strong>Track</strong></th>
        	<th><strong>Quality</strong></th>
					<th style="display:none;"></th>
					</tr></thead>
				<tbody></tbody> 
</table>

        
        </div>
        
    </div>
    
    
	<div class="ourStory-Popup" id="daily-practice-popup" style="display: none;">
                  <div>
				<input class="submit-btn fl" type="button" id="sendDailyPracticeButton" value="Send Email" onclick="openSendEmailDailyPracticePopup();" > 
			</div>
            <div class="ur_grid ur_grid_pop">

        <table class="table table-striped table-hover table-bordered" id="sample_9">
        
         <thead>
        	<tr>
        	<th><strong>Class Name</strong></th>
        	<th><strong>Teacher Name</strong></th>
        	<th><strong>Program</strong></th>
        	<th ><strong>Daily Practice Rate</strong></th>
					</tr></thead>
				<tbody></tbody> 
   <%--  <tbody>
    	<tr>
        	<th width="20%"><strong>Teacher Name</strong></th>
        	<th width="30%"><strong>Program</strong></th>
        	<!--<th width="25%"><strong>Track</strong></th>-->
        	<th width="15%" class="txtcenter_align"><strong>Daily Practice Rate</strong></th>
    	</tr>
    	<tr>
        	<td class="txtleft_align"><p>John Bentley</p></td>
        	<td class="txtleft_align"><p>Exploring Me™ Pre-k–Kindergarten</p></td>
        	<!--<td class="txtleft_align"><p>Elementary : Mindful Minute</p></td>-->
        	<td class="txtcenter_align"><p>95%</p></td>
        </tr>    
        <tr>
     		<td class="txtleft_align"> <p>Reginald Birkett</p></td>
        	<td class="txtleft_align"><p>Exploring Originality™ Elementary School</p></td>
        	<!--<td class="txtleft_align"><p>Elementary : Chattering Mind</p></td>-->
       		<td class="txtcenter_align"><p>92%</p></td>
    	</tr>    
        <tr>
        	<td class="txtleft_align"><p>Charles Arthur Crompton</td>
        	<td class="txtleft_align"><p>Exploring Potential™ Middle School</p></td>
        	<!--<td class="txtleft_align"><p>Elementary : Mindful Minute</p></td>-->
        	<td class="txtcenter_align"><p>100%</p></td>
        </tr>
        <tr>
        	<td class="txtleft_align"> <p>Arthur Guillemard</p></td>
        	<td class="txtleft_align"><p>Exploring Relevance™ High School</p></td>
        	<!--<td class="txtleft_align"><p>Elementary : Chattering Mind</p></td>-->
         	<td class="txtcenter_align"><p>95%</p></td>
        </tr>
        <tr>
        	<td class="txtleft_align"><p>William MacLaren</p></td>
        	<td class="txtleft_align"><p>Exploring Me™ Pre-k–Kindergarten</p></td>
        	<!--<td class="txtleft_align"><p>Elementary : Mindful Minute</p></td>-->
         	<td class="txtcenter_align"><p>90%</p></td>
        </tr>
	</tbody> --%>
</table>

        
        </div>
        
    </div>
    
    <div class="ourStory-Popup" id="repeat-rate-popup" style="display: none;">
                  <div>
				<input class="submit-btn fl" type="button" id="sendRepeatRateButton" value="Send Email" onclick="openSendEmailRepeatRatePopup();" > 
			</div>   	
            <div class="ur_grid ur_grid_pop">

        <table class="table table-striped table-hover table-bordered" id="sample_7">
          <thead>
        	<tr>
        	<th><strong>Class Name</strong></th>
        	<th><strong>Teacher Name</strong></th>
        	<th><strong>Program</strong></th>
        	<!--<th width="25%"><strong>Track</strong></th>-->
        	<th><strong>Repeat Rate</strong></th>
					</tr></thead>
					<tbody></tbody> 
    
</table>

        </div>
         
    </div>
    
    
    
    <div class="ourStory-Popup" id="skip-play-rate-popup" style="display: none;">
    	<div class="hdr hdr_new">
        <div>
				<input class="submit-btn fl" type="button" id="sendSkipPlayRateButton" value="Send Email" onclick="openSendEmailSkipPlayRatePopup();" > 
			</div>
            <div class="ur_grid ur_grid_pop">

        <table class="table table-striped table-hover table-bordered" id="sample_10">
          <thead>
        	<tr>
        	<th><strong>Class Name</strong></th>
        	<th><strong>Teacher Name</strong></th>
        	<th><strong>Program</strong></th>
        	<th><strong>Skip Play Rate</strong></th>
					</tr></thead>
					<tbody></tbody> 
    
</table>

        
        </div>
        </div>
        
    </div>
<div class="ourStory-Popup" id="feedback-rate-popup" style="display: none;">
              	 <div>
				<input class="submit-btn fl" type="button" value="Send Email" id="sendFeedbackRateButton" onclick="openSendEmailFeedBackPopup();" > 
			</div>  	
            <div class="ur_grid ur_grid_pop">

        <table class="table table-striped table-hover table-bordered" id="sample_8">
         <thead>
        	<tr>
        	<th><strong>Class Name</strong></th>
        	<th><strong>Teacher Name</strong></th>
        	<th><strong>Program</strong></th>
        	<!--<th width="25%"><strong>Track</strong></th>-->
        	<th><strong>Feedback Rate</strong></th>
					</tr></thead>
					<tbody></tbody> 
   
</table>

        
        </div>
        
    </div>
    <div  id="audio-popup" style="display: none;">
    	              	 <div>
				<input class="submit-btn fl" type="button" id="sendEmailAudioQualityButton" value="Send Email" onclick="openSendEmailAudioQualityPopup();"> 
			</div>         
            <div class="ur_grid ur_grid_pop">
            	

            	
        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_1">
         <thead>
        	<tr>
        			<th><strong>Class Name</strong></th>
        			<th><strong>Teacher Name</strong></th>
					<th><strong>Program</strong></th>
					<th><strong>Track</strong></th>
					<th><strong>audio quality</strong></th>
					<th style="display:none;"></th><th style="display:none;"></th>
					</tr></thead>
					<tbody></tbody> 
</table>

        
        </div>
        
    </div>
    <div  id="daily-popup" style="display: none;">
    	              	 <!-- <div>
				<input class="submit-btn fl" type="button" id="sendEmailAudioQualityButton" value="Send Email" onclick="openSendEmailAudioQualityPopup();"> 
			</div>          -->
            <div class="ur_grid ur_grid_pop">
            	

            	
        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_2">
         <thead>
        	<tr>
        			<th><strong>Teacher Name</strong></th>
        			<th><strong>Email</strong></th>
					<th><strong>Login Time</strong></th>
					<th><strong>Track Status</strong></th>
					<th style="display:none;"></th><th style="display:none;"></th>
					</tr></thead>
					<tbody></tbody> 
</table>

        
        </div>
        
    </div>
<input type="hidden" name="programID" id="programID" value="0"/>


<!-- Send Email Popup  Audio Quality-->
<div  id="sendEmailAudioQualityPopup" class="playback-Popup" style="display: none;">
           <div class="hdr hdr_new padding-btm">
            <form name="audioQualityEmail" id="audioQualityEmail" >
            <div class="popup-form popupSend-form">
        	<p>Send Email</p>
            <div class="pop-form-field borderNone">
				<input type="text" placeholder="Subject" id="titleAudioQuality" name="titleAudioQuality" />
			</div>
            <div class="pop-form-field">
				<textarea placeholder="Write Message" id="messageAudioQuality" name="messageAudioQuality" class="Mbtm0"></textarea>
			</div>
            <div class="btns-outer mtop10">
				<input class="submit-btn fl" type="button" value="SEND" onclick="submitAudioQualityEmail();">
			</div>
        </div>
            </form>
        
        </div>
        
</div>

<!-- Send Email Popup  Audio Quality feedback Rate-->
<div  id="sendEmailFeedbackRatePopup" class="playback-Popup" style="display: none;">
           <div class="hdr hdr_new padding-btm">
            <form name="feedbackRateEmail" id="feedbackRateEmail" >
            <div class="popup-form popupSend-form">
        	<p>Send Email</p>
            <div class="pop-form-field borderNone">
				<input type="text" placeholder="Subject" id="titleFeedbackRate" name="titleFeedbackRate" />
			</div>
            <div class="pop-form-field">
				<textarea placeholder="Write Message" id="messageFeedbackRate" name="messageFeedbackRate" class="Mbtm0"></textarea>
			</div>
            <div class="btns-outer mtop10">
				<input class="submit-btn fl" type="button" value="SEND" onclick="submitFeedbackRateEmail();">
			</div>
        </div>
            </form>
        
        </div>
        
</div>

<!-- Send Email Popup  Audio Quality Star Rating -->
<div  id="sendEmailStarRatingPopup" class="playback-Popup" style="display: none;">
           <div class="hdr hdr_new padding-btm">
            <form name="starRatingEmail" id="starRatingEmail" >
            <div class="popup-form popupSend-form">
        	<p>Send Email</p>
            <div class="pop-form-field borderNone">
				<input type="text" placeholder="Subject" id="titleStarRating" name="titleStarRating" />
			</div>
            <div class="pop-form-field">
				<textarea placeholder="Write Message" id="messageStarRating" name="messageStarRating" class="Mbtm0"></textarea>
			</div>
            <div class="btns-outer mtop10">
				<input class="submit-btn fl" type="button" value="SEND" onclick="submitStarRatingEmail();">
			</div>
        </div>
            </form>
        
        </div>
        
</div>


<!-- Send Email Popup  Audio Quality repeat Rate-->
<div  id="sendEmailRepeatRatePopup" class="playback-Popup" style="display: none;">
           <div class="hdr hdr_new padding-btm">
            <form name="repeatRateEmail" id="repeatRateEmail" >
            <div class="popup-form popupSend-form">
        	<p>Send Email</p>
            <div class="pop-form-field borderNone">
				<input type="text" placeholder="Subject" id="titleRepeatRate" name="titleRepeatRate" />
			</div>
            <div class="pop-form-field">
				<textarea placeholder="Write Message" id="messageRepeatRate" name="messageRepeatRate" class="Mbtm0"></textarea>
			</div>
            <div class="btns-outer mtop10">
				<input class="submit-btn fl" type="button" value="SEND" onclick="submitRepeatRateEmail();">
			</div>
        </div>
            </form>
        
        </div>
        
</div>


<!-- Send Email Popup  Audio Quality Daily Practice-->
<div  id="sendEmailDailyPracticePopup" class="playback-Popup" style="display: none;">
           <div class="hdr hdr_new padding-btm">
            <form name="dailyPracticeEmail" id="dailyPracticeEmail" >
            <div class="popup-form popupSend-form">
        	<p>Send Email</p>
            <div class="pop-form-field borderNone">
				<input type="text" placeholder="Subject" id="titleDailyPractice" name="titleDailyPractice" />
			</div>
            <div class="pop-form-field">
				<textarea placeholder="Write Message" id="messageDailyPractice" name="messageDailyPractice" class="Mbtm0"></textarea>
			</div>
            <div class="btns-outer mtop10">
				<input class="submit-btn fl" type="button" value="SEND" onclick="submitDailyPracticeEmail();">
			</div>
        </div>
            </form>
        
        </div>
        
</div>


<!-- Send Email Popup  Audio Quality SkipPlay Rate-->
<div  id="sendEmailSkipPlayRatePopup" class="playback-Popup" style="display: none;">
           <div class="hdr hdr_new padding-btm">
            <form name="skipPlayRateEmail" id="skipPlayRateEmail" >
            <div class="popup-form popupSend-form">
        	<p>Send Email</p>
            <div class="pop-form-field borderNone">
				<input type="text" placeholder="Subject" id="titleSkipPlayRate" name="titleSkipPlayRate" />
			</div>
            <div class="pop-form-field">
				<textarea placeholder="Write Message" id="messageSkipPlayRate" name="messageSkipPlayRate" class="Mbtm0"></textarea>
			</div>
            <div class="btns-outer mtop10">
				<input class="submit-btn fl" type="button" value="SEND" onclick="submitSkipPlayRateEmail();">
			</div>
        </div>
            </form>
        
        </div>
        
</div>

</div>


<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.counterup.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/waypoints.min.js"></script> 

<%@include file="../footer.jsp" %>

<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script> 
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script> 
<%-- <script src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>   
<script src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script> --%>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script> 
 <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>


<script src="<%=request.getContextPath()%>/NewStyles/jquery-easy-pie-chart/jquery.easy-pie-chart.js" type="text/javascript"></script>
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/app.js" type="text/javascript"></script> --%>
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/index.js" type="text/javascript"></script> --%>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.resize.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.pie.js"></script>
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.stack.js"></script> --%>
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.crosshair.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.time.js"></script> --%>
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.axislabels.js"></script> --%>
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/charts.js"></script> --%>    
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.tooltip.js"></script> --%> 
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/select2/select2.min.js"></script> --%>
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script> --%>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script> --%> 
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jquery-ui.min.js"></script> --%>


 <%-- <script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script> --%>

<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/charts-flotcharts.js"></script> --%>


<script>
    jQuery(document).ready(function( $ ) {
    	
        var data = [];
        var series = 3;
        data[0] = {
                //label: "School Funds" ,
                data: '${dtoContentPlayback.audioQualityLow}',
                color : '#faa619'
            }
        data[1] = {
               // label: "Contributions" ,
                data: '${dtoContentPlayback.audioQualityMedium}',
                color: '#f37020'
            }
        data[2] = {
               // label: "I Pledged" ,
                data: '${dtoContentPlayback.audioQualityHigh}',
                color:'#4DA74D'
            }
    	
        $.plot($("#donut"), data, {
            series: {
                pie: {
                    innerRadius: 0.5,
                    show: true
                }
            }
        });
    	
        $('.counter').counterUp({
            delay: 10,
            time: 1000
        });
    });
</script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.easing.1.3.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.anyslider.js"></script> 
<script>
  
  $(document).ready(function() {
	  
	  
	  $('#audioQualityEmail').validate({
			
			rules:{
				
				titleAudioQuality: {
	                required:true
	            },
	            messageAudioQuality: {
	                required:true
	            }
	           		
				},

			
			 messages:{			
				
				
			}
		});
	  
	  
	  $('#feedbackRateEmail').validate({
			
			rules:{
				
				titleFeedbackRate: {
	                required:true
	            },
	            messageFeedbackRate: {
	                required:true
	            }
	           		
				},

			
			 messages:{			
				
				
			}
		});
	  $('#starRatingEmail').validate({
			
			rules:{
				
				titleStarRating: {
	                required:true
	            },
	            messageStarRating: {
	                required:true
	            }
	           		
				},

			
			 messages:{			
				
				
			}
		});
	  
	  $('#repeatRateEmail').validate({
			
			rules:{
				
				titleRepeatRate: {
	                required:true
	            },
	            messageRepeatRate: {
	                required:true
	            }
	           		
				},

			
			 messages:{			
				
				
			}
		});
	  
	  $('#dailyPracticeEmail').validate({
			
			rules:{
				
				titleDailyPractice: {
	                required:true
	            },
	            messageDailyPractice: {
	                required:true
	            }
	           		
				},

			
			 messages:{			
				
				
			}
		});
	
	  
	  $('#skipPlayRateEmail').validate({
			
			rules:{
				
				titleSkipPlayRate: {
	                required:true
	            },
	            messageSkipPlayRate: {
	                required:true
	            }
	           		
				},

			
			 messages:{			
				
				
			}
		});
	
	   
	  
	  
	  //alert(" Map= "+'${dtoContentPlayback.mapValues}');
	  var maxDataVal = 0;
	  var data = GenerateSeries();
	  var ticks =  GenerateTicks();
	  function GenerateTicks(){
          var ticks = [];
          
          for (i = 1; i <= 24; i++) {
        	  ticks.push([i, i]);
          } 
          return ticks;
	  }
      function GenerateSeries() {
          var data = [];

          var abc = '${dtoContentPlayback.mapValues}';
          abc = abc.replace(/=/g , ':');
          var json = JSON.stringify(eval("(" + abc + ")"));
          var obj = $.parseJSON(json);
          var status=0;
          for (i = 1; i <= 24; i++) {
	          $.each(obj,function(key,value){
	        	  if(i==key){
	        		  status = value;
	        	  }
	          });
	        data.push([i,status]);
	        if(status>maxDataVal){
	        	maxDataVal = status;
	        }
	        status=0;
          }
         /*  for (i = 1; i <= 12; i++) {
              var d = Math.floor(100);
              data.push([i, d]);
          } */

          return data;
      }
	  var yticks =  GenerateYTicks();
	  function GenerateYTicks(){
          var maxTick = 100;
          var temp = 0;
          var increment = 10;
		  if(maxDataVal>100){
			  temp = maxDataVal%10;
			  if(temp == 0){
				  maxTick = maxDataVal;
			  }else{
				  maxTick = (maxDataVal-(maxDataVal%10)+20);
			  }
			  increment = maxTick/10;
/* 			  if(maxDataVal == 0){
				  maxTick=10;
				  increment=1;
			  } */
          }
		  var ticks = [];
          
          for (i = 0; i <= maxTick; i+=increment) {
        	  ticks.push([i, i]);
          } 
          return ticks;
	  }
      var options = {
          series: {
              bars: {
                  show: true
              }
          },
          bars: {
              barWidth: 0.6,
              lineWidth: 0, // in pixels
              shadowSize: 0,
              align: 'left'
          },

          grid: {
              tickColor: "#eee",
              borderColor: "#eee",
              borderWidth: 1
          },
          xaxis: {       
        	  ticks: ticks
        	},
          yaxis: {
        	  ticks: yticks
          }
      };

      if ($('#chart_1_1').size() !== 0) {
          $.plot($("#chart_1_1"), [{
              data: data,
              lines: {
                  lineWidth: 1,
              },
              shadowSize: 0
          }], options);
      }
	  
	  
    $("#login").click(function(e) {
        $(".login_panel").toggle();
        e.stopPropagation();
    });

    $(document).click(function(e) {
        if (!$(e.target).is('.login_panel, .login_panel *')) {
            $(".login_panel").hide();
        }
    });
});
  
  </script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
    
	});
	</script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script> 
<!--<script defer src="js/jquery.flexslider.js"></script> --> 

<script type="text/javascript">
    $(function(){
    //  SyntaxHighlighter.all();
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
		
      /* $('.flexslider').flexslider({
        animation: "slide",
        start: function(slider){
          $('body').removeClass('loading');
        }
      }); */
});
	
</script> 
<script>
    $(function () {


        $('.slider2').anyslider({
	animation: 'fadeSlide',
			easing: 'easeInOutExpo',
			keyboardNav: false,
			speed: 750
        });
    });
    </script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script> 
<script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
    });
  </script>
  <script>
  $(function() {
  $('a[href*=#]:not([href=#])').click(function() {
    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        }, 1000);
        return false;
      }
    }
  });
});
  
  function program(progId){
	  
  /* $("#overlay_"+progId).css("background-color","green"); */
  
  $("#programID").val(progId);
  
  
  
  $.each($('[id^=overlay_]'),function(i,ele){
		//$(ele).removeAttr('style');
		$(ele).removeClass('overlay_setup_active');
	});
	
  $('#overlay_'+progId).addClass("overlay_setup_active");
  
	  var progId = progId;
	  var url='<%=request.getContextPath()%>/superadmin/getPlaybackAPIByProgramId';
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{progId:progId},
			cache:false,
			success:function(response){
			if(response!=null){
				
				$("#repeatRate").text(response.modelMap.dtoContentPlayback.repeatRate+"%");
				$("#feedbackRate").text(response.modelMap.dtoContentPlayback.feedbackRate+"%");
				$("#startRating").text(response.modelMap.dtoContentPlayback.starRating+" STARS");
				//alert("data = "+response.modelMap.dtoContentPlayback.mapValues);
				/*Round chart settings*/
				var data = [];
		        var series = 3;
		        data[0] = {
		                data: response.modelMap.dtoContentPlayback.audioQualityLow,
		                color : '#faa619'
		            }
		        data[1] = {
		                data: response.modelMap.dtoContentPlayback.audioQualityMedium,
		                color: '#f37020'
		            }
		        data[2] = {
		                data: response.modelMap.dtoContentPlayback.audioQualityHigh,
		                color:'#4DA74D'
		            }
		        $.plot($("#donut"), data, {
		            series: {
		                pie: {
		                    innerRadius: 0.5,
		                    show: true
		                }
		            }
		        });
					
		        /*Bar Chart settings*/
		        var maxDataValAjax = 0;
		        var data = GenerateSeriesAjax();
			  	var ticks =  GenerateTicksAjax();
			  	function GenerateTicksAjax(){
			            var ticks = [];
			            
			            for (i = 1; i <= 24; i++) {
			          	  ticks.push([i, i]);
			            } 
			            return ticks;
			  	  }
			        function GenerateSeriesAjax() {
			            var data = [];
	
			            var chartContent = response.modelMap.dtoContentPlayback.mapValues;
			           /*  $.each(chartContent,function(key,value){
			            	alert(key +" = "+value);
			            }); */
			            
			            //chartContent = chartContent.replace(/=/g , ':');
			            
			            /* var json = JSON.stringify(eval("(" + chartContent + ")"));
			            var obj = $.parseJSON(json); */
			            var status=0;
			            for (i = 1; i <= 24; i++) {
			  	          $.each(chartContent,function(key,value){
			  	        	  if(i==key){
			  	        		  status = value;
			  	        	  }
			  	          });
			  	        data.push([i,status]);
				        if(status>maxDataValAjax){
				        	maxDataValAjax = status;
				        }
				        status=0;
				        //data.push([23,425]);
				       // maxDataValAjax = 425;
			            }
	
			            return data;
			        }
			  	  var yTicksAjax =  GenerateYTicksAjax();
				  function GenerateYTicksAjax(){
			          var maxTick = 100;
			          var temp = 0;
			          var increment = 10;
					  if(maxDataValAjax>100){
						  temp = maxDataValAjax%10;
						  if(temp == 0){
							  maxTick = maxDataValAjax;
						  }else{
							  maxTick = (maxDataValAjax-(maxDataValAjax%10)+20);
						  }
						  increment = maxTick/10;
			          }
/* 					  if(maxDataValAjax == 0){
						  maxTick=10;
						  increment=1;
					  } */
					  var ticks = [];
			          
			          for (i = 0; i <= maxTick; i+=increment) {
			        	  ticks.push([i, i]);
			          } 
			         // alert(ticks);
			          return ticks;
				  }
	
			        var options = {
			            series: {
			                bars: {
			                    show: true
			                }
			            },
			            bars: {
			                barWidth: 0.6,
			                lineWidth: 0, // in pixels
			                shadowSize: 0,
			                align: 'left'
			            },
	
			            grid: {
			                tickColor: "#eee",
			                borderColor: "#eee",
			                borderWidth: 1
			            },
			            yaxis:{
			          		ticks: yTicksAjax
			          	},
			            xaxis: {       
			          	  ticks: ticks
			          	}
			          	
			        };
	
			        if ($('#chart_1_1').size() !== 0) {
			            $.plot($("#chart_1_1"), [{
			                data: data,
			                lines: {
			                    lineWidth: 1,
			                },
			                shadowSize: 0
			            }], options);
			        }
				
				
				
				
					return true;
				}
			}
		});
	  
	  
  }
  function starRatingPopup(){
	  

	  
	  var progId=$("#programID").val();
	  $("#sample_5").dataTable().fnDestroy();
		$("#sample_5").html('');
	    
	   var url='<%=request.getContextPath()%>/superadmin/getAudioQualityFeedback';
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{progId:progId},
			cache:false,
			success:function(response){
				if(response != null  && response.modelMap.audioQualityDetailList!=null){
					var audioQualityFeedabckRating='';
					audioQualityFeedabckRating+='<thead><tr><th><strong>Class Name</strong></th><th><strong>Teacher Name</strong></th>'+
					'<th><strong>Program</strong></th><th><strong>Track</strong></th>'+
					'<th><strong>Quality</strong></th><th style="display:none;"></th></tr></thead><tbody>';
					
					$.each( response.modelMap.audioQualityDetailList, function(index,value) {
						audioQualityFeedabckRating+='<tr><td ><p>'+value.className+'</p></td><td><p><a href="mailto:'+value.userEmail+'">'+value.teacherName+'</a></p></td>'+
						'<td><p>'+value.programName+'</p></td>'+
						'<td><p>'+value.trackName+'</p></td>'+
						'<td><p>';
						
						for(var i=1;i<=5;i++){
							
							if(i <= value.rating){
								
								audioQualityFeedabckRating+='<img src="<%=request.getContextPath()%>/NewStyles/images/star-table-yellow.png">';
							}
							else{
								audioQualityFeedabckRating+='<img src="<%=request.getContextPath()%>/NewStyles/images/star-table-grey.png">';
							}
							
						}
						
						audioQualityFeedabckRating+='</p></td><td style="display:none;"></td></tr>';
					});
		    	
					audioQualityFeedabckRating+='</tbody>';
					$("#sample_5").html(audioQualityFeedabckRating);
				    $("#sample_5").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
				    $("#sample_5").attr("style","width:100%");
				    //jQuery('#sample_5_wrapper .dataTables_info ').attr("style","display:none");
				    //jQuery('#sample_5_wrapper .dataTables_paginate ').attr("style","display:none");
				   // jQuery('#sample_5_wrapper .dataTables_length ').attr("style","display:none"); 
				    
				    
				    if(response.modelMap.audioQualityDetailListSize=='0'){
				    	$("#sendStarRatingButton").hide();
				    }
				    else{
				    	$("#sendStarRatingButton").show();
				    }
				
		 $.fancybox({
			 'minWidth':900,
			 'padding':45,
			 'minHeight':250,
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#star-rating-popup'
		  });
		 

				}
			}
		}); 
	  
	  
		
 }
  function dailyPractice(){
	  
	  var progId=$("#programID").val();
	  $("#sample_9").dataTable().fnDestroy();
		$("#sample_9").html('');
	   var url='<%=request.getContextPath()%>/superadmin/getDailyPractice';
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{progId:progId},
			cache:false,
			success:function(response){
				if(response != null  && response.modelMap.audioQualityDetailList!=null){
					var audioQualityRepeatRate='';
					audioQualityRepeatRate+='<thead><tr><th><strong>Class Name</strong></th><th><strong>Teacher Name</strong></th>'+
					'<th><strong>Program</strong></th>'+
					'<th><strong>Daily Practice Rate</strong></th></tr></thead><tbody>';
					
					$.each( response.modelMap.audioQualityDetailList, function(index,value) {
						audioQualityRepeatRate+='<tr><td ><p>'+value.className+'</p></td><td><p><a href="mailto:'+value.userEmail+'">'+value.teacherName+'</a></p></td>'+
						'<td><p>'+value.programName+'</p></td>'+
						'<td ><p>'+value.dailyPractice+'</p></td></tr>';
						
						
					});
		    	
					audioQualityRepeatRate+='</tbody>';
		    	
			//$("#audioQualityRepeatRate").html(audioQualityRepeatRate);
			$("#sample_9").html(audioQualityRepeatRate);
		    $("#sample_9").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
		    $("#sample_9").attr("style","width:100%");
		    //jQuery('#sample_9_wrapper .dataTables_info ').attr("style","display:none");
		    //jQuery('#sample_9_wrapper .dataTables_paginate ').attr("style","display:none");
		    //jQuery('#sample_9_wrapper .dataTables_length ').attr("style","display:none");
		    
		    
		    if(response.modelMap.audioQualityDetailListSize=='0'){
		    	$("#sendDailyPracticeButton").hide();
		    }
		    else{
		    	$("#sendDailyPracticeButton").show();
		    }
				
		    $.fancybox({
		    	 'minWidth':900,
				 'padding':45,
				 'minHeight':250,
			     'autoScale': true,
			     'autoDimensions': true,
			     'centerOnScroll': true,
			     'href' : '#daily-practice-popup'
			  });
		 	}
			}
		});
	   
	  
	  
	 
	  
	  
	  
		
}
  
  function repeatRate(){
	  var progId=$("#programID").val();
	  $("#sample_7").dataTable().fnDestroy();
		$("#sample_7").html('');
	   var url='<%=request.getContextPath()%>/superadmin/getAudioQualityRepeatRate';
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{progId:progId},
			cache:false,
			success:function(response){
				if(response != null  && response.modelMap.audioQualityDetailList!=null){
					var audioQualityRepeatRate='';
					audioQualityRepeatRate+='<thead><tr><th><strong>Class Name</strong></th><th><strong>Teacher Name</strong></th>'+
					'<th><strong>Program</strong></th>'+
					'<th><strong>Repeat Rate</strong></th></tr></thead><tbody>';
					
					$.each( response.modelMap.audioQualityDetailList, function(index,value) {
						audioQualityRepeatRate+='<tr><td ><p>'+value.className+'</p></td><td><p><a href="mailto:'+value.userEmail+'">'+value.teacherName+'</a></p></td>'+
						'<td><p>'+value.programName+'</p></td>';
						
						if(value.repeatRate===undefined){
							audioQualityRepeatRate+='<td><p>0%</p></td></tr>';
						}
						else
							{
							audioQualityRepeatRate+='<td><p>'+value.repeatRate+'%</p></td></tr>';
							}
					});
		    	
					audioQualityRepeatRate+='</tbody>';
		    	
			//$("#audioQualityRepeatRate").html(audioQualityRepeatRate);
			$("#sample_7").html(audioQualityRepeatRate);
		    $("#sample_7").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
		    $("#sample_7").attr("style","width:100%");
		    //jQuery('#sample_7_wrapper .dataTables_info ').attr("style","display:none");
		    //jQuery('#sample_7_wrapper .dataTables_paginate ').attr("style","display:none");
		    //jQuery('#sample_7_wrapper .dataTables_length ').attr("style","display:none");
		    
		    
		    if(response.modelMap.audioQualityDetailListSize=='0'){
		    	$("#sendRepeatRateButton").hide();
		    }
		    else{
		    	$("#sendRepeatRateButton").show();
		    }
				
			 $.fancybox({
				 'minWidth':900,
				 'padding':45,
				 'minHeight':250,
			     'autoScale': true,
			     'autoDimensions': true,
			     'centerOnScroll': true,
			     'href' : '#repeat-rate-popup'
			  });
		 	}
			}
		});
	   
	  
	  
	 
}
  function skipPlayRate(){
	  

 	  var progId=$("#programID").val();
	  $("#sample_10").dataTable().fnDestroy();
		$("#sample_10").html('');
	   var url='<%=request.getContextPath()%>/superadmin/getAudioQualitySkipPlayRate';
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{progId:progId},
			cache:false,
			success:function(response){
				if(response != null  && response.modelMap.audioQualityDetailList!=null){
					var audioQualityFeedbackRate='';
					audioQualityFeedbackRate+='<thead><tr><th><strong>Class Name</strong></th><th><strong>Teacher Name</strong></th>'+
					'<th><strong>Program</strong></th>'+
					'<th><strong>Skip Play Rate</strong></th></tr></thead><tbody>';
					
					$.each( response.modelMap.audioQualityDetailList, function(index,value) {
						audioQualityFeedbackRate+='<tr><td ><p>'+value.className+'</p></td><td><p><a href="mailto:'+value.userEmail+'">'+value.teacherName+'</a></p></td>'+
						'<td ><p>'+value.programName+'</p></td>'+
						'<td ><p>'+value.skipPlayRate+'</p></td></tr>';
						
					});
		    	
					audioQualityFeedbackRate+='</tbody>';
		    	
			//$("#audioQualityFeedbackRate").html(audioQualityFeedbackRate);
			$("#sample_10").html(audioQualityFeedbackRate);
		    $("#sample_10").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
		    $("#sample_10").attr("style","width:100%");
		   // jQuery('#sample_10_wrapper .dataTables_info ').attr("style","display:none");
		   // jQuery('#sample_10_wrapper .dataTables_paginate ').attr("style","display:none");
		   // jQuery('#sample_10_wrapper .dataTables_length ').attr("style","display:none");
		    
		    
		    if(response.modelMap.audioQualityDetailListSize=='0'){
		    	$("#sendSkipPlayRateButton").hide();
		    }
		    else{
		    	$("#sendSkipPlayRateButton").show();
		    }
		    
		    
				
			 $.fancybox({
				  'minWidth':900,
				 'padding':45,
				 'minHeight':250, 
				 'autoScale': true,
			     'autoDimensions': true,
			     'centerOnScroll': true,
			     'href' : '#skip-play-rate-popup'
			  });
			 	}
			}
		});
		 
		 
}
  function feedbackRate(){
	  
 	  var progId=$("#programID").val();
	  $("#sample_8").dataTable().fnDestroy();
		$("#sample_8").html('');
	   var url='<%=request.getContextPath()%>/superadmin/getAudioQualityFeedBackRate';
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{progId:progId},
			cache:false,
			success:function(response){
				if(response != null  && response.modelMap.audioQualityDetailList!=null){
					var audioQualityFeedbackRate='';
					audioQualityFeedbackRate+='<thead><tr><th><strong>Class Name</strong></th><th><strong>Teacher Name</strong></th>'+
					'<th><strong>Program</strong></th>'+
					'<th><strong>Feedback Rate</strong></th></tr></thead><tbody>';
					
					$.each( response.modelMap.audioQualityDetailList, function(index,value) {
						audioQualityFeedbackRate+='<tr><td ><p>'+value.className+'</p></td><td><p><a href="mailto:'+value.userEmail+'">'+value.teacherName+'</a></p></td>'+
						'<td ><p>'+value.programName+'</p></td>';
						
						if(value.feedbackRate===undefined){
							audioQualityFeedbackRate+='<td><p>0%</p></td></tr>';
						}
						else
							{
							audioQualityFeedbackRate+='<td><p>'+value.feedbackRate+'%</p></td></tr>';
							}
					});
		    	
					audioQualityFeedbackRate+='</tbody>';
		    	
			//$("#audioQualityFeedbackRate").html(audioQualityFeedbackRate);
			$("#sample_8").html(audioQualityFeedbackRate);
		    $("#sample_8").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
		    $("#sample_8").attr("style","width:100%");
		    //jQuery('#sample_8_wrapper .dataTables_info ').attr("style","display:none");
		    //jQuery('#sample_8_wrapper .dataTables_paginate ').attr("style","display:none");
		   // jQuery('#sample_8_wrapper .dataTables_length ').attr("style","display:none");
		    
		    
		    if(response.modelMap.audioQualityDetailListSize=='0'){
		    	$("#sendFeedbackRateButton").hide();
		    }
		    else{
		    	$("#sendFeedbackRateButton").show();
		    }
		    
		    
				
			 $.fancybox({
				  'minWidth':900,
				 'padding':45,
				 'minHeight':250, 
			     'autoScale': true,
			     'autoDimensions': true,
			     'centerOnScroll': true,
			     'href' : '#feedback-rate-popup'
			  });
			 	}
			}
		});
	   
	
}
  function audioPopup(){
	  
	  var progId=$("#programID").val();
	  
		$("#sample_1").dataTable().fnDestroy();
		$("#sample_1").html('');
	   var url='<%=request.getContextPath()%>/superadmin/getAudioQualityDetail';
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{progId:progId},
			cache:false,
			success:function(response){
				
				
				
				if(response != null  && response.modelMap.audioQualityDetailList!=null){
					var audioQualityDetail='';
					audioQualityDetail+='<thead><tr><th><strong>Class Name</strong></th><th><strong>Teacher Name</strong></th>'+
					'<th ><strong>Program</strong></th><th ><strong>Track</strong></th>'+
					'<th ><strong>audio quality</strong></th><th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';
					
					$.each( response.modelMap.audioQualityDetailList, function(index,value) {
						audioQualityDetail+='<tr><td ><p>'+value.className+'</p></td><td ><p><a href="mailto:'+value.userEmail+'">'+value.teacherName+'</a></p></td>'+
						'<td ><p>'+value.programName+'</p></td>'+
						'<td><p>'+value.trackName+'</p></td>'+
						'<td ><p>'+value.audioQuality+'</p></td><td style="display:none;"></td><td style="display:none;"></td></tr>';
					});
		    	
		    	audioQualityDetail+='</tbody>';
		    	
			$("#sample_1").html(audioQualityDetail);
		    $("#sample_1").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
		    //$("#sample_1").attr("style","width:100%");
		    //jQuery('#sample_1_wrapper .dataTables_info ').attr("style","display:none");
		    //jQuery('#sample_1_wrapper .dataTables_paginate ').attr("style","display:none");
		   // jQuery('#sample_1_wrapper .dataTables_length ').attr("style","display:none");
		    
		    
		    if(response.modelMap.audioQualityDetailListSize=='0'){
		    	$("#sendEmailAudioQualityButton").hide();
		    }
		    else{
		    	$("#sendEmailAudioQualityButton").show();
		    }
		    
				
				 $.fancybox({
					 'minWidth':900,
					 'padding':45,
					 'minHeight':250,
				     'autoScale': true,
				     'autoDimensions': true,
				     'centerOnScroll': true,
				     'href' : '#audio-popup'
				  });
	
				}
			}
		});
}
  
 function openSendEmailAudioQualityPopup(){
	
	 $.fancybox({
		 'minWidth':300,
		 'padding':45,
		 'minHeight':150,
	     'autoScale': true,
	     'autoDimensions': true,
	     'centerOnScroll': true,
	     'href' : '#sendEmailAudioQualityPopup'
	  });
	  
  } 
  
  function submitAudioQualityEmail(){
	  if($("#audioQualityEmail").valid()){
	  var progId=$("#programID").val();
	  var title=$("#titleAudioQuality").val();
	  var message=$("#messageAudioQuality").val();
	  var url='<%=request.getContextPath()%>/superadmin/sendAudioQualityEmail';
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{progId:progId,title:title,message:message},
			cache:false,
			success:function(response){
				$.fancybox.close();
	
				}
			
		});
	  }
  }

  
  
  function openSendEmailFeedBackPopup(){
		
		 $.fancybox({
			 'minWidth':300,
			 'padding':45,
			 'minHeight':150,
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#sendEmailFeedbackRatePopup'
		  });
		  
	  } 
	  
 function submitFeedbackRateEmail(){
  if($("#feedbackRateEmail").valid()){
  var progId=$("#programID").val();
  var title=$("#titleFeedbackRate").val();
  var message=$("#messageFeedbackRate").val();
  var url='<%=request.getContextPath()%>/superadmin/sendFeedbackRateEmail';
	$.ajax({
		url:url,
		method:'POST',
		async :false,
		data:{progId:progId,title:title,message:message},
		cache:false,
		success:function(response){
			$.fancybox.close();

			}
		
	});
  }
 }

 function openSendEmailStarRatingPopup(){
	
	 $.fancybox({
		 'minWidth':300,
		 'padding':45,
		 'minHeight':150,
	     'autoScale': true,
	     'autoDimensions': true,
	     'centerOnScroll': true,
	     'href' : '#sendEmailStarRatingPopup'
	  });
	  
  } 
  
  function submitStarRatingEmail(){
	  if($("#starRatingEmail").valid()){
	  var progId=$("#programID").val();
	  var title=$("#titleStarRating").val();
	  var message=$("#messageStarRating").val();
	  var url='<%=request.getContextPath()%>/superadmin/sendStarRatingEmail';
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{progId:progId,title:title,message:message},
			cache:false,
			success:function(response){
				$.fancybox.close();
	
				}
			
		});
	  }
  }
  
  
  function openSendEmailRepeatRatePopup(){
		
		 $.fancybox({
			 'minWidth':300,
			 'padding':45,
			 'minHeight':150,
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#sendEmailRepeatRatePopup'
		  });
		  
	  } 
	  
	  function submitRepeatRateEmail(){
		  if($("#repeatRateEmail").valid()){
		  var progId=$("#programID").val();
		  var title=$("#titleRepeatRate").val();
		  var message=$("#messageRepeatRate").val();
		  var url='<%=request.getContextPath()%>/superadmin/sendRepeatRateEmail';
			$.ajax({
				url:url,
				method:'POST',
				async :false,
				data:{progId:progId,title:title,message:message},
				cache:false,
				success:function(response){
					$.fancybox.close();
		
					}
				
			});
		  }
	  }
	  
	  
  function openSendEmailDailyPracticePopup(){
		
		 $.fancybox({
			 'minWidth':300,
			 'padding':45,
			 'minHeight':150,
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#sendEmailDailyPracticePopup'
		  });
		  
	  } 
	  
	  function submitDailyPracticeEmail(){
		  if($("#dailyPracticeEmail").valid()){
		  var progId=$("#programID").val();
		  var title=$("#titleDailyPractice").val();
		  var message=$("#messageRepDailyPractice").val();
		  var url='<%=request.getContextPath()%>/superadmin/sendDailyPracticeEmail';
			$.ajax({
				url:url,
				method:'POST',
				async :false,
				data:{progId:progId,title:title,message:message},
				cache:false,
				success:function(response){
					$.fancybox.close();
		
					}
				
			});
		  }
	  }
	  
  function openSendEmailSkipPlayRatePopup(){
		
		 $.fancybox({
			 'minWidth':300,
			 'padding':45,
			 'minHeight':150,
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#sendEmailSkipPlayRatePopup'
		  });
		  
	  } 
	  
	  function submitSkipPlayRateEmail(){
		  if($("#skipPlayRateEmail").valid()){
		  var progId=$("#programID").val();
		  var title=$("#titleSkipPlayRate").val();
		  var message=$("#messageSkipPlayRate").val();
		  var url='<%=request.getContextPath()%>/superadmin/sendSkipPlayRateEmail';
			$.ajax({
				url:url,
				method:'POST',
				async :false,
				data:{progId:progId,title:title,message:message},
				cache:false,
				success:function(response){
					$.fancybox.close();
		
					}
				
			});
		  }
	  }
	  
	  function dailyStatusPopup(){
		  
			$("#sample_2").dataTable().fnDestroy();
			$("#sample_2").html('');
		   var url='<%=request.getContextPath()%>/superadmin/getDailyPracticeDetails';
			$.ajax({
				url:url,
				method:'GET',
				async :false,
				cache:false,
				success:function(response){
					
					if(response != null  && response.modelMap.dtoUsers!=null){
						var audioQualityDetail='';
						audioQualityDetail+='<thead><tr><th><strong>Teacher Name</strong></th><th><strong>Email</strong></th>'+
						'<th ><strong>Last Login</strong></th><th ><strong>Last Login</strong></th><th ><strong>Track Status</strong></th>'+
						'</tr></thead><tbody>';
						
						$.each( response.modelMap.dtoUsers, function(index,value) {
							audioQualityDetail+='<tr><td ><p>'+value.firstName+'</p></td>'+
							'<td ><p><a href="mailto:'+value.email+'">'+value.email+'</a></p></td>'+
							'<td ><p>'+value.newDate+'</p></td>'+
							'<td ><p>'+value.loginTime+'</p></td>'+
							'<td><p>'+value.trackStatus+'</p></td>'+
							'</td></tr>';
						});
			    	
			    	audioQualityDetail+='</tbody>';
			    	
				$("#sample_2").html(audioQualityDetail);
			   // $("#sample_2").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
			    
			    $('#sample_2').DataTable({
					"order": [[ 2, "desc" ]],
				   	 "lengthMenu": [
				           [5,10, 15, 20, -1],
				           [5,10, 15, 20, "All"] 
				       ],
				       "aoColumns": [null,
				                     null,
				                       {"bVisible": false},
				                         {"iDataSort": 2},                              
				                         null
				                        ]
				});
				   var tableWrapper = $("#sample_2_wrapper");

				  /*  tableWrapper.find(".dataTables_length select").select2({
				       showSearchInput: false //hide search box with special css class
				   }); */
			    
			    
			    
			    //$("#sample_1").attr("style","width:100%");
			    //jQuery('#sample_1_wrapper .dataTables_info ').attr("style","display:none");
			    //jQuery('#sample_1_wrapper .dataTables_paginate ').attr("style","display:none");
			   // jQuery('#sample_1_wrapper .dataTables_length ').attr("style","display:none");
			    
			    
			    if(response.modelMap.audioQualityDetailListSize=='0'){
			    	$("#sendEmailAudioQualityButton").hide();
			    }
			    else{
			    	$("#sendEmailAudioQualityButton").show();
			    }
			    
					
					 $.fancybox({
						 'minWidth':900,
						 'padding':45,
						 'minHeight':250,
					     'autoScale': true,
					     'autoDimensions': true,
					     'centerOnScroll': true,
					     'href' : '#daily-popup'
					  });
		
					}
				}
			});
	}		  
	  
		  
 
  </script>
</body>
</html>
