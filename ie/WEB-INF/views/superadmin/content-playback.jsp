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
	<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/ToggleSwitch.css"/>
	
	<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/> 
	
	
	<style type="text/css">
	.table{
	    width: 100% !important;
	}
	</style>
	
</head>

<body>
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
            <h2>Daily Stats</h2>
               <div class="green_line_btm">
               </div>
			   <div class="clr"></div>
     	</div>
    </div>
            
            <!--misc tabs start-->
            <div class="misc_tabs">
            <!-- <div class="misc_tabar background-none margin-bottom-twnty">
                <ul>
                    <li id="mtab1" class=" selected"><a class="trial" href="javascript:showTab(1,2)">VOLUNTEER REQUESTS</a></li>
                    <li id="mtab2" ><a class="fp" href="javascript:showTab(2,2)">PETITION</a></li>
                </ul>
            </div> -->
            <div class="misc_content">
            
            <div class="table-head-btns" style="padding:15px;">
            			<input type="button" value="Daily"  checked onclick="newUsers(1); revenueDetails(1);" id="daily" class="table-head-btns-slctd"/>
            			<input type="button" value="Weekly" id="weekly" onclick="newUsers(2); revenueDetails(2);"/>
            			<input type="button" value="Monthly" id="monthly" onclick="newUsers(3); revenueDetails(3);"/>
            			<input type="button" value="Top 10% Users" id="topUser" onclick="topUsers();" class="table-head-btns-slctd"/>
            		<%--	<input type="button" value="Feedback Report" id="feedbackReport" onclick="feedbackReport();"/> -->
            			
            			<%-- <input type="button" value="Global Search" id="tab-4" onclick="location.href='<%=request.getContextPath()%>/superadmin/searchResult';"/>
            			<input type="button" value="Revenue Report" id="tab-4" onclick="getAllRevenueDetails();"/> --%>
            			</div>
                <div id="tab1">
                
                	<div class="container">
                	<div class="table-head-btns">
            			<input type="button" value="Teachers" id="tab-2" checked onclick="getAllTeachers(2); newUsers(1); revenueDetails(1); getloginDetails(2);" class="table-head-btns-slctd"/>
            			<input type="button" value="Principals" id="tab-3" onclick="getAllTeachers(3); newUsers(1); revenueDetails(1); getloginDetails(3);"/>
            			<input type="button" value="Parents" id="tab-4" onclick="getAllTeachers(4); newUsers(1); revenueDetails(1); getloginDetails(4)"/>
            			<%-- <input type="button" value="Global Search" id="tab-4" onclick="location.href='<%=request.getContextPath()%>/superadmin/searchResult';"/>
            			<input type="button" value="Revenue Report" id="tab-4" onclick="getAllRevenueDetails();"/> --%>
            			</div>
            			<div class="col-md-8 text-center" style="margin-left: 18%;">
   							<div id="chartContainer" style="height:290px;"></div>
    								<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/graph1.jpg"  class="img-responsive"> --%>
    					</div>
            			<div class="col-md-12 text-center" style="margin-left: 18%;">
            			
 <div class=" ur_grid_pop p-font14 col-md-4" style="margin-top: 55px;">
        <table class="table table-striped table-bordered table-hover" id="sample_20">
							<thead>
							<tr>
								<th><center>
									 Fields
									 </center>
								</th>
								<th>
								<center>
									Count
									</center>
								</th>
								
							</tr>
							</thead>
							<tbody>
							  
    	
    						<tr class="odd gradeX">
								<td>
									<a href="javascript:;" onclick="userDetailsTable(1,3);"> Sign Ups</a>
								</td>
								<td>
									 ${signUp}
								</td>
								
								
							</tr>
    						
							<tr class="odd gradeX">
								<td>
									<a href="javascript:;" onclick="userDetailsTable(1,1);">Logged In</a>
								</td>
								<td>
									 ${loggedIn}
								</td>
								
								
							</tr>
							
							<tr class="odd gradeX">
								<td>
									<a href="javascript:;" onclick="userDetailsTable(1,2);">Tracks Played</a>
								</td>
								<td>
									 ${tracksPlayed}
								</td>
								
								
							</tr>
							
							
							</tbody>
							</table>


        </div>    
        
       
 <div class=" ur_grid_pop p-font14 col-md-4" style="margin-top: 55px;">
        <table class="table table-striped table-bordered table-hover" id="sample_21">
							<thead>
							<tr>
								<th><center>
									 Fields
									 </center>
								</th>
								<th><center>
									 Revenue
									 </center>
								</th>
								
							</tr>
							</thead>
							<tbody>
							  
    	
    						<tr class="odd gradeX">
								<td>
									<a href="javascript:;" onclick="revenueDetailTable(1,1);"> Sign Ups</a>
								</td>
								<td>
									 $${revenueCount}
								</td>
								
								
							</tr>
    						
							<tr class="odd gradeX">
								<td>
									<a href="javascript:;" onclick="revenueDetailTable(1,2);"> Contributions</a>
								</td>
								<td>
									$${contribution}
								</td>
								
								
							</tr>
							
							
							</tbody>
							</table>


        </div>    </div>
                    		<div class="clear5" style="width:100%; float:left; height:5px"></div>	
            			<div class="col-md-4"></div>
            			 <div class="col-md-8 p0">
            			<div class="sw-btn" id="radioAnimate" style="padding-left:60px;">
		    	<p class="pull-left text-all font-2">MONTHLY</p><input type="checkbox" name="onoffswitch1" id="myonoffswitch1"  onchange="onradiocheck();"  class="pull-left onoffswitch-checkbox"><p class="pull-right text-all font-2">ANNUALLY</p>
	    	</div>
	    	</div>
            			
                		<div class="ur_grid ur_grid_pop p-font14">
            	
        <%-- <table class="table table-striped table-hover table-bordered" id="sample_1">
        <thead>
        	<tr>
        		<th></th>
	        	<th class="txtcenter_align"><strong>Email</strong></th>
        	</tr>
        </thead>
    <tbody>
    <c:forEach var="migrated" items="${migrated}">
    	<tr>
    		<td></td>
        	<td class="txtleft_align"><p>${migrated.email}</p></td>
    	</tr>
    	</c:forEach>
       
	</tbody>
</table> --%>

 
<%--  Migrated Joined User count = ${dtoUser.migratedJoinedCount}, Migrate Not Joined User count = ${dtoUser.migratedNotJoinedCount} --%>
 
 <%-- <div class="function-list padding-top-zero" id="joinedNotJoined">
                	<ul>
                    	
                        
                        <li class="new-dshbrd wdth75">
                        	<div class="left-fun-mini wdth50" style="cursor: pointer;" onclick="joinNotJoinFilter(1,'Y')">
                            	<h3>${dtoUser.migratedJoinedCount}</h3>
                                <p>Migrated Joined</p>
                            </div>
                            <div class="mid-fun-mini wdth50 bdrright0" style="cursor: pointer;" onclick="joinNotJoinFilter(1,'N')">
                            	<h3>${dtoUser.migratedNotJoinedCount}</h3>
                                <p>Migrated Not Joined</p>
                            </div>
                        </li>
                    </ul>
                </div> --%>


