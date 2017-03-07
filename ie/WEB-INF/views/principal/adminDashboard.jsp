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
<title>Dashboard</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css"> --%>
	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<link href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/NewStyles/css/admin-dashboard.css" rel="stylesheet" type="text/css"/>
 <script src='http://d3js.org/d3.v3.min.js'></script>
 <script src="<%=request.getContextPath()%>/NewStyles/js/canvasjs.min.js"></script>
<style type="text/css">
.fancybox-inner{
height: auto !important;
}
#chartContainer canvas{position:relative !important}
</style>
</head>

<body>
<spring:eval var="bucketPath" expression="@propertyConfigurer.getProperty('bucket_path')" />
<div class="wrapper">
<%@include file="header.jsp" %>

<!--inner_wrapper starts-->
<div class="inner_wrapper"> 
   <div class="clear40"></div> 
    <!--inner_header starts-->
    <%-- <div class="inner_header"> <img src="<%=request.getContextPath()%>/NewStyles/images//about-us-header.jpg"  alt=""/> </div> --%>
    
    <!--teacher_dashboard_main starts-->
 <%--    <section class="tehDsh-step1 ">
        <div class="container">
            <div class="pracProgress_hdr">
            <h2>School Dashboard</h2>
            <div class="green_line_btm"></div>

            </div>
            <div class="feed-outer">
            <div class="scl-db-logo-outr">
            	 <div class="scl-dshbd-logo">
            <c:if test="${empty schoolDetail.logoUrl}">
            <img src="<%=request.getContextPath()%>/NewStyles/images/school-default.jpg" class="level-image height-auto-1" alt=""/>
            </c:if>
            	<c:if test="${not empty schoolDetail.logoUrl}">
            <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${schoolDetail.logoUrl}" class="level-image height-auto-1" alt=""/>
            </c:if>
            <div class="float-none margin0auto" style="margin: 5px 0 0 0;">
            ${schoolDetail.schoolName}
            </div>
            </div>
            
            <div class="rt-subs-date">
            	 <div class="princiapl_upgrade_plan">
                    <div class="pup_col_1 float-none margin0auto">
                    <c:if test="${paymentTypeMsg == 1}">
                        <!-- <h3>You are subscribed for a for 45 sessions</h3> -->
                        <c:if test="${paymentTypeMsg == 1}">
                        <c:if test="${expiryStatus eq 'N'}">
                        <h3>You are subscribed till ${expireDate}</h3>
                        </c:if>
                        <c:if test="${expiryStatus eq 'Y'}">
                        <h3>Your subscription has expired. To renew your subscription, Please goto your <a href="<%=request.getContextPath()%>/principal/manageProfile" class="subExp">manage profile</a> section. </h3>
                        </c:if>
                        </c:if>
                        <c:if test="${paymentTypeMsg != 1}">
                        <h3>You are subscribed till ${expireDate}</h3>
                        </c:if> 
                        <c:if test="${schoolDetail.isChangedMonthlyToYearly eq 'Y'}">
											<h3>Your Subscription will change from Monthly To Yearly starting from ${expireDate}</h3>
										</c:if>
                     </c:if>
                    <c:if test="${paymentTypeMsg != 1}">
                        <!-- <h3>You are subscribed for lifetime membership</h3> -->
                        <!-- <h3>You are subscribed for one school year program</h3> -->
                     </c:if>
                        <!-- <h4>Plan expires on 10/09/2016</h4> -->
                    </div>
                    <div  class="pup_col_2">
                        <input type="button" onclick="location.href='<%=request.getContextPath()%>/principal/reviewProgram';" class="input_upgrade_btn" value="REVIEW PROGRAM">
                    </div>
                </div>
                
                 <div class="dashboard_new_btns">
                	<div  class="pup_col_2">
                        <input type="button" onclick="getPlaybackAPI(${schoolDetail.schoolId});" class="input_upgrade_btn" value="TRACK RADIO INVITES">
                    </div>
                    <ul>
                    	<li><div class="tmc_3 mright15">
                		<input type="button" class="input_upgrade_btn welcome_btn_new padding-xtra" value="View Tune In Activity" onclick="getPlaybackAPI(${schoolDetail.schoolId});">
                	</div></li>
                    <li><div class="tmc_3 mright15">
                		<input type="button" class="input_upgrade_btn welcome_btn_new" value="ADD CLASSES" onclick="location.href='<%=request.getContextPath()%>/principal/select-program';">
                		<input type="button" class="input_upgrade_btn welcome_btn_new" value="INCREASE REACH WITHIN MY SCHOOL" onclick="location.href='<%=request.getContextPath()%>/principal/createClass';">
                	</div></li>
                	<li><div class="tmc_3 mright15">
                		<input type="button" class="input_upgrade_btn welcome_btn_new" value="Send Message To Teachers" onclick="showDiv(${schoolDetail.schoolId});">
                	</div></li>
                	<li><div class="tmc_3 mright15">
                		<input type="button" class="input_upgrade_btn welcome_btn_new" value="Active Users" onclick="getActiveUsers(${schoolDetail.schoolId});">
                	</div></li>
                	</ul>
                </div>
                
            </div>
            
            </div>
            <!-- <div class="feed-outer-main">
            	<h3>Teacher Activities</h3>
            	<div id="feeds"></div>
            	
            </div> -->
            
            </div>
           
            <div class="principal_dashboard">
               
               
                
                
                <c:if test="${not empty campaign.startDate}">
                <div class="campaign_listing">
                    	<ul>
                        	<li>
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/camp-li-1.png">
                                <p>Campaign Start Date</p><br>
                                <p><span>${campaign.startDate}</span></p>
                            </li>
                            <li>
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/camp-li-2.png">
                                <p>Days Remaining</p><br>
                                <p><span>${daysRemianing}</span></p>
                            </li>
                            <li>
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/camp-li-3.png">
                                <p>Contributions made</p><br>
                                <fmt:formatNumber var="cm" value="${campaign.donorAmount}" maxFractionDigits="0"></fmt:formatNumber>
                                <p><span>${cm}</span></p>
                            </li>
                            <li>
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/camp-li-4.png">
                                <p>Average Contribution Size</p><br>
                                <fmt:parseNumber var="i" type="number" value="${campaign.donorAmount}" />
                                 <c:if test="${ i gt 0 }">
                                 <fmt:formatNumber var="avgAmt" value="${i/campaign.donorCount}" maxFractionDigits="0"></fmt:formatNumber>
                                	<p><span>$${avgAmt}</span></p>
                                </c:if>
                                <c:if test="${  avgAmt eq 0}">
                                	<p><span>$0</span></p>
                                </c:if> 
                            </li>
                        </ul>
                    </div>
                </c:if>
                
                
                
                <div class="total_maximum_class techVideoSctCenter">
                <div class="tmc_1 welcome_changes">
                <h3>No. of Programs</h3>
                <p>${dtoPrincipal.programCount}</p>
                </div>
                  <div class="tmc_2 welcome_changes">
                <h3>No. of Classes</h3>
                <p>${dtoPrincipal.classCount}</p>
                </div>
                
                </div>
                
                
                <div class="total_maximum_class">
                <div class="tmc_1">
                <h3>Total No. of Programs</h3>
                <p>${dtoPrincipal.programCount}</p>
                </div>
                  <div class="tmc_2">
                <h3>Maximum No. of Classes</h3>
                <p>${dtoPrincipal.classCount}</p>
                </div>
                 <div class="tmc_2_1">
                <h3>Radio Listener Count(Daily)</h3>
                <p>${dtoPrincipal.radioListenerCount}</p>
                </div>
                <div class="tmc_3">
                <input type="button" class="input_upgrade_btn welcome_btn_new" value="INCREASE REACH WITHIN MY SCHOOL" onclick="location.href='<%=request.getContextPath()%>/principal/createClass';">
                </div>
                </div>
                
                
                
                
                <div class="tmc_3">
                <input type="button" class="input_upgrade_btn welcome_btn_new" value="INCREASE REACH WITHIN MY SCHOOL" onclick="location.href='<%=request.getContextPath()%>/principal/createClass';">
                </div>
             <div class="teachers_status">   
              <c:forEach var="listTeachers" items="${practiceProgress}">
              <div class="ts_col_1">
              <div class="ts_header">
              	<p>${listTeachers.programName}</p>
              </div>
              <div class="ts_img">
              <c:if test="${listTeachers.teacherImage eq '' || listTeachers.teacherImage eq null}">
              	<img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png"  alt=""/>
              </c:if>
              <c:if test="${listTeachers.teacherImage ne '' && listTeachers.teacherImage ne null}">
              	<img src="<%=request.getContextPath()%>/NewStyles/images/teacher-profile/${listTeachers.teacherImage}"  alt=""/>
              </c:if>
              </div>
              <p>${listTeachers.teacherName}</p>
              <p>${listTeachers.className}</p>
				<p>${listTeachers.completeStatus}% Complete</p>
				<div class="star_rating">
				<ul>
	        	<c:forEach var="i" begin="1" end="${listTeachers.avgRating}" step="1">
	            	<li><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png"  alt=""/></li>
	           </c:forEach>
	           <c:forEach var="i" begin="${listTeachers.avgRating}" end="4" step="1">
	               <li><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"  alt=""/></li>
	            </c:forEach>
				</ul>
				</div>
				
				
				
				<p>Last Logged in 
				<c:if test="${not empty listTeachers.lastLoggedIn}">
				<fmt:formatDate value="${listTeachers.lastLoggedIn}" type="date"/>
				</c:if>
				<c:if test="${empty listTeachers.lastLoggedIn}">
				<span>N/A</span>
				</c:if>
				</p>
              <c:if test="${not empty listTeachers.lastLoggedIn}">
              	<p>Last Logged in <fmt:formatDate value="${listTeachers.lastLoggedIn}" type="date"/>
              	</p>
              </c:if>
				
				<c:if test="${empty listTeachers.lastLoggedIn}">
				<p>Never logged in </p>
				</c:if>
              <input type="button" class="js-open-modal blueBtn" value="PLAY TRACK" onclick="getAudioDetail('${listTeachers.classTeacherRelationId}');" data-modal-id="popup1">
              <a href="javascript:;" style="display: inline-block;
    margin-top: 10px;" class="js-open-modal blueBtn" onclick="getAudioDetail('${listTeachers.classTeacherRelationId}');" data-modal-id="popup1">PLAY TRACK</a>
              </div>  
              </c:forEach>
              <c:forEach var="listTeachers" items="${listTeachers}">
              <div class="ts_col_1">
              <div class="ts_header">
              	<p>${listTeachers.schoolClass.schoolProgram.planProgram.descriptionDetail}</p>
              </div>
              <div class="ts_img">
              <c:if test="${listTeachers.image eq '' || listTeachers.image eq null}">
              	<img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png"  alt=""/>
              </c:if>
              <c:if test="${listTeachers.image ne '' && listTeachers.image ne null}">
              	<img src="<%=request.getContextPath()%>/NewStyles/images/teacher-profile/${listTeachers.image}"  alt=""/>
              </c:if>
              </div>
              <p>${listTeachers.name}</p>
              <p>${listTeachers.schoolClass.className}</p>
				<p>0% Complete</p>
				<div class="star_rating">
				<ul>
				<li><img src="<%=request.getContextPath()%>/NewStyles/images/star-yellow.png"  alt=""/></li>
				<li><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"  alt=""/></li>
				<li><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"  alt=""/></li>
				<li><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"  alt=""/></li>
				<li><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png"  alt=""/></li>
				<li><img src="<%=request.getContextPath()%>/NewStyles/images/star-grey.png" alt=""/></li>
				</ul>
				</div>
              </div>  
              </c:forEach>
        </div>
            </div>
        </div>
    </section> --%>
    <!--teacher_dashboard_main ends--> 
    
    <!--inner_header ends--> 
    <section class="chart_sec" style="    margin-top: 10px;">
        <div class="container-fluid">
              <div class="row-fluid">
                  <div class="col-md-12">
                      <div class="col-md-6">
                        <div class="graph_outer">
                              <div class="col-md-12 noPadding text-center">
                                      <span class="title_graph">Usage Statistics</span>
                              </div>

                              <%--  <iframe src="<%=request.getContextPath()%>/principal/viewMap" style="width:100%; height:450px" frameborder="0" scrolling="no"></iframe>  --%>
                                <div id="chartContainer" style="height:390px;"></div>
                              <div class="clear40"></div>
                              <div class="col-md-4 col-sm-4"> 
                                <button class="btn_custom_graph">Daily Report</button>
                              </div>
                              <div class="col-md-4 col-sm-4"> 
                                <button class="btn_custom_graph">Weekly Report</button>
                              </div>
                              
                              <div class="col-md-4 col-sm-4"> 
                                <button class="btn_custom_graph">Monthly Report</button>
                              </div>
                              

                         </div>
                      </div>
                      <div class="col-md-6">
                             <div class="graph_outer">
                                    <div class="col-md-12 noPadding text-center">
                                            <span class="title_graph">Tune-In Activity</span>
                                    </div>
                                      <div class="clear20"></div>
                                   <!--  <svg width="820" height="400"></svg> -->
                                   <div id="sunburst" style="height:480px; margin-left:150px"><img src=""></div> 
                                    <div class="clear40"></div>
                                    <div class="col-md-4 col-sm-4"> 
                                      <button class="btn_custom_graph" onclick="getPlaybackAPIDateWise(${schoolDetail.schoolId},1);">Daily Report</button>
                                    </div>
                                    <div class="col-md-4 col-sm-4"> 
                                      <button class="btn_custom_graph" onclick="getPlaybackAPIDateWise(${schoolDetail.schoolId},2);">Weekly Report</button>
                                    </div>
                                    
                                    <div class="col-md-4 col-sm-4"> 
                                      <button class="btn_custom_graph" onclick="getPlaybackAPIDateWise(${schoolDetail.schoolId},3);">Monthly Report</button>
                                    </div>
                                    

                               </div>
                      </div>
                      <!-- 2ed row -->
                      <div class="clear40"></div>
                      <div class="col-md-6">
                         <div class="graph_outer">
                                <div class="col-md-12 noPadding text-center">
                                        <span class="title_graph">Manage Users</span>
                                </div>
                                <div class="clear40"></div>
                                <div class="col-md-12 noPadding">
                                  
                                  <div class="col-md-6">
                                      <a href="#!" class="manage_user_btn pull-right" onclick="location.href='<%=request.getContextPath()%>/principal/select-program';">Add Teachers</a>
                                  </div>  
                                   <div class="col-md-6  ">
                                      <a href="#!" class="manage_user_btn pull-left" onclick="getPlaybackAPI(${schoolDetail.schoolId});">View Parents</a>
                                  </div>                                  
                                  <div class="clear40"></div>
                                  <div class="col-md-6">
                                      <a href="#!" class="manage_user_btn pull-right" onclick="getActiveUsers(${schoolDetail.schoolId});">Active Users</a>
                                  </div>  
                                   <div class="col-md-6 ">
                                      <a href="#!" class="manage_user_btn pull-left" onclick="getInactiveUsers(${schoolDetail.schoolId});">Inactive Users</a>
                                  </div>                 
                                  <div class="clear80"></div>
                                  <div class="col-md-6 text-center ">
                                      <a href="#!" class="manage_user_btn pull-right" onclick="getFeedbackAndRating(${schoolDetail.schoolId});">Feedbacks and Ratings</a>
                                  </div>  
                                   <div class="col-md-6 text-center ">
                                      <a href="#!" class="manage_user_btn pull-left" onclick="getSubscriptionDetails(${schoolDetail.schoolId});">Subscription Management</a>
                                  </div>                                


                                </div>

                                
                           </div>
                      </div>
                      <div class="col-md-6">
                           <div class="graph_outer">
                                <div class="col-md-12 noPadding text-center">
                                        <span class="title_graph">Activity Feed</span>
                                </div>
                                <div class="clear40"></div>
                                <div class="col-md-12 noPadding text-center">
                                   
					<div class="row msg_container base_sent" id="activityFeedDiv" 
						style="max-height: 267px !important; overflow-y:auto !important">
						<table class="table table-striped table-bordered table-hover"
							id="sample_1">
							  <c:forEach var="dtoUsers" items="${dtoUsers}"> 
							 <tr class="odd gradeX">
								 <td>
									${dtoUsers.teacherName} has looged in on ${dtoUsers.uCurrentDate}
								</td> 
							</tr> 
							 </c:forEach> 
						</table>


					</div>
                                </div>
                           </div>
                          
                      </div>
                      <!-- End 2ed row -->
                  </div>
              </div>
        </div>
    </section>
