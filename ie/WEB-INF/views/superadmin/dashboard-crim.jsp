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
	
	<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/crim-favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style-crim.css">
<link rel="stylesheet prefetch" href="<%=request.getContextPath()%>/NewStyles/css/datepicker.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/autocomplete/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery-jvectormap-2.0.3.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/NewStyles/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
 	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	
	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
	
	<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/> 

<script src="<%=request.getContextPath()%>/NewStyles/js/canvasjs.min.js"></script>
 <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
  <script>
    zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
    ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
  </script>

													
	<style type="text/css">
	#myChart-top a{display:none}
	.table{
	    width: 100% !important;
	}
	.width30{width:33% !important;}
	
	.crimheader.active-livingheader {
    background: rgba(0, 71, 127, 0.7) !important;
    width: 100% !important;
    float: left !important;
}
.crimheader {
    background: rgba(0, 71, 127, 0.7) !important;
   
    top: 0px !important;
    left: 0px !important;
    width: 100% !important;
    border-bottom: none !important;
    z-index: 99 !important;
}
#chartdiv {
  width: 100%;
  height: 200px;
}
 #map {
        height: 100%;
      }
#myChart {
      height: 100%;
      width: 100%;
    }
.crimLogout{
background: #fff !important;
color:rgba(0, 71, 127, 0.7) !important;
}
.crimwrapper {
    width: 1024px !important;
    margin: 0 auto !important;
}
.blue_line_btm {
    background: url("<%=request.getContextPath()%>/NewStyles/images/blue-line.png") no-repeat center center;
    width: 100%;
    text-align: center;
    height: 30px;
    margin-bottom: 25px;
}
.table {
	width: 100% !important;
}


.border{border:3px solid #006699

}
	</style>
	
</head>