<table class="table table-striped table-bordered table-hover" id="sample_1">
							<thead>
							<tr>
								<th>
									 Name
								</th>
								<th>
									Email
								</th>
								<th>
									 School Name
								</th>
								<th>
									 Created Date
								</th>
								 <th>
									 Payment Details
								</th> 
							</tr>
							</thead>
							<tbody>
							 <c:forEach var="migrated" items="${migrated}">
    	
    						<tr class="odd gradeX">
								<%-- <td>
									<input type="checkbox" class="checkboxes" value="${migrated.userId}"/>
								</td> --%>
								<td>
									 ${migrated.teacherName}
								</td>
								<td>
									 ${migrated.email}
								</td>
								
								<td>
									 ${migrated.schoolName}
								</td>
								<td>
									 ${migrated.uCurrentDate}
								</td>
								 <td>
									 ${migrated.paypalProfileId}
								</td> 
							</tr>
    						</c:forEach>
							
							
							</tbody>
							</table>



        
        </div>
       
        <div id="adminLoader" style="display: none; margin-top: 300px;" align="center"> <img src="<%=request.getContextPath()%>/NewStyles/images/adminLoader.gif"  alt=""/> </div>
        
        <!-- <input type="button" value="Send Mail" class="startBtn"> -->
                	</div>
                </div>
                <!--TAB 1 ENDS-->
               
            </div>
        </div>
            <!--misc tabs end-->
            
            
            
        </div>
        <!--brow_don_camp ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends--> 
</div>
<div id="teacherProgressBox" style="display:none">
<form action="" id="teacherProgressForm">
<label>Email : </label><input type="text" readonly="readonly" id="email" name="email"/>
<label>Select Class : </label><select id="classId" name="classId" ></select><!-- onchange="setProgress(this);" -->
<label>Set Progress</label><input type="number" id="progressCount" name="progress" maxlength="3"/><br>
<input type="button" title="Save" value="Save" onclick="submitProgress();" class="startBtn"/>
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

<%-- <div id="view_contact_detail" style="display: none; width: 700px;">
    <h3 id="popup-header"></h3>
            <div class="product-page product-pop-up">
              <!-- <div class="row"> -->
                <!-- <div class="col-md-6 col-sm-6 col-xs-9"> -->
                   <form class="form-horizontal form-without-legend" id="form_sample_1" role="form">
			            <div class="ur_grid ur_grid_pop">
			        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_2">
			         <thead>
			        	<tr>
			        			<th><strong>Name</strong></th>
			        			<th><strong>Email</strong></th>
								<th style="display:none;"></th><th style="display:none;"></th>
								</tr></thead>
								<tbody></tbody> 
					</table>
			        </div>
                  </form>
            </div>
    </div> --%>

	<div id="view_contact_detail" style="display: none; width: 700px;">
		<div class="ur_grid ur_grid_pop">
			<table class="table table-striped table-bordered table-hover"
				id="sample_2">
				<thead>
					<tr>
						<th><strong>Name</strong></th>
						<th><strong>Email</strong></th>
						<th style="display: none;"></th>
						<th style="display: none;"></th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
		</div>
	</div>
	<input type="hidden" name="userRoleId" id="userRoleId">

 <div  id="userBarChat" style="display: none;" class="daily-bar-line">
    <h5>User Registered</h5>
   <%--  <div class="bar-line-grey-out">
        <div class="bar-line-grey">Number of Logins:<span id="totalLoginSpan"></span></div></div> --%>
        		<div class="daily-acc-class">
       			 <div class="daily-acc-bar" id="chart_1_1_2" ></div>
       			
                 </div>
                  <div>
				   <input class="change_trackbtn_qus"  type="button"  value="More" onclick="showUsersThirtyDaysMore();"> 
				  </div>
        
    </div>   

<div class="ourStory-Popup"  id="userPerDay" style="display: none;">
            <div class="ur_grid ur_grid_pop">
            	

            	
        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_14">
         <thead>
        	<tr>
        			<th><strong>Name</strong></th>
        			<th><strong>Email</strong></th>
			</tr>
		</thead>
					<tbody></tbody> 
</table>

        
        </div>
        </div> 
        
        
	<div class="ourStory-Popup" id="newUsersPerDay" style="display: none;">
                 
            <div class="ur_grid ur_grid_pop">

        <table class="table table-striped table-hover table-bordered" id="sample_12">
        
         <thead>
        	<tr>
        	<th><strong>Name</strong></th>
        	<th><strong>Email</strong></th>
			</tr>
		</thead>
		<tbody></tbody> 
  
		</table>

        
        </div>
        
    </div>
    
    
    <div class="ourStory-Popup"  id="dailyRevenueDetail" style="display: none;">
            <div class="ur_grid ur_grid_pop">
            	
        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_15">
         <thead>
        	<tr>
        			<th><strong>Email</strong></th>
        			<th><strong>Amount</strong></th>
        			<th><strong>Contribition Date</strong></th>
        			<th><strong>User Type</strong></th>
        			<th><strong>Subscription Type</strong></th>
			</tr>
		</thead>
					<tbody></tbody> 
</table>

        
        </div>
        </div> 
        
         <div class="ourStory-Popup"  id="revenueDetail" style="display: none;">
            <div class="ur_grid ur_grid_pop">
            	
        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_22">
         <thead>
        	<tr>
        			<th><strong>Name</strong></th>
        			<th><strong>Email</strong></th>
        			<th><strong>School Name</strong></th>
        			<th><strong>Created Date</strong></th>
        			<th><strong>Amount</strong></th>
			</tr>
		</thead>
					<tbody>		
							</tbody>
</table>

        
        </div>
        </div> 
        
        
        <div class="ourStory-Popup"  id="userDetails" style="display: none;">
            <div class="ur_grid ur_grid_pop">
            	
        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_23">
         <thead>
        	<tr>
        			<th><strong>Name</strong></th>
        			<th><strong>Email</strong></th>
        			<th><strong>School Name</strong></th>
        			<th><strong>Created Date</strong></th>
        			
			</tr>
		</thead>
					<tbody>		
							</tbody>
