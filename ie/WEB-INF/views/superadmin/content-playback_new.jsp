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
<title>Daily Stats</title>
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
<style type="text/css">
.pie-table-ytext5{ position: absolute; top: 22px !important; left: -97px !important; text-align: center; max-width:100% !important;
          transform: rotate(270deg);
         transform-origin: right bottom 0;
     }
     
    #chart_1_teacher{
/* 	  overflow: hidden; */
	  height: 180px;
 	  margin-left:30px; 
	  font-family: "Open Sans", sans-serif !important;
	  font-size: 16px;
    }     
     #chart_1_teacher .y1Axis {
      margin-left: -11px;
       margin-top: -10px;
       font-size: 11px;  
    }
     #chart_1_teacher .x1Axis {
      font-size: 11px;
    }
    
     #chart_1_teacherProgress{
/* 	  overflow: hidden; */
	  height: 180px;
 	  margin-left:30px; 
	  font-family: "Open Sans", sans-serif !important;
	  font-size: 16px;
    }     
     #chart_1_teacherProgress .y1Axis {
      margin-left: -11px;
       margin-top: -10px;  
       font-size: 11px;
    }
    #chart_1_teacherProgress .x1Axis {
      font-size: 11px;
    }
    
    
    #chart_1_parent{
/* 	  overflow: hidden; */
	  height: 180px;
 	  margin-left:30px; 
	  font-family: "Open Sans", sans-serif !important;
	  font-size: 16px;
    }     
     #chart_1_parent .y1Axis {
      margin-left: -11px;
      margin-top: -10px;  
      font-size: 11px;
    }  
    
     #chart_1_parent .x1Axis {
      font-size: 11px; 
    }   
    
        #chart_1_parentProgress{
/* 	  overflow: hidden; */
	  height: 180px;
 	  margin-left:30px; 
	  font-family: "Open Sans", sans-serif !important;
	  font-size: 16px;
    }     
     #chart_1_parentProgress .y1Axis {
      margin-left: -11px;
      margin-top: -10px; 
      font-size: 11px; 
    }  
    
    #chart_1_parentProgress .x1Axis {
      font-size: 11px;
    }
    
    #chart_1_1_2 .x1Axis {
      font-size: 11px;
    }
    #chart_1_1_2 .y1Axis {
      font-size: 11px;
    }
     #dailyTrendsBarChart .x1Axis {
      font-size: 11px;
    }
    #dailyTrendsBarChart .y1Axis {
      font-size: 11px;
    }
    
     #chart_1_parent_revenue{
/* 	  overflow: hidden; */
	  height: 180px;
 	  margin-left:30px; 
	  font-family: "Open Sans", sans-serif !important;
	  font-size: 16px;
    }     
     #chart_1_parent_revenue .y1Axis {
      margin-left: -11px;
      margin-top: -10px;  
      font-size: 11px;
    }  
    
     #chart_1_parent_revenue .x1Axis {
      font-size: 11px; 
    }  -
    
</style>

</head>

<body>

<div class="wrapper">
<%@include file="header.jsp" %>

<div class="inner_wrapper"> 
  
  
  <!-- <div id="chartContainer" style="height: 300px; width: 100%;"></div> -->
  
  
  <section class="OurprgRow_new">
    <div class="container">
    <div class="pracProgress_hdr">
     <h2>Playback Stats</h2>
  <div class="green_line_btm"></div>
     </div>
      <%-- <div class="OurprgCol1_new">
        <ul>
          <c:forEach items="${programs}" var="program" varStatus="programCount" begin="0" end="3">
          <li onclick="program(${program.programId});" style="cursor: pointer;"> 
          	<div class="play-demo-con">
            	<div class="play-demo-conTxt">
              </div>
            </div>
          <img src="<%=request.getContextPath()%>${program.imagePath}" alt="" />
            <div class="overlay_setup" id="overlay_${program.programId}">
            <c:set var="string" value="$ ${program.programAmount}"/>
													<c:set var="string1" value="${program.programDesc}"/>
													<c:set var="string2" value="${fn:replace(string1, 
					                                '####', string)}" />
													
													${string2}
             <!-- <div class="greyText"> -->
            <p>${program.programDescDetail}</p>
             <!-- </div> -->
            </div>
          </li>
          </c:forEach>
          
        </ul>
      </div> --%>
      <%-- <div class="Ourprg_grey_dash">
      	
       <div class="audio_qua" style="cursor: pointer;" onclick="audioPopup();">
        <img src="<%=request.getContextPath()%>/NewStyles/images/playback-dash.png">
        
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
      </div> --%>
    </div>
  </section>
  
  <section class="dashboard-list">
  	<div class="container">	
  		<div class="dashboard_listing_main">
        	<div id="myLoader" class ="admin-loader"></div>
        	<ul>
        	  <li style="cursor: pointer;" onclick="dailyAccessPopup();"><h4>DAILY ACCESS</h4></li>
               <li style="cursor: pointer;" onclick="starRatingGraphPopup();"> <h4>REPEAT RATE</h4></li>
                <li style="cursor: pointer;" onclick="dailyTrendsPractice();"><h4>DAILY PRACTICE</h4></li>
                <li style="cursor: pointer;" onclick="teacherLastMonthStats();"><h4>Teacher Stats</h4></li>
                 <li style="cursor: pointer;" onclick="parentLastMonthStats();"><h4>Parent Stats</h4></li>
                 <li style="cursor: pointer;" onclick="teacherProgressMonthlyStats();"><h4>Teacher Progress </h4></li>
                 <li style="cursor: pointer;" onclick="parentProgressMonthlyStats();"><h4>Parent Progress </h4></li>
                 <li style="cursor: pointer;" onclick="schoolRegisteredStats();"><h4>Monthly Stats</h4></li>
                  <li style="cursor: pointer;" onclick="parentRevenue();"><h4>Parent Daily Revenue</h4></li>
<%--                 <li style="cursor: pointer;" onclick="repeatRate();"><h3 id="repeatRate">${dtoContentPlayback.repeatRate}%</h3><h4>REPEAT RATE</h4></li> --%>
<!--                 <li style="cursor: pointer;" onclick="skipPlayRate();"><h3>N/A</h3><h4>SKIP  PLAY RATE</h4></li> -->
               <%--  <li style="cursor: pointer;" onclick="feedbackRateGraphPopUp();"><h3 id="feedbackRate">${dtoContentPlayback.feedbackRate}%</h3><h4>FEEDBACK RATE</h4></li> --%>
            </ul>
        </div>
  	</div>
  </section>
  
  <section class="dashboard-graph_main">
  	<div class="container">	
  		<h4 style="text-align:center;">Number of Tracks Played vs Time of The Day</h4>
  	<div id= "radioButtonContainerId">	
		  <input type="radio" name="barfilter" checked="checked" value="all"> All
		  <input type="radio" name="barfilter" value="currentMonth"> Current month
		  <input type="radio" name="barfilter" value="febOnwards"> feb onwards<br/>
	</div>	  
  		<div class="dashboard_graph">
        	<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/playback-graph.png"> --%>
        	
        	<div id="chart_1_1" class="chart">
							</div>
        	
        </div>
  	</div>
  </section>
  
</div>
  </div>

	<div class="ourStory-Popup" id="star-rating-popup" style="display: none;">
              <!--   <div>
				<input class="submit-btn fl" type="button" id="sendStarRatingButton" value="Send Email" onclick="openSendEmailStarRatingPopup();"> 
			</div> -->     		
            <div class="ur_grid ur_grid_pop">

        <table class="table table-striped table-hover table-bordered" id="sample_5">
        
        <thead>
        	<tr>
        	<%-- <th><strong>Class Name</strong></th>
        	<th><strong>Teacher Name</strong></th> --%>
        	<th><strong>Program</strong></th>
        	<th><strong>Track</strong></th>
        	<th><strong>Repeat Rate</strong></th>
					<th style="display:none;"></th>
					</tr></thead>
				<tbody></tbody> 
</table>

        
        </div>
        
    </div>
    
    
	<div class="ourStory-Popup" id="daily-practice-popup" style="display: none;">
                 <!--  <div>
				<input class="submit-btn fl" type="button" id="sendDailyPracticeButton" value="Send Email" onclick="openSendEmailDailyPracticePopup();" > 
			</div> -->
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
    	              	 <!-- <div>
				<input class="submit-btn fl" type="button" id="sendEmailAudioQualityButton" value="Send Email" onclick="openSendEmailAudioQualityPopup();"> 
			</div>         --> 
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
    
       <div class="ourStory-Popup"  id="daily-popup" style="display: none;">
            <div class="ur_grid ur_grid_pop">
            	

            	
        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_14">
         <thead>
        	<tr>
        			<th><strong>Teacher Name</strong></th>
        			<th><strong>Email</strong></th>
					<th><strong>Login Time</strong></th>
					<th><strong>Track Status</strong></th>
			</tr>
		</thead>
					<tbody></tbody> 
</table>

        
        </div>
        </div> 
        
        
        
        
        
     <div  id="feedback-graph-popup" style="display: none;" class="daily-bar-line">
    <h5>FeedBack Rate</h5>
    <div class="bar-line-grey-out">
        <div class="bar-line-grey">Feedback Rate:<span id="totalFeedBachRate"></span></div></div>
        		<div class="daily-acc-class ">
       			 <div class="daily-acc-bar" id="feedbackBarGraph" ></div>
       			
                 <div id="feedbackLineGraph" class="daily-acc-line"> </div>
                 </div>
                  <div>
				   <input class="change_trackbtn_qus"  type="button"  value="More" onclick="showFeedBackPopup();"> 
				  </div>
        
    </div>    
        
    <div  id="daily-access-popup" style="display: none;" class="daily-bar-line">
    <h5>Daily Access</h5>
    <div class="bar-line-grey-out">
        <div class="bar-line-grey">Number of Logins:<span id="totalLoginSpan"></span></div></div>
        		<div class="daily-acc-class Mbtm0">
       			 <div class="daily-acc-bar" id="chart_1_1_2" ></div>
       			
       		
       			<div id="chartContainer" class="daily-acc-line" style="height: 300px; "></div>
                <!--  <div id="place_holder" class="daily-acc-line"> </div> -->
                 </div>
                  <div>
				   <input class="change_trackbtn_qus"  type="button"  value="More" onclick="showDailyActivityPopup();"> 
				  </div>
        
    </div>   
    
   <div  id="teacher-stats-popup" style="display: none;" class="daily-bar-line">
    <h5>Teacher Stats</h5>
    <div class="bar-line-grey-out">
        <%-- <div class="bar-line-grey">Number of Logins:<span id="totalLoginTeachers"></span></div> --%>
        <div class="bar-line-grey">Avg. 30 Days:<span id="avgLoginTeachers"></span></div>
        </div>
        		<div class="daily-acc-class Mbtm0">
       			 <div class="daily-acc-bar" id="chart_1_teacher" ></div>
       			
       		
       			<div id="chartContainerTeacher" class="daily-acc-line" style="height: 300px; "></div>
                <!--  <div id="place_holder" class="daily-acc-line"> </div> -->
                 </div>
                 <!--  <div>
				   <input class="change_trackbtn_qus"  type="button"  value="More" onclick="showTeacherDataPopup();"> 
				  </div> -->
        
    </div>  
    
   <div  id="teacher-progress-stats-popup" style="display: none;" class="daily-bar-line">
    <h5>Teacher Progress Stats</h5>
    <div class="bar-line-grey-out">
        <div class="bar-line-grey">Daily Practice:<span id="dailyPracticeTeacher"></span></div>
       <%--  <div class="bar-line-grey">Avg. 30 Days:<span id="avgLoginTeachers"></span></div> --%>
        </div>
        		<div class="daily-acc-class Mbtm0">
       			 <div class="daily-acc-bar" id="chart_1_teacherProgress" ></div>
       			
       		
       			<div id="chartContainerTeacherProgress" class="daily-acc-line" style="height: 300px; "></div>
                <!--  <div id="place_holder" class="daily-acc-line"> </div> -->
                 </div>
                 <!--  <div>
				   <input class="change_trackbtn_qus"  type="button"  value="More" onclick="showTeacherDataPopup();"> 
				  </div> -->
        
    </div> 
    
  <div  id="parent-stats-popup" style="display: none;" class="daily-bar-line">
    <h5>Parent Stats</h5>
    <div class="bar-line-grey-out">
        <%-- <div class="bar-line-grey">Number of Logins:<span id="totalLoginParent">0</span></div> --%>
        <div class="bar-line-grey">Avg. 30 Days:<span id="avgLoginParent">0</span></div>
        </div>
        		<div class="daily-acc-class Mbtm0">
       			 <div class="daily-acc-bar" id="chart_1_parent" ></div>
       			
       		
       			<div id="chartContainerParent" class="daily-acc-line" style="height: 300px; "></div>
                <!--  <div id="place_holder" class="daily-acc-line"> </div> -->
                 </div>
                 <!--  <div>
				   <input class="change_trackbtn_qus"  type="button"  value="More" onclick="showTeacherDataPopup();"> 
				  </div> -->
        
    </div>
    
    <div  id="monthly-school-reg-stats-popup" style="display: none;" class="daily-bar-line">
    <h5>Principals vs Teachers Stats</h5>
    
        		<div class="daily-acc-class Mbtm0">
       		
       			<div id="chartContainerNew" style="height: 300px; width: 100%;"></div>
                <!--  <div id="place_holder" class="daily-acc-line"> </div> -->
                 </div>
                  
        
    </div>
    
  <div  id="parent-progress-stats-popup" style="display: none;" class="daily-bar-line">
    <h5>Parent Progress Stats</h5>
    <div class="bar-line-grey-out">
        <div class="bar-line-grey">Daily Practice:<span id="parentDailyPractice">0</span></div>
       <%--  <div class="bar-line-grey">Avg. 30 Days:<span id="avgLoginParent">0</span></div> --%>
        </div>
        		<div class="daily-acc-class Mbtm0">
       			 <div class="daily-acc-bar" id="chart_1_parentProgress" ></div>
       		
       			<div id="chartContainerParentProgress" class="daily-acc-line" style="height: 300px; "></div>
                 </div>
        
    </div>
    
      
      
      
      
      <div  id="daily-trends-popup" style="display: none;" class="daily-bar-line">
        <h5>Practice Trends</h5>
         <div class="bar-line-grey-out">
        <div class="bar-line-grey">Number of PlayBack:<span id="noPlayBack"></span></div>
        <div class="bar-line-grey">PlayBack Rate:<span id="practiceRate"></span></div>
        </div>
         <div class="daily-acc-class Mbtm0">
       			 <div id="dailyTrendsBarChart"  class="daily-acc-bar"></div>
       			 <div id="chartContainerTrend" class="daily-acc-line" style="height: 300px;"></div>
                 <!--  <div id="dailyTrendsLineChart" class="daily-acc-line"> </div> -->
         </div>
                  
		 <input class="change_trackbtn_qus"  type="button"  value="More" onclick="showDailyTrendsPopup();"> 
	 </div>
	 
	 
	   <div  id="star-rating-graph-popup" style="display: none;"  class="daily-bar-line">
        <h5> Play Count </h5>
        	<div class="daily-acc-class_new ">