<body>
<div id="adminLoader" style="display: none ; top:50%; left:45%; position:absolute; z-index:999999" align="center"> <img src="<%=request.getContextPath()%>/NewStyles/images/ajax-loader-crim.gif"  alt=""/> </div>
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
            <h2>Mindfulness Initiative Dashboard</h2>
               <div class="blue_line_btm">
               </div>
			   <div class="clr"></div>
     	</div>
    </div>
    
    <style>
    	.newDashbrd_crim{float:left; width:100%; padding:4px 0}
    	.p0{padding:0 !important}
    	.img-shadow{box-shadow: 0 13px 10px #c6c6c6}
    	.txt_top_crm{color:#336d96 !important; font-size:17px !important; text-transform:uppercase;line-height: 48px;}
    	.graph_outer{width:100%; float:left;border: 1px solid #2b5f84; margin-top:30px}
    	.full_colored_txt{background-color:#336d96 !important;}
    	.full_colored_txt {background-color: #336d96;float: left; min-height: 200px; width: 100%;padding: 17px 0; height:100%}
    	.txtpre{color: #fff; float: left;font-size: 60px;line-height: 50px;padding: 30px 0 0; width: 100%;}
    .txtac{color: #fff; float: left; font-size: 27px;line-height: 50px; width: 100%;}
    .top_txt{ border-bottom: 1px solid #d9d9d9;float: left;text-align: center;width: 100%;}
    .b0Bottom{border-bottom:0 !important}
    .funnel_map{width:100%; float:left;padding: 40px 0;}
    .funnel_ul li{font-size:20px; text-transform:uppercase; line-height:50px; color: #9a9a9a; text-align:center !important}
    .blue_crm_bt{background-color:#336d96; padding:10px 20px; border-radius:30px; border:none; color:#fff}
    .clear20{width:100%; float:left; height:20px}
    .Bor_cus{ border: 1px solid #d9d9d9;}
    .bor_cus_right{border-right: 1px solid #d9d9d9;}
    .p15{padding:15px !important}
    .cMap_txt{font-size:25px; text-transform:uppercase;}
    .mT20{margin-top:20px}
    .hr_crm{ color: #333;float: left; height: 2px; margin: 8px 0; padding: 0; width: 100%;}
    </style>
    <!-- New Code -->
    <section class="newDashbrd_crim">
    	<div class="container-fluid Bor_cus">
    		<div class="row">
    			<div class="col-md-12 p0">
    			<!-- Left side -->
    				<div class="col-md-6 bor_cus_right p15">
    					<div class="col-md-12 p0">
    						<div class="col-md-2">
    						<a onclick="getTrackListBySource('mindup');">
    							<img src="<%=request.getContextPath()%>/NewStyles/images/crim-1.jpg"  class="img-shadow img-responsive"></a>
    						</div>
    						<div class="col-md-2">
    						<a onclick="getTrackListBySource('yogaed');">
    							<img src="<%=request.getContextPath()%>/NewStyles/images/crim-3.jpg"  class="img-shadow img-responsive">
    							</a>
    						</div>
    						<div id="iediv" class="col-md-2" >
    							<img src="<%=request.getContextPath()%>/NewStyles/images/crim-2.jpg"  class="innerex img-shadow img-responsive">
    						</div>
    						<div class="col-md-6">
    							<p class="txt_top_crm" id="todayDate"></p>
    						</div>
    					</div>
    					<!-- Graph -->
    					<div class="col-md-12">
    						<div class="graph_outer">
    							<div class="col-md-4 p0">
    								<div class="full_colored_txt">
    									<div class="top_txt text-center" onclick="getPieUsers('Unique Logins');">
    										<span class="txtpre">${loginActivity}%</span>
    										<span class="txtac" >LOGIN ACTIVITY</span>
    										
    									</div>
    									<div class="top_txt text-center b0Bottom" onclick="getPieUsers('Active Practice Users');">
    										<span class="txtpre">${userActivity}%</span>
    										<span class="txtac">USER ACTIVITY</span>
    										
    									</div>
    								</div>
    							</div>
    							<div class="col-md-8 p0">
   						<div id="chartContainer" style="height:290px; width:100%;"></div>
    								<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/graph1.jpg"  class="img-responsive"> --%>
    							</div>
    						</div>
    						<div class="funnel_map">
    							<div class="col-md-12 p0">
    							 <div id='myChart'  style="height: 300px; width: 100%;"></div>
    						
    									 	
    							</div>
    						</div>
    					</div>
    				</div>
    				<!-- End Left side -->
    				<!-- right side -->
    				<div class="col-md-6 p15">
    					<!-- Top 3 icon button -->
    					<div class="col-md-4 text-center">
    						<div class="col-md-12">
	    						<img src="<%=request.getContextPath()%>/NewStyles/images/se-new.jpg" >
    						</div>	
    						<div class="clear20"></div>
    						
    						<a onclick="getEngagedSchools()" class="btn blue_crm_bt">SCHOOL ENGAGEMENT</a>
    					</div>
    					<div class="col-md-4 text-center">
    						<div class="col-md-12">
    							<img src="<%=request.getContextPath()%>/NewStyles/images/htc_new.jpg" >
    						</div>	
    						<div class="clear20"></div>
    						
    						<a class="btn blue_crm_bt" style="background-color:#f5f5f5; color:black;">HOME TO CLASS LINK</a>
    					</div>
    					<div class="col-md-4 text-center">
    						<div class="col-md-12">
    							<img src="<%=request.getContextPath()%>/NewStyles/images/tia_new.jpg" >
    						</div>	
    						<div class="clear20"></div>
    						
    						<a class="btn blue_crm_bt" style="background-color:#f5f5f5; color:black;">TUNE-IN ACTIVITY</a>
    					</div>
    					
    					<!--End Top 3 icon button -->
    					<!--C map -->
    					<div class="clear20"></div>
    					<hr class="hr_crm">
    					<div class="col-md-12">
    						<strong class="cMap_txt">COVERAGE MAP</strong>
    					</div>
    					<hr class="hr_crm">
    					<div class="clear20"></div>
    				<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/map.jpg" > --%>
    				<%-- 	<div class="misc_tabs">
						<div class="misc_tabar background-none">
							<ul>
								<li id="mtab1" class=" selected"><a class="trial"
									href="" onclick="country('USA');">USA</a>
								</li>
						</div>
						<div class="misc_content">
							<!--TAB 1 STARTS-->
							<section class="tehDsh-step1 mtop-5">
								<div id="tab1">
									<div class="admin_map nogapbtm">
										<div id="vmap_usa" class="vmaps chart"></div>
										<div id="map_wrapper" style="display: none;">
											<div id="map_canvas" class="mapping"></div>
										</div>
									</div>
								</div>
							</section>
						</div>
					</div> --%>
					    <div id="map"  style="height: 500px; width: 100%;"></div>
					 
    					<!--End C map  -->
    				</div>
    				<!--End right side  -->
    			</div>
    			
    			
    		</div>
    	
    	</div>
    	<div class="clear20"></div>
    		<!-- bottom 3 button -->
    				<div class="col-md-12">
    					<div class="col-md-4 text-center">
    						<a onClick="dailyCrimUsers();" class="btn blue_crm_bt">WEEKLY USAGE HISTORY</a>
    					</div>
    					<div class="col-md-4 text-center">
    						<a onClick="dailyCrimTopUsers();"  class="btn blue_crm_bt">TOP 10% USERS</a>
    					</div>
    					<div class="col-md-4 text-center">
    						<a class="btn blue_crm_bt" style="background-color:#f5f5f5; color:black;">INCIDENT REPORT LOG</a>
    					</div>
    					
    				</div>
    			
    			<!--End bottom 3 button  -->
    </section>
    <!--end new Code  -->
    
    
    
    
    
    
    
    
    
    
    
            
            <!--misc tabs start-->
            <div class="misc_tabs">
            <!-- <div class="misc_tabar background-none margin-bottom-twnty">
                <ul>
                    <li id="mtab1" class=" selected"><a class="trial" href="javascript:showTab(1,2)">VOLUNTEER REQUESTS</a></li>
                    <li id="mtab2" ><a class="fp" href="javascript:showTab(2,2)">PETITION</a></li>
                </ul>
            </div> -->
            <div >


            </div>
        </div>
            <!--misc tabs end-->
            
            
            
        </div>
        <!--brow_don_camp ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    
		
	
    
    <!--inner_wrapper ends-->
    	
   
     
    
    
</div>


<!-- Change Password Pop Up -->

		<div id="DailyCrimUsers" style="display:none;">

			
			
			<h5>Daily Crim Users</h5>
		<!-- 	<div class="ourStory-Popup" id="manageHomes" style="display:none;">
		<div class="ur_grid ur_grid_pop"> -->

			<table class="table table-stri 200,ped table-hover table-bordered"
				id="crimUsers">
				<thead>
					<tr>
						<th><strong>Name</strong></th>
						<th><strong>Email</strong></th>
						<th><strong>School Name</strong></th>
						<th><strong>Audio Name</strong></th>
						<th><strong>Played On</strong></th>
						
					
						
				
						
					</tr>
				</thead>
								<tbody>
							 <c:forEach var="crimUser" items="${crimUsers}">
    	
    						<tr >
								
								<td>
								 ${crimUser.teacherName}
								</td>
								<td>
								${crimUser.email}
								</td>
								
								<td>
								${crimUser.schoolName}
								</td>
								<td>
								${crimUser.audioName}
								</td>
								<td>
								${crimUser.inviteDate}
								</td>
								
							</tr>
    						</c:forEach>
							
							
							</tbody>
			</table>


	
	</div>
	
	
		<div id="DailyTopCrimUsers" style="display:none;">

			
			
			<h5>Daily Crim Users</h5>
		<!-- 	<div class="ourStory-Popup" id="manageHomes" style="display:none;">
		<div class="ur_grid ur_grid_pop"> -->

			<table class="table table-stri 200,ped table-hover table-bordered"
				id="crimTopUsers">
				<thead>
					<tr>
						<th><strong>Name</strong></th>
						<th><strong>Email</strong></th>
						<th><strong>School Name</strong></th>
						<th><strong>Track Name</strong></th>
						
						
					
						
				
						
					</tr>
				</thead>
								<tbody>
							 <c:forEach var="crimUser" items="${topUsers}">
    	
    						<tr >
								
								<td>
								 ${crimUser.teacherName}
								</td>
								<td>
								${crimUser.email}
								</td>
								
								<td>
								${crimUser.schoolName}
								</td>
							<td>
								${crimUser.audioName}
								</td>
								
							</tr>
    						</c:forEach>
							
							
							</tbody>
			</table>


	
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
	
	 <div id="PieUsersdiv"  style="display:none;">
		
	

			<table class="table table-stri 200,ped table-hover table-bordered"
				id="pieUsers">
				<thead>
					<tr>
						<th><strong>Name</strong></th>
						<th><strong>Email</strong></th>
					
						
					</tr>
				</thead>
				
								
			</table>


	
	</div>
        
      <div id="SchoolEngagementdiv"  style="display:none;">
		
	

			<table class="table table-stri 200,ped table-hover table-bordered"
				id="engagedSchools">
				<thead>
					<tr>
						<th><strong>School Name</strong></th>					
						<th><strong>Active Practising Teachers</strong></th>
						
					</tr>
				</thead>
				
								
			</table>


	
	</div>    
	
	<div id="	" style="display:none;">

			
			
			<h5>Daily Crim Users</h5>
		<!-- 	<div class="ourStory-Popup" id="manageHomes" style="display:none;">
		<div class="ur_grid ur_grid_pop"> -->

			<table class="table table-stri 200,ped table-hover table-bordered"
				id="crimTopUsers">
				<thead>
					<tr>
						<th><strong>Name</strong></th>
						<th><strong>Email</strong></th>
						<th><strong>School Name</strong></th>
						<th><strong>Track Name</strong></th>
						
						
					
						
				
						
					</tr>
				</thead>
								<tbody>
							 <c:forEach var="crimUser" items="${crimUsers}">
    	
    						<tr >
								
								<td>
								 ${crimUser.teacherName}
								</td>
								<td>
								${crimUser.email}
								</td>
								
								<td>
								${crimUser.schoolName}
								</td>
							<td>
								${crimUser.audioName}
								</td>
								
							</tr>
    						</c:forEach>
							
							
							</tbody>
			</table>


	
	</div>

<div id="SchoolEngagementDetailsdiv"  style="display:none;">
		
	

			<table class="table table-stri 200,ped table-hover table-bordered"
				id="engagedSchoolsDetails">
				<thead>
					<tr>
						<th><strong>School Name</strong></th>					
						<th><strong>Active Practising Teachers</strong></th>
						
					</tr>
				</thead>
				
								
			</table>


	
	</div>    


        <div id="mindUpdiv"  style="display:none;">
		
	

			<table class="table table-stri 200,ped table-hover table-bordered"
				id="mindUpTracking">
				<thead>
					<tr>
						<th><strong>Name</strong></th>					
						<th><strong>Email</strong></th>
						<th><strong>Log in date</strong></th>
					</tr>
				</thead>
				
								
			</table>


	
	</div>    
    
    

    


<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.counterup.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/waypoints.min.js"></script> 
<script
		src="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery.jvectormap.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery-jvectormap-us-aea-en.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery-jvectormap-world-mill-en.js"
		type="text/javascript"></script>
<%@include file="../footer.jsp" %>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script> 
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script> 

<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script> 
 <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>


<script src="<%=request.getContextPath()%>/NewStyles/jquery-easy-pie-chart/jquery.easy-pie-chart.js" type="text/javascript"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.axislabels.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/charts.js"></script>   




<script type="text/javascript">
$(function(){
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
	
	$("#iediv").click(function(){           $(".innerex").addClass("border");

	});
 window.onload = function () {
	 
	 
		 
		 var url='<%=request.getContextPath()%>/superadmin/crim-usage';
			$.ajax({
				url:url,
				method:'GET',
				async :false,
				data:{},
				cache:false,
				success:function(response){
					/* alert(response); */
					var result=[];
					
					 var startDate = new Date(new Date().getTime() - 28*24*60*60*1000);  
				   var endDate = new Date(); 
				   var monthNames = ["January", "February", "March", "April", "May", "June",
				                     "July", "August", "September", "October", "November", "December"
				                   ];
				   $("#todayDate")[0].innerHTML= "WEEK OF "+ monthNames[endDate.getMonth()]+ " "+  endDate.getDate()+","+endDate.getFullYear();
				  var iDate = new Date(startDate);
		
			
					   
					$.each(response,function(key,value){
					
						//alert(key);
						
						//alert(new Date(key).getUTCDate());
						//result.push({x:Date.UTC(new Date(key).getUTCFullYear(), new Date(key).getUTCMonth(),new Date(key).getUTCDate()),y: parseInt(value)});
						result.push({x:new Date(key),y: parseInt(value)});
						
				});
					 
		 /* alert(result); */
		  var uniqueLogins=${uniqueLogins};
		  CanvasJS.addColorSet("crimShades",
	                [//colorSet Array

	                
	                "#336d96"                
	                ]);

		 
		    var chart = new CanvasJS.Chart("chartContainer",
		    { 
		    	
		    	colorSet: "crimShades",
		    	 axisY:{
		    		  
		    		  
		    		
		    		 },
		    		 axisX:{
			    	
			    		 /*   interval:1, */
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
    	 		    getUsersForDate(e.dataPoint.x);
    	 		   }
		      }
		      
		      ]
		    });

		    chart.render();
		    
				}
			});
		 var allUsers=${allCrimUsers};
		 var activeCrimUsers=${activeCrimUsers};
		
		 var practicingUsers=${practicingUsers};
		    
		    var chartpie = new CanvasJS.Chart("piechartContainer",
		    	 	{
		    	 		theme: "theme1",
		    	 		title:{
		    	 			text:""
		    	 		},
		    	 		data: [
		    	 		{
		    	 			type: "pie",
		    	 			showInLegend: false,
		    	 			toolTipContent: "{y}",
		    	 			/* yValueFormatString: "#0.#,,. Million", */
		    	 			legendText: "{indexLabel}",
		    	 			dataPoints: [
		    	 				{  y:allUsers , indexLabel: "Registered Users" },
		    	 				{  y:activeCrimUsers, indexLabel: "Password Active" },
		    	 				{  y:practicingUsers, indexLabel: "Active Practice Users" },
		    	 				{  y:uniqueLogins, indexLabel: "Unique Logins"}
		    	 				
		    	 			],
		    	 		click: function(e){
		    	 			
		    	 		   /*  alert(  e.dataSeries.type+ ", dataPoint { x:" + e.dataPoint.indexLabel + ", y: "+ e.dataPoint.y + " }" ); */
		    	 		   getPieUsers(e.dataPoint.indexLabel);
		    	 		   }
		    	 		},
		    	 		
		    	 		]
		    	 	});
		    	 	chartpie.render();
		    	 	
		    	 	
		    	 
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
		
		 var url='<%=request.getContextPath()%>/superadmin/getCrimUsersByDate';
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
					
					function getEngagedSchools()
					{
						$("#adminLoader").show();
						$("#engagedSchools").dataTable().fnDestroy();
						$("#engagedSchools").html('');
						
						 var url='<%=request.getContextPath()%>/superadmin/getEngagedSchools';
						$.ajax({
							url:url,
							method:'GET',
							async :true,
							success:function(response){
								/* alert(response); */
								if(response!=null){
									
									

									 var userDetail='';
									 userDetail+='<thead><tr><th><strong>School Name</strong></th>'+
									 '<th>Active Practising Teachers</th><tbody>';
									 
						
						$.each(response.modelMap.dtoUsers, function(index,value) {
							
								
							userDetail+='<tr><td><a onclick="getSchoolDetailsDashboard(\''+value.schoolName+'\')" style="color: #336d96;">'+value.schoolName+'</a></td>'+
							'<td>'+value.schoolId+'</td></tr>';
						});
											userDetail+='</tbody>';
											$("#engagedSchools").html(userDetail);
										    $("#engagedSchools").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15}); 
										    $("#adminLoader").hide();
											 $.fancybox({
												 'minWidth':700,
											     'autoScale': true,
											     'autoDimensions': true,
											     'centerOnScroll': true,
											     'href' : '#SchoolEngagementdiv'
											  });	
									
							}
							
							}
						});
						
					}
					
					
					function getSchoolDetailsDashboard(schoolName)
					{
						
						$("#engagedSchoolsDetails").dataTable().fnDestroy();
						$("#engagedSchoolsDetails").html('');
						
						 var url='<%=request.getContextPath()%>/superadmin/getEngagedSchoolsOnSchoolName';
						$.ajax({
							url:url,
							method:'GET',
							async :true,
							data:{schoolName:schoolName},
							success:function(response){
								/* alert(response); */
								if(response!=null){
									
									

									 var userDetail='';
									 userDetail+='<thead><tr><th><strong>Teacher Name</strong></th>'+
									 '<th>Email</th>'+
									 '<th>Last LoggedIn</th><th>Latest Track</th><tbody>';
									 
						
						$.each(response.modelMap.dtoUsers, function(index,value) {
							
								
							userDetail+='<tr><td>'+value.teacherName+'</td>'+
											'<td>'+value.email+'</td>'+
											'<td>'+value.uCurrentDate+'</td>'+
											'<td>'+value.audioName+'</td></tr>';
						});
											userDetail+='</tbody>';
											$("#engagedSchoolsDetails").html(userDetail);
										    $("#engagedSchoolsDetails").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15}); 
											
											 $.fancybox({
												 'minWidth':700,
											     'autoScale': true,
											     'autoDimensions': true,
											     'centerOnScroll': true,
											     'href' : '#SchoolEngagementDetailsdiv'
											  });		
									
							}
							
							}
						});
						
					}
					
					function getPieUsers(userType)
					{
						$("#adminLoader").show();
						$("#pieUsers").dataTable().fnDestroy();
						$("#pieUsers").html('');
						
						 var url='<%=request.getContextPath()%>/superadmin/getPieUsersByUserType';
						$.ajax({
							url:url,
							method:'GET',
							async :true,
							data:{"userType":userType},
							success:function(response){
								/* alert(response); */
								if(response!=null){
									
									

									 var userDetail='';
									 userDetail+='<thead><tr><th><strong>Teacher Name</strong></th>'+
									 '<th>Teacher Email</th><tbody>';
									 
						
						$.each(response.modelMap.dtoUsers, function(index,value) {
							
								
							userDetail+='<tr><td>'+value.teacherName+'</td>'+
											'<td>'+value.email+'</td></tr>';
						});
											userDetail+='</tbody>';
											$("#pieUsers").html(userDetail);
										    $("#pieUsers").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15}); 
										    $("#adminLoader").hide();
											 $.fancybox({
												 'minWidth':700,
											     'autoScale': true,
											     'autoDimensions': true,
											     'centerOnScroll': true,
											     'href' : '#PieUsersdiv'
											  });

	
							}
							
							}
						});
						
					}
					
					function getTrackListBySource(source)
					{
						$(".innerex").removeClass("border");
						$("#mindUpTracking").dataTable().fnDestroy();
						$("#mindUpTracking").html('');
						
						 var url='<%=request.getContextPath()%>/superadmin/getTrackListBySource';
						$.ajax({
							url:url,
							method:'GET',
							async :true,
							data:{"source":source},
							success:function(response){
								/* alert(response); */
								if(response!=null){
									
									

									 var userDetail='';
									 userDetail+='<thead><tr><th><strong>Teacher Name</strong></th>'+
									 '<th>Teacher Email</th><th>Login Date</th></tr><tbody>';
									 
						
						$.each(response.modelMap.dtoUsers, function(index,value) {
							
								
							userDetail+='<tr><td>'+value.teacherName+'</td>'+
											'<td>'+value.email+'</td><td>'+value.uCurrentDate+'</td></tr>';
						});
											userDetail+='</tbody>';
											$("#mindUpTracking").html(userDetail);
										    $("#mindUpTracking").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15}); 
											
											 $.fancybox({
												 'minWidth':700,
											     'autoScale': true,
											     'autoDimensions': true,
											     'centerOnScroll': true,
											     'href' : '#mindUpdiv'
											  });



										
							    	
									
									
									
									
										
									 
									
									
							}
							
							}
						});
						
					}
					
					
					
					
					
					function dailyCrimUsers()
					 {
						$("#adminLoader").show();
						 $("#crimUsers").dataTable().fnDestroy();  
						$("#crimUsers").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
						$("#adminLoader").hide();
						 $.fancybox({
							 'minWidth':900,
	    					 'padding':45,
	    					 'minHeight':150,
						     'autoScale': true,
						     'autoDimensions': true,
						     'centerOnScroll': true,
						     'href' : '#DailyCrimUsers'
						    	
						  });
						 
						
					 }
					function dailyCrimTopUsers()
					 {
						$("#adminLoader").show();
						 $("#crimTopUsers").dataTable().fnDestroy();  
						$("#crimTopUsers").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
						$("#adminLoader").hide();
						 $.fancybox({
							 'minWidth':900,
	    					 'padding':45,
	    					 'minHeight':150,
						     'autoScale': true,
						     'autoDimensions': true,
						     'centerOnScroll': true,
						     'href' : '#DailyTopCrimUsers'
						    	
						  });
						 
						
					 }
	
				
				/* function setProgress(variable){
					alert()
					$("#progressCount").val(variable.id);
				} */
				
		

		

			
				

				
			
	

				
				
				</script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script> 

 



    
   
  <!--   validation for teacher	 -->	
 
    		  <script>
    		  
    		  var allUsers=${allCrimUsers};
    			 var activeCrimUsers=${activeCrimUsers};
    			
    			 var practicingUsers=${practicingUsers};
    			 var uniqueLogins=${uniqueLogins};
    var myConfig = {
      "type": "funnel",
      "scale-y": {
        "placement": "opposite",
        "labels": ["Registered Users", "Active Users", "Unique Logins", "Practising Users"],
        "item": {
          "font-color": "#23527c",
          "font-family": "Georgia",
        	  "font-size":"13px"
        },
        "guide": {
          "line-color": "none",
          "items": [{
            "background-color": "#fff"
          }, {
            "background-color": "#fff"
          }, {
            "background-color": "#fff"
          }, {
            "background-color": "#fff"
          }, {
            "background-color": "#fff"
          }]
        }
      },
      "plot": {
    	  
    	    "value-box": {
    	        "text": "%v",
    	        "placement": "in",
    	        "font-color": "white",
    	        "font-family": "Georgia",
    	        "font-size": 15,
    	        "font-weight": "bold"
    	      },
        "min-exit": "30%"
      },
      "series": [{
        "values": [allUsers],
		"background-color": "#336d96"  
      }, {
        "values": [activeCrimUsers],
		"background-color": "#336d96"  
      }, {
        "values": [uniqueLogins],
		"background-color": "#336d96"  
      }, {
        "values": [practicingUsers],
		"background-color": "#336d96"  
      }]
    };

    zingchart.render({
      id: 'myChart',
      data: myConfig,
      height: "100%",
      width: "100%"
    });
    zingchart.click = function(data){ 
      
        var target=data["targetid"];
        if(target=='myChart-graph-id0-plotset-plot-0-node-0')
        	{
        	getPieUsers('Registered Users');
        	}
        else if(target=='myChart-graph-id0-plotset-plot-1-node-0')
        	{
        	getPieUsers('Password Active');
        	}
        else if(target=='myChart-graph-id0-plotset-plot-2-node-0')
    	{
        	getPieUsers('Unique Logins');
    	}
        else if(target=='myChart-graph-id0-plotset-plot-3-node-0')
        	{
        	getPieUsers('Active Practice Users');
        	}
    }
  </script>
  
     <script>
      var map;
      function initMap() {
	   var bounds = new google.maps.LatLngBounds();
	   var originalMapCenter = new google.maps.LatLng( 43.016193, -83.705521);
        map = new google.maps.Map(document.getElementById('map'), {
         center: originalMapCenter,
          zoom: 12,
          zoomControl: false,
		  mapTypeId: 'terrain'
        });
      

		var markers = [
        ['LNorthern Hign School',  43.035887,-83.735435],
        ['Southwestern academy', 42.997887 ,-83.699421],
		['Carman-Ainsworth Middle School', 42.955063 ,-83.707333],
		['Durant - Tuuri - Mott Elementary School',43.014606 ,-83.710825]
		
    ];
	 var beachFlagUrl = "<%=request.getContextPath()%>/NewStyles/images/graduate.png";
    var beachflagShadowUrl = "https://developers.google.com/maps/documentation/javascript/examples/images/beachflag_shadow.png";

    // Origins, anchor positions and coordinates of the marker
    // increase in the X direction to the right and in
    // the Y direction down.
    var image = new google.maps.MarkerImage(
      beachFlagUrl,
      // This marker is 20 pixels wide by 32 pixels tall.
      new google.maps.Size(80, 120),
      // The origin for this image is 0,0.
      new google.maps.Point(0,0),
      // The anchor for this image is the base of the flagpole at 0,32.
      new google.maps.Point(0, 32));
	
    var markers = ${crimSchools};
 
    $.each(markers,function(index,value){
    	
    	var contentString='<div id="content"><p>'+value.schoolName+'</p></div>';
    	 var infowindow = new google.maps.InfoWindow({
             content: contentString
           });

          var position = new google.maps.LatLng(value.latitude, value.longitude);
          bounds.extend(position);
          marker = new google.maps.Marker({
              position: position,
              map: map,
            
              animation: google.maps.Animation.DROP,
              title: value.schoolName
          });
          marker.addListener('click', function() {
              infowindow.open(map,this.position);
            });

    }); 
		
		
map.setMapTypeId('terrain');
		
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDJE-EXNKLvwLcWs7AjzaB0tYUojbzjVII&callback=initMap"
    async defer></script>

	
<!--tab end -->
<%-- <%@include file="../footer.jsp" %> --%>
</body>
</html>