</table>

        
        </div>
        </div> 
        
        <div class="ourStory-Popup"  id="topUserDetails" style="display: none;">
            <div class="ur_grid ur_grid_pop">
            	
        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_24">
         <thead>
        	<tr>
        			<th><strong>Name</strong></th>
        			<th><strong>Email</strong></th>
        			<th><strong>School Name</strong></th>
        			<th><strong>Created Date</strong></th>
        			
			</tr>
		</thead>
					<tbody>		
							</tbody>
</table>

        
        </div>
        </div> 
        
         <div class="ourStory-Popup"  id="audioFeedback" style="display: none;">
            <div class="ur_grid ur_grid_pop" >
            	
        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_25">
         <thead>
        	<tr>
        			<th><strong>Email</strong></th>
        			<th><strong>Teacher Name</strong></th>
        			<th><strong>Program Name</strong></th>
        			<th><strong>Comment</strong></th>
        			<th><strong>Audio Quality</strong></th>
        			
			</tr>
		</thead>
					<tbody>		
							</tbody>
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

<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.counterup.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/waypoints.min.js"></script> 

<%@include file="../footer.jsp" %>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
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

<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script> --%> 
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jquery-ui.min.js"></script> --%>


 <script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script> 
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.numberformatter-1.2.3.min.js"></script> --%>
<script src="<%=request.getContextPath()%>/NewStyles/js/charts-flotcharts.js"></script>
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jshashtable-2.1.js"></script> --%>
   
<script src="<%=request.getContextPath()%>/NewStyles/js/ToggleSwitch.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/canvasjs.min.js"></script>  

<script>
	$(function(){
		$("#myonoffswitch1").toggleSwitch();
		// $("#myonoffswitch2").toggleSwitch();
	});
	
</script>
<script type="text/javascript">
function getloginDetails(roleId) {
	  
	// alert("hiii");
	  var url='<%=request.getContextPath()%>/superadmin/usage';
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			data:{roleId:roleId},
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
			   while (iDate <= endDate) {
				   
				$.each(response,function(key,value){
				
					if(iDate.getDay()==new Date(key).getDay())
					result.push({x: new Date(key),y: parseInt(value)});
					else
						result.push({x: new Date(iDate) ,y: 0});	
					
					
			});
				 iDate.setDate(iDate.getDate() + 1);
			   } 
	 /* alert(result); */
	  //var uniqueLogins=${uniqueLogins};
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
	      text: "Logins"
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
} 