<%--         	<span id="spanProgramOne" class="program-line-grey1">first program name</span> --%>
<%--         	<span id="spanProgramOne" class="program-line-grey2">2nd program name</span> --%>
        	
        	     <ul>
        	         <li><span id="spanProgramOne" class="program-line-grey1">first program name</span></li>
        	         <li id="chart_star_rating1"></li>
        	     </ul>
        	     <ul class="secondulchart">
        	         <li><span id="spanProgramTwo" class="program-line-grey1">2nd program name</span></li>
        			 <li id="chart_star_rating2"></li>
        		</ul>
        		<ul>
        			 <li><span id="spanProgramThree" class="program-line-grey1">3rd program name</span></li>
        			 <li id="chart_star_rating3"></li>
        		</ul>
        		<ul class="secondulchart">
        			 <li><span id="spanProgramFour" class="program-line-grey1">foreth program name</span></li>
        			 <li id="chart_star_rating4"></li>
        		 </ul>
        		 
                <!-- <div id="chart_star_rating1"  class="daily-acc-bar"></div>
                 <div id="chart_star_rating2"  class="daily-acc-bar"></div>
                  <div id="chart_star_rating3"  class="daily-acc-bar"></div>
                   <div id="chart_star_rating4"  class="daily-acc-bar"></div> -->
             </div>
                   <div>
				     <input class="change_trackbtn_qus"  type="button"  value="More" onclick="showStarRatingPopUp();"> 
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

	<div class="ourStory-Popup" id="teachPracticePerDay" style="display: none;">
                 
            <div class="ur_grid ur_grid_pop">

        <table class="table table-striped table-hover table-bordered" id="sample_12">
        
         <thead>
        	<tr>
        	<th><strong>Teacher Name</strong></th>
        	<th><strong>Last Login</strong></th>
			</tr>
		</thead>
		<tbody></tbody> 
  
		</table>
       
        </div>
        
    </div>
    
    <div class="ourStory-Popup" id="teacherLoginPerMonth" style="display: none;">
                 
            <div class="ur_grid ur_grid_pop">

        <table class="table table-striped table-hover table-bordered" id="sample_3">
        
         <thead>
        	<tr>
        	<th><strong>Teacher Name</strong></th>
        	<th><strong>Email</strong></th>
        	<th><strong>School Name</strong></th>
        	<th><strong>Login Attempts</strong></th>
			</tr>
		</thead>
		<tbody></tbody> 
  
		</table>

        
        </div>
        
    </div>
    
        <div class="ourStory-Popup" id="parentLoginPerMonth" style="display: none;">
                 
            <div class="ur_grid ur_grid_pop">

        <table class="table table-striped table-hover table-bordered" id="sample_6">
        
         <thead>
        	<tr>
        	<th><strong>Parent Name</strong></th>
        	<th><strong>Email</strong></th>
			</tr>
		</thead>
		<tbody></tbody> 
  
		</table>

        
        </div>
        
    </div>
    
    
    <div class="ourStory-Popup" id="dailyTrendPerDay" style="display: none;">
               
            <div class="ur_grid ur_grid_pop">

        <table class="table table-striped table-hover table-bordered" id="sample_15">
        
         <thead>
        	<tr>
        	<th><strong>Class Name</strong></th>
        	<th><strong>Teacher Name</strong></th>
        	<th><strong>Program</strong></th>
        	<th ><strong>Daily Practice Rate</strong></th>
					</tr></thead>
				<tbody></tbody> 
  
</table>

        
        </div>
        
    </div>
  
<div class="ourStory-Popup" id=teacherTrackProgress style="display: none;">
                 
            <div class="ur_grid ur_grid_pop">

        <table class="table table-striped table-hover table-bordered" id="sample_11">
        
         <thead>
        	<tr>
        	<th><strong>Teacher Name</strong></th>
        	<th><strong>Email</strong></th>
        	<th><strong>Progress Level</strong></th>
			</tr>
		</thead>
		<tbody></tbody> 
  
		</table>

        
        </div>
        
    </div>
<div  id="parentRevenue" style="display: none;" class="daily-bar-line">
    <h5>Parent Revenue</h5>
    <div class="bar-line-grey-out">
        <%-- <div class="bar-line-grey">Number of Logins:<span id="totalLoginTeachers"></span></div> --%>
        <%-- <div class="bar-line-grey">Avg. 30 Days:<span id="avgLoginTeachers"></span></div> --%>
        </div>
        		<div class="daily-acc-class Mbtm0">
       			 <div class="daily-acc-bar" id="chart_1_parent_revenue" ></div>
       			
       		
       			<!-- <div id="chartContainerTeacher" class="daily-acc-line" style="height: 300px; "></div> -->
                <!--  <div id="place_holder" class="daily-acc-line"> </div> -->
                 </div>
                 <!--  <div>
				   <input class="change_trackbtn_qus"  type="button"  value="More" onclick="showTeacherDataPopup();"> 
				  </div> -->
        
    </div>  
    
    
     <div class="ourStory-Popup" id="parentTrackProgress" style="display: none;">
                 
            <div class="ur_grid ur_grid_pop">

        <table class="table table-striped table-hover table-bordered" id="sample_13">
        
         <thead>
        	<tr>
        	<th><strong>Parent Name</strong></th>
        	<th><strong>Email</strong></th>
			</tr>
		</thead>
		<tbody></tbody> 
  
		</table>

        
        </div>
        
    </div>
    
<!-- try code start -->

<!-- try code end  -->

<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.counterup.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/waypoints.min.js"></script> 

<%@include file="../footer.jsp" %>

<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/canvasjs.min.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script> 
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script> 
 <script src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>   
 <script src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script> 
 <script src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script> 
 <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>


<script src="<%=request.getContextPath()%>/NewStyles/jquery-easy-pie-chart/jquery.easy-pie-chart.js" type="text/javascript"></script>
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/app.js" type="text/javascript"></script> --%>
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/index.js" type="text/javascript"></script> --%>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.resize.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.pie.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.stack.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.crosshair.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.time.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.axislabels.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/charts.js"></script>   
 <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.tooltip.js"></script>  
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/select2/select2.min.js"></script> --%>
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script> --%>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script> --%> 
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jquery-ui.min.js"></script> --%>


 <script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.numberformatter-1.2.3.min.js"></script> --%>
<script src="<%=request.getContextPath()%>/NewStyles/js/charts-flotcharts.js"></script>
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jshashtable-2.1.js"></script> --%>




 <script type="text/javascript">
window.onload = function () {
	
	
}
/* 
	var limit = 366;    

	var y = 0;
	var data = []; var dataSeries = { type: "line" };
	var dataPoints = [];
	
	
	var i = -limit/2;
	var abc = '${map}';
    abc = abc.replace(/=/g , ':');
    var json = JSON.stringify(eval("(" + abc + ")"));
    var obj = $.parseJSON(json);
        $.each(obj,function(key,value){
        	console.log(key);
        	console.log(value);
      	 y=value;
		dateTime = new Date(2016, 07, 2);

		
		dateTime.setDate(dateTime.getDate() + i);
		
		dataPoints.push({
			x: dateTime,
			y: y
		});
		i++;
        });
	
	
	dataSeries.dataPoints = dataPoints;
	data.push(dataSeries);               
 */
</script> 