</div>
<!--inner_wrapper ends-->
</div>
<div class="" id="letterToParentDashTrack" style="display: none;">
            <h4>Parent Details</h4>
            <div class="ur_grid ur_grid_pop">
            	
        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_6">
         <thead>
        	<tr>
        			<th><strong>Parent Email</strong></th>
					<th><strong>Date of Invitation</strong></th>
					<th><strong>Status</strong></th>
					<th><strong>Name</strong></th>
					<th><strong>Teacher Email</strong></th>
					</tr></thead>
					<tbody></tbody> 
</table>

        
        </div>
        
    </div>
    
    <div class="" id="activeUsers" style="display: none;">
            <h4>Active Users</h4>
            <div class="ur_grid ur_grid_pop">
            	
        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_7">
         <thead>
        	<tr>
        		
					<th><strong>Name</strong></th>
					<th><strong>Teacher Email</strong></th>
					<th><strong>Last LoggedIn</strong></th>
					<th><strong>Role Type</strong></th>
					</tr></thead>
					<tbody></tbody> 
</table>

        
        </div>
        
    </div>
    
    <div class="" id="inactiveUsers" style="display: none;">
            <h4>Inactive Users</h4>
            <div class="ur_grid ur_grid_pop">
            	
        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_8">
         <thead>
        	<tr>
        		
					<th><strong>Name</strong></th>
					<th><strong>Teacher Email</strong></th>
					<th><strong>Last LoggedIn</strong></th>
					</tr></thead>
					<tbody></tbody> 