</script>
<script type="text/javascript">
$(function(){
	getloginDetails(2);
	$("#header").sticky({ topSpacing: 0 });
	$('[id^=sample_1]').dataTable({"aLengthMenu": [[15, 50, 100, -1],[15, 50, 100, "All"] ],columnDefs: [ {
        orderable: false,
        className: 'select-checkbox',
        targets:   0
    } ],
    select: {
        style:    'os',
        selector: 'td:first-child'
    },
    order: [[ 1, 'asc' ]], "iDisplayLength": 15});
	
	 $('#teacherProgressForm').validate({
         errorElement: 'span', //default input error message container
         errorClass: 'help-block', // default input error message class
         focusInvalid: false, // do not focus the last invalid input
         //ignore: "",
         rules: {
        	 progress:{
         		required: true,
         		digit:true
         	},

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
	
	$("#classId").change(function(event){
		$("#progressCount").val($(this).find("option:selected").attr("id"));
	});
	
	
});
				/* function showTab(current,max){
					for (i=1;i<=max;i++){
					getMyHTMLElement('tab' + i).style.display = 'none';
					getMyHTMLElement('mtab' + i).className = '';
					}
					getMyHTMLElement('tab' + current).style.display = '';
					getMyHTMLElement('mtab' + current).className = 'selected';
					} */
				function sendInviteMail(userEmail){
					var url='<%=request.getContextPath()%>/superadmin/sendInviteMail';
					$.ajax({
						url:url,
						method:'POST',
						async :false,
						data:{userEmail:userEmail},
						cache:false,
						success:function(response){
							alert("Invitation sent successfully")
						}
					});
				}
				
				function setTeacherProgress(email,userId){
					$("#email").val(email);
					$("#progressCount").val('');
					var options = '';
					var url='<%=request.getContextPath()%>/superadmin/getTeacherProgress/'+userId;
					$.ajax({
						url:url,
						method:'GET',
						async :false,
						cache:false,
						success:function(response){
							$.each(response,function(key,value){
								if(typeof value.progressCount === "undefined"){
									options += '<option id="0" value="'+key+'">'+value.className+'</option>';
								}
								else
								{
									options += '<option id="'+value.progressCount+'" value="'+key+'">'+value.className+'</option>';
								}
							});
							$("#classId").html(options);
							$("#classId").trigger("change");
							//$("#progressCount").val(response);
							}
					});
					 $.fancybox({
					     'autoScale': true,
					     'autoDimensions': true,
					     'centerOnScroll': true,
					     'href' : '#teacherProgressBox'
					  });
				}
				
				/* function setProgress(variable){
					alert()
					$("#progressCount").val(variable.id);
				} */
				
				function submitProgress(){
					var email = $("#email").val();
					var progress = $("#progressCount").val().trim();
					var classId = $("#classId").val().trim();
					var url='<%=request.getContextPath()%>/setTeacherProgress?email='+email+'&progress='+progress+'&classId='+classId;
					if(progress!='' && progress.length<4){
						$.ajax({
							url:url,
							method:'GET',
							async :false,
							cache:false,
							success:function(response){
								if(response){
									alert("Progress set successfully");
								}else{
									alert("There is some error in setting progress");
								}
							}
						});
						$.fancybox.close();
					}
				}
				function setTeacherBlock(userId){
					var url='<%=request.getContextPath()%>/superadmin/setTeacherStatus';
					$.ajax({
						url:url,
						method:'POST',
						async :false,
						data:{userId:userId},
						success:function(response){
							if(response!=null){
								if($("#bloackStatus-"+userId).text().replace(/\s/g, "")=='[Block]'){
									$("#bloackStatus-"+userId).text('[Unblock]');
									$("#status-"+userId).text('Inactive');
								}else{
									$("#bloackStatus-"+userId).text('[Block]');
									$("#status-"+userId).text('Active');
								}
								//alert("success");
							return true;
						}
						
					}
				});
				}
				
				 function onradiocheck()
				{
					if(($('#myonoffswitch1')[0].checked)==true)
					{
						//$('#myonoffswitch1')[0].checked=true;
						if($("#tab-2")[0].checked==true){
							getAllTeachers(2,2);
						}
						else if($("#tab-3")[0].checked==true){
							getAllTeachers(3,2);	
						}
						else if($("#tab-4")[0].checked==true){
							getAllTeachers(4,2);
						}				
					}
					else{
						//$('#myonoffswitch1')[0].checked=false;
						if($("#tab-2")[0].checked==true){
							getAllTeachers(2,1);
						}
						else if($("#tab-3")[0].checked==true){
							getAllTeachers(3,1);
						}
						else if($("#tab-4")[0].checked==true){
							getAllTeachers(4,1);
						}
					}
				} 
				
				function getAllTeachers(userRoleId,sliderValue){
					if(sliderValue==null){
						$('#myonoffswitch1')[0].checked=false;
					}
					if(userRoleId==2){
						
						$("#adminLoader").show();
						$("#joinedNotJoined").hide();
						$("#tab-2").val("Loading ...");
						$("#tab-1").removeClass("table-head-btns-slctd");
						$("#tab-2").addClass("table-head-btns-slctd");
						
						$("#tab-3").removeClass("table-head-btns-slctd");
						$("#tab-4").removeClass("table-head-btns-slctd");
						$("#tab-2")[0].checked=true;
						$("#tab-3")[0].checked=false;
						$("#tab-4")[0].checked=false;
						//$('#myonoffswitch1')[0].checked=false;
						/*  if(($('#myonoffswitch1')[0].checked)==true){
							$('#myonoffswitch1')[0].checked=true;
						} */ 
						
						
						//onradiocheck();
						
					}
					else if(userRoleId==3){
						$("#adminLoader").show();
						$("#joinedNotJoined").hide();
						$("#tab-3").val("Loading ...");
						$("#tab-1").removeClass("table-head-btns-slctd");
						$("#tab-2").removeClass("table-head-btns-slctd");
						
						$("#tab-3").addClass("table-head-btns-slctd");
						$("#tab-4").removeClass("table-head-btns-slctd");
						$("#tab-3")[0].checked=true;
						$("#tab-2")[0].checked=false;
						$("#tab-4")[0].checked=false;
						/* if(($('#myonoffswitch1')[0].checked)==true){
							$('#myonoffswitch1')[0].checked=false;
						} */
						//$('#myonoffswitch1')[0].checked=false;
						//onradiocheck();
					}
					else if(userRoleId==4){
						$("#adminLoader").show();
						$("#joinedNotJoined").hide();
						$("#tab-4").val("Loading ...");
						$("#tab-1").removeClass("table-head-btns-slctd");
						$("#tab-2").removeClass("table-head-btns-slctd");
						
						$("#tab-3").removeClass("table-head-btns-slctd");
						$("#tab-4").addClass("table-head-btns-slctd");
						$("#tab-4")[0].checked=true;
						$("#tab-2")[0].checked=false;
						$("#tab-3")[0].checked=false;
						/* if(($('#myonoffswitch1')[0].checked)==true){
							$('#myonoffswitch1')[0].checked=false;
						} */
						//$('#myonoffswitch1')[0].checked=false;
						//onradiocheck();
					}
					else if(userRoleId==1){
						$("#adminLoader").show();
						$("#joinedNotJoined").show();
						$("#tab-1").val("Loading ...");
						$("#tab-4").removeClass("table-head-btns-slctd");
						$("#tab-2").removeClass("table-head-btns-slctd");
						
						$("#tab-3").removeClass("table-head-btns-slctd");
						$("#tab-1").addClass("table-head-btns-slctd");
					}
					
					
					$("#sample_1").dataTable().fnDestroy();
					$("#sample_1").html('');

					var url='<%=request.getContextPath()%>/superadmin/getTeacherDetailsByMonth';
					$.ajax({
						url:url,
						method:'GET',
						async :true,
						data:{userRoleId:userRoleId,sliderValue:sliderValue},
						success:function(response){
							if(response!=null){
								
								/* $.each(response.modelMap.migrated, function(index,value) {
									console.log(value[0]);
								}); */
								
								 var teacherDetail='';
								 teacherDetail+='<thead><tr><th>Name</th>';
								 if(userRoleId==2 || userRoleId==1 || userRoleId==3){
									 if(userRoleId==2 || userRoleId==3){
										 teacherDetail+='<th>Email</th>';
									 }
									 teacherDetail+='<th>School Name</th>';
								 }
								 else{
									 teacherDetail+='<th>Email</th>';
								 }
								 
								 
								 teacherDetail+='<th>Created Date</th>';
								 teacherDetail+='<th>Payment Details</th>'+
								'<th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';
									
									$.each(response.modelMap.migrated, function(index,value) {
										if(userRoleId==1){
											
											teacherDetail+='<tr><td>'+value.email+'</td>'+
											'<td>'+value.schoolName+'</td>'+
											'<td id=status-'+value.userId+'>';
												if(typeof value.joined != 'undefined'){
													teacherDetail+='Joined';
												}
												else{
													teacherDetail+='Not Joined';
												}
												teacherDetail+='</td>'+
												'<td>'+
											 	'<a onclick="setTeacherProgress(\''+value.email+'\','+value.userId+');">[Set Progress] </a>'+
											 	'<a onclick="setTeacherBlock('+value.userId+');" id=bloackStatus-'+value.userId+'>';
											 if(value.isBlocked == 'N'){
												 teacherDetail+='[Block]';
											 }
											 else{
												 teacherDetail+='[Unblock]';
											 }
											 teacherDetail+='</a>';
											 if(value.title == 'Y'){
												 teacherDetail+='<a onclick="sendInviteMail(\''+value.email+'\');" style="cursor: pointer;">';
												 if(typeof value.inviteDate == 'undefined'){
													 teacherDetail+='[Invite]';
												 }
												 else{
													 teacherDetail+='[Re-invite]';
												 }
												 teacherDetail+='</a>';
											 }
											 teacherDetail+='</td>'+
											'<td style="display:none;"></td><td style="display:none;"></td></tr>';
											
										}
										else if(userRoleId==2 || userRoleId==3){
											teacherDetail+='<tr><td>'+value.teacherName+'</td>';
											teacherDetail+='<td>'+value.email+'</td>';
											teacherDetail+='<td>'+value.schoolName+'</td>';
											teacherDetail+='<td>'+value.uCurrentDate+'</td>';
											teacherDetail+='<td>'+value.paypalProfileId+'</td>';
											 
											 teacherDetail+='<td style="display:none;"></td><td style="display:none;"></td></tr>';
										}
										else if(userRoleId==4){
											teacherDetail+='<tr><td>'+value.teacherName+'</td>';
											
											teacherDetail+='<td>'+value.email+'</td>';
											
											teacherDetail+='<td>'+value.uCurrentDate+'</td>';
											teacherDetail+='<td>'+value.paypalProfileId+'</td>';
											 
											 teacherDetail+='<td style="display:none;"></td><td style="display:none;"></td></tr>';
										}				
									});
						    	
									teacherDetail+='</tbody>'; 
									$("#sample_1").html(teacherDetail);
								    $("#sample_1").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
								    $("#adminLoader").hide();		    
								    $("#tab-2").val("Teachers");
								    $("#tab-3").val("Principals");
								    $("#tab-4").val("Parents");
								    $("#tab-1").val("Legacy Users");
							return true;
						}
						else{
							
						}
						}
					});
				}
				function getDailyUserInfo(roleId){
					$("#sample_2").dataTable().fnDestroy();
					$("#sample_2").html('');
					var userId = userId;
					var url='<%=request.getContextPath()%>/superadmin/getDailyRegiteredUserDetails';
					$.ajax({
						url:url,
						method:'POST',
						async :false,
						data:{roleId:roleId},
						success:function(response){
							if(response!=null){
								var teacherDetail='';
								if(roleId==3){
									teacherDetail+='<thead><tr><th><strong>School Name</strong></th>';
								}
								else{
									teacherDetail+='<thead><tr><th><strong>Name</strong></th>';
								}
								 
								teacherDetail+='<th ><strong>Email</strong></th>'+	
									'<th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';
									
									$.each( response.modelMap.userInfo, function(index,value) {
										teacherDetail+='<tr><td ><p>'+value.teacherName+'</p></td>'+
										'<td ><p><a href="mailto:'+value.email+'">'+value.email+'</a></p></td>'+
										'<td style="display:none;"></td><td style="display:none;"></td></tr>';
									});
						    	
									teacherDetail+='</tbody>';
								 
									$("#sample_2").html(teacherDetail);
								    $("#sample_2").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15}); 
								
								
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
				
				
				
				function setChangePassword(email,userId){
					$("#teacherUserId").val(userId);
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
				
				function getDailyBrand(roleId){
					$("#sample_2").dataTable().fnDestroy();
					$("#sample_2").html('');
					var userId = userId;
					var url='<%=request.getContextPath()%>/superadmin/getDailyRegiteredUserNewDetails';
					$.ajax({
						url:url,
						method:'POST',
						async :false,
						data:{roleId:roleId},
						success:function(response){
							if(response!=null){
								var teacherDetail='';
									teacherDetail+='<thead><tr><th><strong>Name</strong></th>';
								 
								teacherDetail+='<th ><strong>Email</strong></th>'+	
									'<th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';
									
									$.each( response.modelMap.userInfo, function(index,value) {
										teacherDetail+='<tr><td ><p>'+value.teacherName+'</p></td>'+
										'<td ><p><a href="mailto:'+value.email+'">'+value.email+'</a></p></td>'+
										'<td style="display:none;"></td><td style="display:none;"></td></tr>';
									});
						    	
									teacherDetail+='</tbody>';
								 
									$("#sample_2").html(teacherDetail);
								    $("#sample_2").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15}); 
												
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
				
				function joinNotJoinFilter(userRoleId, status){
					$("#adminLoader").show();
					$("#sample_1").dataTable().fnDestroy();
					$("#sample_1").html('');
					var url='<%=request.getContextPath()%>/superadmin/getAllTeachers';
					$.ajax({
						url:url,
						method:'GET',
						async :true,
						data:{userRoleId:userRoleId},
						success:function(response){
							if(response!=null){
								 var teacherDetail='';
								 teacherDetail+='<thead><tr><th>Email</th>';
									 teacherDetail+='<th>School Name</th>';
								 teacherDetail+='<th>Status</th>'+	
								 '<th>Action</th>'+
									'<th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';
									
									$.each(response.modelMap.migrated, function(index,value) {
										if(userRoleId==1 && status=='Y'){
											if(typeof value.joined != 'undefined'){
												teacherDetail+='<tr><td>'+value.email+'</td>'+
												'<td>'+value.schoolName+'</td>'+
												'<td id=status-'+value.userId+'>';
														teacherDetail+='Joined';
													teacherDetail+='</td>'+
													'<td>'+
												 	'<a onclick="setTeacherProgress(\''+value.email+'\','+value.userId+');">[Set Progress] </a>'+
												 	'<a onclick="setTeacherBlock('+value.userId+');" id=bloackStatus-'+value.userId+'>';
												 if(value.isBlocked == 'N'){
													 teacherDetail+='[Block]';
												 }
												 else{
													 teacherDetail+='[Unblock]';
												 }
												 teacherDetail+='</a>';
												 if(value.title == 'Y'){
													 teacherDetail+='<a onclick="sendInviteMail(\''+value.email+'\');" style="cursor: pointer;">';
													 if(typeof value.inviteDate == 'undefined'){
														 teacherDetail+='[Invite]';
													 }
													 else{
														 teacherDetail+='[Re-invite]';
													 }
													 teacherDetail+='</a>';
												 }
												 teacherDetail+='</td>'+
												'<td style="display:none;"></td><td style="display:none;"></td></tr>';
											}
											
											
										}
										else if(typeof value.joined == 'undefined' && status=='N'){
											teacherDetail+='<tr><td>'+value.email+'</td>'+
											'<td>'+value.schoolName+'</td>'+
											'<td id=status-'+value.userId+'>';
													teacherDetail+='Not Joined';
												teacherDetail+='</td>'+
												'<td>'+
											 	'<a onclick="setTeacherProgress(\''+value.email+'\','+value.userId+');">[Set Progress] </a>'+
											 	'<a onclick="setTeacherBlock('+value.userId+');" id=bloackStatus-'+value.userId+'>';
											 if(value.isBlocked == 'N'){
												 teacherDetail+='[Block]';
											 }
											 else{
												 teacherDetail+='[Unblock]';
											 }
											 teacherDetail+='</a>';
											 if(value.title == 'Y'){
												 teacherDetail+='<a onclick="sendInviteMail(\''+value.email+'\');" style="cursor: pointer;">';
												 if(typeof value.inviteDate == 'undefined'){
													 teacherDetail+='[Invite]';
												 }
												 else{
													 teacherDetail+='[Re-invite]';
												 }
												 teacherDetail+='</a>';
											 }
											 teacherDetail+='</td>'+
											'<td style="display:none;"></td><td style="display:none;"></td></tr>';
										}
										
									});
						    	
									teacherDetail+='</tbody>';
									$("#adminLoader").hide();
									$("#sample_1").html(teacherDetail);
								    $("#sample_1").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
								
								    $("#tab-2").val("Teachers");
								    $("#tab-3").val("Principals");
								    $("#tab-4").val("Parents");
								    $("#tab-1").val("Legacy Users");
							return true;
						}
						else{
							
						}
						}
					});
				}
				
				</script>
				
				<script type="text/javascript">
				
				
				
				
				  function newUsers(timeFrame){
					  $("#sample_20").dataTable().fnDestroy();
						$("#sample_20").html('');
						var roleId;
					  if($("#tab-2")[0].checked==true){
						  roleId=2;
					  }
					  else if($("#tab-3")[0].checked==true){
						  roleId=3;
					  }
					  else if($("#tab-4")[0].checked==true){
						  roleId=4;
					  }
					  
					  if(timeFrame==1){
							$("#daily").addClass("table-head-btns-slctd");
							$("#weekly").removeClass("table-head-btns-slctd");
							$("#monthly").removeClass("table-head-btns-slctd");
						}
						else if(timeFrame==2){
							$("#daily").removeClass("table-head-btns-slctd");
							$("#weekly").addClass("table-head-btns-slctd");
							$("#monthly").removeClass("table-head-btns-slctd");
						}
						else if(timeFrame==3){
							$("#daily").removeClass("table-head-btns-slctd");
							$("#weekly").removeClass("table-head-btns-slctd");
							$("#monthly").addClass("table-head-btns-slctd");
						}
					  
					  $("#userRoleId").val(roleId);
						   var url='<%=request.getContextPath()%>/superadmin/getCountOfNewUsersThirtyDays';
							$.ajax({
								url:url,
								method:'POST',
								async :false,
								data:{roleId:roleId,timeFrame:timeFrame},
								cache:false,
								success:function(response){
									var totalLogin =0;
									if(response != null){
										   var teacherDetail='';
											 teacherDetail+='<thead><tr><th><center>Fields</center></th>';
												teacherDetail+='<th><center>Count</center></th></tr></thead><tbody>';
											
												teacherDetail+='<tr><td><a href="javascript:;" onclick="userDetailsTable('+timeFrame+',3);">Sign Ups</a></td>';
												teacherDetail+='<td>'+response.signUp+'</td></tr>';
												teacherDetail+='<tr><td><a href="javascript:;" onclick="userDetailsTable('+timeFrame+',1);">Logged In</a></td>';
												teacherDetail+='<td>'+response.loggedIn+'</td></tr>';
												teacherDetail+='<tr><td><a href="javascript:;" onclick="userDetailsTable('+timeFrame+',2);">Tracks Played</a></td>';
												teacherDetail+='<td>'+response.tracksPlayed+'</td></tr></tbody>';
												$("#sample_20").html(teacherDetail);
									}
								}
							});
					} 
				  
				  function revenueDetails(timeFrame){
					  $("#sample_21").dataTable().fnDestroy();
						$("#sample_21").html('');
						var roleId;
					  if($("#tab-2")[0].checked==true){
						  roleId=2;
					  }
					  else if($("#tab-3")[0].checked==true){
						  roleId=3;
					  }
					  else if($("#tab-4")[0].checked==true){
						  roleId=4;
					  }
					  $("#userRoleId").val(roleId);
						   var url='<%=request.getContextPath()%>/superadmin/getCountOfRevenueThirtyDays';
							$.ajax({
								url:url,
								method:'GET',
								async :false,
								data:{roleId:roleId,timeFrame:timeFrame},
								cache:false,
								success:function(response){
									var totalLogin =0;
									if(response != null){
										   var teacherDetail='';
											 teacherDetail+='<thead><tr><th><center>Fields</center></th>';
												teacherDetail+='<th><center>Revenue</center></th></tr></thead><tbody>';
											
												teacherDetail+='<tr><td><a href="javascript:;" onclick="revenueDetailTable('+timeFrame+',1)">Sign Ups</a></td>';
												teacherDetail+='<td>'+'$'+response.model.migrated+'</td></tr>';
												teacherDetail+='<tr><td><a href="javascript:;" onclick="revenueDetailTable('+timeFrame+',2)">Contributions</a></td>';
												teacherDetail+='<td>'+'$'+response.model.contribution+'</td></tr></tbody>';
												$("#sample_21").html(teacherDetail);
							
									}
								}
							});
				  }
				  
				  function revenueDetailTable(timeFrame,clickValue){
					  $("#sample_22").dataTable().fnDestroy();
						$("#sample_22").html('');
						var roleId;
					  if($("#tab-2")[0].checked==true){
						  roleId=2;
					  }
					  else if($("#tab-3")[0].checked==true){
						  roleId=3;
					  }
					  else if($("#tab-4")[0].checked==true){
						  roleId=4;
					  }
					  $("#userRoleId").val(roleId);
						   var url='<%=request.getContextPath()%>/superadmin/getRevenueDetailsThirtyDays';
							$.ajax({
								url:url,
								method:'GET',
								async :false,
								data:{roleId:roleId,timeFrame:timeFrame},
								cache:false,
								success:function(response){
									var totalLogin =0;
									if(response != null){
										if(clickValue==1){
											var revenueDetails='';
											
											revenueDetails+='<thead><tr><th>Name</th>';
											 if(roleId==2 || roleId==1 || roleId==3){
												 if(roleId==2 || roleId==3){
													 revenueDetails+='<th>Email</th>';
												 }
												 revenueDetails+='<th>School Name</th>';
											 }
											 else{
												 revenueDetails+='<th>Email</th>';
											 }
											 revenueDetails+='<th>Created Date</th>';
											 revenueDetails+='<th>Amount</th></tr></thead><tbody>';						 
								
								$.each(response.modelMap.migrated, function(index,value) {
									
									if(roleId==2 || roleId==3){
										revenueDetails+='<tr><td>'+value.teacherName+'</td>'+
										'<td>'+value.email+'</td>'+
										'<td>'+value.schoolName+'</td>'+
										'<td>'+value.uCurrentDate+'</td>'+
										'<td>'+'$'+value.amount+'</td></tr>';
									}
									else if(roleId==4){
										 revenueDetails+='<tr><td>'+value.teacherName+'</td>'+
										'<td>'+value.email+'</td>'+
										'<td>'+value.uCurrentDate+'</td>'+
										'<td>'+'$'+value.amount+'</td></tr>'; 
									}			
								});
								revenueDetails+='</tbody>';
								$("#sample_22").html(revenueDetails);
										}
										
							
							if(clickValue==2){
								
								var contributionDetails='';
								
								contributionDetails+='<thead><tr><th>Name</th>';
								
								contributionDetails+='<th>Email</th>';
								contributionDetails+='<th>Created Date</th>';
								contributionDetails+='<th>Amount</th></tr></thead><tbody>';						 
					
								$.each(response.modelMap.contributions, function(index,value) {
									
									$.each(value, function(index,value) {
										//alert(value.email);
										  contributionDetails+='<tr><td>'+value.teacherName+'</td>'+
										'<td>'+value.email+'</td>'+
										'<td>'+value.uCurrentDate+'</td>'+
										'<td>'+'$'+value.amount+'</td></tr>';  
									});
												
								});
								contributionDetails+='</tbody>';
								$("#sample_22").html(contributionDetails);
									}
																	
												$("#sample_22").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
												
												  $.fancybox({
						        					 'minWidth':900,
						        					 'padding':45,
						        					 'minHeight':250,
						        				     'autoScale': true,
						        				     'autoDimensions': true,
						        				     'centerOnScroll': true,
						        				     'href' : '#revenueDetail'
						        				  }); 
									}
								}
							});
				  }
				  
				  
				  function userDetailsTable(timeFrame,clickValue){
					  $("#sample_23").dataTable().fnDestroy();
						$("#sample_23").html('');
						var roleId;
					  if($("#tab-2")[0].checked==true){
						  roleId=2;
					  }
					  else if($("#tab-3")[0].checked==true){
						  roleId=3;
					  }
					  else if($("#tab-4")[0].checked==true){
						  roleId=4;
					  }
					  
					  $("#userRoleId").val(roleId);
						   var url='<%=request.getContextPath()%>/superadmin/getUsersDetails';
							$.ajax({
								url:url,
								method:'POST',
								async :false,
								data:{roleId:roleId,timeFrame:timeFrame},
								cache:false,
								success:function(response){
									var totalLogin =0;
									if(response != null){
										if(clickValue==1){
											var revenueDetails='';
											
											revenueDetails+='<thead><tr><th>Name</th>';
											 if(roleId==2 || roleId==1 || roleId==3){
												 if(roleId==2 || roleId==3){
													 revenueDetails+='<th>Email</th>';
												 }
												 revenueDetails+='<th>School Name</th>';
											 }
											 else{
												 revenueDetails+='<th>Email</th>';
											 }
											 revenueDetails+='<th>Created Date</th></tr></thead><tbody>';				 
								
								$.each(response.modelMap.loggedInUser, function(index,value) {
									
									if(roleId==2 || roleId==3){
										revenueDetails+='<tr><td>'+value.teacherName+'</td>'+
										'<td>'+value.email+'</td>'+
										'<td>'+value.schoolName+'</td>'+
										'<td>'+value.uCurrentDate+'</td></tr>';
									}
									else if(roleId==4){
										 revenueDetails+='<tr><td>'+value.teacherName+'</td>'+
										'<td>'+value.email+'</td>'+
										'<td>'+value.uCurrentDate+'</td></tr>';
									}			
								});
								revenueDetails+='</tbody>';
								$("#sample_23").html(revenueDetails);
										}
										
							
							 if(clickValue==2){
								
								var contributionDetails='';
								
								contributionDetails+='<thead><tr><th>Email</th>';
								
								contributionDetails+='<th>Audio Name</th>';
								contributionDetails+='<th>Audio Title</th>';
								contributionDetails+='<th>Created Date</th></tr></thead><tbody>';						 
					
								$.each(response.modelMap.tracksPalyedDetails, function(index,value) {
									
									
										//alert(value.email);
										  contributionDetails+='<tr><td>'+value.email+'</td>'+
										'<td>'+value.teacherName+'</td>'+
										'<td>'+value.schoolName+'</td>'+
										'<td>'+value.uCurrentDate+'</td></tr>';  
								
												
								});
								contributionDetails+='</tbody>';
								$("#sample_23").html(contributionDetails);
									} 
							 
							 
							 if(clickValue==3){
									var signupDetails='';
									
									signupDetails+='<thead><tr><th>Name</th>';
									 if(roleId==2 || roleId==1 || roleId==3){
										 if(roleId==2 || roleId==3){
											 signupDetails+='<th>Email</th>';
										 }
										 signupDetails+='<th>School Name</th>';
									 }
									 else{
										 signupDetails+='<th>Email</th>';
									 }
									 signupDetails+='<th>Created Date</th></tr></thead><tbody>';				 
						
						$.each(response.modelMap.signupDetails, function(index,value) {
							
							if(roleId==2 || roleId==3){
								signupDetails+='<tr><td>'+value.teacherName+'</td>'+
								'<td>'+value.email+'</td>'+
								'<td>'+value.schoolName+'</td>'+
								'<td>'+value.uCurrentDate+'</td></tr>';
							}
							else if(roleId==4){
								signupDetails+='<tr><td>'+value.teacherName+'</td>'+
								'<td>'+value.email+'</td>'+
								'<td>'+value.uCurrentDate+'</td></tr>';
							}			
						});
						signupDetails+='</tbody>';
						$("#sample_23").html(signupDetails);
								}
																	
												$("#sample_23").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
												
												  $.fancybox({
						        					 'minWidth':900,
						        					 'padding':45,
						        					 'minHeight':250,
						        				     'autoScale': true,
						        				     'autoDimensions': true,
						        				     'centerOnScroll': true,
						        				     'href' : '#userDetails'
						        				  }); 
									}
								}
							});
					} 
				
				  function topUsers(){
					  $("#sample_24").dataTable().fnDestroy();
						$("#sample_24").html('');
						   var url='<%=request.getContextPath()%>/superadmin/getTopUsers';
							$.ajax({
								url:url,
								method:'POST',
								async :false,
								data:{},
								cache:false,
								success:function(response){
									
									if(response != null){
										
											var revenueDetails='';
											
											revenueDetails+='<thead><tr><th>Email</th>';
											
												 revenueDetails+='<th>Audio Title</th>';
											
												 revenueDetails+='<th>Audio Name</th>';
											
											 revenueDetails+='<th>Created Date</th></tr></thead><tbody>';				 
								
								$.each(response.modelMap.topTracksPlayedDetails, function(index,value) {
									
										revenueDetails+='<tr><td>'+value.email+'</td>'+
										'<td>'+value.teacherName+'</td>'+
										'<td>'+value.schoolName+'</td>'+
										'<td>'+value.uCurrentDate+'</td></tr>';
								});
								revenueDetails+='</tbody>';
								$("#sample_24").html(revenueDetails);
										
										
				
																	
												$("#sample_24").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
												
												  $.fancybox({
						        					 'minWidth':900,
						        					 'padding':45,
						        					 'minHeight':250,
						        				     'autoScale': true,
						        				     'autoDimensions': true,
						        				     'centerOnScroll': true,
						        				     'href' : '#topUserDetails'
						        				  }); 
									}
								}
							});
					} 
				  
				  
				  function feedbackReport(){
					  $("#sample_25").dataTable().fnDestroy();
						$("#sample_25").html('');
						   var url='<%=request.getContextPath()%>/superadmin/feedbackReport';
							$.ajax({
								url:url,
								method:'POST',
								async :false,
								data:{},
								cache:false,
								success:function(response){
									
									if(response != null){
										
											var revenueDetails='';
											
											revenueDetails+='<thead><tr><th>Email</th>';
											
												 revenueDetails+='<th>Teacher Name</th>';
												 revenueDetails+='<th>Class Name</th>';
												 revenueDetails+='<th>Program Name</th>';
												 revenueDetails+='<th>Audio Quality</th>';
												 revenueDetails+='<th>Student Strength</th>';
												 revenueDetails+='<th>Rating</th>';
												 revenueDetails+='<th>Comment</th></tr></thead><tbody>';
								
								$.each(response.modelMap.audioFeedback, function(index,value) {
									
										revenueDetails+='<tr><td>'+value.userEmail+'</td>'+
										'<td>'+value.teacherName+'</td>'+
										'<td>'+value.className+'</td>'+
									 	'<td>'+value.programName+'</td>'+
									 	'<td>'+value.audioQuality+'</td>'+
									 	'<td>'+value.studentQuantity+'</td>'+
									 	'<td>'+value.rating+'</td>'+
						
										'<td>'+value.comment+'</td></tr>';
								});
								revenueDetails+='</tbody>';
								$("#sample_25").html(revenueDetails);
										
										
				
																	
												$("#sample_25").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
												
												  $.fancybox({
						        					 'minWidth':900,
						        					 'padding':45,
						        					 'minHeight':250,
						        				     'autoScale': true,
						        				     'autoDimensions': true,
						        				     'centerOnScroll': true,
						        				     'href' :'#audioFeedback'
						        				  }); 
									}
								}
							});
					} 
				
				  
				  function callDailyActivityBarGraph(objValue,roleId){
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
									  }
									  increment = maxTick/10;
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
						        
						      	 
						               if (item) {
						            	   $("#sample_12").dataTable().fnDestroy();
											$("#sample_12").html('');
						            	 
						                   var tickClicked = item.series.xaxis.ticks[item.dataIndex].label;         
						            	   var url='<%=request.getContextPath()%>/superadmin/getDailyPracticeDetailsByDay';
						           		$.ajax({
						           			url:url,
						           			method:'POST',
						           			async :false,
						           			data:{dailyDate:tickClicked,roleId:roleId},
						           			cache:false,
						           			success:function(response){
						           				
						           			
						           				
						           				if(response != null  && response.modelMap.userInfo!=null){
						        					var userDetails='';
						        					
						        					
						        					if(roleId==3){
						        						userDetails+='<thead><tr><th><strong>School Name</strong></th>';
													}
													else{
														userDetails+='<thead><tr><th><strong>Name</strong></th>';
													}
						        					
						        					userDetails+='<th ><strong>Email</strong></th>'+
						        					'</tr></thead><tbody>';
						        					
						        					$.each( response.modelMap.userInfo, function(index,value) {
						        						userDetails+='<tr><td ><p>'+value.teacherName+'</p></td>'+
						        						'<td ><p><a href="mailto:'+value.email+'">'+value.email+'</a></p></td>'+
						        						'</tr>';
						        					});
						        		    	
						        					userDetails+='</tbody>';
						        		    	
						        			$("#sample_12").html(userDetails);
						        		    $("#sample_12").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
						        		   
						        		    
						        				 $.fancybox({
						        					 'minWidth':900,
						        					 'padding':45,
						        					 'minHeight':250,
						        				     'autoScale': true,
						        				     'autoDimensions': true,
						        				     'centerOnScroll': true,
						        				     'href' : '#newUsersPerDay'
						        				  });
						        	
						        				}
						           				
						           				
						           				
						           				
						           				
						           			}
						           		});
						                   
						                   
						               }
						                });

						        
						        
						      
						       
					}
				  function showUsersThirtyDaysMore(){
				    	showUsers();
				    }
				  
				  function showUsers(){
					 var userRoleId= $("#userRoleId").val();
					  $("#sample_14").dataTable().fnDestroy();
						$("#sample_14").html('');
					   var url='<%=request.getContextPath()%>/superadmin/getNewUsersThirtyDays';
						$.ajax({
							url:url,
							method:'POST',
							async :false,
							data:{roleId:userRoleId},
							cache:false,
							success:function(response){
								if(response != null  && response.modelMap.userInfo!=null){
									var userDetails='';
									
									if(userRoleId==3){
										userDetails+='<thead><tr><th><strong>School Name</strong></th>';
									}
									else{
										userDetails+='<thead><tr><th><strong>Name</strong></th>';
									}
									
									userDetails+='<th><strong>Email</strong></th>'+
									'</tr></thead><tbody>';
									
									$.each( response.modelMap.userInfo, function(index,value) {
										userDetails+='<tr><td ><p>'+value.teacherName+'</p></td>'+
										'<td ><p><a href="mailto:'+value.email+'">'+value.email+'</a></p></td>'+
										'</td></tr>';
									});
						    	
									userDetails+='</tbody>';
						    	
							$("#sample_14").html(userDetails);
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
								     'href' : '#userPerDay'
								  });
					
								}
							}
						});
				}	
				  
				  
				  
	  function getAllRevenueDetails(){
			
			
			$("#sample_15").dataTable().fnDestroy();
			$("#sample_15").html('');
			var url='<%=request.getContextPath()%>/superadmin/getAllRevenueDetails';
			$.ajax({
				url:url,
				method:'GET',
				async :true,
				success:function(response){
					if(response!=null){
						
						
						 var revenueDetails='';
						 revenueDetails+='<thead><tr><th><strong>Email</strong></th>'+
										 '<th><strong>Amount</strong></th>'+
										 '<th><strong>Contribition Date</strong></th>'+
										 '<th><strong>User Type</strong></th>'+
										 '<th><strong>Subscription Type</strong></th></thead><tbody>';
						 
							
							$.each(response.modelMap.listDtoRevenues, function(index,value) {
								
									
								revenueDetails+='<tr><td>'+value.email+'</td>'+
												'<td>'+value.amount+'</td>'+
												'<td>'+value.date+'</td>'+
												'<td>'+value.userType+'</td>'+
												'<td>'+value.subscriptionType+'</td></tr>';
							});
				    	
							revenueDetails+='</tbody>';
						 
							$("#sample_15").html(revenueDetails);
						    $("#sample_15").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
						
						    $.fancybox({
								 'minWidth':900,
								 'minHeight':250,
							     'autoScale': true,
							     'autoDimensions': true,
							     'centerOnScroll': true,
							     'href' : '#dailyRevenueDetail'
							  });
				}
				
				}
			});
		}
</script> 

<%-- <script type="text/javascript">
		function onradiocheck()
		{
			if(($('#myonoffswitch1')[0].checked)==true)
			{
				
				alert("annual");
			}
			else{
				
				alert("monthly");
			}
		}
    </script> --%>
<!--tab end -->
<%-- <%@include file="../footer.jsp" %> --%>
</body>
</html>