<script >
    jQuery(document).ready(function( $ ) {
    	
    	
    	/* 
        var data = [];
        var series = 3;
        data[0] = {
                data: '${dtoContentPlayback.audioQualityLow}',
                color : '#faa619'
            }
        data[1] = {
                data: '${dtoContentPlayback.audioQualityMedium}',
                color: '#f37020'
            }
        data[2] = {
               data: '1',
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
        }); */
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
          //console.log(abc);
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
				  if(maxTick%100!=0){
					  var inc = 100-(maxTick%100);
					  maxTick = Number(maxTick)+Number(inc);
				  }
			  }else{
				  maxTick = (maxDataVal-(maxDataVal%10)+20);
				  if(maxTick%100!=0){
					  var inc = 100-(maxTick%100);
					  maxTick = Number(maxTick)+Number(inc);
				  }
			  }
			  increment = maxTick/10;
			  var iin = 10-(increment%10);
			 increment+=iin;
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
              borderWidth: 1,
              
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
  /* $(function() {
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
}); */
  
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
				
				//$("#repeatRate").text(response.modelMap.dtoContentPlayback.repeatRate+"%");
				//$("#feedbackRate").text(response.modelMap.dtoContentPlayback.feedbackRate+"%");
				//$("#startRating").text(response.modelMap.dtoContentPlayback.starRating+" STARS");
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
		        var maximumValue=0;
		        var data = GenerateSeriesAjax();
			  	var ticks =  GenerateTicksAjax();
			  	function GenerateTicksAjax(){
			            var ticks = [];
			            for (i = 0; i <= 23; i++) {
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
			  	        	 if(parseInt(value)>parseInt(maximumValue)){
						        	maximumValue = value;
						        }
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
			           maxDataValAjax = maximumValue;
					  if(maxDataValAjax>100){
						  temp = maxDataValAjax%10;
						  if(temp == 0){
							  maxTick = maxDataValAjax;
							  if(maxTick%100!=0){
								  var inc = 100-(maxTick%100);
								  maxTick = Number(maxTick)+Number(inc);
							  }
						  }else{
							  maxTick = (maxDataValAjax-(maxDataValAjax%10)+20);
							  if(maxTick%100!=0){
								  var inc = 100-(maxTick%100);
								  maxTick = maxTick+inc;
							  }
							 // 
						  }
						  increment = maxTick/10;
						  var iin = 10-(increment%10);
						 increment+=iin;
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
			          		//max:maxDataValAjax
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
	   var url='<%=request.getContextPath()%>/superadmin/getPlayCount';
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{progId:progId},
			cache:false,
			success:function(response){
				if(response != null  && response.modelMap.audioQualityDetailList!=null){
					var audioQualityFeedabckRating='';
					audioQualityFeedabckRating+='<thead><tr>'+
					'<th><strong>Program Name</strong></th><th><strong>Track Name</strong></th>'+
					'<th><strong>Repeat Rate</strong></th><th style="display:none;"></th></tr></thead><tbody>';
					
					$.each(response.modelMap.audioQualityDetailList, function(index,value) {
						
						audioQualityFeedabckRating+='<tr>'+
						'<td><p>'+value.programName+'</p></td>'+
						'<td><p>'+value.trackName+'</p></td>';
						if(typeof value.repeatRate==='undefined'){
							audioQualityFeedabckRating+='<td><p>0%</p></td>';
						}
						else
							{
							audioQualityFeedabckRating+='<td><p>'+value.repeatRate+'%</p></td>';
							}
						
						
						audioQualityFeedabckRating+='<td style="display:none;"></td></tr>';
						
						
						
					});
		    	
					audioQualityFeedabckRating+='</tbody>';
					$("#sample_5").html(audioQualityFeedabckRating);
				    $("#sample_5").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
				    $("#sample_5").attr("style","width:100%");
				    //jQuery('#sample_5_wrapper .dataTables_info ').attr("style","display:none");
				    //jQuery('#sample_5_wrapper .dataTables_paginate ').attr("style","display:none");
				   // jQuery('#sample_5_wrapper .dataTables_length ').attr("style","display:none"); 
				    
				  /*   
				    if(response.modelMap.audioQualityDetailListSize=='0'){
				    	$("#sendStarRatingButton").hide();
				    }
				    else{
				    	$("#sendStarRatingButton").show();
				    } */
				
				 $.fancybox({
					 'minWidth':900,
					 'padding':45,
					 'minHeight':250,
				     'autoScale': true,
				     'autoDimensions': true,
				     'centerOnScroll': true,
				     'href' : '#star-rating-popup',
				     'afterClose': function() {
				    	 window.setTimeout('starRatingGraphPopup()',10);
				        }
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
						'<td><p>'+value.programName+'</p></td>';
						if(typeof value.repeatRate==='undefined'){
							audioQualityRepeatRate+='<td ><p>0</p></td></tr>';
						}
						else
							{
							audioQualityRepeatRate+='<td ><p>'+value.feedbackRate+'</p></td></tr>';
							}
						
						
					});
		    	
					audioQualityRepeatRate+='</tbody>';
		    	
			//$("#audioQualityRepeatRate").html(audioQualityRepeatRate);
			$("#sample_9").html(audioQualityRepeatRate);
		    $("#sample_9").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
		    $("#sample_9").attr("style","width:100%");
		    //jQuery('#sample_9_wrapper .dataTables_info ').attr("style","display:none");
		    //jQuery('#sample_9_wrapper .dataTables_paginate ').attr("style","display:none");
		    //jQuery('#sample_9_wrapper .dataTables_length ').attr("style","display:none");
		    
		    
		    /* if(response.modelMap.audioQualityDetailListSize=='0'){
		    	$("#sendDailyPracticeButton").hide();
		    }
		    else{
		    	$("#sendDailyPracticeButton").show();
		    } */
				
		    $.fancybox({
		    	 'minWidth':900,
				 'minHeight':250,
			     'autoScale': true,
			     'autoDimensions': true,
			     'centerOnScroll': true,
			     'href' : '#daily-practice-popup',
			     'afterClose': function() {
			    	 window.setTimeout('dailyTrendsPractice()',10);
			        }
			  });
		 	}
			}
		});
	
}
  
  function dailyTrendsPractice(){
	  
	  var progId=$("#programID").val();

	   var url='<%=request.getContextPath()%>/superadmin/getDailyPracticeTrendValue';
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{progId:progId},
			cache:false,
			success:function(response){
				if(response != null  && response.modelMap.dtoAudioQualityDetails!=null){
					var objBarGraphValues = response.modelMap.dtoAudioQualityDetails.barGraph;
					callDailyActivityBarGraph(objBarGraphValues);
					var objValue = response.modelMap.dtoAudioQualityDetails.lineGraphDailyTrend;
					
					//callDailyActivityLineGraph(objValue);
					//loadDailyActivityGraphValues("PlayBack");
					drawDailyTrandLineGraph(objValue);
					
					
					if(typeof response.modelMap.dtoAudioQualityDetails.playBackRate === 'undefined'){
						$("#practiceRate").text(0);
					}
					else
						{
						$("#practiceRate").text(response.modelMap.dtoAudioQualityDetails.playBackRate);
						}
					
					if(typeof response.modelMap.dtoAudioQualityDetails.playBackCount === 'undefined'){
						$("#noPlayBack").text(0);
					}
					else
						{
						$("#noPlayBack").text(response.modelMap.dtoAudioQualityDetails.playBackCount);
						}
					
					
					
								
		     $.fancybox({
		    	 'minWidth':900,
				 'minHeight':375,
			     'autoScale': true,
			     'autoDimensions': true,
			     'centerOnScroll': true,
			     'href' : '#daily-trends-popup'
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
						
						audioQualityFeedbackRate+='<td><p>';
						
							for(var i=1;i<=5;i++){
							
							if(i <= value.feedbackRate){
								
								audioQualityFeedbackRate+='<img src="<%=request.getContextPath()%>/NewStyles/images/star-table-yellow.png">';
							}
							else{
								audioQualityFeedbackRate+='<img src="<%=request.getContextPath()%>/NewStyles/images/star-table-grey.png">';
							}
							
						}
						
							audioQualityFeedbackRate+='</p></td></tr>';
						
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
  
  function feedbackRateGraphPopUp(){
	  var progId=$("#programID").val();
	//  $("#sample_8").dataTable().fnDestroy();
	//	$("#sample_8").html('');
	   var url='<%=request.getContextPath()%>/superadmin/getAudioQualityFeedBackRate';
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{progId:progId},
			cache:false,
			success:function(response){
				if(response != null  && response.modelMap.dtoAudioQualityDetails!=null){
					var objBarGraphValues = response.modelMap.dtoAudioQualityDetails.barGraph;
					callDailyActivityBarGraph(objBarGraphValues);
					
					var objValue = response.modelMap.dtoAudioQualityDetails.lineGraph;
					callDailyActivityLineGraph(objValue);
					loadDailyActivityGraphValues("Feedback");
					
					if(typeof response.modelMap.dtoAudioQualityDetails.feedbackRate==='undefined'){
						$("#totalFeedBachRate").text("0%");
					}
					else
						{
						$("#totalFeedBachRate").text(response.modelMap.dtoAudioQualityDetails.feedbackRate+"%");
						}
					
					
					
					
					 $.fancybox({
						  'minWidth':900,
						 'padding':45,
						 'minHeight':250, 
					     'autoScale': true,
					     'autoDimensions': true,
					     'centerOnScroll': true,
					     'href' : '#feedback-graph-popup'
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
					'<th ><strong>audio quality</strong></th></tr></thead><tbody>';
					
					$.each( response.modelMap.audioQualityDetailList, function(index,value) {
						audioQualityDetail+='<tr><td ><p>'+value.className+'</p></td><td ><p><a href="mailto:'+value.userEmail+'">'+value.teacherName+'</a></p></td>'+
						'<td ><p>'+value.programName+'</p></td>'+
						'<td><p>'+value.trackName+'</p></td>'+
						'<td ><p>'+value.audioQuality+'</p></td></tr>';
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
		  $("#sample_14").dataTable().fnDestroy();
			$("#sample_14").html('');
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
						'<th ><strong>Last Login</strong></th><th ><strong>Track Status</strong></th>'+
						'</tr></thead><tbody>';
						
						$.each( response.modelMap.dtoUsers, function(index,value) {
							audioQualityDetail+='<tr><td ><p>'+value.firstName+'</p></td>'+
							'<td ><p><a href="mailto:'+value.email+'">'+value.email+'</a></p></td>'+
							'<td ><p>'+value.loginTime+'</p></td>'+
							'<td><p>'+value.trackStatus+'</p>'+
							'</td></tr>';
						});
			    	
			    	audioQualityDetail+='</tbody>';
			    	
				$("#sample_14").html(audioQualityDetail);
			    $("#sample_14").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
			    
			   /*  
			    if(response.modelMap.audioQualityDetailListSize=='0'){
			    	$("#sendEmailAudioQualityButton").hide();
			    }
			    else{
			    	$("#sendEmailAudioQualityButton").show();
			    } */
			    
					 $.fancybox({
						 'minWidth':900,
						 'minHeight':250,
					     'autoScale': true,
					     'autoDimensions': true,
					     'centerOnScroll': true,
					     'href' : '#daily-popup',
					     'afterClose': function() {
					    	 window.setTimeout('dailyAccessPopup()',10);
					        }
					  });
		
					}
				}
			});
	}		   
	  
// 	  new code start hereee
 function starRatingGraphPopup(){
	//$('#myLoader').show();
	var progId=$("#programID").val();
	   var url='<%=request.getContextPath()%>/superadmin/getPlayCount';
		$.ajax({
			url:url,
			method:'POST',
			async :false,
			data:{progId:progId},
			cache:false,
			success:function(response){
				if(response != null  && response.modelMap.dtoAudioQualityDetails!=null){
					//alert("daas:"+progId);
					//$('#myLoader').hide();
					
					$("#spanProgramOne").text(response.modelMap.dtoAudioQualityDetails.programNameOne);
					$("#spanProgramTwo").text(response.modelMap.dtoAudioQualityDetails.programNameTwo);
					$("#spanProgramThree").text(response.modelMap.dtoAudioQualityDetails.programNameThree);
					$("#spanProgramFour").text(response.modelMap.dtoAudioQualityDetails.programNameFour);
					
					
					
					
					if( progId==0 ){
						  var objValue1 =  response.modelMap.dtoAudioQualityDetails.programOneLine;
						  var ratingOne = response.modelMap.dtoAudioQualityDetails.ratingOne;
						  callStarRatingBarCharts(objValue1,1,response.modelMap.dtoAudioQualityDetails.trackNameListOne,ratingOne);
						  var objValue2 =  response.modelMap.dtoAudioQualityDetails.programTwoLine;
						  var ratingTwo = response.modelMap.dtoAudioQualityDetails.ratingTwo;
				    	  callStarRatingBarCharts(objValue2,2,response.modelMap.dtoAudioQualityDetails.trackNameListTwo,ratingTwo);
				    	  var objValue3 =  response.modelMap.dtoAudioQualityDetails.programThreeLine;
				    	  var ratingThree = response.modelMap.dtoAudioQualityDetails.ratingThree;
				    	  callStarRatingBarCharts(objValue3,3,response.modelMap.dtoAudioQualityDetails.trackNameListThree,ratingThree);
				    	  var objValue4 =  response.modelMap.dtoAudioQualityDetails.programFourLine;
				    	  var ratingFour = response.modelMap.dtoAudioQualityDetails.ratingFour;
				    	  callStarRatingBarCharts(objValue4,4,response.modelMap.dtoAudioQualityDetails.trackNameListFour,ratingFour);
						}
					if(progId==1 ){
					  var objValue1 =  response.modelMap.dtoAudioQualityDetails.programOneLine;
					  var ratingOne = response.modelMap.dtoAudioQualityDetails.ratingOne;
					  callStarRatingBarCharts(objValue1,1,response.modelMap.dtoAudioQualityDetails.trackNameListOne,ratingOne);
					  $('#chart_star_rating2').empty();
					  $('#chart_star_rating3').empty();
					  $('#chart_star_rating4').empty();
					}
					if(progId==2 ){
			          var objValue2 =  response.modelMap.dtoAudioQualityDetails.programTwoLine;
			          var ratingTwo = response.modelMap.dtoAudioQualityDetails.ratingTwo;
			    	  callStarRatingBarCharts(objValue2,2,response.modelMap.dtoAudioQualityDetails.trackNameListTwo,ratingTwo);
			    	  $('#chart_star_rating1').empty();
					  $('#chart_star_rating3').empty();
					  $('#chart_star_rating4').empty();
					}
			    	 if(progId==3 ){
			           var objValue3 =  response.modelMap.dtoAudioQualityDetails.programThreeLine;
			           var ratingThree = response.modelMap.dtoAudioQualityDetails.ratingThree;
				       callStarRatingBarCharts(objValue3,3,response.modelMap.dtoAudioQualityDetails.trackNameListThree,ratingThree);
				       $('#chart_star_rating1').empty();
					   $('#chart_star_rating2').empty();
					   $('#chart_star_rating4').empty();
			    	 }	
				     if(progId==4 ){
				        var objValue4 =  response.modelMap.dtoAudioQualityDetails.programFourLine;
				        var ratingFour = response.modelMap.dtoAudioQualityDetails.ratingFour;
					    callStarRatingBarCharts(objValue4,4,response.modelMap.dtoAudioQualityDetails.trackNameListFour,ratingFour);
					    $('#chart_star_rating1').empty();
						$('#chart_star_rating2').empty();
						$('#chart_star_rating3').empty();
				     }
			        
					 var id = "#star-rating-graph-popup"; 
					        $.fancybox({
								 'minWidth':800,
								 'padding':15,
								 'minHeight':150,
								 'maxHeight':330,
							     'autoScale': true,
							     'autoDimensions': true,
							     'centerOnScroll': true,
							     'href' : '#star-rating-graph-popup',
							     
							  });
					        
					     // 'maxWidth':1100,
					       // $('#chart_star_rating').UseTooltipGraph(id); 

					       // callEllipse();
				}
			}
		}); 
// 		#star-rating-graph-popup	.fancybox-wrap{}
 }
 
 /* $("#star-rating-graph-popup").on('mouseenter', function() {
	    var $this = $(this);
	    if(this.offsetWidth < this.scrollWidth && !$this.attr('title')) {
	         $this.tooltip({
	              title: $this.text(),
	              placement: "bottom"
	         });
	         $this.tooltip('show');
	    }
	   // alert('end ');
	}); */
 
/*  $(function() {
	 alert('mee');
     $(".pie-table-text1").tooltip({
            open: function (event, ui) {
                  ui.tooltip.css("word-break", "break-all");
              },
         position: {
           my: "top",
           at: "top+15"
         }
       });
}); */
 
  function dailyAccessPopup(){
	  var progId=$("#programID").val();
	  
	  
		   var url='<%=request.getContextPath()%>/superadmin/getDailyPracticeDetails';
			$.ajax({
				url:url,
				method:'GET',
				async :false,
				data:{progId:progId},
				cache:false,
				success:function(response){
					var totalLogin =0;
					if(response != null  && response.modelMap.dtoUsers!=null){
						   
						$('#totalLoginSpan').text(response.modelMap.noOfLogins);   
						var objValue = response.modelMap.dtoTeacher.lineGraph;
						
						drawLineGraph(objValue);
						//loadDailyActivityGraphValues("Teachers");
			//callCanvasLineChart(objValue);
						  
						
						
						var objBarGraphValues = response.modelMap.dtoTeacher.barGraph;
						callDailyActivityBarGraph(objBarGraphValues);
						
						 	
						 $.fancybox({
							 'minWidth':900,
							 'minHeight':375,
						     'autoScale': true,
						     'autoDimensions': true,
						     'centerOnScroll': true,
						     'href' : '#daily-access-popup'
						  });
			
					}
				}
			});
	}  
		
  </script>
  
<!--  new code starts hereee  -->
    <script>
function loadDailyActivityGraphValues(tipLabel){
        //******* 2012 Gold Price Chart
      //alert("linegrah:"+lineGraphVal);
        var year = new Date().getFullYear();
        
        var data1 = "["+lineGraphVal+"];";
        var arr = jQuery.makeArray( lineGraphVal );
        //alert("arrrr"+arr);
        var dataset = [
            { label: tipLabel, data: arr, yaxis: 2}
        ];
        //alert("dataset::"+dataset);
        var options = {
            series: {
                lines: {
                    show: true
                },
                points: {
                    radius: 3,
                    fill: true,
                    show: true
                }
            },
            xaxis: {
                mode: "time",
                tickSize: [1, "month"],
                tickLength: 0,
                axisLabel: year,
                axisLabelUseCanvas: false,
                axisLabelFontSizePixels: 12,
                axisLabelFontFamily: 'Verdana, Arial',
                axisLabelPadding: 10
            },
            yaxes: [{
            }
          ],
             legend: {
                noColumns: 0,
                position: "nw"
            }, 
            grid: {
                hoverable: true,
                borderWidth: 2,
                borderColor: "#A0A0A0",
                backgroundColor: { colors: ["#ffffff", "#EDF5FF"] }
            },
            colors: ["#02A451"]
        };
 
 
        function gd(year, month, day) {
            return new Date(year, month, day).getTime();
        }
        
        $.plot($("#dailyTrendsLineChart"), dataset, options);
        var popId = "#daily-trends-popup";
        $("#dailyTrendsLineChart").UseTooltip(popId);
        
        $.plot($("#place_holder"), dataset, options);
        var popId = "#daily-access-popup";
        $("#place_holder").UseTooltip(popId);
        
        $.plot($("#feedbackLineGraph"), dataset, options);
        var popId = "#feedback-graph-popup";
        $("#feedbackLineGraph").UseTooltip(popId);
 
}

function callDailyActivityBarGraph(objValue){
	var progId=$("#programID").val();
	 var maxDataValAjax = 0;
     var maximumValue=0;
     //alert();
     var data = GenerateSeriesAjax2(objValue);
    // alert("genajax data:"+data);
	  var ticks =  GenerateTicksAjax2();
	  //alert("gen ticks:"+ticks);
	  	function GenerateTicksAjax2(){
	            var ticks = [];
	             var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun",
	                              "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
	                            ]; 
	         	var today = new Date();
	          	var year = today.getFullYear();
	          	var month = today.getMonth();
	          	var date = today.getDate();
	          	
	          	for(var i=1; i<=30; i++){
	          	      var day=new Date(year, month - 1, date + i);
	          	      var days=day.getDate();
	          	    ticks.push([i, days+" "+monthNames[day.getMonth()]]);
	          	}
	            
	            
	           
	            return ticks;
	  	  }
	        function GenerateSeriesAjax2(objValue) {
	            var data = [];
	         	var today = new Date();
	          	var year = today.getFullYear();
	          	var month = today.getMonth();
	          	var date = today.getDate();
	          	
	          	      
	            
	            var chartContent = objValue;
	            var status=0;
	            for (i = 1; i <= 30; i++) {
	            	var day=new Date(year, month - 1, date + i);
	          	      var days=day.getDate();
	  	          $.each(chartContent,function(key,value){
	  	        	if(parseInt(value)>parseInt(maximumValue)){
			        	maximumValue = value;
			        }
	  	        	  if(days==key){
	  	        		  status = value;
	  	        	  }
	  	          });
	  	        data.push([i,status]);
		        if(status>maxDataValAjax){
		        	maxDataValAjax = status;
		        }
		        status=0;
		     
	            }

	            return data;
	        }
	  	  var yTicksAjax =  GenerateYTicksAjax2();
	  	  //alert("ytickajax:"+yTicksAjax);
		  function GenerateYTicksAjax2(){
	          var maxTick = 10;
	          //alert("pmax:"+maxDataValAjax +" :new max "+maximumValue);
	          maxDataValAjax = maximumValue;
	          var temp = 0;
	          var increment = 1;
			  if(maxDataValAjax>10){
				  temp = maxDataValAjax%10;
				  if(temp == 0){
					  maxTick = maxDataValAjax;
				  }else{
					  maxTick = (maxDataValAjax-(maxDataValAjax%10)+20);
					  if(maxTick%100!=0){
						  var inc = 100-(maxTick%100);
						  maxTick = maxTick+inc;
					  }
				  }
				  increment = maxTick/10;
				  var iin = 10-(increment%10);
				 increment+=iin;
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
	                barWidth: 0.8,
	                lineWidth: 0.5, // in pixels
	                shadowSize: 0,
	                align: 'left'
	            },
	            legend: {
	                labelBoxBorderColor: "none",
	                position: "nw"
	                
	            },
	            grid: {
	                tickColor: "#eee",
	                borderColor: "#eee",
	                borderWidth: 1 ,
	                hoverable: true,
	                clickable:true
	            },
	            yaxis:{
	          		ticks: yTicksAjax
	          		//max:10
	          	},
	            xaxis: {       
	          	  ticks: ticks
	          	}
	          	
	        };

	        if ($('#chart_1_1_2').size() !== 0) {
	            $.plot($("#chart_1_1_2"), [{
	                data: data,
	                lines: {
	                    lineWidth: 1,
	                },
	                shadowSize: 0
	            }], options);
	        }
	        
	        $("#chart_1_1_2").bind("plotclick", function (event, pos, item) {
	      	  $("#sample_12").dataTable().fnDestroy();
				$("#sample_12").html('');
	               if (item) {
	                   var tickClicked = item.series.xaxis.ticks[item.dataIndex].label;         
	                   
	            	   var url='<%=request.getContextPath()%>/superadmin/getDailyPracticeDetailsByDay';
	           		$.ajax({
	           			url:url,
	           			method:'GET',
	           			async :false,
	           			data:{dailyDate:tickClicked,progId:progId},
	           			cache:false,
	           			success:function(response){
	           				
	           				if(response != null  && response.modelMap.dtoTeacherList!=null){
	        					var teacherParcticeDay='';
	        					teacherParcticeDay+='<thead><tr><th><strong>Teacher Name</strong></th>'+
	        					'<th ><strong>Last Login</strong></th>'+
	        					'</tr></thead><tbody>';
	        					
	        					$.each( response.modelMap.dtoTeacherList, function(index,value) {
	        						teacherParcticeDay+='<tr><td ><p>'+value.teacherName+'</p></td>'+
	        						'<td ><p>'+value.loginTime+'</p></td>'+
	        						'</tr>';
	        					});
	        		    	
	        					teacherParcticeDay+='</tbody>';
	        		    	
	        			$("#sample_12").html(teacherParcticeDay);
	        		    $("#sample_12").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
	        		   
	        		    
	        				 $.fancybox({
	        					 'minWidth':900,
	        					 'padding':45,
	        					 'minHeight':250,
	        				     'autoScale': true,
	        				     'autoDimensions': true,
	        				     'centerOnScroll': true,
	        				     'href' : '#teachPracticePerDay'
	        				  });
	        	
	        				}
	           				
	           				
	           				
	           				
	           				
	           			}
	           		});
	                   
	                   
	               }
	                });

	        
	        
	        var id = "#daily-access-popup";
	       // $("#chart_1_1_2").UseTooltipGraph(id);
	        //alert("p size:"+$('#chart_1_1').size());
	        
	        
	        if ($('#dailyTrendsBarChart').size() !== 0) {
	            $.plot($("#dailyTrendsBarChart"), [{
	                data: data,
	                lines: {
	                    lineWidth: 1,
	                },
	                shadowSize: 0
	            }], options);
	        }
	        
	        
	        $("#dailyTrendsBarChart").bind("plotclick", function (event, pos, item) {
		      	  $("#sample_15").dataTable().fnDestroy();
					$("#sample_15").html('');
		               if (item) {
		                   var tickClicked = item.series.xaxis.ticks[item.dataIndex].label;         
		                   
		            	   var url='<%=request.getContextPath()%>/superadmin/getDailyTrendsByDay';
		           		$.ajax({
		           			url:url,
		           			method:'GET',
		           			async :false,
		           			data:{dailyDate:tickClicked,progId:progId},
		           			cache:false,
		           			success:function(response){
		           				
		           				if(response != null  && response.modelMap.audioQualityDetailList!=null){
		        					var audioQualityRepeatRate='';
		        					audioQualityRepeatRate+='<thead><tr><th><strong>Class Name</strong></th><th><strong>Teacher Name</strong></th>'+
		        					'<th><strong>Program</strong></th>'+
		        					'<th><strong>Daily Practice Rate</strong></th></tr></thead><tbody>';
		        					
		        					$.each( response.modelMap.audioQualityDetailList, function(index,value) {
		        						
		        						audioQualityRepeatRate+='<tr><td ><p>'+value.className+'</p></td><td><p><a href="mailto:'+value.userEmail+'">'+value.teacherName+'</a></p></td>'+
		        						'<td><p>'+value.programName+'</p></td>';
		        						if(typeof value.repeatRate==='undefined'){
		        							audioQualityRepeatRate+='<td ><p>0</p></td></tr>';
		        						}
		        						else
		        							{
		        							audioQualityRepeatRate+='<td ><p>'+value.feedbackRate+'</p></td></tr>';
		        							}
		        						
		        						
		        					});
		        		    	
		        					audioQualityRepeatRate+='</tbody>';
		        		    	
		        			//$("#audioQualityRepeatRate").html(audioQualityRepeatRate);
		        			$("#sample_15").html(audioQualityRepeatRate);
		        		    $("#sample_15").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
		        		   
		        		    
		        				 $.fancybox({
		        					 'minWidth':900,
		        					 'padding':45,
		        					 'minHeight':250,
		        				     'autoScale': true,
		        				     'autoDimensions': true,
		        				     'centerOnScroll': true,
		        				     'href' : '#dailyTrendPerDay'
		        				  });
		        	
		        				}
		           				
		           			}
		           		});
		                   
		                   
		               }
		                });
	        
	        
	        
	        
	        
	        
	        var id = "#daily-trends-popup";
	       // $("#dailyTrendsBarChart").UseTooltipGraph(id);
	        
	        
	        if ($('#feedbackBarGraph').size() !== 0) {
	            $.plot($("#feedbackBarGraph"), [{
	                data: data,
	                lines: {
	                    lineWidth: 1,
	                },
	                shadowSize: 0
	            }], options);
	        }
	        var id = "#feedback-graph-popup";
	       // $("#feedbackBarGraph").UseTooltipGraph(id);
	       
}

function callStarRatingBarCharts(objValue,count,trackList,ratingList){
	 var maxDataValAjax = 0;
	  var maximumValue=0;
     var data = GenerateSeriesAjax2(objValue);
    // alert("data:"+data);
	  	var ticks =  GenerateTicksAjax2();
	  	function GenerateTicksAjax2(){
	            var ticks = [];
	            
	            for (i = 1; i <= 10; i++) {
	          	  ticks.push([i, i]);
	            } 
	            return ticks;
	  	  }
	        function GenerateSeriesAjax2(objValue) {
	            var data = [];
	            var chartContent = objValue;
	            var status=0;
	            for (i = 1; i <= 10; i++) {
	            	if(typeof chartContent == 'undefined'){
	            		status =0;
	            		//alert("no ");
	 	            }else{
	  	              $.each(chartContent,function(key,value){
	  	            	if(parseInt(value)>parseInt(maximumValue)){
				        	maximumValue = value;
				        }
	  	        	  if(i==key){
	  	        		  status = value;
	  	        	  }
	  	             });
	               }
	            	//alert("sattus:"+status);
	  	        data.push([status,i]);
		        if(status>maxDataValAjax){
		        	maxDataValAjax = status;
		        	// 1234567
		         }
		         status=0;
	            }
	            return data;
	        }
	  	  var yTicksAjax =  GenerateYTicksAjax2();
			  function GenerateYTicksAjax2(){
	          var maxTick = 100;
	          maxDataValAjax = maximumValue;
	          var temp = 0;
	          var increment =10 ;
			  if(maxDataValAjax>=100){
				  temp = maxDataValAjax%10;
				  //alert("temp:"+temp);
				  if(temp == 0){
					  maxTick = maxDataValAjax;
					 // increment = 10;
				  }else{
					  maxTick = (maxDataValAjax-(maxDataValAjax%10));
					  //increment = 10;
					  //alert("max tick :"+maxTick);
				  }
				 increment = maxTick/10;
	          }
			  var ticks = [];
	          for (i = 0; i <= maxTick; i+=increment) {
	        	 // alert(i);
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
	                lineWidth: 0.5, // in pixels
	                shadowSize: 0,
	                align: 'center',
	                horizontal: true
	            },legend: {
	                noColumns: 0,
	                labelBoxBorderColor: "#858585",
	                position: "ne"
	            },
	            grid: {
	                tickColor: "#eee",
	                borderColor: "#eee",
	                borderWidth: 2,
	                hoverable: true,
	            },
	            yaxis:{
	          		ticks: ticks, 
	          		max:5
	          	},
	            xaxis: {       
	          	  ticks: yTicksAjax,
	          	  max: 100
	          	}
	        };
		   //alert("count:"+count);
		  // console.log(ratingList);
		  // alert("rating:"+ratingList);
		   
		   var maxTrack = trackList.length;
		   if(maxTrack>4){
			   maxTrack =4;
		   }
		   var maxRating = ratingList.length;
		   if(maxRating>4){
			   maxRating =4;
		   }
		   
		   if(count==1){
			  // alert('1');
		   if ($('#chart_star_rating1').size() !== 0) {
	            $.plot($("#chart_star_rating1"), [{
	                data: data,
	                lines: {
	                    lineWidth: 1,
	                },
	                shadowSize: 0
	            }], options);
	        }
		   var pid = "#star-rating-graph-popup";
		   var did = "#chart_star_rating1";
		   $("#chart_star_rating1").UseTooltipGraph(did);

		   clearStarOneLabel();
		  
		   for(var ic=0; ic<maxTrack;ic++){
			      $("#chart_star_rating1 .flot-text .x1Axis").children().eq(ic).addClass('pie-table-text'+(ic+1));
				  $("#chart_star_rating1 .flot-text .x1Axis").children().eq(ic).text(trackList[ic]);
				  $("#chart_star_rating1 .flot-text .x1Axis").children().eq(ic).attr('title',trackList[ic]);
				
				  var rating = ratingList[ic];
			    	//alert("asdas:"+rating);
			    	for(var i=1;i<=rating;i++){
				    	 $("#chart_star_rating1 .flot-text .x1Axis").children().eq(ic).append("  <img src='<%=request.getContextPath()%>/NewStyles/images/star-yellow.png' width=15px height=15px />");
			    	}
			    	for(var j=rating+1;j<=5;j++){
				    	 $("#chart_star_rating1 .flot-text .x1Axis").children().eq(ic).append("  <img src='<%=request.getContextPath()%>/NewStyles/images/star-grey.png' width=15px height=15px />");
			    	}
		   
		   } 
		   
		   $("#chart_star_rating1 .flot-text .x1Axis").children().eq(5).addClass('pie-table-ytext5');
		   $("#chart_star_rating1 .flot-text .x1Axis").children().eq(5).text('Most Played Tracks');
		  
		   
		   }
		   if(count==2){
			  // alert('2');
			   if ($('#chart_star_rating2').size() !== 0) {
		            $.plot($("#chart_star_rating2"), [{
		                data: data,
		                lines: {
		                    lineWidth: 1,
		                },
		                shadowSize: 0
		            }], options);
		        }
			   var pid = "#star-rating-graph-popup";
			   var did = "#chart_star_rating2";
			   $("#chart_star_rating2").UseTooltipGraph(did);
			   
			   clearStarTwoLabel();
			   
			   for(var ic=0; ic<maxTrack;ic++){
				      $("#chart_star_rating2 .flot-text .x1Axis").children().eq(ic).addClass('pie-table-text'+(ic+1));
					  $("#chart_star_rating2 .flot-text .x1Axis").children().eq(ic).text(trackList[ic]);
					  $("#chart_star_rating2 .flot-text .x1Axis").children().eq(ic).attr('title',trackList[ic]);
			  
					  var rating = ratingList[ic];
				    	//alert("asdas:"+rating);
				    	for(var i=1;i<=rating;i++){
					    	 $("#chart_star_rating2 .flot-text .x1Axis").children().eq(ic).append("  <img src='<%=request.getContextPath()%>/NewStyles/images/star-yellow.png' width=15px height=15px />");
				    	}
				    	for(var j=rating+1;j<=5;j++){
					    	 $("#chart_star_rating2 .flot-text .x1Axis").children().eq(ic).append("  <img src='<%=request.getContextPath()%>/NewStyles/images/star-grey.png' width=15px height=15px />");
				    	}
			   
			   }
			   $("#chart_star_rating2 .flot-text .x1Axis").children().eq(5).addClass('pie-table-ytext5');
			   $("#chart_star_rating2 .flot-text .x1Axis").children().eq(5).text('Most Played Tracks');
			 
		
			   }
		   if(count==3){
			   //alert('3');
			   if ($('#chart_star_rating3').size() !== 0) {
		            $.plot($("#chart_star_rating3"), [{
		                data: data,
		                lines: {
		                    lineWidth: 1,
		                },
		                shadowSize: 0
		            }], options);
		        }
			   
			   var pid = "#star-rating-graph-popup";
			   var did = "#chart_star_rating3";
			   $("#chart_star_rating3").UseTooltipGraph(did);
			   
			   clearStarThreeLabel();
			   for(var ic=0; ic<maxTrack;ic++){
				      $("#chart_star_rating3 .flot-text .x1Axis").children().eq(ic).addClass('pie-table-text'+(ic+1));
					  $("#chart_star_rating3 .flot-text .x1Axis").children().eq(ic).text(trackList[ic]);
					  $("#chart_star_rating3 .flot-text .x1Axis").children().eq(ic).attr('title',trackList[ic]);
			   
					  var rating = ratingList[ic];
				    	//alert("asdas:"+rating);
				    	for(var i=1;i<=rating;i++){
					    	 $("#chart_star_rating3 .flot-text .x1Axis").children().eq(ic).append("  <img src='<%=request.getContextPath()%>/NewStyles/images/star-yellow.png' width=15px height=15px />");
				    	}
				    	for(var j=rating+1;j<=5;j++){
					    	 $("#chart_star_rating3 .flot-text .x1Axis").children().eq(ic).append("  <img src='<%=request.getContextPath()%>/NewStyles/images/star-grey.png' width=15px height=15px />");
				    	}
			   } 
			   
			   $("#chart_star_rating3 .flot-text .x1Axis").children().eq(5).addClass('pie-table-ytext5');
			   $("#chart_star_rating3 .flot-text .x1Axis").children().eq(5).text('Most Played Tracks');
			 

			   }
		   if(count==4){
			  // alert('4');
			   if ($('#chart_star_rating4').size() !== 0) {
		            $.plot($("#chart_star_rating4"), [{
		                data: data,
		                lines: {
		                    lineWidth: 1,
		                },
		                shadowSize: 0
		            }], options);
		        }
			  
			   var pid = "#star-rating-graph-popup";
			   var did = "#chart_star_rating4";
			   $("#chart_star_rating4").UseTooltipGraph(did);
			   
			   clearStarFourLabel();
			   for(var ic=0; ic<maxTrack;ic++){
				      $("#chart_star_rating4 .flot-text .x1Axis").children().eq(ic).addClass('pie-table-text'+(ic+1));
					  $("#chart_star_rating4 .flot-text .x1Axis").children().eq(ic).text(trackList[ic]);
					  $("#chart_star_rating4 .flot-text .x1Axis").children().eq(ic).attr('title',trackList[ic]);
			    
					  //$("#chart_star_rating4 .flot-text .x1Axis").children().eq(ic).append("     ");
					  var rating = ratingList[ic];
				    	//alert("asdas:"+rating);
				    	for(var i=1;i<=rating;i++){
					    	 $("#chart_star_rating4 .flot-text .x1Axis").children().eq(ic).append("  <img src='<%=request.getContextPath()%>/NewStyles/images/star-yellow.png' width=15px height=15px />");
				    	}
				    	for(var j=rating+1;j<=5;j++){
					    	 $("#chart_star_rating4 .flot-text .x1Axis").children().eq(ic).append("  <img src='<%=request.getContextPath()%>/NewStyles/images/star-grey.png' width=15px height=15px />");
				    	}
			   }
			   
			   $("#chart_star_rating4 .flot-text .x1Axis").children().eq(5).addClass('pie-table-ytext5');
			   $("#chart_star_rating4 .flot-text .x1Axis").children().eq(5).text('Most Played Tracks');
			   
			  
			   }
		  	
}


 </script>
 
<%--  <script type="text/javascript">
  $(function() {
         $( ".pie-table-text1" ).tooltip({
                open: function (event, ui) {
                      ui.tooltip.css("word-break", "break-all");
                  },
             position: {
               my: "top",
               at: "top+15"
             }
           });
  });
  </script> --%>
 
  
 <script type="text/javascript">
 
var previousPoint = null, previousLabel = null;
var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];

$.fn.UseTooltip = function (popUpId) {
    $(this).bind("plothover", function (event, pos, item) {
        if (item) {
            if ((previousLabel != item.series.label) || (previousPoint != item.dataIndex)) {
                previousPoint = item.dataIndex;
                previousLabel = item.series.label;
                $("#tooltip").remove();
				//alert(previousLabel);
                var x = item.datapoint[0];
                var y = item.datapoint[1];

                var color = item.series.color;
                var month = new Date(x).getMonth();

                //console.log(item);
				//alert(obj);
                if (item.seriesIndex == 0) {
                    showTooltip(popUpId,item.pageX,
                    item.pageY,
                    color,
                    "<strong>" + item.series.label + "</strong><br>" + monthNames[month] + " : <strong>" + y + "</strong>");
                } else {
                    showTooltip(popUpId,item.pageX,
                    item.pageY,
                    color,
                    "<strong>" + item.series.label + "</strong><br>" + monthNames[month] + " : <strong>" + y + "</strong>");
                }
            }
        } else {
            $("#tooltip").remove();
            previousPoint = null;
        }
    });
};

var previousPoint = null, previousLabel = null;
$.fn.UseTooltipGraph = function (popUpId) {
	//alert(popUpId);
	   $(popUpId).bind("plothover", function (event, pos, item) {
           if (item) {
        	   
               if ((previousLabel != item.series.label) ||
                  (previousPoint != item.dataIndex)) {
                   previousPoint = item.dataIndex;
                   previousLabel = item.series.label;
                   $("#tooltip").remove();

                   var x = item.datapoint[0];
                   var y = item.datapoint[1];

                   var color = item.series.color;
                   var trackname ;
                   var ytick = item.series.yaxis.ticks[y].label;
                   var xtick =item.series.xaxis.ticks[x].label;
                  // alert($("#chart_star_rating2 .flot-text .x1Axis").children().eq(0).attr("title"));
                 //  alert($("#chart_star_rating2 .flot-text .x1Axis").children().eq(0).text());
                 
                   if(ytick==2 && xtick!=0){
                	   trackname = $(popUpId+" .flot-text .x1Axis").children().eq(0).text();
                	   showTooltip(popUpId,item.pageX,
                               item.pageY,
                               color,
                               "<strong>" +trackname+ " Played  " + "</strong><br>" +item.series.xaxis.ticks[x].label + "  <strong>" + " Times"  + "</strong> ");
                   }
                   if(ytick==3 && xtick!=0 ){
                	   trackname =  $(popUpId+" .flot-text .x1Axis").children().eq(1).text();
                	   showTooltip(popUpId,item.pageX,
                               item.pageY,
                               color,
                               "<strong>" +trackname+ " Played  " + "</strong><br>" +item.series.xaxis.ticks[x].label + "  <strong>" + " Times"  + "</strong> ");
                   }
                   if(ytick==4 && xtick!=0){
                	   trackname =  $(popUpId+" .flot-text .x1Axis").children().eq(2).text();
                	   showTooltip(popUpId,item.pageX,
                               item.pageY,
                               color,
                               "<strong>" +trackname+ " Played  " + "</strong><br>" +item.series.xaxis.ticks[x].label + "  <strong>" + " Times"  + "</strong> ");
                   }
                   if(ytick==5 && xtick!=0){
                	   trackname =  $(popUpId+" .flot-text .x1Axis").children().eq(3).text();
                	   showTooltip(popUpId,item.pageX,
                               item.pageY,
                               color,
                               "<strong>" +trackname+ " Played  " + "</strong><br>" +item.series.xaxis.ticks[x].label + "  <strong>" + " Times"  + "</strong> ");
                   }
                   
                  // alert(trackList[3]);
					
               }
           } else {
               $("#tooltip").remove();
               previousPoint = null;
           }
       });
};

function showTooltip(popUpId,x, y, color, contents) {
	//alert("x:"+x+",y:"+y);
	var ytop=0;
	var xleft =0;
	if(popUpId == "#chart_star_rating1"){
		ytop =345 ;
		xleft =290 ;
	}
	if(popUpId == "#chart_star_rating2"){
		ytop =345 ;
		xleft =770 ;
	}
	if(popUpId == "#chart_star_rating3"){
		ytop =240 ;
		xleft =290 ;
	}
	if(popUpId == "#chart_star_rating4"){
		ytop =240 ;
		xleft =770 ;
	}
	
    $('<div id="tooltip">' + contents + '</div>').css({
        position: 'absolute',
        display: 'none',
        top: y -ytop,
        left: x - xleft ,
        border: '2px solid ' + color,
        padding: '3px',
        'font-size': '9px',
        'line-height':'12px',
        'border-radius': '5px',
        'background-color': '#fff',
        'font-family': 'Verdana, Arial, Helvetica, Tahoma, sans-serif',
        opacity: 0.9
    }).appendTo(popUpId).fadeIn(200);
}

/* $('#star-rating-graph-popup').on( 'DOMMouseScroll mousewheel', function ( event ) {
	  if( event.originalEvent.detail > 0 || event.originalEvent.wheelDelta < 0 ) { //alternative options for wheelData: wheelDeltaX & wheelDeltaY
	    //scroll down
	    console.log('Down');
	  //  $('.fancybox-inner').animate({
	   // 	  scrollTop: $('.fancybox-inner').get(0).scrollHeight+100}, 0);
	   // scrollToBottom('star-rating-graph-popup');
	   // $('#star-rating-graph-popup').scrollBottom($('#star-rating-graph-popup').height())
	  } else {
	    //scroll up
	    console.log('Up');
	    $('.fancybox-inner').animate({
	    	  scrollTop: $('.fancybox-inner').offset().top - 20}, 0);
	   // $("#star-rating-graph-popup").animate({ scrollTop: $("#star-rating-graph-popup")[0].scrollHeight }, 1000);
	  }
	  //prevent page fom scrolling
	 // return false;
	}); */


</script>

<script>
var lineGraphVal=[];
function callDailyActivityLineGraph(ObjValue){
	var year = new Date().getFullYear();
    	$("#header").sticky({ topSpacing: 0 });
    	 var maxDataVal = 0;
    	var data1 = GenerateSeries2(ObjValue);
    	//alert("1:data1::"+data1);
    	lineGraphVal=data1;
    	   function gd1(year, month, day) {
            return new Date(year, month, day).getTime();
        }
    	 function GenerateSeries2(ObjValue)  {
            var data1 = [];
			var j = 0;
		
             $.each(ObjValue,function(key,value){
  	        	  j++;
  	          });
             //alert("j = "+j);
             for (i = 0; i < j; i++) {
   	          $.each(ObjValue,function(key,value){
   	        	  if(i==(key-1)){
   	        		  status = value;
   	        	  }
   	          });
   	        
   	       var val = gd1(year,i,1);
   	        data1.push([val,status]);
   	        if(status>maxDataVal){
   	        	maxDataVal = status;
   	        }
   	        status=0;
             }

             return data1;
         }

}
    
    function showDailyActivityPopup(){
    	dailyStatusPopup();
    }
    function showStarRatingPopUp(){
    	starRatingPopup();
    }
    
    function showDailyTrendsPopup(){
    	dailyPractice();
    }
    function showFeedBackPopup(){
    	feedbackRate();
    }
    function callEllipse(){
    	 $("#star-rating-graph-popup").on('mouseenter','.pie-table-text1', function() {
    		 alert("in pop");
    		    var $this = $(this);
    		    if(this.offsetWidth < this.scrollWidth && !$this.attr('title')) {
    		         $this.tooltip({
    		              title: $this.text(),
    		              placement: "bottom"
    		         });
    		         $this.tooltip('show');
    		    }
    		});
    }
    function clearStarOneLabel(){
    	for(var x=0;x<10;x++){
			  $("#chart_star_rating1 .flot-text .x1Axis").children().eq(x).text("");
    	}
    	for(var y=0;y<5;y++){
			  $("#chart_star_rating1 .flot-text .y1Axis").children().eq(y).text("");
  	      }
    }
    function clearStarTwoLabel(){
    	for(var x=0;x<10;x++){
			  $("#chart_star_rating2 .flot-text .x1Axis").children().eq(x).text("");
    	}
    	for(var y=0;y<5;y++){
			  $("#chart_star_rating2 .flot-text .y1Axis").children().eq(y).text("");
	      }
    	
    }
    function clearStarThreeLabel(){
    	for(var x=0;x<10;x++){
			  $("#chart_star_rating3 .flot-text .x1Axis").children().eq(x).text("");
    	}
    	for(var y=0;y<5;y++){
			  $("#chart_star_rating3 .flot-text .y1Axis").children().eq(y).text("");
	      }
    	
    }
    function clearStarFourLabel(){
    	for(var x=0;x<10;x++){
			  $("#chart_star_rating4 .flot-text .x1Axis").children().eq(x).text("");
    	}
    	for(var y=0;y<5;y++){
			  $("#chart_star_rating4 .flot-text .y1Axis").children().eq(y).text("");
	      }
    }

    function drawLineGraph(map){

				var limit = 366;    

				var y = 0;
				var data = []; var dataSeries = { type: "line" };
				var dataPoints = [];
				
				
				var i = -limit/2;
				var abc = map;
			    //abc = abc.replace(/=/g , ':');
			   // var json = JSON.stringify(eval("(" + abc + ")"));
			    //var obj = $.parseJSON(json);
			        $.each(abc,function(key,value){
			      	 y=value;
					dateTime = new Date(2016, 07, 2);

					
					dateTime.setDate(dateTime.getDate() + i);
					
					dataPoints.push({
						x: dateTime,
						y: y
					});
					i++;
			        });
				
				
				dataSeries.dataPoints = dataPoints;
				data.push(dataSeries); 
				
				var chart = new CanvasJS.Chart("chartContainer",
						{
							zoomEnabled: true,
							animationEnabled: true,
							title:{
								text: "Login users vs Registered users per day"
							},
							axisX :{
								labelAngle: -30,
								labelFontSize:12
							},
							axisY :{
								includeZero:false,
								labelFontSize:12
							},
							data: data  
						});
				
				chart.render();
    }
    
    function drawDailyTrandLineGraph(map){

		var limit = 366;    

		var y = 0;
		var data = []; var dataSeries = { type: "line" };
		var dataPoints = [];
		
		
		var i = -limit/2;
		var abc = map;
	    //abc = abc.replace(/=/g , ':');
	   // var json = JSON.stringify(eval("(" + abc + ")"));
	    //var obj = $.parseJSON(json);
	        $.each(abc,function(key,value){
	      	 y=value;
			dateTime = new Date(2016, 07, 2);

			
			dateTime.setDate(dateTime.getDate() + i);
			
			dataPoints.push({
				x: dateTime,
				y: y
			});
			i++;
	        });
		
		
		dataSeries.dataPoints = dataPoints;
		data.push(dataSeries); 
		
		var chart = new CanvasJS.Chart("chartContainerTrend",
				{
					zoomEnabled: true,
					animationEnabled: true,
					title:{
						text: "Percentage Track Played"
					},
					axisX :{
						labelAngle: -30,
						labelFontSize:12
					},
					axisY :{
						includeZero:false,
						labelFontSize:12
					},
					data: data  
				});
		
		chart.render();
}
$('.admin-loader').css({
	    "width": $(document).width(), 
	    "height": $(document).height(),
});
 
 
    $(document ).ajaxStart(function() {
   	 $("#myLoader").show();
   	//$('#signUpdata').prop('disabled', true);
   	
   	});
       $( document ).ajaxComplete(function() {
       	$("#myLoader").hide();
       //	$('#signUpdata').prop('disabled', false);
   	}); 
       
       $('#radioButtonContainerId input:radio').click(function() {
    	    if($(this).val() === 'all') {
    	    	location.reload();
    	    }else if ($(this).val() === 'currentMonth') {
    	    	filterTrackBarGraph('currentMonth');
    	    	
    	    }else if ($(this).val() === 'febOnwards') {
    	    	filterTrackBarGraph('febOnwards');
    	    	
    	    } 
    	  });
       
       function filterTrackBarGraph(filter){
    	   var url='<%=request.getContextPath()%>/superadmin/getFilterTrackDetailBarGraph';
			$.ajax({
				url:url,
				method:'POST',
				async :false,
				data:{filterType:filter},
				cache:false,
				success:function(response){
					if(response != null  && response.modelMap.dtoContentPlaybackFilter!=null){
						var objBarGraphValues = response.modelMap.dtoContentPlaybackFilter.mapValues;
					    console.log(objBarGraphValues);
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

				          var abc = objBarGraphValues;
				         // abc = abc.replace(/=/g , ':');
				         // var json = JSON.stringify(eval("(" + abc + ")"));
				         // var obj = $.parseJSON(json);
				          var status=0;
				          for (i = 1; i <= 24; i++) {
					          $.each(abc,function(key,value){
					        	  if(i==key){
					        		  status = value;
					        	  }
					          });
					        data.push([i,status]);
					       
					        if(parseInt(status)>maxDataVal){
					        	maxDataVal = status;
					        }
					       // alert("stsatt:"+status+" , max:"+maxDataVal);
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
								  if(maxTick%100!=0){
									  var inc = 100-(maxTick%100);
									  maxTick = Number(maxTick)+Number(inc);
								  }
							  }else{
								  maxTick = (maxDataVal-(maxDataVal%10)+20);
								  if(maxTick%100!=0){
									  var inc = 100-(maxTick%100);
									  maxTick = Number(maxTick)+Number(inc);
								  }
							  }
							  increment = maxTick/10;
							  var iin = 10-(increment%10);
							 increment+=iin;
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
				              borderWidth: 1,
				              
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
					
				}
				}
    	   
           });
       }
       
 function teacherLastMonthStats(){
	 
	 var url='<%=request.getContextPath()%>/superadmin/getTeacherLoginGraphDetails';
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			cache:false,
			success:function(response){
				
				if(response != null  && response.modelMap.dtoTeacher!=null){
					if(typeof response.modelMap.dtoTeacher.userCount==="undefined"){
						//$('#totalLoginTeachers').text("0");
						$('#avgLoginTeachers').text("0");
					}
					else
						{
						
						
					
					//$('#totalLoginTeachers').text(response.modelMap.dtoTeacher.userCount);
					
					var avgLoginTeachers=Number(response.modelMap.dtoTeacher.userCount)/30;
					
					
					if(avgLoginTeachers<1){
						avgLoginTeachers=1;
					}
					
					$('#avgLoginTeachers').text(parseInt(avgLoginTeachers));
						}
					var objBarGraphValues = response.modelMap.dtoTeacher.barGraph;
					callTeacherBarGraph(objBarGraphValues);
					
					var objValue = response.modelMap.dtoTeacher.lineGraph;
					drawTeacherLineGraph(objValue);
					 	
					 $.fancybox({
						 'minWidth':900,
						 'minHeight':375,
					     'autoScale': true,
					     'autoDimensions': true,
					     'centerOnScroll': true,
					     'href' : '#teacher-stats-popup'
					  });
		
				}
			}
		});
	 
 }    
 
 function drawTeacherLineGraph(map){

		var limit = 366;    

		var y = 0;
		var data = []; var dataSeries = { type: "line" };
		var dataPoints = [];
		
		
		var i = -limit/2;
		var abc = map;
	    //abc = abc.replace(/=/g , ':');
	   // var json = JSON.stringify(eval("(" + abc + ")"));
	    //var obj = $.parseJSON(json);
	    
	  	var today = new Date();
       	var year = today.getFullYear();
       	var month = today.getMonth();
       	var date = today.getDate();
       	
      
       	/* for(var i=1; i<=30; i++){
       	      var day=new Date(year, month - 1, date + i);
       	      var days=day.getDate();
       	    ticks.push([i, days+" "+monthNames[day.getMonth()]]);
       	} */
	    
	        $.each(abc,function(key,value){
	        	 var day=new Date(year, month+5, date);
	      	 y=value;
			//dateTime = new Date(new Date().getFullYear(), new Date()., 1);

			console.log(day);
			day.setDate(day.getDate() + i);
			
			dataPoints.push({
				x: day,
				y: y
			});
			i++;
	        });
		
		
		dataSeries.dataPoints = dataPoints;
		data.push(dataSeries); 
		
		var chart = new CanvasJS.Chart("chartContainerTeacher",
				{
					zoomEnabled: false,
					animationEnabled: true,
					title:{
						text: "Registered Teachers."
					},
					axisX :{
						labelAngle: -30,
						labelFontSize:12
					},
					axisY :{
						includeZero:false,
						labelFontSize:12
					},
					data: data  
				});
		
		chart.render();
}

 function callTeacherBarGraph(objValue){
 	 var maxDataValAjax = 0;
      var maximumValue=0;
      //alert();
      var data = GenerateSeriesAjax2(objValue);
     // alert("genajax data:"+data);
 	  var ticks =  GenerateTicksAjax2();
 	  //alert("gen ticks:"+ticks);
 	  	function GenerateTicksAjax2(){
 	            var ticks = [];
 	             var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun",
 	                              "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
 	                            ]; 
 	         	var today = new Date();
 	          	var year = today.getFullYear();
 	          	var month = today.getMonth();
 	          	var date = today.getDate();
 	          	
 	          	for(var i=1; i<=30; i++){
 	          	      var day=new Date(year, month - 1, date + i);
 	          	      var days=day.getDate();
 	          	    ticks.push([i, days+" "+monthNames[day.getMonth()]]);
 	          	}
 	            
 	            
 	           
 	            return ticks;
 	  	  }
 	        function GenerateSeriesAjax2(objValue) {
 	            var data = [];
 	         	var today = new Date();
 	          	var year = today.getFullYear();
 	          	var month = today.getMonth();
 	          	var date = today.getDate();
 	          	
 	          	      
 	            
 	            var chartContent = objValue;
 	            var status=0;
 	            for (i = 1; i <= 30; i++) {
 	            	var day=new Date(year, month - 1, date + i);
 	          	      var days=day.getDate();
 	  	          $.each(chartContent,function(key,value){
 	  	        	if(parseInt(value)>parseInt(maximumValue)){
 			        	maximumValue = value;
 			        }
 	  	        	  if(days==key){
 	  	        		  status = value;
 	  	        	  }
 	  	          });
 	  	        data.push([i,status]);
 		        if(status>maxDataValAjax){
 		        	maxDataValAjax = status;
 		        }
 		        status=0;
 		     
 	            }

 	            return data;
 	        }
 	  	  var yTicksAjax =  GenerateYTicksAjax2();
 	  	  //alert("ytickajax:"+yTicksAjax);
 		  function GenerateYTicksAjax2(){
 	          var maxTick = 10;
 	          //alert("pmax:"+maxDataValAjax +" :new max "+maximumValue);
 	          maxDataValAjax = maximumValue;
 	          var temp = 0;
 	          var increment = 1;
 			  if(maxDataValAjax>10){
 				  temp = maxDataValAjax%10;
 				  if(temp == 0){
 					  maxTick = maxDataValAjax;
 				  }else{
 					  maxTick = (maxDataValAjax-(maxDataValAjax%10)+20);
 					  if(maxTick%100!=0){
 						  var inc = 100-(maxTick%100);
 						  maxTick = maxTick+inc;
 					  }
 				  }
 				 increment = maxTick/10;
 				 var iin = 10-(increment%10);
 				increment+=iin;
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
 	                barWidth: 0.8,
 	                lineWidth: 0.5, // in pixels
 	                shadowSize: 0,
 	                align: 'left'
 	            },
 	            legend: {
 	                labelBoxBorderColor: "none",
 	                position: "nw"
 	            },
 	            grid: {
 	                tickColor: "#eee",
 	                borderColor: "#eee",
 	                borderWidth: 1 ,
 	                hoverable: true,
 	                clickable:true
 	            },
 	            yaxis:{
 	          		ticks: yTicksAjax,
 	          		//max:10
 	          	},
 	            xaxis: {       
 	          	  ticks: ticks
 	          	}
 	          	
 	        };

 	        if ($('#chart_1_teacher').size() !== 0) {
 	            $.plot($("#chart_1_teacher"), [{
 	                data: data,
 	                lines: {
 	                    lineWidth: 1,
 	                },
 	                shadowSize: 0
 	            }], options);
 	        }
 	        
 	        $("#chart_1_teacher").bind("plotclick", function (event, pos, item) {
 	      	  $("#sample_3").dataTable().fnDestroy();
 				$("#sample_3").html('');
 	               if (item) {
 	                   var tickClicked = item.series.xaxis.ticks[item.dataIndex].label;         
 	                   
 	            	   var url='<%=request.getContextPath()%>/superadmin/getTeacherDetailsInLastMonth';
 	           		$.ajax({
 	           			url:url,
 	           			method:'GET',
 	           			async :false,
 	           			data:{dailyDate:tickClicked},
 	           			cache:false,
 	           			success:function(response){
 	           				
 	           				if(response != null  && response.modelMap.dtoTeacherList!=null){
 	        					var teacherParcticeDay='';
 	        					teacherParcticeDay+='<thead><tr><th><strong>Teacher Name</strong></th>'+
 	        					'<th ><strong>Email</strong></th>'+
 	        					'<th ><strong>School Name</strong></th>'+
 	        					'<th ><strong>Login Attempts</strong></th>'+
 	        					'</tr></thead><tbody>';
 	        					
 	        					$.each( response.modelMap.dtoTeacherList, function(index,value) {
 	        						teacherParcticeDay+='<tr><td ><p>'+value.teacherName+'</p></td>'+
 	        						'<td ><p>'+value.email+'</p></td>'+
 	        						'<td ><p>'+value.schoolName+'</p></td>'+
 	        						'<td ><p>'+value.loginAttempts+'</p></td>'+
 	        						'</tr>';
 	        					});
 	        		    	
 	        					teacherParcticeDay+='</tbody>';
 	        		    	
 	        			$("#sample_3").html(teacherParcticeDay);
 	        		    $("#sample_3").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
 	        		   
 	        		    
 	        				 $.fancybox({
 	        					 'minWidth':900,
 	        					 'padding':45,
 	        					 'minHeight':250,
 	        				     'autoScale': true,
 	        				     'autoDimensions': true,
 	        				     'centerOnScroll': true,
 	        				     'href' : '#teacherLoginPerMonth'
 	        				  });
 	        	
 	        				}
 	           				
 	           			}
 	           		});
 	                   
 	               }
 	                });
 	        
 	        
 }
 

 /* progress code start here */
 
 function teacherProgressMonthlyStats(){
	 
	 var url='<%=request.getContextPath()%>/superadmin/getTeacherProgressGraphDetails';
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			cache:false,
			success:function(response){
				
				if(response != null  && response.modelMap.dtoTrack!=null){
										
					if(typeof response.modelMap.dtoTrack.dailyPractice === "undefined"){
						$("#dailyPracticeTeacher").text("0");
					}
					else
						{
						$("#dailyPracticeTeacher").text(response.modelMap.dtoTrack.dailyPractice);
						}
					
			
					var objBarGraphValues = response.modelMap.dtoTrack.barGraph;
					callTeacherProgressBarGraph(objBarGraphValues);
					
					var objValue = response.modelMap.dtoTrack.lineGraph;
					drawTeacherProgressLineGraph(objValue);
					 	
					 $.fancybox({
						 'minWidth':900,
						 'minHeight':375,
					     'autoScale': true,
					     'autoDimensions': true,
					     'centerOnScroll': true,
					     'href' : '#teacher-progress-stats-popup'
					  });
		
				}
			}
		});
	 
 }    
 
 function drawTeacherProgressLineGraph(map){

		var limit = 366;    

		var y = 0;
		var data = []; var dataSeries = { type: "line" };
		var dataPoints = [];
		
		
		var i = -limit/2;
		var abc = map;
	    //abc = abc.replace(/=/g , ':');
	   // var json = JSON.stringify(eval("(" + abc + ")"));
	    //var obj = $.parseJSON(json);
	    
	  	var today = new Date();
       	var year = today.getFullYear();
       	var month = today.getMonth();
       	var date = today.getDate();
       	
      
       	/* for(var i=1; i<=30; i++){
       	      var day=new Date(year, month - 1, date + i);
       	      var days=day.getDate();
       	    ticks.push([i, days+" "+monthNames[day.getMonth()]]);
       	} */
	    
	        $.each(abc,function(key,value){
	        	 var day=new Date(year, month+5, date-1);
	      	 y=value;
			//dateTime = new Date(new Date().getFullYear(), new Date()., 1);

			console.log(day);
			day.setDate(day.getDate() + i);
			
			dataPoints.push({
				x: day,
				y: y
			});
			i++;
	        });
		
		
		dataSeries.dataPoints = dataPoints;
		data.push(dataSeries); 
		
		var chart = new CanvasJS.Chart("chartContainerTeacherProgress",
				{
					zoomEnabled: false,
					animationEnabled: true,
					title:{
						text: "Track Played By Users"
					},
					axisX :{
						labelAngle: -30,
						labelFontSize:12
					},
					axisY :{
						includeZero:false,
						labelFontSize:12
					},
					data: data  
				});
		
		chart.render();
}

 
 function callTeacherProgressBarGraph(objValue){
 	 var maxDataValAjax = 0;
      var maximumValue=0;
      //alert();
      var data = GenerateSeriesAjax2(objValue);
     // alert("genajax data:"+data);
 	  var ticks =  GenerateTicksAjax2();
 	  //alert("gen ticks:"+ticks);
 	  	function GenerateTicksAjax2(){
 	            var ticks = [];
 	             var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun",
 	                              "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
 	                            ]; 
 	         	var today = new Date();
 	          	var year = today.getFullYear();
 	          	var month = today.getMonth();
 	          	var date = today.getDate();
 	          	
 	          	for(var i=1; i<=30; i++){
 	          	      var day=new Date(year, month - 1, date + i);
 	          	      var days=day.getDate();
 	          	    ticks.push([i, days+" "+monthNames[day.getMonth()]]);
 	          	}
 	            
 	            
 	           
 	            return ticks;
 	  	  }
 	        function GenerateSeriesAjax2(objValue) {
 	            var data = [];
 	         	var today = new Date();
 	          	var year = today.getFullYear();
 	          	var month = today.getMonth();
 	          	var date = today.getDate();
 	          	
 	          	      
 	            
 	            var chartContent = objValue;
 	            var status=0;
 	            for (i = 1; i <= 30; i++) {
 	            	var day=new Date(year, month - 1, date + i);
 	          	      var days=day.getDate();
 	  	          $.each(chartContent,function(key,value){
 	  	        	if(parseInt(value)>parseInt(maximumValue)){
 			        	maximumValue = value;
 			        }
 	  	        	  if(days==key){
 	  	        		  status = value;
 	  	        	  }
 	  	          });
 	  	        data.push([i,status]);
 		        if(status>maxDataValAjax){
 		        	maxDataValAjax = status;
 		        }
 		        status=0;
 		     
 	            }

 	            return data;
 	        }
 	  	  var yTicksAjax =  GenerateYTicksAjax2();
 	  	  //alert("ytickajax:"+yTicksAjax);
 		  function GenerateYTicksAjax2(){
 	          var maxTick = 10;
 	          //alert("pmax:"+maxDataValAjax +" :new max "+maximumValue);
 	          maxDataValAjax = maximumValue;
 	          var temp = 0;
 	          var increment = 1;
 			  if(maxDataValAjax>10){
 				  temp = maxDataValAjax%10;
 				  if(temp == 0){
 					  maxTick = maxDataValAjax;
 				  }else{
 					  maxTick = (maxDataValAjax-(maxDataValAjax%10)+20);
 					  if(maxTick%100!=0){
 						  var inc = 100-(maxTick%100);
 						  maxTick = maxTick+inc;
 					  }
 				  }
 				 increment = maxTick/10;
 				 var iin = 10-(increment%10);
					increment+=iin;
 				  
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
 	                barWidth: 0.8,
 	                lineWidth: 0.5, // in pixels
 	                shadowSize: 0,
 	                align: 'left'
 	            },
 	            legend: {
 	                labelBoxBorderColor: "none",
 	                position: "nw"
 	            },
 	            grid: {
 	                tickColor: "#eee",
 	                borderColor: "#eee",
 	                borderWidth: 1 ,
 	                hoverable: true,
 	                clickable:true
 	            },
 	            yaxis:{
 	          		ticks: yTicksAjax,
 	          		//max:10
 	          	},
 	            xaxis: {       
 	          	  ticks: ticks
 	          	}
 	          	
 	        };

 	        if ($('#chart_1_teacherProgress').size() !== 0) {
 	            $.plot($("#chart_1_teacherProgress"), [{
 	                data: data,
 	                lines: {
 	                    lineWidth: 1,
 	                },
 	                shadowSize: 0
 	            }], options);
 	        }
 	        
 	        $("#chart_1_teacherProgress").bind("plotclick", function (event, pos, item) {
 	      	  $("#sample_11").dataTable().fnDestroy();
 				$("#sample_11").html('');
 	               if (item) {
 	                   var tickClicked = item.series.xaxis.ticks[item.dataIndex].label;         
 	                   
 	            	   var url='<%=request.getContextPath()%>/superadmin/getTeacherTrackPlayedProgress';
 	           		$.ajax({
 	           			url:url,
 	           			method:'GET',
 	           			async :false,
 	           			data:{dailyDate:tickClicked},
 	           			cache:false,
 	           			success:function(response){
 	           				
 	           				if(response != null  && response.modelMap.dtoTeacherList!=null){
 	        					var teacherParcticeDay='';
 	        					teacherParcticeDay+='<thead><tr><th><strong>Teacher Name</strong></th>'+
 	        					'<th ><strong>Email</strong></th>'+
 	        					'<th ><strong>Progress Level</strong></th>'+
 	        					'</tr></thead><tbody>';
 	        					
 	        					$.each( response.modelMap.dtoTeacherList, function(index,value) {
 	        						teacherParcticeDay+='<tr><td ><p>'+value.teacherName+'</p></td>'+
 	        						'<td ><p>'+value.email+'</p></td>'+
 	        						'<td ><p>'+value.completeStatus+'</p></td>'+
 	        						'</tr>';
 	        					});
 	        		    	
 	        					teacherParcticeDay+='</tbody>';
 	        		    	
 	        			$("#sample_11").html(teacherParcticeDay);
 	        		    $("#sample_11").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
 	        		   
 	        		    
 	        				 $.fancybox({
 	        					 'minWidth':900,
 	        					 'padding':45,
 	        					 'minHeight':250,
 	        				     'autoScale': true,
 	        				     'autoDimensions': true,
 	        				     'centerOnScroll': true,
 	        				     'href' : '#teacherTrackProgress'
 	        				  });
 	        	
 	        				}
 	           				
 	           			}
 	           		});
 	                   
 	               }
 	                });
 	        
 	        
 }
  
 