</table>

        
        </div>
        
    </div>
    
    <div class="ourStory-Popup" id="feedbackRating" style="display: none;">
            <h4>Feedback And Ratings</h4>
            <div class="ur_grid ur_grid_pop">
            	
        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_10">
         <thead>
        	<tr>
        		
					<th><strong>Email</strong></th>
					<th><strong>Audio Name</strong></th>
					<th><strong>Audio Title</strong></th>
					<th><strong>Audio Description</strong></th>
					<th><strong>Audio Quality</strong></th>
					<th><strong>Rating</strong></th>
					<th><strong>Comment</strong></th>
					</tr></thead>
					<tbody></tbody> 
</table>

        
        </div>
        
    </div>

 <div class="ourStory-Popup" id="subscriptionDetails" style="display: none;">
            <h4>Subscription Details</h4>
            <div class="ur_grid ur_grid_pop">
            	
        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_9">
         <thead>
        	<tr>
        		
					<th><strong>Email</strong></th>
					<th><strong>School Name</strong></th>
					<th><strong>Payment Type</strong></th>
					<th><strong>Payment Amount</strong></th>
					<th><strong>Subscription Start Date</strong></th>
					<th><strong>Subscription End Date</strong></th>
					</tr></thead>
					<tbody></tbody> 
</table>

        
        </div>
        
    </div>
    
    
     <div id="Usersdiv"  style="display:none;">
		
	

			<table class="table table-stri 200,ped table-hover table-bordered"
				id="todaysUsers">
				<thead>
					<tr>
						<th><strong>Name</strong></th>
						<th><strong>Email</strong></th>
						<th><strong>SchoolName</strong></th>
						
					</tr>
				</thead>
				
								
			</table>


	
	</div>

	<div id="send_message" class="modal-box">
	<div class="modal_change_track">
		<div class="modal_bodycont" >
			<a class="cls-btn js-modal-close close" href="javascript:;">X</a>
				<h5>Send Message To All Teachers</h5>
				<div class="change_track">
					<label>Message</label>
					<div class="inputcontain_new">
						<textarea id="msg" name="msg" style="width: 400px;"></textarea>
						<input type="button" value="Send Message" class="change_trackbtn_qus" onclick="sendMessgeToTeachers();">
					</div>
				</div>
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
	<%-- <div class="chat-sidebar" id="chatBar" style="display:none;">
    
    <div class="homeChat-hdr"> Teacher Activities   <a onclick="closeChatBar();" style="float: right;margin-right: 5px; color: white;"><img  style="width:18px; position:relative; top:1px;"  alt="" src="<%=request.getContextPath()%>/NewStyles/images/arrow_down.png"/></a></div>
    <div id="feeds">
    
    </div>
   </div>  --%>


<%-- <div class="homeChat-hdr" id="openChatBar" style="display:none;">Teacher Activities  <a onclick="openChatBar();" style="float: right;margin-right: 5px; color: white; cursor:pointer;"><img  style="width:18px; position:relative; top:1px;"  alt="" src="<%=request.getContextPath()%>/NewStyles/images/arrow_up.png"/></a></div> --%>

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		var schoolId=${schoolDetail.schoolId};
		//alert(schoolId);
		$("#header").sticky({ topSpacing: 0 });
		$("#openChatBar").show();
		$.daisyNav();
		initDialog();
		
		gettrackDetails(schoolId);
	});
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
    function sendMessgeToTeachers(){
    	//$("#schoolId").val(teacherId);
    	   var message = $("#msg").val();
    	   var url='<%=request.getContextPath()%>/principal/sendMessageEmailToTeachers';
    	   //alert("about to post the data" + message);
    		$.ajax({
    			url:url,
    			method:'POST',
    			async :false,
    			data:{msg:message},
    			cache:false,
    			success:function(response){
    				location.reload();
    				alert("Data has been posted successfully.");
    		},
    		}); 
	}
    function getPlaybackAPI(teacherId){
    	//$("#schoolId").val(teacherId);
    	//alert("school Id "+teacherId);
    		$("#sample_6").dataTable().fnDestroy();
    		$("#sample_6").html('');
    	   var url='<%=request.getContextPath()%>/principal/getLetterToParentDetails';
    		$.ajax({
    			url:url,
    			method:'POST',
    			async :false,
    			data:{teacherId:teacherId},
    			cache:false,
    			success:function(response){
    				
    				if(response != null  && response.modelMap.dtoUsers!=null){
    					var audioQualityDetail='';
    					audioQualityDetail+='<thead><tr><th><strong>Parent Email</strong></th>'+
    					'<th ><strong>Name Of Parent</strong></th><th ><strong>Date of Invitation</strong></th>'+
    					'<th><strong>Status</strong></th><th><strong>Teacher Email</strong></th></tr></thead><tbody>';
    					
    					$.each( response.modelMap.dtoUsers, function(index,value) {
    						audioQualityDetail+='<tr><td ><p>'+value.email+'</p></td>'+
    						'<td ><p>'+value.commnets+'</p></td>'+
    						'<td><p>'+value.timeZone+'</p></td>'+
    						'<td><p>'+value.title+'</p></td>'+
    						'<td><p>'+value.teacherEmail+'</p></td></tr>';
    					});
    		    	
    		    	audioQualityDetail+='</tbody>';
    		    	
    			$("#sample_6").html(audioQualityDetail);
    		    $("#sample_6").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
    				
    				 $.fancybox({
    					 'minWidth':900,
    					 'padding':45,
    					 'minHeight':150,
    				     'autoScale': true,
    				     'autoDimensions': true,
    				     'centerOnScroll': true,
    				     'href' : '#letterToParentDashTrack'
    				  });
    	
    				}
    			}
    		}); 
    }	
    
    
    function getPlaybackAPIDateWise(teacherId,timeSpan){
    	//$("#schoolId").val(teacherId);
    	//alert("school Id "+teacherId);
    		$("#sample_6").dataTable().fnDestroy();
    		$("#sample_6").html('');
    	   var url='<%=request.getContextPath()%>/principal/getLetterToParentDetailsDateWise';
    		$.ajax({
    			url:url,
    			method:'POST',
    			async :false,
    			data:{teacherId:teacherId,timeSpan:timeSpan},
    			cache:false,
    			success:function(response){
    				
    				if(response != null  && response.modelMap.dtoUsers!=null){
    					var audioQualityDetail='';
    					audioQualityDetail+='<thead><tr><th><strong>Parent Email</strong></th>'+
    					'<th ><strong>Name Of Parent</strong></th><th ><strong>Date of Invitation</strong></th>'+
    					'<th><strong>Status</strong></th><th><strong>Teacher Email</strong></th></tr></thead><tbody>';
    					
    					$.each( response.modelMap.dtoUsers, function(index,value) {
    						audioQualityDetail+='<tr><td ><p>'+value.email+'</p></td>'+
    						'<td ><p>'+value.commnets+'</p></td>'+
    						'<td><p>'+value.timeZone+'</p></td>'+
    						'<td><p>'+value.title+'</p></td>'+
    						'<td><p>'+value.teacherEmail+'</p></td></tr>';
    					});
    		    	
    		    	audioQualityDetail+='</tbody>';
    		    	
    			$("#sample_6").html(audioQualityDetail);
    		    $("#sample_6").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
    				
    				 $.fancybox({
    					 'minWidth':900,
    					 'padding':45,
    					 'minHeight':150,
    				     'autoScale': true,
    				     'autoDimensions': true,
    				     'centerOnScroll': true,
    				     'href' : '#letterToParentDashTrack'
    				  });
    	
    				}
    			}
    		}); 
    }	
    
    
    function getActiveUsers(schoolId){
    	//$("#schoolId").val(teacherId);
    	//alert("school Id "+schoolId);
    		$("#sample_7").dataTable().fnDestroy();
    		$("#sample_7").html('');
    	   var url='<%=request.getContextPath()%>/principal/getActiveUsers';
    		$.ajax({
    			url:url,
    			method:'POST',
    			async :false,
    			data:{schoolId:schoolId},
    			cache:false,
    			success:function(response){
    				
    				if(response != null  && response.modelMap.dtoUsers!=null){
    					var audioQualityDetail='';
    					audioQualityDetail+='<thead><tr><th ><strong>Name</strong></th>'+
    					'<th ><strong>Teacher Email</strong></th>'+
    					'<th><strong>Last LoggedIn</strong></th>'+
    					'<th><strong>Role Type</strong></th></tr></thead><tbody>';
    					
    					$.each( response.modelMap.dtoUsers, function(index,value) {
    						audioQualityDetail+='<tr><td ><p>'+value.teacherName+'</p></td>'+
    						'<td ><p>'+value.email+'</p></td>'+
    						'<td ><p>'+value.uCurrentDate+'</p></td>'+
    						'<td><p>'+value.roleType+'</p></td></tr>';
    						
    					});
    		    	
    		    	audioQualityDetail+='</tbody>';
    		    	
    			$("#sample_7").html(audioQualityDetail);
    		    $("#sample_7").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
    				
    				 $.fancybox({
    					 'minWidth':900,
    					 'padding':45,
    					 'minHeight':150,
    				     'autoScale': true,
    				     'autoDimensions': true,
    				     'centerOnScroll': true,
    				     'href' : '#activeUsers'
    				  });
    	
    				}
    			}
    		}); 
    }	
    
    function getInactiveUsers(schoolId){
    	//$("#schoolId").val(teacherId);
    	//	alert("school Id "+schoolId);
    		$("#sample_8").dataTable().fnDestroy();
    		$("#sample_8").html('');
    	   var url='<%=request.getContextPath()%>/principal/getInactiveUsers';
    		$.ajax({
    			url:url,
    			method:'POST',
    			async :false,
    			data:{schoolId:schoolId},
    			cache:false,
    			success:function(response){
    				
    				if(response != null  && response.modelMap.dtoUsers!=null){
    					var audioQualityDetail='';
    					audioQualityDetail+='<thead><tr><th ><strong>Name</strong></th>'+
    					'<th ><strong>Teacher Email</strong></th>'+
    					'<th><strong>Role Type</strong></th></tr></thead><tbody>';
    					
    					$.each( response.modelMap.dtoUsers, function(index,value) {
    						audioQualityDetail+='<tr><td ><p>'+value.teacherName+'</p></td>'+
    						'<td ><p>'+value.email+'</p></td>'+
    						'<td><p>'+value.roleType+'</p></td></tr>';
    						
    					});
    		    	
    		    	audioQualityDetail+='</tbody>';
    		    	
    			$("#sample_8").html(audioQualityDetail);
    		    $("#sample_8").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
    				
    				 $.fancybox({
    					 'minWidth':900,
    					 'padding':45,
    					 'minHeight':150,
    				     'autoScale': true,
    				     'autoDimensions': true,
    				     'centerOnScroll': true,
    				     'href' : '#inactiveUsers'
    				  });
    	
    				}
    			}
    		}); 
    }	
    
    function getSubscriptionDetails(schoolId){
    	//$("#schoolId").val(teacherId);
    	//	alert("school Id "+schoolId);
    		$("#sample_9").dataTable().fnDestroy();
    		$("#sample_9").html('');
    	   var url='<%=request.getContextPath()%>/principal/getSubscriptionDetails';
    		$.ajax({
    			url:url,
    			method:'POST',
    			async :false,
    			data:{schoolId:schoolId},
    			cache:false,
    			success:function(response){
    				
    				if(response != null  && response.modelMap.dtoUsers!=null){
    					var audioQualityDetail='';
    					audioQualityDetail+='<thead><tr><th ><strong>Email</strong></th>'+
    					'<th ><strong>School Name</strong></th>'+
    					'<th ><strong>Payment Type</strong></th>'+
    					'<th ><strong>Payment Amount</strong></th>'+
    					'<th ><strong>Subscription Start Date</strong></th>'+
    					'<th><strong>Subscription End Date</strong></th></tr></thead><tbody>';
    					
    					$.each( response.modelMap.dtoUsers, function(index,value) {
    						audioQualityDetail+='<tr><td ><p>'+value.email+'</p></td>'+
    						'<td ><p>'+value.teacherName+'</p></td>'+
    						'<td ><p>'+value.methodType+'</p></td>'+
    						'<td ><p>'+value.paymentMethodNonce+'</p></td>'+
    						'<td ><p>'+value.uCurrentDate+'</p></td>'+
    						'<td><p>'+value.subscriptionExpire+'</p></td></tr>';
    						
    					});
    		    	
    		    	audioQualityDetail+='</tbody>';
    		    	
    			$("#sample_9").html(audioQualityDetail);
    		    $("#sample_9").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
    				
    				 $.fancybox({
    					 'minWidth':900,
    					 'padding':45,
    					 'minHeight':150,
    				     'autoScale': true,
    				     'autoDimensions': true,
    				     'centerOnScroll': true,
    				     'href' : '#subscriptionDetails'
    				  });
    	
    				}
    			}
    		}); 
    }	
    
    function getFeedbackAndRating(schoolId){
    	//$("#schoolId").val(teacherId);
    	//	alert("school Id "+schoolId);
    		$("#sample_10").dataTable().fnDestroy();
    		$("#sample_10").html('');
    	   var url='<%=request.getContextPath()%>/principal/getFeedbackAndRating';
    		$.ajax({
    			url:url,
    			method:'POST',
    			async :false,
    			data:{schoolId:schoolId},
    			cache:false,
    			success:function(response){
    				
    				if(response != null  && response.modelMap.dtoUsers!=null){
    					var audioQualityDetail='';
    					audioQualityDetail+='<thead><tr><th ><strong>Email</strong></th>'+
    					'<th ><strong>Audio Name</strong></th>'+
    					'<th ><strong>Audio Title</strong></th>'+
    					'<th ><strong>Audio Description</strong></th>'+
    					'<th ><strong>Audio Quality</strong></th>'+
    					'<th ><strong>Rating</strong></th>'+
    					'<th><strong>Comment</strong></th></tr></thead><tbody>';
    					
    					$.each( response.modelMap.dtoUsers, function(index,value) {
    						audioQualityDetail+='<tr><td ><p>'+value.email+'</p></td>'+
    						'<td ><p>'+value.audioName+'</p></td>'+
    						'<td ><p>'+value.title+'</p></td>'+
    						'<td ><p>'+value.address+'</p></td>'+
    						'<td ><p>'+value.teacherName+'</p></td>'+
    						'<td ><p>'+value.userId+'</p></td>'+
    						'<td><p>'+value.commnets+'</p></td></tr>';
    						
    					});
    		    	
    		    	audioQualityDetail+='</tbody>';
    		    	
    			$("#sample_10").html(audioQualityDetail);
    		    $("#sample_10").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
    				
    				 $.fancybox({
    					 'minWidth':900,
    					 'padding':45,
    					 'minHeight':150,
    				     'autoScale': true,
    				     'autoDimensions': true,
    				     'centerOnScroll': true,
    				     'href' : '#feedbackRating'
    				  });
    	
    				}
    			}
    		}); 
    }	
    
    function getAudioDetail(classteacherRelationId){
    	
    	var classteacherRelationId=classteacherRelationId;
    	
    	   var url='<%=request.getContextPath()%>/principal/getAudioDetail';
   		$.ajax({
   			url:url,
   			method:'POST',
   			async :false,
   			data:{classteacherRelationId:classteacherRelationId},
   			cache:false,
   			success:function(response){
   				
   				var src='${bucketPath}/audioFiles/'+response; 
   				
   				  $("#trackDesc").html(response);
   		    	$("#trackSrc").attr("src",src);
   		    	var audioId=document.getElementById("audioId");
   		    	audioId.load();
   		    	$("#bnsTrack").hide();
   		    	$(window).scrollTop(0);
   			}
   		});
    	
    	

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
    
</script>

<script type="text/javascript">
function gettrackDetails(schoolId) {
	  
	//alert("hiii");
	   var url='<%=request.getContextPath()%>/principal/getnumberOfTracksPlayed';
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			data:{schoolId:schoolId},
			cache:false,
			success:function(response){
				//alert(response); 
				var result=[];
				
				 var startDate = new Date(new Date().getTime() - 28*24*60*60*1000);  
			   var endDate = new Date(); 
			   var monthNames = ["January", "February", "March", "April", "May", "June",
			                     "July", "August", "September", "October", "November", "December"
			                   ];
			   //$("#todayDate")[0].innerHTML= "WEEK OF "+ monthNames[endDate.getMonth()]+ " "+  endDate.getDate()+","+endDate.getFullYear();
			  var iDate = new Date(startDate);
			/*   $.each(response,function(key,value){
			  result.push({x: new Date(key),y: parseInt(value)});
			  }); */
			    /* alert("end date is "+endDate);
			   alert("start date is"+startDate); 
			   alert("idate is "+iDate); */  
			  /*  while (iDate <= endDate) {
				   
				$.each(response,function(key,value){
				
					if(iDate.getDay()==new Date(key).getDay())
					result.push({x: new Date(key),y: parseInt(value)});
					else
						result.push({x: new Date(iDate) ,y: 0});	
					
					
			});
				 iDate.setDate(iDate.getDate() + 1);
			   }  */
	 /* alert(result); */
	  //var uniqueLogins=${uniqueLogins};
	  
	  
	  $.each(response,function(key,value){
				
				//alert(response);	
				//alert("Key is "+ new Date(key)+"Value is "+ parseInt(value));
					result.push({x: new Date(key),y: parseInt(value)});
					
					
					
			});
	  
	  CanvasJS.addColorSet("crimShades",
               [//colorSet Array

               
               "#02a451"                
               ]);

	 
	    var chart = new CanvasJS.Chart("chartContainer",
	    { 
	    	
	    	colorSet: "crimShades",
	    	 axisY:{
	    		  
	    		  
	    		
	    		 },
	    		 axisX:{
		    	
		    		   interval:1,
		    		   valueFormatString: "DD-MMM"
		    		 },
		    		 
	      title:{
	      text: "Tracks Played"
	      },
	       data: [
	      {
	        type: "column",

	        dataPoints: result,
	        click: function(e){
	 		  /*   alert(  e.dataSeries.type+ ", dataPoint { x:" + e.dataPoint.x + ", y: "+ e.dataPoint.y + " }" ); */
	 		    //getUsersForDate(e.dataPoint.x);
	 		   }
	      }
	      
	      ]
	    });

	    chart.render();
	    
			}
		});  
		
		
		/* var chart = new CanvasJS.Chart("chartContainer", {

			title:{
				text:"Fortune Global 500 Companies by Country"				

			},
                        animationEnabled: true,
			axisX:{
				interval: 1,
				gridThickness: 0,
				labelFontSize: 10,
				labelFontStyle: "normal",
				labelFontWeight: "normal",
				labelFontFamily: "Lucida Sans Unicode"

			},
			axisY2:{
				interlacedColor: "rgba(1,77,101,.2)",
				gridColor: "rgba(1,77,101,.1)"

			},

			data: [
			{     
				type: "bar",
                name: "companies",
				axisYType: "secondary",
				color: "#014D65",				
				dataPoints: [
				
				{y: 5, label: "Sweden"  },
				{y: 6, label: "Taiwan"  },
				{y: 7, label: "Russia"  },
				{y: 8, label: "Spain"  },
				{y: 8, label: "Brazil"  },
				{y: 8, label: "India"  },
				{y: 9, label: "Italy"  },
				{y: 9, label: "Australia"  },
				{y: 12, label: "Canada"  },
				{y: 13, label: "South Korea"  },
				{y: 13, label: "Netherlands"  },
				{y: 15, label: "Switzerland"  },
				{y: 28, label: "Britain" },
				{y: 32, label: "Germany"   },
				{y: 32, label: "France"  },
				{y: 68, label: "Japan"   },
				{y: 73, label: "China"},
				{y: 132, label: "US" }
				]
			}
			
			]
		});

chart.render() */
} 