//  ===========================  parent progress 

 function parentProgressMonthlyStats(){
	 var url='<%=request.getContextPath()%>/superadmin/getParentProgressGraphDetails';
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			cache:false,
			success:function(response){
				var totalLogin =0;
				if(response != null  && response.modelMap.dtoParent!=null){
					if(typeof response.modelMap.dtoParent.dailyPractice === "undefined"){
						$("#parentDailyPractice").text("0");
					}
					else
						{
						$("#parentDailyPractice").text(response.modelMap.dtoParent.dailyPractice);
						}
					var objBarGraphValues = response.modelMap.dtoParent.barGraph;
					callParentProgressBarGraph(objBarGraphValues);
					
					var objValue = response.modelMap.dtoParent.lineGraph;
					drawParentProgressLineGraph(objValue);
					 	
					 $.fancybox({
						 'minWidth':900,
						 'minHeight':375,
					     'autoScale': true,
					     'autoDimensions': true,
					     'centerOnScroll': true,
					     'href' : '#parent-progress-stats-popup'
					  });
		
				}
			}
		});
	 
 }  
 

 function drawParentProgressLineGraph(map){

		var limit = 366;    

		var y = 0;
		var data = []; var dataSeries = { type: "line" };
		var dataPoints = [];
		
		
		var i = -limit/2;
		var abc = map;
	    //abc = abc.replace(/=/g , ':');
	   // var json = JSON.stringify(eval("(" + abc + ")"));
	    //var obj = $.parseJSON(json);
	    
	  	var today = new Date();
       	var year = today.getFullYear();
       	var month = today.getMonth();
       	var date = today.getDate();
       	
      
       	/* for(var i=1; i<=30; i++){
       	      var day=new Date(year, month - 1, date + i);
       	      var days=day.getDate();
       	    ticks.push([i, days+" "+monthNames[day.getMonth()]]);
       	} */
	    
	        $.each(abc,function(key,value){
	        	 var day=new Date(year, month+5, date-1);
	      	 y=value;
			//dateTime = new Date(new Date().getFullYear(), new Date()., 1);

			console.log(day);
			day.setDate(day.getDate() + i);
			
			dataPoints.push({
				x: day,
				y: y
			});
			i++;
	        });
		
		
		dataSeries.dataPoints = dataPoints;
		data.push(dataSeries); 
		
		var chart = new CanvasJS.Chart("chartContainerParentProgress",
				{
					zoomEnabled: false,
					animationEnabled: true,
					title:{
						text: "Login users vs Registered users per day"
					},
					axisX :{
						labelAngle: -30,
						labelFontSize:12
					},
					axisY :{
						includeZero:false,
						labelFontSize:12
					},
					data: data  
				});
		
		chart.render();
}

 
 function callParentProgressBarGraph(objValue){
 	 var maxDataValAjax = 0;
      var maximumValue=0;
      //alert();
      var data = GenerateSeriesAjax2(objValue);
     // alert("genajax data:"+data);
 	  var ticks =  GenerateTicksAjax2();
 	  //alert("gen ticks:"+ticks);
 	  	function GenerateTicksAjax2(){
 	            var ticks = [];
 	             var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun",
 	                              "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
 	                            ]; 
 	         	var today = new Date();
 	          	var year = today.getFullYear();
 	          	var month = today.getMonth();
 	          	var date = today.getDate();
 	          	
 	          	for(var i=1; i<=30; i++){
 	          	      var day=new Date(year, month - 1, date + i);
 	          	      var days=day.getDate();
 	          	    ticks.push([i, days+" "+monthNames[day.getMonth()]]);
 	          	}
 	            
 	            
 	           
 	            return ticks;
 	  	  }
 	        function GenerateSeriesAjax2(objValue) {
 	            var data = [];
 	         	var today = new Date();
 	          	var year = today.getFullYear();
 	          	var month = today.getMonth();
 	          	var date = today.getDate();
 	          	
 	          	      
 	            
 	            var chartContent = objValue;
 	            var status=0;
 	            for (i = 1; i <= 30; i++) {
 	            	var day=new Date(year, month - 1, date + i);
 	          	      var days=day.getDate();
 	  	          $.each(chartContent,function(key,value){
 	  	        	if(parseInt(value)>parseInt(maximumValue)){
 			        	maximumValue = value;
 			        }
 	  	        	  if(days==key){
 	  	        		  status = value;
 	  	        	  }
 	  	          });
 	  	        data.push([i,status]);
 		        if(status>maxDataValAjax){
 		        	maxDataValAjax = status;
 		        }
 		        status=0;
 		     
 	            }

 	            return data;
 	        }
 	  	  var yTicksAjax =  GenerateYTicksAjax2();
 	  	  //alert("ytickajax:"+yTicksAjax);
 		  function GenerateYTicksAjax2(){
 	          var maxTick = 10;
 	          //alert("pmax:"+maxDataValAjax +" :new max "+maximumValue);
 	          maxDataValAjax = maximumValue;
 	          var temp = 0;
 	          var increment = 1;
 			  if(maxDataValAjax>10){
 				  temp = maxDataValAjax%10;
 				  if(temp == 0){
 					  maxTick = maxDataValAjax;
 				  }else{
 					  maxTick = (maxDataValAjax-(maxDataValAjax%10)+20);
 					  if(maxTick%100!=0){
 						  var inc = 100-(maxTick%100);
 						  maxTick = maxTick+inc;
 					  }
 				  }
 				 increment = maxTick/10;
 				 var iin = 10-(increment%10);
 				increment+=iin;
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
 	                barWidth: 0.8,
 	                lineWidth: 0.5, // in pixels
 	                shadowSize: 0,
 	                align: 'left'
 	            },
 	            legend: {
 	                labelBoxBorderColor: "none",
 	                position: "nw"
 	            },
 	            grid: {
 	                tickColor: "#eee",
 	                borderColor: "#eee",
 	                borderWidth: 1 ,
 	                hoverable: true,
 	                clickable:true
 	            },
 	            yaxis:{
 	          		ticks: yTicksAjax,
 	          		//max:10
 	          	},
 	            xaxis: {       
 	          	  ticks: ticks
 	          	}
 	          	
 	        };

 	        if ($('#chart_1_parentProgress').size() !== 0) {
 	            $.plot($("#chart_1_parentProgress"), [{
 	                data: data,
 	                lines: {
 	                    lineWidth: 1,
 	                },
 	                shadowSize: 0
 	            }], options);
 	        }
 	        
 	        $("#chart_1_parentProgress").bind("plotclick", function (event, pos, item) {
 	      	  $("#sample_13").dataTable().fnDestroy();
 				$("#sample_13").html('');
 	               if (item) {
 	                   var tickClicked = item.series.xaxis.ticks[item.dataIndex].label;         
 	                   
 	                   
 	            	   var url='<%=request.getContextPath()%>/superadmin/getParentTrackDetails';
 	           		$.ajax({
 	           			url:url,
 	           			method:'GET',
 	           			async :false,
 	           			data:{dailyDate:tickClicked},
 	           			cache:false,
 	           			success:function(response){
 	           				
 	           				if(response != null  && response.modelMap.dtoParentList!=null){
 	        					var teacherParcticeDay='';
 	        					teacherParcticeDay+='<thead><tr><th><strong>Parent Name</strong></th>'+
 	        					'<th ><strong>Email</strong></th>'+
 	        					'</tr></thead><tbody>';
 	        					
 	        					$.each( response.modelMap.dtoParentList, function(index,value) {
 	        						teacherParcticeDay+='<tr><td ><p>'+value.title+'</p></td>'+
 	        						'<td ><p>'+value.contactEmail+'</p></td>'+
 	        						'</tr>';
 	        					});
 	        		    	
 	        					teacherParcticeDay+='</tbody>';
 	        		    	
 	        			$("#sample_13").html(teacherParcticeDay);
 	        		    $("#sample_13").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
 	        		   
 	        		    
 	        				 $.fancybox({
 	        					 'minWidth':900,
 	        					 'padding':45,
 	        					 'minHeight':250,
 	        				     'autoScale': true,
 	        				     'autoDimensions': true,
 	        				     'centerOnScroll': true,
 	        				     'href' : '#parentTrackProgress'
 	        				  });
 	        	
 	        				}
 	           				
 	           			}
 	           		});
 	                   
 	               }
 	                });
 	        

 	        
 }

 /* progress code ends here */
 
 function drawParentLineGraph(map){

		var limit = 366;    

		var y = 0;
		var data = []; var dataSeries = { type: "line" };
		var dataPoints = [];
		
		
		var i = -limit/2;
		var abc = map;
	    //abc = abc.replace(/=/g , ':');
	   // var json = JSON.stringify(eval("(" + abc + ")"));
	    //var obj = $.parseJSON(json);
	    
	  	var today = new Date();
       	var year = today.getFullYear();
       	var month = today.getMonth();
       	var date = today.getDate();
       	
      
       	/* for(var i=1; i<=30; i++){
       	      var day=new Date(year, month - 1, date + i);
       	      var days=day.getDate();
       	    ticks.push([i, days+" "+monthNames[day.getMonth()]]);
       	} */
       	
       	
	    
	        $.each(abc,function(key,value){
	        	 var day=new Date(year, month+5, date);
	      	 y=value;
			//dateTime = new Date(new Date().getFullYear(), new Date()., 1);

			day.setDate(day.getDate() + i);
			
					
			dataPoints.push({
				x: day,
				y: y
			});
			i++;
	        });
		
		
		dataSeries.dataPoints = dataPoints;
		data.push(dataSeries); 
		
		var chart = new CanvasJS.Chart("chartContainerParent",
				{
					zoomEnabled: false,
					animationEnabled: true,
					title:{
						text: "Registered Parents"
					},
					
					axisX :{
						labelAngle: -30,
						labelFontSize: 12
					},
					axisY :{
						includeZero:false,
						labelFontSize: 12
					},
					data: data  
				});
		
		chart.render();
}
 function parentLastMonthStats(){
	 var url='<%=request.getContextPath()%>/superadmin/getParentLoginGraphDetails';
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			cache:false,
			success:function(response){
				var totalLogin =0;
				if(response != null  && response.modelMap.dtoParent!=null){
					if(typeof response.modelMap.dtoParent.userCount==="undefined"){
						//$('#totalLoginParent').text("0");
						$('#avgLoginParent').text("0");
					}
					else
						{
					//$('#totalLoginParent').text(response.modelMap.dtoParent.userCount);
					
					var avgLoginParent=Number(response.modelMap.dtoParent.userCount)/30;
					
					
					if(avgLoginParent<1){
						avgLoginParent=1;
					}
					
					$('#avgLoginParent').text(parseInt(avgLoginParent));
						}
					var objBarGraphValues = response.modelMap.dtoParent.barGraph;
					callParentBarGraph(objBarGraphValues);
					
					var objValue = response.modelMap.dtoParent.lineGraph;
					drawParentLineGraph(objValue);
					 	
					 $.fancybox({
						 'minWidth':900,
						 'minHeight':375,
					     'autoScale': true,
					     'autoDimensions': true,
					     'centerOnScroll': true,
					     'href' : '#parent-stats-popup'
					  });
		
				}
			}
		});
	 
 }  
 
 function callParentBarGraph(objValue){
 	 var maxDataValAjax = 0;
      var maximumValue=0;
      //alert();
      var data = GenerateSeriesAjax2(objValue);
     // alert("genajax data:"+data);
 	  var ticks =  GenerateTicksAjax2();
 	  //alert("gen ticks:"+ticks);
 	  	function GenerateTicksAjax2(){
 	            var ticks = [];
 	             var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun",
 	                              "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
 	                            ]; 
 	         	var today = new Date();
 	          	var year = today.getFullYear();
 	          	var month = today.getMonth();
 	          	var date = today.getDate();
 	          	
 	          	for(var i=1; i<=30; i++){
 	          	      var day=new Date(year, month - 1, date + i);
 	          	      var days=day.getDate();
 	          	    ticks.push([i, days+" "+monthNames[day.getMonth()]]);
 	          	}
 	            
 	            
 	           
 	            return ticks;
 	  	  }
 	        function GenerateSeriesAjax2(objValue) {
 	            var data = [];
 	         	var today = new Date();
 	          	var year = today.getFullYear();
 	          	var month = today.getMonth();
 	          	var date = today.getDate();
 	          	
 	          	      
 	            
 	            var chartContent = objValue;
 	            var status=0;
 	            for (i = 1; i <= 30; i++) {
 	            	var day=new Date(year, month - 1, date + i);
 	          	      var days=day.getDate();
 	  	          $.each(chartContent,function(key,value){
 	  	        	if(parseInt(value)>parseInt(maximumValue)){
 			        	maximumValue = value;
 			        }
 	  	        	  if(days==key){
 	  	        		  status = value;
 	  	        	  }
 	  	          });
 	  	        data.push([i,status]);
 		        if(status>maxDataValAjax){
 		        	maxDataValAjax = status;
 		        }
 		        status=0;
 		     
 	            }

 	            return data;
 	        }
 	  	  var yTicksAjax =  GenerateYTicksAjax2();
 	  	  //alert("ytickajax:"+yTicksAjax);
 		  function GenerateYTicksAjax2(){
 	          var maxTick = 10;
 	          //alert("pmax:"+maxDataValAjax +" :new max "+maximumValue);
 	          maxDataValAjax = maximumValue;
 	          var temp = 0;
 	          var increment = 1;
 			  if(maxDataValAjax>10){
 				  temp = maxDataValAjax%10;
 				  if(temp == 0){
 					  maxTick = maxDataValAjax;
 				  }else{
 					  maxTick = (maxDataValAjax-(maxDataValAjax%10)+20);
 					  if(maxTick%100!=0){
 						  var inc = 100-(maxTick%100);
 						  maxTick = maxTick+inc;
 					  }
 				  }
 				 increment = maxTick/10;
 				 var iin = 10-(increment%10);
					increment+=iin;
 				 
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
 	                barWidth: 0.8,
 	                lineWidth: 0.5, // in pixels
 	                shadowSize: 0,
 	                align: 'left'
 	            },
 	            legend: {
 	                labelBoxBorderColor: "none",
 	                position: "nw"
 	            },
 	            grid: {
 	                tickColor: "#eee",
 	                borderColor: "#eee",
 	                borderWidth: 1 ,
 	                hoverable: true,
 	                clickable:true
 	            },
 	            yaxis:{
 	          		ticks: yTicksAjax,
 	          		//max:10
 	          	},
 	            xaxis: {       
 	          	  ticks: ticks
 	          	}
 	          	
 	        };

 	        if ($('#chart_1_parent').size() !== 0) {
 	            $.plot($("#chart_1_parent"), [{
 	                data: data,
 	                lines: {
 	                    lineWidth: 1,
 	                },
 	                shadowSize: 0
 	            }], options);
 	        }
 	        
 	        $("#chart_1_parent").bind("plotclick", function (event, pos, item) {
 	      	  $("#sample_6").dataTable().fnDestroy();
 				$("#sample_6").html('');
 	               if (item) {
 	                   var tickClicked = item.series.xaxis.ticks[item.dataIndex].label;         
 	                   
 	                   
 	            	   var url='<%=request.getContextPath()%>/superadmin/getParentDetailsInLastMonth';
 	           		$.ajax({
 	           			url:url,
 	           			method:'GET',
 	           			async :false,
 	           			data:{dailyDate:tickClicked},
 	           			cache:false,
 	           			success:function(response){
 	           				
 	           				if(response != null  && response.modelMap.dtoTeacherList!=null){
 	        					var teacherParcticeDay='';
 	        					teacherParcticeDay+='<thead><tr><th><strong>Parent Name</strong></th>'+
 	        					'<th ><strong>Email</strong></th>'+
 	        					'</tr></thead><tbody>';
 	        					
 	        					$.each( response.modelMap.dtoTeacherList, function(index,value) {
 	        						teacherParcticeDay+='<tr><td ><p>'+value.teacherName+'</p></td>'+
 	        						'<td ><p>'+value.email+'</p></td>'+
 	        						'</tr>';
 	        					});
 	        		    	
 	        					teacherParcticeDay+='</tbody>';
 	        		    	
 	        			$("#sample_6").html(teacherParcticeDay);
 	        		    $("#sample_6").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
 	        		   
 	        		    
 	        				 $.fancybox({
 	        					 'minWidth':900,
 	        					 'padding':45,
 	        					 'minHeight':250,
 	        				     'autoScale': true,
 	        				     'autoDimensions': true,
 	        				     'centerOnScroll': true,
 	        				     'href' : '#parentLoginPerMonth'
 	        				  });
 	        	
 	        				}
 	           				
 	           			}
 	           		});
 	                   
 	               }
 	                });
 	        

 	        
 }
 
 function schoolRegisteredStats(){
	 
	 
	 var url='<%=request.getContextPath()%>/superadmin/getPrincipalVsTeacherGrapghDetails';
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			cache:false,
			success:function(response){
				if(response != null  && response.modelMap.dtocount!=null){
					console.log(response.modelMap.dtocount.barMap1);
					console.log(response.modelMap.dtocount.barMap2);
					
					
					  $.each(response.modelMap.dtocount.barMap2,function(key,value){
						  value= parseInt(value);
						  key= parseInt(key);
						  console.log(key);
						 if(key==1){
							 x1=value;
						 }
						 if(key==2){
							 x2=value;
						 }
						 if(key==3){
							 x3=value;
						 }
						 if(key==4){
							 x4=value;
						 }
						 if(key==5){
							 x5=value;
						 }
						 if(key==6){
							 x6=value;
						 }
						 if(key==7){
							 x7=value;
						 }
						 if(key==8){
							 x8=value;
						 }
						 if(key==9){
							 x9=value;
						 }
						 if(key==10){
							 x10=value;
						 }
						 if(key==11){
							 x11=value;
						 }
						 if(key==12){
							 x12=value;
						 }
					  });
					  
					  $.each(response.modelMap.dtocount.barMap1,function(key,value){
						  value= parseInt(value);
						  key= parseInt(key);
						 if(key==1){
							 y1=value;
						 }
						 if(key==2){
							 y2=value;
						 }
						 if(key==3){
							 y3=value;
						 }
						 if(key==4){
							 y4=value;
						 }
						 if(key==5){
							 y5=value;
						 }
						 if(key==6){
							 y6=value;
						 }
						 if(key==7){
							 y7=value;
						 }
						 if(key==8){
							 y8=value;
						 }
						 if(key==9){
							 y9=value;
						 }
						 if(key==10){
							 y10=value;
						 }
						 if(key==11){
							 y11=value;
						 }
						 if(key==12){
							 y12=value;
						 }
					  });
					  
				var chart = new CanvasJS.Chart("chartContainerNew",
						{
							theme: "theme3",
				                        animationEnabled: true,
							title:{
								text: "Principal Vs Teacher registered per month",
								fontSize: 30
							},
							toolTip: {
								shared: true
							},			
							axisY: {
								title: "principal count"
							},
							 axisY2: {
								title: "teacher count"
							}, 			
							data: [ 
							{
								type: "column",	
								name: "Principals",
								legendText: "Principals",
								showInLegend: true, 
								dataPoints:[
								{label: "Jan", y: x1},
								{label: "Feb", y: x2},
								{label: "Mar", y: x3},
								{label: "Apr", y: x4},
								{label: "May", y: x5},
								{label: "Jun", y: x6},
								{label: "Jul", y: x7},
								{label: "Aug", y: x8},
								{label: "Sep", y: x9},
								{label: "Oct", y: x10},
								{label: "Nov", y: x11},
								{label: "Dec", y: x12}


								]
							},
							{
								type: "column",	
								name: "Teachers",
								legendText: "Teachers",
								axisYType: "secondary",
								showInLegend: true,
								dataPoints:[
								{label: "Jan", y: y1},
								{label: "Feb", y: y2},
								{label: "Mar", y: y3},
								{label: "Apr", y: y4},
								{label: "May", y: y5},
								{label: "Jun", y: y6},
								{label: "Jul", y: y7},
								{label: "Aug", y: y8},
								{label: "Sep", y: y9},
								{label: "Oct", y: y10},
								{label: "Nov", y: y11},
								{label: "Dec", y: y12}


								]
							}
							
							],
				          legend:{
				            cursor:"pointer",
				            itemclick: function(e){
				              if (typeof(e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
				              	e.dataSeries.visible = false;
				              }
				              else {
				                e.dataSeries.visible = true;
				              }
				            	chart.render();
				            }
				          },
				        });

				chart.render();
				
				
				$.fancybox({
					 'minWidth':900,
					 'padding':45,
					 'minHeight':250,
				     'autoScale': true,
				     'autoDimensions': true,
				     'centerOnScroll': true,
				     'href' : '#monthly-school-reg-stats-popup'
				  });
				
				
		
		}
			}
	 
	 
	
 });
		
 }
 
 function parentRevenue(){
	 
	 var url='<%=request.getContextPath()%>/superadmin/getParentRevenue';
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			cache:false,
			success:function(response){
				
				if(response != null  && response.modelMap.dtoParent!=null){
					
					
					var objBarGraphValues = response.modelMap.dtoParent.barGraph;
					callParentRevenueBarGraph(objBarGraphValues);
					
					//var objValue = response.modelMap.dtoTeacher.lineGraph;
					//drawTeacherLineGraph(objValue);
					 	
					 $.fancybox({
						 'minWidth':900,
						 'minHeight':375,
					     'autoScale': true,
					     'autoDimensions': true,
					     'centerOnScroll': true,
					     'href' : '#parentRevenue'
					  });
		
				}
			}
		});
	 
 } 
 function callParentRevenueBarGraph(objValue){
 	 var maxDataValAjax = 0;
      var maximumValue=0;
      //alert();
      var data = GenerateSeriesAjax2(objValue);
     // alert("genajax data:"+data);
 	  var ticks =  GenerateTicksAjax2();
 	  //alert("gen ticks:"+ticks);
 	  	function GenerateTicksAjax2(){
 	            var ticks = [];
 	             var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun",
 	                              "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
 	                            ]; 
 	         	var today = new Date();
 	          	var year = today.getFullYear();
 	          	var month = today.getMonth();
 	          	var date = today.getDate();
 	          	
 	          	for(var i=1; i<=30; i++){
 	          	      var day=new Date(year, month - 1, date + i);
 	          	      var days=day.getDate();
 	          	    ticks.push([i, days+" "+monthNames[day.getMonth()]]);
 	          	}
 	            
 	            
 	           
 	            return ticks;
 	  	  }
 	        function GenerateSeriesAjax2(objValue) {
 	            var data = [];
 	         	var today = new Date();
 	          	var year = today.getFullYear();
 	          	var month = today.getMonth();
 	          	var date = today.getDate();
 	          	
 	          	      
 	            
 	            var chartContent = objValue;
 	            var status=0;
 	            for (i = 1; i <= 30; i++) {
 	            	var day=new Date(year, month - 1, date + i);
 	          	      var days=day.getDate();
 	  	          $.each(chartContent,function(key,value){
 	  	        	if(parseInt(value)>parseInt(maximumValue)){
 			        	maximumValue = value;
 			        }
 	  	        	  if(days==key){
 	  	        		  status = value;
 	  	        	  }
 	  	          });
 	  	        data.push([i,status]);
 		        if(status>maxDataValAjax){
 		        	maxDataValAjax = status;
 		        }
 		        status=0;
 		     
 	            }

 	            return data;
 	        }
 	  	  var yTicksAjax =  GenerateYTicksAjax2();
 	  	  //alert("ytickajax:"+yTicksAjax);
 		  function GenerateYTicksAjax2(){
 	          var maxTick = 10;
 	          //alert("pmax:"+maxDataValAjax +" :new max "+maximumValue);
 	          maxDataValAjax = maximumValue;
 	          var temp = 0;
 	          var increment = 1;
 			  if(maxDataValAjax>10){
 				  temp = maxDataValAjax%10;
 				  
 				  if(temp == 0){
 					  maxTick = maxDataValAjax;
 				  }else{
 					  maxTick = (maxDataValAjax-(maxDataValAjax%10)+20);
 					  if(maxTick%100!=0){
 						  var inc = 100-(maxTick%100);
 						  maxTick = maxTick+inc;
 					  }
 				  }
 				 increment = maxTick/10;
 				 var iin = 10-(increment%10);
					increment+=iin;
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
 	                barWidth: 0.8,
 	                lineWidth: 0.5, // in pixels
 	                shadowSize: 0,
 	                align: 'left'
 	            },
 	            legend: {
 	                labelBoxBorderColor: "none",
 	                position: "nw"
 	            },
 	            grid: {
 	                tickColor: "#eee",
 	                borderColor: "#eee",
 	                borderWidth: 1 ,
 	                hoverable: true,
 	                clickable:true
 	            },
 	            yaxis:{
 	          		ticks: yTicksAjax,
 	          		//max:10
 	          	},
 	            xaxis: {       
 	          	  ticks: ticks
 	          	}
 	          	
 	        };

 	        if ($('#chart_1_parent_revenue').size() !== 0) {
 	            $.plot($("#chart_1_parent_revenue"), [{
 	                data: data,
 	                lines: {
 	                    lineWidth: 1,
 	                },
 	                shadowSize: 0
 	            }], options);
 	        }
 	        

 	        
 	        
 }
 
     
</script>  
  
</body>
</html>