function getUsersForDate(tdate)
{
	var d = tdate;
    var curr_date = d.getDate();
    var curr_month = d.getMonth() + 1; //Months are zero based
    var curr_year = d.getFullYear();
   newdate= curr_year + "-" + curr_month + "-" + curr_date;
	/* alert(newdate); */
	$("#todaysUsers").dataTable().fnDestroy();
	$("#todaysUsers").html('');
	
	 var url='<%=request.getContextPath()%>/principal/getCrimUsersByDate';
	$.ajax({
		url:url,
		method:'GET',
		async :true,
		data:{"newdate":newdate},
		success:function(response){
			/* alert(response); */
			if(response!=null){
				
				

				 var userDetail='';
				 userDetail+='<thead><tr><th><strong>Name</strong></th>'+
				 '<th><strong>Email</strong></th>'+'<th><strong>SchoolName</strong></th>'+
				 '<th><strong>Date</strong></th><tbody>';
				 
	
	$.each(response.modelMap.dtoUsers, function(index,value) {
		
			
		userDetail+='<tr><td>'+value.teacherName+'</td>'+
						'<td>'+value.email+'</td>'+
						'<td>'+value.schoolName+'</td>+<td>'+value.uCurrentDate+'</td></tr>';
	});
						userDetail+='</tbody>';
						$("#todaysUsers").html(userDetail);
					    $("#todaysUsers").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15}); 
						
						 $.fancybox({
						     'autoScale': true,
						     'autoDimensions': true,
						     'centerOnScroll': true,
						     'href' : '#Usersdiv'
						  });



					
		    	
				
				
				
				
					
				 
				
				
		}
		
		}
	});
	
}


</script>

<script>
// Dimensions of sunburst.
var width = 420,
    height = 440,
    /*margin-left = 100,*/
    radius = width / 2,
    x = d3.scale.linear().range([0, 2 * Math.PI]),
    y = d3.scale.pow().exponent(1.3).domain([0, 1]).range([0, radius]),
    padding = 5,
    margin = 100,
    duration = 1000;

// Remove loading image
var div = d3.select("#sunburst");
div.select("img").remove();

// setup html markup for sunburst                                  
var vis = div.append("svg")
    .attr("width", width + padding * 2)
    .attr("height", height + padding * 2)
    .append("g")
    .attr("transform", "translate(" + [radius + padding, radius + padding] + ")");

// let the user know that the diagram is zoomable
div.append("p")
    .attr("id", "intro");
   

// setup the partitions variable
var partition = d3.layout.partition()
    .sort(null)
    .value(function(d) { return 5.8 - d.depth; });

// setup the arch variable
var arc = d3.svg.arc()
    .startAngle(function(d) { return Math.max(0, Math.min(2 * Math.PI, x(d.x))); })
    .endAngle(function(d) { return Math.max(0, Math.min(2 * Math.PI, x(d.x + d.dx))); })
    .innerRadius(function(d) { return Math.max(0, d.y ? y(d.y) : d.y); })
    .outerRadius(function(d) { return Math.max(0, y(d.y + d.dy)); });
var tuneInList=[];
tuneInList=${tuneInDetails};
//alert(JSON.stringify(tuneInList));
  // load the data
  d3.json("<%=request.getContextPath()%>/principal/getTuneInDetails", function(error, json) {
  var nodes = partition.nodes({children: json});

  var path = vis.selectAll("path")
      .data(nodes)
    .enter().append("path")
      .attr("id", function(d, i) { return "path-" + i; })
      .attr("d", arc)
      //.attr("fill-rule", "evenodd")
      .style("fill", colour)
      .on("click", click)
     // .on("mouseover", mouseover);
   
    
    
  // Select all the visible labels
  var text = vis.selectAll("text").data(nodes);
  var textEnter = text.enter().append("text")
      .style("fill-opacity", 1)
      .style("fill", function(d) {
        return brightness(d3.rgb(colour(d))) < 125 ? "#eee" : "#000";
      })
      .attr("text-anchor", function(d) {
        return x(d.x + d.dx / 2) > Math.PI ? "end" : "start";
      })
      .attr("dy", ".2em")
  
     // rotate the lable text dependign where it is
      .attr("transform", function(d) {
        var multiline = (d.name || "").split(" ").length > 1,
            angle = x(d.x + d.dx / 2) * 180 / Math.PI - 90,
            rotate = angle + (multiline ? -.5 : 0);
        return "rotate(" + rotate + ")translate(" + (y(d.y) + padding) + ")rotate(" + (angle > 90 ? -180 : 0) + ")";
      })
  
     // Add the mouse clic handler to the bounding circle.
      .on("click", click)
    
   
      
  textEnter.append("tspan")
      .attr("x", 0)
      .text(function(d) { return d.depth ? d.name.split(" ")[0] : ""; });
  textEnter.append("tspan")
      .attr("x", 0)
      .attr("dy", "1em")
      .text(function(d) { return d.depth ? d.name.split(" ")[1] || "" : ""; });
    
  function mouseover(d) {
     // Fade all the segments.
    d3.selectAll("path")
        .style("opacity", 0.3);
    }
  
    // Then highlight only those that are an ancestor of the current segment.
   var sequenceArray = getAncestors(d);
    
      // Given a node in a partition layout, return an array of all of its ancestor
  // nodes, highest first, but excluding the root.
  function getAncestors(node) {
    var path = [];
    var current = node;
    while (current.parent) {
      path.unshift(current);
      current = current.parent;
    }
    return path;
  }
    
   vis.selectAll("path")
      .filter(function(node) {
         return (sequenceArray.indexOf(node) >= 0);
              })
      .style("opacity", 1);
    
  function click(d) {
    path.transition()
      .duration(duration)
      .attrTween("d", arcTween(d));

    // Somewhat of a hack as we rely on arcTween updating the scales.
    text.style("visibility", function(e) {
          return isParentOf(d, e) ? null : d3.select(this).style("visibility");
        })
      .transition()
        .duration(duration)
        .attrTween("text-anchor", function(d) {
          return function() {
            return x(d.x + d.dx / 2) > Math.PI ? "end" : "start";
          };
        })
        .attrTween("transform", function(d) {
          var multiline = (d.name || "").split(" ").length > 1;
          return function() {
            var angle = x(d.x + d.dx / 2) * 180 / Math.PI - 90,
                rotate = angle + (multiline ? -.5 : 0);
            return "rotate(" + rotate + ")translate(" + (y(d.y) + padding) + ")rotate(" + (angle > 90 ? -180 : 0) + ")";
          };
        })
        .style("fill-opacity", function(e) { return isParentOf(d, e) ? 1 : 1e-6; })
        .each("end", function(e) {
          d3.select(this).style("visibility", isParentOf(d, e) ? null : "hidden");
        });
  }
});

function isParentOf(p, c) {
  if (p === c) return true;
  if (p.children) {
    return p.children.some(function(d) {
      return isParentOf(d, c);
    });
  }
  return false;
}

function colour(d) {
  if (d.children) {
    // There is a maximum of two children!
    var colours = d.children.map(colour),
        a = d3.hsl(colours[0]),
        b = d3.hsl(colours[1]);
    // L*a*b* might be better here...
    return d3.hsl((a.h + b.h) / 2, a.s * 1.2, a.l / 1.2);
  }
  return d.colour || "#fff";
}

// Interpolate the scales!
function arcTween(d) {
  var my = maxY(d),
      xd = d3.interpolate(x.domain(), [d.x, d.x + d.dx]),
      yd = d3.interpolate(y.domain(), [d.y, my]),
      yr = d3.interpolate(y.range(), [d.y ? 20 : 0, radius]);
  return function(d) {
    return function(t) { x.domain(xd(t)); y.domain(yd(t)).range(yr(t)); return arc(d); };
  };
}

function maxY(d) {
  return d.children ? Math.max.apply(Math, d.children.map(maxY)) : d.y + d.dy;
}

// http://www.w3.org/WAI/ER/WD-AERT/#color-contrast
function brightness(rgb) {
  return rgb.r * .299 + rgb.g * .587 + rgb.b * .114;
}
//
// Start My Custom Code Below
//
// Breadcrumb dimensions: width, height, spacing, width of tip/tail.
var b = {
    w: 75, h: 30, s: 3, t: 10
};
// Fade all but the current sequence, and show it in the breadcrumb trail.
function mouseover(d) {

  var percentage = (100 * d.value / totalSize).toPrecision(3);
  var percentageString = percentage + "%";
  if (percentage < 0.1) {
    percentageString = "< 0.1%";
  }

  d3.select("#percentage")
      .text(percentageString);

  d3.select("#explanation")
      .style("visibility", "");

  var sequenceArray = getAncestors(d);
  updateBreadcrumbs(sequenceArray, percentageString);

  // Fade all the segments.
  d3.selectAll("path")
      .style("opacity", 0.3);

  // Then highlight only those that are an ancestor of the current segment.
  vis.selectAll("path")
      .filter(function(node) {
                return (sequenceArray.indexOf(node) >= 0);
              })
      .style("opacity", 1);
}

// Restore everything to full opacity when moving off the visualization.
function mouseleave(d) {

  // Hide the breadcrumb trail
  d3.select("#trail")
      .style("visibility", "hidden");

  // Deactivate all segments during transition.
  d3.selectAll("path").on("mouseover", null);

  // Transition each segment to full opacity and then reactivate it.
  d3.selectAll("path")
      .transition()
      .duration(1000)
      .style("opacity", 1)
      .each("end", function() {
              d3.select(this).on("mouseover", mouseover);
            });

  d3.select("#explanation")
      .transition()
      .duration(1000)
      .style("visibility", "hidden");
}

// Given a node in a partition layout, return an array of all of its ancestor
// nodes, highest first, but excluding the root.
function getAncestors(node) {
  var path = [];
  var current = node;
  while (current.parent) {
    path.unshift(current);
    current = current.parent;
  }
  return path;
}

function initializeBreadcrumbTrail() {
  // Add the svg area.
  var trail = d3.select("#sequence").append("svg:svg")
      .attr("width", width)
      .attr("height", 50)
      .attr("id", "trail");
  // Add the label at the end, for the percentage.
  trail.append("svg:text")
    .attr("id", "endlabel")
    .style("fill", "#000");
}

// Generate a string that describes the points of a breadcrumb polygon.
function breadcrumbPoints(d, i) {
  var points = [];
  points.push("0,0");
  points.push(b.w + ",0");
  points.push(b.w + b.t + "," + (b.h / 2));
  points.push(b.w + "," + b.h);
  points.push("0," + b.h);
  if (i > 0) { // Leftmost breadcrumb; don't include 6th vertex.
    points.push(b.t + "," + (b.h / 2));
  }
  return points.join(" ");
}

// Update the breadcrumb trail to show the current sequence and percentage.
function updateBreadcrumbs(nodeArray, percentageString) {

  // Data join; key function combines name and depth (= position in sequence).
  var g = d3.select("#trail")
      .selectAll("g")
      .data(nodeArray, function(d) { return d.name + d.depth; });

  // Add breadcrumb and label for entering nodes.
  var entering = g.enter().append("svg:g");

  entering.append("svg:polygon")
      .attr("points", breadcrumbPoints)
      .style("fill", function(d) { return colors(d.name); });

  entering.append("svg:text")
      .attr("x", (b.w + b.t) / 2)
      .attr("y", b.h / 2)
      .attr("dy", "0.35em")
      .attr("text-anchor", "middle")
      .text(function(d) { return d.name; });

  // Set position for entering and updating nodes.
  g.attr("transform", function(d, i) {
    return "translate(" + i * (b.w + b.s) + ", 0)";
  });

  // Remove exiting nodes.
  g.exit().remove();

  // Now move and update the percentage at the end.
  d3.select("#trail").select("#endlabel")
      .attr("x", (nodeArray.length + 0.5) * (b.w + b.s))
      .attr("y", b.h / 2)
      .attr("dy", "0.35em")
      .attr("text-anchor", "middle")
      .text(percentageString);

  // Make the breadcrumb trail visible, if it's hidden.
  d3.select("#trail")
      .style("visibility", "");

}

</script>
<script type="text/javascript">
window.setTimeout('myFunction()',1000);

function myFunction() {
	var url='<%=request.getContextPath()%>/principal/getFeeds';
	$.ajax({
			url:url,
			method:'GET',
			async :false,
			cache:false,
			success:function(response){
				var htmlContent = '<ul class="side-feed">';
				$.each(response.modelMap.dtoTeacher,function(index,value){
					var img = value.img;
					htmlContent += '<li>'+
        			'<div class="feed-user-img">';
        			if(typeof img === "undefined"){
        				htmlContent +='<img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png">';
        			}
        			else{
        				htmlContent +='<img src="<%=request.getContextPath()%>/NewStyles/images/teacher-profile/'+img+'">';
        			}
        			htmlContent +='</div>'+
        			'<p>'+value.teacherName+' has '+value.status+' at <span>'+value.activityTime+'</span></p>'+
        			'</li>';
				});
				htmlContent += '</ul>';
				$("#feeds").html(htmlContent);
			}
		});
	window.setTimeout('myFunction()',15000);
	
	
	/*  var xhttp = new XMLHttpRequest();
	  xhttp.onreadystatechange = function() {
	    if (xhttp.readyState == 4 && xhttp.status == 200) {
	      document.getElementById("demo_").innerHTML = xhttp.responseText;
	      
	    
	    }
	  };
	  xhttp.open("GET", url, true);
	  xhttp.send(); */
	
	 /* window.setTimeout('myFunction()',15000); */ 
}
function openChatBar(){
	$("#chatBar").show();
	$("#openChatBar").hide();
	 //$("body").css("padding-right", "198px");
}
function closeChatBar(){
	$("#chatBar").hide();
	$("#openChatBar").show();
	 //$("body").css("padding-right", "0px");
}
function showDiv(schoolId){
	$("#send_message").show();
}
function closeDiv(){
	$("#send_message").hide();
}
</script>

</body>
</html>
