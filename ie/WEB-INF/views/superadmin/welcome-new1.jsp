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
<title>USA Coverage</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">

<%-- <link href="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/> --%>
<link
	href="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery-jvectormap-2.0.3.css"
	rel="stylesheet" type="text/css" />

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
<style type="text/css">
#map_wrapper {
	height: 325px;
}

#map_wrappe {
	height: 625px;
}

#map_canvas {
	width: 100%;
	height: 100%;
}

#map_canva {
	width: 100%;
	height: 100%;
}

#vmap_usa {
	height: 400px;
	width: 1160px;
}

#vmap_us {
	height: 400px;
	width: 1160px;
}

.controls {
	float: right;
}

.dataTables_info {
	text-align: left !important;
}
#vmap_usa1 svg{height:500px !important; width:500px}
</style>
<%-- <style>
		#myModal, #myModal1{left:44% !important; width:855px;}
	</style> --%>
	
</head>

<body>
	<spring:eval var="bucketPath"
		expression="@propertyConfigurer.getProperty('bucket_path')" />
	<div class="wrapper">
		<%@include file="header.jsp"%>
		<!--inner_wrapper starts-->
		<div class="inner_wrapper">
			<input type="hidden" id="currentStateCode">
			<!--inner_header starts-->
			<%-- <div class="inner_header"> <img src="<%=request.getContextPath()%>/NewStyles/images/browse-donation-header.jpg"  alt=""/> </div> --%>

			<!--admin_dashboard starts-->
			<div class="admin_dashboard">
				<div class="content_inner">
					<div class="pracProgress_hdr">
						<h2>Coverage</h2>
						<div class="green_line_btm"></div>
					</div>


<div class="info-box" type="hidden"></div>
					<!--misc tabs start-->
					<div class="misc_tabs">
						<div class="misc_tabar background-none">
							<ul>
								<li id="mtab1" class=" selected"><a class="trial"
									href="" onclick="mapshow();">USA</a>
								</li>
								<li id="mtab21"><a class="fp" href="javascript:showTab(2,4)"
									onclick="country('US');">MASTER DB</a></li>
								
						</div>
						<div class="admin_map nogapbtm" id="mdb" style="width:500px; height:500px; visibility:hidden; margin-left:30%;">

										<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/map-admin.jpg"  alt=""/> --%>
										<div id="vmap_usa1" class="vmaps chart"></div>
										<div id="map_wrapper" style="display: none;">
											<div id="map_canvas" class="mapping"></div>
										</div>
										<%-- <a href="<%=request.getContextPath()%>/superadmin/mapAsPopup"
											target="_blank"
											style="color: #02a451; float: left; text-decoration: underline; width: 100%; margin: 30px 0 0 0; text-align: center;">Open
											as popup</a> --%>
						</div>
						
						<div class="misc_content">
							<!--TAB 1 STARTS-->
							<section class="tehDsh-step1 mtop-5">
								<div id="tab1">


									<!-- <h4>Inner Explorer USA Coverage Map</h4> -->
									<div class="fullrow txtcenter_align mrg_tp20 mrg_btm25"
										style="display: none;" id="liveClassesDiv">
										<!-- <a class="blueBtn dis_inl_bl" id="liveClassesCount"></a> -->
										<a href="javascript:;" class="blueBtn dis_inl_bl"
											style="position: relative;" id="liveClassesBtn">View Live
											Classes<span class="notification-dbord"><p
													id="liveClassesCount">100</p></span>
										</a> <a href="javascript:;" onclick="displayVectorMap();"
											style="color: #02a451; text-decoration: underline;">Go
											Back</a>
									</div>

									<div class="admin_map nogapbtm" id="done" style="margin-top:-400px;">

										<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/map-admin.jpg"  alt=""/> --%>
										<div id="vmap_usa" class="vmaps chart"></div>
										<div id="map_wrapper" style="display: none;">
											<div id="map_canvas" class="mapping"></div>
										</div>
										<%-- <a href="<%=request.getContextPath()%>/superadmin/mapAsPopup"
											target="_blank"
											style="color: #02a451; float: left; text-decoration: underline; width: 100%; margin: 30px 0 0 0; text-align: center;">Open
											as popup</a> --%>
									</div>

									<div class="upcoming_renewals">
										<h5>Map Statistics</h5>

										<div class="function-list padding-top-zero"
											id="joinedNotJoined">
											<ul>
												<li class="new-dshbrd width25p" style="width:33% !important">
													<div class="left-fun-mini width100 bdrright0">
																				<div class="mission_third">
                	<ul>
                    	<li style="width:33% !important"><p>Total No. of Schools<br>${schoolCount}</p></li>
                        <li style="width:33% !important"><p>Total No. of Classes<br>${classCount}</p></li>
                        <li style="width:33% !important"><p>Total No. of Students<br>${studentCount + studentAdjustment}</p></li>
                    </ul>
														</div>
														<%-- <table>
															<tr>
																<td><h3 id="countDisplay">${schoolCount}</h3>
																	<p id="countDisplayLabel">Schools</p></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td><h3 id="countDisplay">${classCount}</h3>
																	<p id="countDisplayLabel">Classes</p></td>
																<td></td>
																<td></td>
																<td></td>
																<td></td>
																<td><h3 id="countDisplay">${studentCount}</h3>
																	<p id="countDisplayLabel">Students</p></td>
															</tr>
														</table> --%>
													</div> 
													<!-- <div class="mid-fun-mini wdth50 bdrright0" style="cursor: pointer;" onclick="joinNotJoinFilter(1,'N')">
													
                            	<h3>20</h3>
                                <p>Last 7 days count</p>
                            </div> -->
												</li>
											</ul>
										</div>

										<input type="button" class="startBtn" value="Last 7 Days"
											id="newRegistrations" onclick="newRegistrations();"
											style="float: left !important;" />
										<!-- style="left:0; top: 25px !important; position: absolute !important;" -->
										<input type="button" class="startBtn" value="Full Statistics"
											id="fullStat" onclick="viewFullStat();"
											style="float: left !important; display: none;" />
											<!-- 	added by avneet -->
											
										<input type="button" class="startBtn" value="REPORTS" id="fullStatbycity"
											 onclick="viewReports();" 
											style="float: left !important;" />
											<!-- 	added by avneet -->
											<!-- data-target="#myModal1" -->
										<!-- style="left:0; top: 25px !important; position: absolute !important; display:none;" -->
										<%-- <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"  >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Referrals Used</h4>
      </div>
      <div class="modal-body">
        <table class="table table-striped table-hover table-bordered"
								id="sample_13" style="width: 800px; cursor: pointer;">
								<thead>
									<tr>
										<th>Email</th>
										<th>Sent</th>
										<th>Used</th>
										<th>Date</th>

										<th style="display: none;"></th>
									</tr>
								</thead>

							</table>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
       
      </div>
    </div>
  </div>
</div> --%>
										<div class="ur_grid">
											<table class="table table-striped table-hover table-bordered"
												id="sample_1">
												<thead>
													<tr>
														<th>SCHOOL NAME</th>
													
														<th>EMAIL</th>
														<th>SUBSCRIPTION TYPE</th>
														<th>CREATED</th>
														<th>ACTION</th>
														<th style="display: none;"></th>
													</tr>
												</thead>
												<!-- <tbody id="mapStats"> -->
												<c:forEach var="dtoSchools" items="${dtoSchools}">
													<%--  <tr>
									        <c:if test="${not empty dtoSchool.key }">
									        	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'Y'}">
									        		<td><a onclick="stateGoogleMap('${dtoSchool.value.stateShort}')" style="color: #02a451;">${dtoSchool.key}</a></td>
									        	</c:if>
									        	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'N'}">
									        		<td><a onclick="stateGoogleMap('${dtoSchool.value.stateShort}')">${dtoSchool.key}</a></td>
									        	</c:if>
									        </c:if>
									        <c:if test="${empty dtoSchool.key }">
									        	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'Y'}">
									        		<td><span style="color: #02a451;">International</span></td>
									        	</c:if>
									        	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'N'}">
									        		<td><span>International</span></td>
									        	</c:if>
									        </c:if>
									        <td>${dtoSchool.value.schoolCount}</td>
									        <td>${dtoSchool.value.totalClassCountUnderSchool}</td>
									        <td>${dtoSchool.value.totalStudentCountUnderSchool}</td>
									        <td><a href=''>Edit</a></td>
									        <td style="display:none;"></td>
									    	</tr> --%>

													<tr>

														<td><a
															onclick="getClassDetails('${dtoSchools.schoolId}')"
															style="color: #02a451; cursor: pointer;"><u>${dtoSchools.schoolName}</u></a></td>
															<td>${dtoSchools.principalEmail}</td>
															<td>${dtoSchools.userType}</td>
														<td>${dtoSchools.schoolCreatedOn}</td>

														<td><a href=''>Edit</a></td>
														<td style="display: none;"></td>
													</tr>
												</c:forEach>
												<!-- </tbody> -->
											</table>




										</div>
										
										<div class="ur_grid" id="datadownload">
											<table class="table table-striped table-hover table-bordered"
												id="sample_4">
												<thead>
													<tr>
														<th>SCHOOL NAME</th>
														<th>EMAIL</th>
													    <th>NAME</th>
													  
													
														<th>SUBSCRIPTION TYPE</th>
														<th>CREATED</th>
													
														
													</tr>
												</thead>
												 <tbody > 
												<%-- <c:forEach var="dtoSchool" items="${dtoSchools}">
										

													<tr>

														    <td>${dtoSchool.schoolName}</td>
															<td>${dtoSchool.city}</td>
															<td>${dtoSchool.state}</td>
														    <td>${dtoSchool.principalEmail}</td>
															<td>${dtoSchool.userType}</td>
															<td>${dtoSchool.schoolCreatedOn}</td>

														
														
													</tr>
												</c:forEach> --%>
										</tbody>
											</table> 
											
										<!-- 	 <input class="submit-btn fl" type="button" value="DOWNLOAD"
							onclick="downloadcitydata();">
 -->
</div>


										
									</div>

								</div>
							</section>
							
							
							
							
							<!--TAB 1 ENDS-->
							<!--TAB 2 STARTS-->
							<section class="tehDsh-step1 mtop-5">
								<div id="tab2" style="display: none;">
								

									
								</div>
							</section>
							<!--TAB 2 ENDS-->
							<!--TAB 3 STARTS-->
							<section class="tehDsh-step1 mtop-5">
								<div id="tab3" style="display: none;">
									No data Available
								</div>
							</section>
							<!--TAB 3 ENDS-->
							<!--TAB 4 STARTS-->
							<section class="tehDsh-step1 mtop-5">
								<div id="tab4" style="display: none;">
									No data Available
								</div>
							</section>
							<!--TAB 4 ENDS-->
						</div>
					</div>
					<!--misc tabs end-->

</div>
			</div>
			<!--admin_dashboard ends-->

			<!--inner_header ends-->

		</div>
		<!--inner_wrapper ends-->
	</div>

	<!-- Send Email Popup  Contact Form -->
	<div id="sendEmailToContactPopup" class="playback-Popup"
		style="display: none;">
		<div class="hdr hdr_new padding-btm">
			<form name="contactemailForm" id="contactemailForm">
				<div class="popup-form popupSend-form">
					<p>Send Email</p>
					<div class="pop-form-field borderNone">
						<input type="text" placeholder="Subject" id="title" name="title" />
					</div>
					<div class="pop-form-field">
						<textarea placeholder="Write Message" id="Contactmessage"
							name="Contactmessage" class="Mbtm0"></textarea>
					</div>
					<div class="btns-outer mtop10">
						<input class="submit-btn fl" type="button" value="SEND"
							onclick="submitContactEmail();">
					</div>
				</div>
			</form>

		</div>
		<input type="hidden" name="contactPersonId" id="contactPersonId"
			readonly="readonly" />
	</div>

	<div id="classDetailPopup" class="playback-Popup"
		style="display: none;">
		<div class="hdr hdr_new padding-btm">

			<table class="table table-striped table-hover table-bordered"
				id="sample_2" style="width:800px;cursor:pointer;">
				<thead>
					<tr>
						<th>USER TYPE</th>
						<th>CLASS NAME</th>


						<th style="display: none;"></th>
					</tr>
				</thead>

			</table>

		</div>

	</div>
	<div id="teacherDetailPopup" class="playback-Popup"
		style="display: none;">
		<div class="hdr hdr_new padding-btm">

			<table class="table table-striped table-hover table-bordered"
				id="sample_3" style="width:800px">
				<thead>
					<tr>
						<th>TEACHER EMAIL</th>
						<th>TEACHER NAME</th>


						<th style="display: none;"></th>
					</tr>
				</thead>

			</table>

		</div>

	</div>
	<!-- added by avneet -->
	<div id="Reports" style="display:none">
	<div class="mail_fltr">
					<ul>
					<li class="program-id-new" >
							<select id='purposediv' onclick="sendProgramId();">
								<option value="0">Choose State</option>
								<option value="Massachusetts">Massachusetts</option>
								<option value="Michigan">Michigan</option>
								<option value="Ohio">Ohio</option>
								<option value="California">California</option>
								<option value="Colorado">Colorado</option>
								<option value="Washington">Washington</option>
							</select>							
	            		</li>
					</ul>
					<%-- <ul>
					<li class="program-id-new" >
							<select id='purposediv' onclick="sendProgramId();">
								<option value="0">Choose Role</option>
								<option value="1">Teacher</option>
								<option value="2">School</option>
								
							</select>							
	            		</li>
					
					</ul> --%>
					<input class="startBtn" type="button" value="PREVIEW"
							onclick="forPreview();">
					<input type="hidden" id="schools" value="${dtoSchools}"/>
					
				</div>
<!-- <a id="viewMassachusetts" onclick="viewMassachusettsReport();">Massachusetts</a><br/><input type="button" class="startBtn" value="Download"
											id="downloadMassachusetts" onclick="reportMassachusetts();"/> 
											 
<a id="viewMichigan" onclick="viewMichiganReport();">Michigan</a><br/>
<a id="viewOhio" onclick="viewOhioReport();">Ohio</a><br/>
<a id="viewCalifornia" onclick="viewCaliforniaReport();">California</a><br/>
<a id="viewColorado" onclick="viewColoradoReport();">Colorado</a><br/>
<a id="viewWashington" onclick="viewWashingtonReport();">Washington</a><br/> -->


</div>
<!-- added by avneet -->

<div class="ourStory-Popup"  id="userDetails" style="display: none;">
            <div class="ur_grid ur_grid_pop">
            	
        <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_23">
         <thead>
        	<tr>
        			<th><strong>Name</strong></th>
        			<th><strong>Address</strong></th>
        			<th><strong>County</strong></th>
        			<th><strong>City</strong></th>
        			<th><strong>State</strong></th>
        			
			</tr>
		</thead>
					<tbody>		
							</tbody>
</table>

        
        </div>
        </div>
        
        <div class="ourStory-Popup"  id="school-popup" style="display: none;">
           <div class="ur_grid ur_grid_pop">
               
               
       <table class="table table-stri 200,ped table-hover table-bordered"  id="sample_10">
        <thead>
           <tr>
                   <th><strong>Name</strong></th>
                   <th><strong>Email</strong></th>
                   <th><strong>School Name</strong></th>
                   <th><strong>City</strong></th>
                   
            </tr>
        </thead>
                    <tbody>        
                            </tbody>
</table>

       
       </div>
       </div> 
       <div id="adminLoader" style="display:none; top: 50%; position: absolute;left: 50%;" align="center"> <img src="<%=request.getContextPath()%>/NewStyles/images/adminLoader.gif"  alt=""/> </div>
       
       
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
		type="text/javascript"></script>
	<%@include file="../footer.jsp"%>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/bootstrapcdn.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
	<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
		$('[data-toggle="tooltip"]').tooltip();
		 var script = document.createElement('script');
		    script.src = "http://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
		    document.body.appendChild(script);
		
		
	});
	</script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
	<script defer
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
	<%-- 	<script src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>    --%>
	<%-- 	<script src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script> --%>
	<%-- 	 <script src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script> --%>

	<script
		src="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery.jvectormap.min.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery-jvectormap-us-aea-en.js"
		type="text/javascript"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/jvectormap/jquery-jvectormap-world-mill-en.js"
		type="text/javascript"></script>

	<!-- <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script> -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/select2/select2.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
	<script
		src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>
	<script language="javascript" type="text/javascript"
		src="<%=request.getContextPath()%>/NewStyles/js/tab.js"></script>
	<script type="text/javascript">
	<!-- added by avneet -->
	function viewReports(){
		$.fancybox({
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#Reports'
		  });
	}
	/* function downloadcitydata(){
		alert("button clicked");
	} */
	function sendProgramId(){
		var programId = $('#purposediv option:selected').val();
		$("#programId").val(programId);
	}
function getStateRecordsSchoolValue(code){
  	var html = '';
	$.ajax({
		url : "<%=request.getContextPath()%>/getStateInfo/"+code,
		method : 'GET',
		async:false,
		success : function(result) {
			if(result.totalSchools){
			  html= result.totalSchools;
			}
		}
	});
	return html;
  }
  
function getStateRecordsIe(code){
  	var html = '';
	$.ajax({
		url : "<%=request.getContextPath()%>/getStateInfo/"+code,
		method : 'GET',
		async:false,
		success : function(result) {
			if(result.totalSchools){
			html= '<br/>Number Of Students : '+result.numberOfStudent+'</br>'+
			'Number Of Schools : '+result.totalSchools+'<br/>'+
			'Number Of Classes : '+result.schoolClasses+'<br/>';
			}
		}
	});
	return html;
  }
  
function getStateInfoWithLatLong(code){
  	var html = '';
	$.ajax({
		url : "<%=request.getContextPath()%>/getStateInfoWithLatLong/"+code,
		method : 'GET',
		async:false,
		success : function(result) {
			if(result.dtoStateList){
			html=result;
			}
		}
	});
	return html;
  }

function getStateRecords(code){
	
  	var html = '';
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/getMasterSchoolsListCount/",
		data : {code:code},
		method : 'GET',
		async:false,
		success : function(result) {
			
			if(typeof result==='undefined'){
			html= '<br/>'+
			'Number Of Schools : 0';
			}
			else
				{
				html= '<br/>'+
				'Number Of Schools : '+result;
				}
		}
	});
	return html;
  }

    $(function(){
    	
		var states = ${statesListDetail};
		var mapMarkers = [];
	 	var mapMarkersValues = [];
	 	
	    $.each(states,function(index,value){
	    	//console.log(value.dtoStateList);
	 		if(value!=""){
	 			//var maplat = getStateInfoWithLatLong(value);
	 			$.each(value.dtoStateList,function(ind,val){
	 				//console.log(val);
	 				var html2 = val.schoolName;//+'<br> Number of Students:'+val.numberOfStudent+'<br> Number of Classes:'+val.schoolClasses;
	 				mapMarkers.push({name: val.schoolName,schoolCity: val.schoolCity,classes:val.schoolClasses,students:val.numberOfStudent, latLng: [val.latitude,val.longitude]});
	 				//console.log(val.schoolClasses);
	 				mapMarkersValues.push(val.schoolClasses*3);
	 			});	
	 		}
		}); 
	 
    $('#vmap_usa').vectorMap({
      map: 'us_aea_en',
      markers:mapMarkers,
      hoverColor: false,
      color: '#c6c6c6',
	    normalizeFunction: 'polynomial',
	    hoverOpacity: 0.4,
	    markersSelectable: true,
	    zoomMax: 92,//def is 8
        markerStyle: {
    	  initial: {
    		    fill: '#a8d7bf',
    		    stroke: '#7fcba4',
    		    "fill-opacity": 0.4,
    		    "stroke-width": 1,
    		    "stroke-opacity": 1
    		   // r: 7
    		  },
    		  hover: {
    		    stroke: '#7fcba4',
    		    "stroke-width": 1,
    		    cursor: 'pointer'
    		  },
    		  selected: {
    		      fill: '#3db477'
    		    }
    		},
	    
	    regionStyle: {
	    	  initial: {
	    		    fill: '#d8d8d8',
	    		    "fill-opacity": 0.8,
	    		    stroke: '#c6c6c6',
	    		    "stroke-width": 0.7,
	    		    "stroke-opacity": 1
	    		  },
	    		  hover: {
	    		    "fill-opacity": 1,
	    		    cursor: 'pointer'
	    		  }
	    		  
	    		},
	   backgroundColor: 'none',  
      series: {
    	    markers: [{
    	      attribute: 'fill',
    	      min: 1,
    	      max: 200
    	    },{
    	      attribute: 'r',
    	      scale: [7, 28],
    	      values:mapMarkersValues,
    	      min: 7,
    	      max: 150
    	    }]
    	  },
    	  
    	  onRegionTipShow: function(event, label, code){
    		 var shortState = code.substring(3,code.length);
    	        label.html(
    	        		label.html()+getStateRecordsIe(shortState)
    	        );
    	  } ,
    	  onMarkerTipShow: function(event, label, index){
    		  var sname = mapMarkers[index].name;
    		  //var classes = mapMarkers[index].classes;
    		 // var students = mapMarkers[index].students;
    	        label.html(
    	        		sname
    	        );
    	      },
          onRegionOver: function (event, code) {
              if (code == 'ca') {
                  event.preventDefault();
              }
          },
          /* onRegionClick: function (element, code, region) {
              var message = 'You clicked "' + region + '" which has the code: ' + code.toUpperCase();
              //alert(message);
           	var geocoder = new google.maps.Geocoder();
           	geocoder.geocode({'address':code,componentRestrictions: {
           	    country: 'US'
         	  }}, function(results, status) {
                  if (status == google.maps.GeocoderStatus.OK) {
                      //map.setCenter(results[0].geometry.location);
                     var lat = ( results[0].geometry.location.lat().toFixed(6));
                     var lng = (results[0].geometry.location.lng().toFixed(6));
                     initialize(lat,lng);
                 		$("#liveClassesDiv").show();
              		$("#liveClassesBtn").attr("onclick","viewLiveClasses("+lat+","+lng+")");
              		//$("#newRegistrations").hide();
                  } else {
                      alert("Lat and long cannot be found.");
                  }
              });
              jQuery('#vmap_usa').hide();
              $('#map_wrapper').show();
          } */
          onRegionClick: function(element, code, region){
         	 var stateCode = code.substring(3,code.length);
             getSchools(stateCode);
   
             
             
      	  }
    });
    	
    /* master DB */
     $('#vmap_usa1').vectorMap({
      map: 'us_aea_en',
      //markers:mapMarkers,
      hoverColor: false,
      color: '#c6c6c6',
	    normalizeFunction: 'polynomial',
	    hoverOpacity: 0.4,
	    markersSelectable: true,
	    zoomMax: 92,//def is 8
        markerStyle: {
    	  initial: {
    		    fill: '#a8d7bf',
    		    stroke: '#7fcba4',
    		    "fill-opacity": 0.4,
    		    "stroke-width": 1,
    		    "stroke-opacity": 1
    		   // r: 7
    		  },
    		  hover: {
    		    stroke: '#7fcba4',
    		    "stroke-width": 1,
    		    cursor: 'pointer'
    		  },
    		  selected: {
    		      fill: '#3db477'
    		    }
    		},
	    
	    regionStyle: {
	    	  initial: {
	    		    fill: '#d8d8d8',
	    		    "fill-opacity": 0.8,
	    		    stroke: '#c6c6c6',
	    		    "stroke-width": 0.7,
	    		    "stroke-opacity": 1
	    		  },
	    		  hover: {
	    			  "fill":"#a8d7bf",
	    		    "fill-opacity": 1,
	    		    cursor: 'pointer'
	    		  }
	    		  
	    		},
	   backgroundColor: 'none',  
      series: {
    	    markers: [{
    	      attribute: 'fill',
    	      min: 1,
    	      max: 200
    	    },{
    	      attribute: 'r',
    	      scale: [7, 28],
    	      values:mapMarkersValues,
    	      min: 7,
    	      max: 150
    	    }]
    	  },
    	  
    	  onRegionTipShow: function(event, label, code){
    		 var shortState = code.substring(3,code.length);
    	        label.html(
    	        		label.html()
    	        ); 
    	  } ,
    	  onMarkerTipShow: function(event, label, index){
    		  var sname = mapMarkers[index].name;
    		  //var classes = mapMarkers[index].classes;
    		 // var students = mapMarkers[index].students;
    	        label.html(
    	        		sname
    	        );
    	      },
          onRegionOver: function (event, code) {
              if (code == 'ca') {
                  event.preventDefault();
              }
          },
                 onRegionClick: function(element, code, region){
            	 var stateCode = code.substring(3,code.length);
                MasterDB(stateCode);
      
         	  }
    
    });
    	
    	//====================
     	
     	/* Second map */
    // $('#vmap_us').width(1160).height(400);	
      $('#vmap_us').vectorMap({
      map: 'us_aea_en',
      markers:[],
      hoverColor: false,
      color: '#c6c6c6',
	    normalizeFunction: 'polynomial',
	    hoverOpacity: 0.4,
	    markersSelectable: true,
	    zoomMax: 92,//def is 8
        markerStyle: {
    	  initial: {
    		    fill: '#a8d7bf',
    		    stroke: '#7fcba4',
    		    "fill-opacity": 0.4,
    		    "stroke-width": 1,
    		    "stroke-opacity": 1
    		   // r: 7
    		  },
    		  hover: {
    		    stroke: '#7fcba4',
    		    "stroke-width": 1,
    		    cursor: 'pointer'
    		  },
    		  selected: {
    		      fill: '#3db477'
    		    }
    		},
	    
	    regionStyle: {
	    	  initial: {
	    		    fill: '#d8d8d8',
	    		    "fill-opacity": 0.8,
	    		    stroke: '#c6c6c6',
	    		    "stroke-width": 0.7,
	    		    "stroke-opacity": 1
	    		  },
	    		  hover: {
	    		    "fill-opacity": 1,
	    		    cursor: 'pointer'
	    		  }
	    		  
	    		},
	   backgroundColor: 'none',  
      series: {
    	    markers: [{
    	      attribute: 'fill',
    	      min: 1,
    	      max: 200
    	    },{
    	      attribute: 'r',
    	      scale: [7, 28],
    	      values:[],
    	      min: 7,
    	      max: 150
    	    }]
    	  },
    	  
    	  onRegionTipShow: function(event, label, code){
    		 var shortState = code.substring(3,code.length);
    	        label.html(
    	        		label.html()+getStateRecords(shortState)
    	        );
    	  } ,
    	  
    	      onRegionOver: function (event, code) {
                  if (code == 'ca') {
                      event.preventDefault();
                  }
              },
              onRegionClick: function (element, code, region) {
                  var message = 'You clicked "' + region + '" which has the code: ' + code.toUpperCase();
               	var geocoder = new google.maps.Geocoder();
               	geocoder.geocode({'address':code, componentRestrictions: {
               	    country: 'US'
               	  }}, function(results, status) {
                      if (status == google.maps.GeocoderStatus.OK) {
                         var lat = ( results[0].geometry.location.lat().toFixed(6));
                         var lng = (results[0].geometry.location.lng().toFixed(6));
                         //initialize1(lat,lng,code.toUpperCase());
                         loadTable(code.toUpperCase());
                         var currentStateCode = code.toUpperCase();
                         $("#currentStateCode").val(currentStateCode);
                      } else {
                          alert("Lat and long cannot be found.");
                      }
                  });
                  
                  $('#vmap_us').hide();
                  $('#map_wrappe').show();
              }
   
    });
     	

     	
    });
	
    function stateGoogleMap(code){
    	//alert('Inside state google map');
     	var geocoder = new google.maps.Geocoder();
     	geocoder.geocode({'address':code}, function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                //map.setCenter(results[0].geometry.location);
               var lat = ( results[0].geometry.location.lat().toFixed(6));
               var lng = (results[0].geometry.location.lng().toFixed(6));
               initialize(lat,lng);
           		$("#liveClassesDiv").show();
        		$("#liveClassesBtn").attr("onclick","viewLiveClasses("+lat+","+lng+")");
        		//$("#newRegistrations").hide();
            } else {
                alert("Lat and long cannot be found.");
            }
        });
        jQuery('#vmap_usa').hide();
        $('#map_wrapper').show();
    }
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
	function displayVectorMap(){
        jQuery('#vmap_usa').show();
        var states = ${statesList};
        var schoolValue=0;
    	var schoolColor ="#C8EEFF";
     	$.each(states,function(index,value){
     		if(value!= ""){
     			
     			schoolValue=getStateRecordsSchoolValue(value);
     			if(schoolValue>=0 && schoolValue<=10){
     				schoolColor="#09994c";
     			}
     			else if(schoolValue>10 && schoolValue<=20){
     				schoolColor="#0c8e47";
     			}
     			else if(schoolValue>20 && schoolValue<=50){
     				schoolColor="#187f46";
     			}
				else if(schoolValue>50 && schoolValue<=100){
					schoolColor="#0f8442";
     			}
				else if(schoolValue>100 && schoolValue<=150){
					schoolColor="#176b3b";
				}
				else if(schoolValue>150 ){
					schoolColor="#07934b";
				}
     			$('#vmap_usa').vectorMap('select', value.toLowerCase(),schoolColor);
     		}
    	});
        $('#map_wrapper').hide();
        $("#liveClassesDiv").hide();
       // $("#newRegistrations").show();
        $('#sample_1').dataTable().fnDestroy();
        $('#sample_1').removeAttr("style");
        $('#sample_1').children().children().children(":visible").removeAttr("style");
        $("#mapStats").html('');
        var newContent = '';
        <c:forEach var="dtoSchool" items="${dtoSchoolsForMap}">
        <c:if test="${not empty dtoSchool.key }">
    	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'Y'}">
    	newContent+='<td><a onclick="stateGoogleMap(\'${dtoSchool.value.stateShort}\')" style="color: #02a451;">${dtoSchool.key}</a></td>';
    	</c:if>
    	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'N'}">
    	newContent+='<td><a onclick="stateGoogleMap(\'${dtoSchool.value.stateShort}\')">${dtoSchool.key}</a></td>';
    	</c:if>
        </c:if>
        <c:if test="${empty dtoSchool.key }">
        	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'Y'}">
        	newContent+='<td><span style="color: #02a451;">International</span></td>';
    	</c:if>
    	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'N'}">
    	newContent+='<td><span>International</span></td>';
    	</c:if>
    </c:if>
    newContent+='<td>${dtoSchool.value.schoolCount}</td>';
    newContent+='<td>${dtoSchool.value.totalClassCountUnderSchool}</td>';
    newContent+='<td>${dtoSchool.value.totalStudentCountUnderSchool}</td>';
    newContent+='<td style="display:none;"></td>';
    if(newContent!=''){
		$('#mapStats').append('<tr>'+newContent+'</tr>');
	}
    newContent = '';
    	</c:forEach>
		$('#sample_1').dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
		 var oTable = $('#sample_1').dataTable();
   	  oTable.fnSort( [ [1,'desc'] ] );
   
	}
	
	function displayMasterVectorMap(){
		$('#map_wrappe').hide();
		jQuery('#vmap_us').show();
		
	  	/* Second map */
	    // $('#vmap_us').width(1160).height(400);
	  	var mapObject = $('#vmap_us').vectorMap('get', 'mapObject');
	    // mapObject.removeAllMarkers();
	     mapObject.remove();
	  	
	      $('#vmap_us').vectorMap({
	      map: 'us_aea_en',
	      markers:[],
	      hoverColor: false,
	      color: '#c6c6c6',
		    normalizeFunction: 'polynomial',
		    hoverOpacity: 0.4,
		    markersSelectable: true,
		    zoomMax: 92,//def is 8
	        markerStyle: {
	    	  initial: {
	    		    fill: '#a8d7bf',
	    		    stroke: '#7fcba4',
	    		    "fill-opacity": 0.4,
	    		    "stroke-width": 1,
	    		    "stroke-opacity": 1
	    		   // r: 7
	    		  },
	    		  hover: {
	    		    stroke: '#7fcba4',
	    		    "stroke-width": 1,
	    		    cursor: 'pointer'
	    		  },
	    		  selected: {
	    		      fill: '#3db477'
	    		    }
	    		},
		    
		    regionStyle: {
		    	  initial: {
		    		    fill: '#d8d8d8',
		    		    "fill-opacity": 0.8,
		    		    stroke: '#c6c6c6',
		    		    "stroke-width": 0.7,
		    		    "stroke-opacity": 1
		    		  },
		    		  hover: {
		    		    "fill-opacity": 1,
		    		    cursor: 'pointer'
		    		  }
		    		  
		    		},
		   backgroundColor: 'none',  
	      series: {
	    	    markers: [{
	    	      attribute: 'fill',
	    	      min: 1,
	    	      max: 200
	    	    },{
	    	      attribute: 'r',
	    	      scale: [7, 28],
	    	      values:[],
	    	      min: 7,
	    	      max: 150
	    	    }]
	    	  },
	    	  
	    	  onRegionTipShow: function(event, label, code){
	    		 var shortState = code.substring(3,code.length);
	    	        label.html(
	    	        		label.html()+getStateRecords(shortState)
	    	        );
	    	  } ,
	    	  
	    	      onRegionOver: function (event, code) {
	                  if (code == 'ca') {
	                      event.preventDefault();
	                  }
	              },
	              onRegionClick: function (element, code, region) {
	            	  code = code.substring(3,code.length);
	                  var message = 'You clicked "' + region + '" which has the code: ' + code.toUpperCase();
	               	var geocoder = new google.maps.Geocoder();
	               	geocoder.geocode({'address':code, componentRestrictions: {
	               	    country: 'US'
	               	  }}, function(results, status) {
	                      if (status == google.maps.GeocoderStatus.OK) {
	                         var lat = ( results[0].geometry.location.lat().toFixed(6));
	                         var lng = (results[0].geometry.location.lng().toFixed(6));
	                         //initialize1(lat,lng,code.toUpperCase());
	                        // console.log(code);
	                         loadTable(code.toUpperCase());
	                         var currentStateCode = code.toUpperCase();
	                         $("#currentStateCode").val(currentStateCode);
	                      } else {
	                          alert("Lat and long cannot be found.");
	                      }
	                  });
	                  
	                  $('#vmap_us').hide();
	                  $('#map_wrappe').show();
	              }
	   
	    });
        
        
	}
	
	function displayMasterVectorMapSevenDays(){
		//var fc = '#c6c6c6';
		//jQuery('#vmap_usa').vectorMap('set', 'colors', {al:fc,ak:fc,az:fc,ar:fc,ca:fc,co:fc,ct:fc,de:fc,fl:fc,ga:fc,hi:fc,id:fc,il:fc,in:fc,ia:fc,ks:fc,ky:fc,la:fc,me:fc,md:fc,ma:fc,mi:fc,mn:fc,ms:fc,mo:fc,mt:fc,ne:fc,nv:fc,nk:fc,nj:fc,nm:fc,ny:fc,nc:fc,nd:fc,oh:fc,ok:fc,or:fc,pa:fc,ri:fc,sc:fc,sd:fc,tn:fc,tx:fc,ut:fc,vt:fc,va:fc,wa:fc,wv:fc,wi:fc,wy:fc,nh:fc});
	}
	
	function displayMasterVectorMapAllDays(){
		var mapObject = $('#vmap_usa').vectorMap('get', 'mapObject');
	     mapObject.removeAllMarkers();
	     mapObject.remove();
	    // alert();
	     var states = ${statesListDetail};
	     var mapMarkers =[];
	     var mapMarkersValues = [];
	     $.each(states,function(index,value){
		    	//console.log(value.dtoStateList);
		 		if(value!=""){
		 			//var maplat = getStateInfoWithLatLong(value);
		 			$.each(value.dtoStateList,function(ind,val){
		 				//console.log(val);
		 				var html2 = val.schoolName;//+'<br> Number of Students:'+val.numberOfStudent+'<br> Number of Classes:'+val.schoolClasses;
		 				mapMarkers.push({name: val.schoolName,schoolCity: val.schoolCity,classes:val.schoolClasses,students:val.numberOfStudent, latLng: [val.latitude,val.longitude]});
		 				//console.log(val.schoolClasses);
		 				mapMarkersValues.push(val.schoolClasses*3);
		 			});	
		 		}
			}); 
	     
	     callFreshStateMap(mapMarkers,mapMarkersValues);
	}
	
	
	function viewFullStat(){
  
		 displayMasterVectorMapAllDays();
		
        $('#sample_1').dataTable().fnDestroy();
        $('#sample_1').removeAttr("style");
        $('#sample_1').children().children().children(":visible").removeAttr("style");
        $("#mapStats").html('');
        var newContent = '';
        <c:set var="listCount" value="1"></c:set>
        <c:forEach var="dtoSchool" items="${dtoSchoolsForMap}">
        <c:if test="${not empty dtoSchool.key }">
        <c:set var="listCount" value="${listCount+1}"></c:set>
    	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'Y'}">
    	newContent+='<td><a onclick="stateGoogleMap(\'${dtoSchool.value.stateShort}\')" style="color: #02a451;">${dtoSchool.key}</a></td>';
    	</c:if>
    	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'N'}">
    	newContent+='<td><a onclick="stateGoogleMap(\'${dtoSchool.value.stateShort}\')">${dtoSchool.key}</a></td>';
    	</c:if>
        </c:if>
        <c:if test="${empty dtoSchool.key }">
        	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'Y'}">
        	newContent+='<td><span style="color: #02a451;">International</span></td>';
    	</c:if>
    	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'N'}">
    	newContent+='<td><span>International</span></td>';
    	</c:if>
    </c:if>
    newContent+='<td>${dtoSchool.value.schoolCount}</td>';
    newContent+='<td>${dtoSchool.value.totalClassCountUnderSchool}</td>';
    newContent+='<td>${dtoSchool.value.totalStudentCountUnderSchool}</td>';
    newContent+='<td style="display:none;"></td>';
    if(newContent!=''){
		$('#mapStats').append('<tr>'+newContent+'</tr>');
	}
    newContent = '';
    	</c:forEach>
		$('#sample_1').dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
		var oTable = $('#sample_1').dataTable();
	   	  oTable.fnSort( [ [1,'desc'] ] );
        $("#newRegistrations").show();
        $("#fullStat").hide();
        
        $("#countDisplayLabel").text("Full Statistics");
        $("#countDisplayLabel").text("REPORTS");
        $("#countDisplay").text(${listCount});
        
	}
	function forPreview(){
		//alert("inside function")
		var area=document.getElementById('purposediv').value ;
		//alert("area"+area);
		 if(area=="0")
			{
			alert("Please choose the state")
			}
		else {
													
		$("#sample_4").dataTable().fnDestroy();
		$("#sample_4").html('');
		//alert("inside function111")
		//var area =document.getElementById("#purposediv")
	
		var url='<%=request.getContextPath()%>/superadmin/getSchools';
		$.ajax({
			url : url,
			 method:'GET',
			 async :true,
			 success:function(response){
			if(response!=null){
			//alert("test");
				var schoolDetail='';
				schoolDetail+='<thead><tr><th><strong>SCHOOL NAME</strong></th>'+
				'<th><strong>EMAIL</strong></th>'+
				 '<th><strong>NAME</strong></th>'+
				 /* '<th><strong>STATE</strong></th>'+ */
			    '<th><strong>SUBSCRIPTION TYPE</strong></th>'+
		        '<th><strong>CREATED</CREATED></th></tr></thead><tbody>' ;
		        $.each(response.modelMap.dtoSchools, function(index,value) {
		        	//alert("test1");
		        	//alert("value"+value.state);
		        	var avneet =value.state;
		        	//alert("area11"+avneet);
		        if(area.startsWith(avneet)){
		        	schoolDetail+='<tr><td>'+value.schoolName+'</td>'+
		        	'<td>'+value.principalEmail+'</td>'+
		        	'<td>'+value.principalName+'</td>'+
                     '<td>'+value.userType+'</td>'+
		            '<td>'+value.schoolCreatedOn+'</td></tr>';
		        
		        }
		     		});	 
		        schoolDetail+='</tbody>';           
		$("#sample_4").html(schoolDetail);
		$("#sample_4").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
		}
			}
		});
				
		
	
	
		 $.fancybox({
			 'minWidth':300,
			 'padding':45,
			 'minHeight':550,
		           'autoScale': true,
				   'autoDimensions': true,
				   'centerOnScroll': true,
				   'href' : '#datadownload'
		}); 
		
	}
	}
	function newRegistrations(){
	    
		var mapObject = $('#vmap_usa').vectorMap('get', 'mapObject');
	     mapObject.removeAllMarkers();
	     mapObject.remove();
	    
	     var schoolsList = ${schoolsListDetail};
	     var mapMarkers7d =[];
	     var mapMarkersValues7d = [];
	     //console.log(schoolsList);
	     $.each(schoolsList,function(index,value){
		    	if(value.newRegistration=='Y'){
		    		console.log(value);
		    			mapMarkers7d.push({name: value.schoolName, latLng: [value.latitude,value.longitude]});
		 				//console.log(value.totalClassCountUnderSchool);
		 				mapMarkersValues7d.push(value.totalClassCountUnderSchool*3);
		 		//	});	
		 		}
			}); 
	     
	     //===============
	    callFreshStateMap(mapMarkers7d,mapMarkersValues7d);
		
		var states = [];
		$('#sample_1').dataTable().fnDestroy();
        $('#sample_1').removeAttr("style");
        $('#sample_1').children().children().children(":visible").removeAttr("style");
		$('#mapStats').html('');
		var newContent = '';
		<c:set var="listCount" value="0"></c:set>
		<c:forEach var="dtoSchool" items="${dtoSchoolsForMap}">
		<c:if test="${dtoSchool.value.newRegistration == 'Y'}">
        <c:if test="${not empty dtoSchool.key }">
        	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'Y'}">
        	newContent+='<td><a onclick="stateGoogleMap(\'${dtoSchool.value.stateShort}\')" style="color: #02a451;">${dtoSchool.key}</a></td>';
        	</c:if>
        	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'N'}">
        	newContent+='<td><a onclick="stateGoogleMap(\'${dtoSchool.value.stateShort}\')">${dtoSchool.key}</a></td>';
        	</c:if>
        	 <c:set var="listCount" value="${listCount+1}"></c:set>
        	
        	 var test = '${dtoSchool.value.stateShort}';
        	 
        	////////////code updated up side
       
    	</c:if>
    <c:if test="${empty dtoSchool.key }">
    	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'Y'}">
    	newContent+='<td><span style="color: #02a451;">International</span></td>';
    	</c:if>
    	<c:if test="${dtoSchool.value.newRegistrationByOneDay == 'N'}">
    	newContent+='<td><span>International</span></td>';
    	</c:if>
    </c:if>
	        newContent+='<td>${dtoSchool.value.newSchoolRegistrationCount}</td>';
	        newContent+='<td>${dtoSchool.value.newClassRegistrationCount}</td>';
	        newContent+='<td>${dtoSchool.value.newStudentRegistrationCount}</td>';
	        newContent+='<td style="display:none;"></td>';
            	</c:if>
            	if(newContent!=''){
            		$('#mapStats').append('<tr>'+newContent+'</tr>');
            	}
            	newContent = '';
            	</c:forEach>
            	
		$('#sample_1').dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
		var oTable = $('#sample_1').dataTable();
	   	  oTable.fnSort( [ [1,'desc'] ] );
        $("#newRegistrations").hide();
        $("#fullStat").show();
        
        $("#countDisplayLabel").text("Last 7 days");
        $("#countDisplayLabel").text("REPORTS");
        $("#countDisplay").text(${listCount});
	}
	
	function addMarkersOnSevenDayClick(state){
		//alert('jj');
	}
	
</script>

	<script type="text/javascript">


function initialize(lat,lng) {
    var map;
    var bounds = new google.maps.LatLngBounds();
    var myLatlng = new google.maps.LatLng(lat,lng);
    var mapOptions = {
    		zoom:7,
    		center:myLatlng,
        mapTypeId: 'roadmap'
    };
                    
    // Display a map on the page
    map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
    map.setTilt(45);
    
    var markers = [];
    <%-- $.ajax({
		url : "<%=request.getContextPath()%>/superadmin/getSchoolsList/",
		success : function(result) {
			$.each( result, function( index, value ) {
				if(value.latitude){
				var position = new google.maps.LatLng(value.latitude,value.longitude);
				//bounds.extend(position);
				var marker;
				marker = new google.maps.Marker({
				      position: position,
				      map: map,
				      title: value.schoolName,
				      icon:'<%=request.getContextPath()%>/NewStyles/images/green_mark.png'
				  });
				
				var contentString ='<div class="info_content"><h5>'+value.schoolName+'</h5><p>'+value.address+'</p></div>';
				var infowindow = new google.maps.InfoWindow({
				      content: contentString,
				      buttons:{close:{visible: true}}
				  });
				
				google.maps.event.addListener(marker, 'click', function() {
				    infowindow.open(map,marker);
				  });
				
				markers.push(marker);
				}
				});
			}
		}); --%>

    
}


function initialize1(lat,lng,stateCode) {
	//alert("stateCode = "+stateCode);
    var map;
    var bounds = new google.maps.LatLngBounds();
    var myLatlng = new google.maps.LatLng(lat,lng);
    var mapOptions = {
    		zoom:8,
    		center:myLatlng,
        mapTypeId: 'roadmap'
    };
                    
    // Display a map on the page
    map = new google.maps.Map(document.getElementById("map_canva"), mapOptions);
    map.setTilt(45);
    
    var markers = [];
    $.ajax({
		url : "<%=request.getContextPath()%>/superadmin/getMasterSchoolsList/",
		data : {stateCode:stateCode},
		success : function(result) {
			$.each( result, function( index, value ) {
				if(value.latitude){
				var position = new google.maps.LatLng(value.latitude,value.longitude);
				//bounds.extend(position);
				var marker;
				marker = new google.maps.Marker({
				      position: position,
				      map: map,
				      title: value.schoolName,
				      icon:'<%=request.getContextPath()%>/NewStyles/images/pink_mark.png'
				  });
				
				var contentString ='<div class="info_content"><h5>'+value.schoolName+'</h5><p>'+value.address+'</p></div>';
				var infowindow = new google.maps.InfoWindow({
				      content: contentString,
				      buttons:{close:{visible: true}}
				  });
				
				google.maps.event.addListener(marker, 'click', function() {
				    infowindow.open(map,marker);
				  });
				
				markers.push(marker);
				}
				});
			}
		});

    
}
//*added for master DB*//
function MasterDB(stateCode) {
    var map;
    $("#adminLoader").show();
    $.ajax({
		url : "<%=request.getContextPath()%>/superadmin/getMasterDBList/",
		data : {stateCode:stateCode},
		success : function(response) {
			
			var Details='';
			
			Details+='<thead><tr><th>Name</th>';
			 
					Details+='<th>Address</th>';
				 
				Details+='<th>County</th>';
			 
			 
			Details+='<th>City</th>';
			Details+='<th>State</th></tr></thead><tbody>';						 

$.each(response, function(index,value) {
	
		Details+='<tr><td>'+value.name+'</td>'+
		'<td>'+value.address+'</td>'+
		'<td>'+value.county+'</td>'+
		'<td>'+value.city+'</td>'+
		'<td>'+value.state+'</td></tr>';
});
       Details+='</tbody>';
       $("#sample_23").html(Details);
		
    
		
		$("#sample_23").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15, "bDestroy": true});
		$("#adminLoader").hide();
		  $.fancybox({
			/*  'minWidth':900,
			 'padding':45,
			 'minHeight':250, */
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#userDetails'
		  }); 
			
		}
		});

}

function getSchools(stateShort)
{
    //alert(stateShort);
    
     $("#sample_10").dataTable().fnDestroy();
        $("#sample_10").html('');
        $("#adminLoader").show();
           var url='<%=request.getContextPath()%>/superadmin/getSchoolsByState';
            $.ajax({
                url:url,
                method:'POST',
                async :false,
                data:{"stateShot":stateShort},
                cache:false,
                success:function(response){
                    
                    if(response != null){
                        
                        var schoolDetails='';
                        
                        schoolDetails+='<thead><tr><th>Name</th>';
                        
                        schoolDetails+='<th>Email</th>';
                        
                        schoolDetails+='<th>School Name</th>';
                        
                        schoolDetails+='<th>City</th></tr></thead><tbody>';                
            
            $.each(response.modelMap.dtoUsers, function(index,value) {
                
                schoolDetails+='<tr><td>'+value.teacherName+'</td>'+
                    '<td>'+value.email+'</td>'+
                    '<td>'+value.schoolName+'</td>'+
                    '<td>'+value.city+'</td></tr>';
            });
            schoolDetails+='</tbody>';
            $("#sample_10").html(schoolDetails);
                         
                            $("#sample_10").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
                            $("#adminLoader").hide();
                              $.fancybox({
                                 
                                 'autoScale': true,
                                 'autoDimensions': true,
                                 'centerOnScroll': true,
                                 'href' : '#school-popup'
                              });
                }
                    
            
                }
            });
}



function viewLiveClasses(lat,lng) {
	
    var map;
    var bounds = new google.maps.LatLngBounds();
    var myLatlng = new google.maps.LatLng(lat,lng);
    
 
	var markerImageSchool = new google.maps.MarkerImage(
			'<%=request.getContextPath()%>/NewStyles/images/broadcast1.gif',
	          // This marker is 20 pixels wide by 34 pixels tall.
	          new google.maps.Size(34, 34),
	          // The origin for this image is 0,0.
	          new google.maps.Point(0,0),
	          // The anchor for this image is at 6,20.
	          new google.maps.Point(15, 34)
	);
	 
    var mapOptions = {
    		zoom:7,
    		center:myLatlng,
        mapTypeId: 'roadmap'
    };
                    
    // Display a map on the page
    map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
    map.setTilt(45);
  //  var marker;
    var markers = [];
    $.ajax({
		url : "<%=request.getContextPath()%>/superadmin/liveClassesList/",
		success : function(result) {
			$.each( result, function( key, value ) {
				console.log(key)
				if(value.latitude){
				var position = new google.maps.LatLng(value.latitude,value.longitude);
				//bounds.extend(position);
				var marker;
				marker = new google.maps.Marker({
					  map:map,
				      draggable:false,
				      optimized:false,
				      animation: google.maps.Animation.DROP,
				      position: position,
				      title: value.schoolName,
				      icon:markerImageSchool
				  });
				
				var contentString ='<div class="info_content"><h5>'+value.schoolName+'</h5><p>'+value.address+'</p><p>'+
				'<img src="<%=request.getContextPath()%>/NewStyles/images/speaker.gif" alt="Inner Explorer" title="Inner Explorer" id="notify" style="height:30px;width:30px;"/>'+
				'<audio style="display:none" id="currentPlayer" class="music-player_notes" autoplay controls="" data-audio-id="14" data-program-id="1" data-length="" data-audio-feedback="">'+
				'<source src="" type="audio/mpeg"></audio>'+
				'</p></div>';
				var infowindow = new google.maps.InfoWindow({
				      content: contentString,
				      //maxWidth: 200,
				      //maxHeight:200,
				      buttons:{close:{visible: true}}
				  });
				//map.fitBounds(bounds);
				
				google.maps.event.addListener(marker, 'click', function() {
				    infowindow.open(map,marker);
				    
				  
			            var classId = value.classId;
			            var audio =  $("#currentPlayer");
			            $.ajax({  
			             	type : "GET",   
			             	url : "<%=request.getContextPath()%>/live/senseAudioPlay",   
			              	async:true,
			             	data:'classId='+classId,
			             	success : function(response) {
			             		if(response.playing != null && response.playing == 0)
			             		{
			             			console.log('playing mindful practice session live');
			             			$.ajax({  
			             	          	type : "GET",   
			             	          	url : "<%=request.getContextPath()%>/live/sendAudioTrackLocationParent",   
			             	           	async:true,
			             	          	data:'classId='+classId,
			             	          	success : function(response) {
			             	          	if(response.error == null)
			             	          	{	
			             	           	 	$("#notify").attr("src","<%=request.getContextPath()%>/NewStyles/images/speaker.gif");
											audio.prop('src', "${bucketPath}/audioFiles/"+response.track);
											
											audio.bind("load",function(){
												audio.trigger('pause');
												audio.prop('currentTime', parseInt(response.trackLocation));
								            });
											audio.bind("ended",function(){
												console.log("Stopped ...")
											 	playFlag = false;	
								            });
											audio.trigger('load');
											$("#currentPlayer").trigger('play');
											playFlag = true;
										}
			             	          	else
				             	        	 playFlag = false;
									}
								});
							}
			             	else
			           		{
			             		console.log('killed by Admin')
			           			$("#notify").attr("src","<%=request.getContextPath()%>/NewStyles/images/speaker-grey.png");
			           			var sound = document.getElementById("currentPlayer");
			           			sound.pause();
			           			sound.currentTime = 0;
			           			audio.trigger('pause');
			           		}
			           	}
					});
			    	 
				    
				  });
				
				markers.push(marker);
				}
				});
			}
		});
   // $("#mapStats").html('');
    $.ajax({
		url : "<%=request.getContextPath()%>/superadmin/liveClassesStats/",
		success : function(result) {
			$("#mapStats").html('');
			$('#sample_1').dataTable().fnDestroy();
			var tableData = '';
			$.each( result, function( key, value ) {
				var stateInfo = '';
				if(key != '' && key != 'International'){
					if(value.newRegistrationByOneDay == 'Y')
					{
						stateInfo = '<td><a onclick="stateGoogleMap(\''+value.stateShort+'\')" style="color: #02a451;">'+key+'</a></td>';
					}else{
						stateInfo = '<td><a onclick="stateGoogleMap(\''+value.stateShort+'\')">'+key+'</a></td>';
					}
				}else{
					if(value.newRegistrationByOneDay == 'Y')
					{
						stateInfo = '<td><span style="color: #02a451;">International</span></td>';
					}else{
						stateInfo = '<td>International</td>';
					}
				}
				tableData += '<tr>'+stateInfo+
				'<td>'+value.schoolCount+'</td>'+
				'<td>'+value.totalClassCountUnderSchool+'</td>'+
				'<td>'+value.totalStudentCountUnderSchool+'</td>'+
				'<td style="display:none;"></td>'+
				'</tr>';
				});
			$("#mapStats").html(tableData);
			$('#sample_1').dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
			var oTable = $('#sample_1').dataTable();
		   	  oTable.fnSort( [ [1,'desc'] ] );
			}
		});
}
</script>
  <script>


</script>

	<script type="text/javascript">	
	$(document).ready(function(){
		$("#mtab21").click(function(){
			//alert("hi");
			
		});
		
	});
	</script>
	
	<script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
      TableManaged.init();
      $.ajax({
  		url : "<%=request.getContextPath()%>/superadmin/liveClassesListCount/",
  		success : function(result) {
  			$("#liveClassesCount").html(result);
  		}
      });
    });
    
    function showTab(current,max){
		for (i=1;i<=max;i++){
		getMyHTMLElement('tab' + i).style.display = 'none';
		getMyHTMLElement('mtab' + i).className = '';
		
		
		
		}
		getMyHTMLElement('tab' + current).style.display = '';
		getMyHTMLElement('mtab' + current).className = 'selected';
		
		if(current==2){
			displayMasterVectorMap();
		}
		if(current==1){
			displayMasterVectorMapAllDays();
		}
		
		
		}
    function searchSchool(searchKey){
    	 var map;
    	    var bounds = new google.maps.LatLngBounds();
    	    var myLatlng = new google.maps.LatLng(37.3916,-99.8236);
    	    var mapOptions = {
    	    		zoom:4,
    	    		center:myLatlng,
    	        mapTypeId: 'roadmap'
    	    };
    	                    
    	    // Display a map on the page
    	    map = new google.maps.Map(document.getElementById("map_canva"), mapOptions);
    	    map.setTilt(45);
    	    
    	    var markers = [];
    	    $.ajax({
    			url : "<%=request.getContextPath()%>/superadmin/getSearchedMasterSchoolList/",
    			data : {searchKey:searchKey},
    			success : function(result) {
    				$.each( result, function( index, value ) {
    					if(value.latitude1){
    					var position = new google.maps.LatLng(value.latitude1,value.longitude1);
    					//bounds.extend(position);
    					var marker;
    					marker = new google.maps.Marker({
    					      position: position,
    					      map: map,
    					      title: value.schoolName,
    					      icon:'<%=request.getContextPath()%>/NewStyles/images/pink_mark.png'
    					  });
    					
    					var contentString ='<div class="info_content"><h5>'+value.schoolName+'</h5><p>'+value.address+'</p></div>';
    					var infowindow = new google.maps.InfoWindow({
    					      content: contentString,
    					      buttons:{close:{visible: true}}
    					  });
    					
    					google.maps.event.addListener(marker, 'click', function() {
    					    infowindow.open(map,marker);
    					  });
    					
    					markers.push(marker);
    					}
    					});
    				}
    			});
    }
    
    
    function loadTable(code){
    	/* $("#sample_8").dataTable().fnDestroy();
    	$("#sample_8").html(''); */
    	$("#sample_8").html('');
    	$('#sample_8').dataTable().fnDestroy();
        $('#sample_8').removeAttr("style");
        $('#sample_8').children().children().children(":visible").removeAttr("style");
        //$("#sample_8").html('');
    	
    	$.ajax({
    	url : "<%=request.getContextPath()%>/superadmin/getMasterSchoolsList/",
		data : {stateCode:code},
		success : function(result) {
			
    				
    				  var schoolDetail='';
    				  schoolDetail+='<thead><tr>'+
    				 '<th ><strong>School Name</strong></th>'+	
    				 '<th ><strong>School Address</strong></th>'+
    					'<th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';
    					
    					$.each( result, function( index, value ) {
    						schoolDetail+='<tr>'+
    						'<td ><p>'+value.schoolName+'</p></td>'+
    						'<td><p>'+value.address+'</p></td>'+
    						'<td style="display:none;"></td><td style="display:none;"></td></tr>';
    						$("#countIEDisplay").text(value.schoolCount);
    					});
    		    	
    					schoolDetail+='</tbody>';
    				 
    					$("#sample_8").html(schoolDetail);
    				     $("#sample_8").dataTable({"aLengthMenu": [[10, 15, 20, -1],[10, 15, 20, "All"] ],"iDisplayLength": 10});
    				    $("#sample_8").attr("style","width:100%"); 
    }
    	  });
    }
   function getIESchools(){
   var currentStateCode = $("#currentStateCode").val();
	$("#sample_8").html('');
	$('#sample_8').dataTable().fnDestroy();
    $('#sample_8').removeAttr("style");
    $('#sample_8').children().children().children(":visible").removeAttr("style");
   	
   	$.ajax({
   	url : "<%=request.getContextPath()%>/superadmin/getFilteredIEANDMasterSchoolsList/",
		data : {stateCode:currentStateCode},
		success : function(result) {
			
   				
   				  var schoolDetail='';
   				  schoolDetail+='<thead><tr>'+
   				 '<th ><strong>School Name</strong></th>'+	
   				 '<th ><strong>School Address</strong></th>'+
   				'<th ><strong>Send Mail</strong></th>'+
   					'<th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';
   					
   					$.each( result, function( index, value ) {
   						schoolDetail+='<tr>'+
   						'<td ><p>'+value.schoolName+'</p></td>'+
   						'<td><p>'+value.address+'</p></td>';
   						if(typeof value.principalEmail=='undefined'){
   							schoolDetail+='<td><p>N/A</p></td>';
   						}
   						else{
   							schoolDetail+='<td><p><a href="javascript:showContactInfo('+value.userId+');"><img src="<%=request.getContextPath()%>/NewStyles/images/msg-icn.png" style="width:30px;"/></a></p></td>';
   						}
   						
   						/* '<td ><p><a href="mailto:'+value.principalEmail+'">'+value.principalEmail+'</a></p></td>'+ */
   						schoolDetail+='<td style="display:none;"></td><td style="display:none;"></td></tr>';
   					});
   		    	
   					schoolDetail+='</tbody>';
   				 
   					$("#sample_8").html(schoolDetail);
   				     $("#sample_8").dataTable({"aLengthMenu": [[10, 15, 20, -1],[10, 15, 20, "All"] ],"iDisplayLength": 10});
   				    $("#sample_8").attr("style","width:100%"); 
   }
   	  });
	   
   }
   
    $(document).ready(function() {
    	  

    	  // Sort immediately with columns 0 and 1
    	$('#sample_1').dataTable().fnDestroy();
        var oTable = $('#sample_1').dataTable({"aLengthMenu": [[10, 15, 20, -1],[10, 15, 20, "All"] ],"iDisplayLength": 15});
        oTable.fnSort( [ [1,'desc'] ] );
    	} );
    
    function showContactInfo(id){
		 $.fancybox({
			 'minWidth':300,
			 'padding':45,
			 'minHeight':150,
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#sendEmailToContactPopup'
		  });
		 $("#contactPersonId").val(id);
	}
    
    function submitContactEmail(){
		  var userId=$("#contactPersonId").val();
		  var title=$("#title").val();
		  var message=$("#Contactmessage").val();
		  if($.trim(title)!="" && $.trim(message)!=""){
		  var url='<%=request.getContextPath()%>/sendEmailToSearchUser';
			$.ajax({
				url:url,
				method:'POST',
				async :false,
				data:{userId:userId,title:title,message:message},
				cache:false,
				success:function(response){
					$.fancybox.close();
					}
			});
		  }
	  }
    
    function country(countryName){
		 //alert("countryName"+countryName);
		   $("#mdb")[0].style.visibility="visible";
       // $('#done').hide();
		  var url='<%=request.getContextPath()%>/superadmin/getCountryDetails';
			$.ajax({
				url:url,
				method:'POST',
				async :false,
				data:{countryName:countryName},
				cache:false,
				success:function(response){
					//$.fancybox.close();
					//alert('Loading..');
					
				}
			});
		  
	  }
    
    function getClassDetails(schoolId){
		 //alert("schoolId"+schoolId);
		
		 //$("#contactPersonId").val(id);
		  var url='<%=request.getContextPath()%>/superadmin/getClassDetailsOnSchoolId';
			$.ajax({
				url:url,
				method:'POST',
				async :false,
				data:{schoolId:schoolId},
				cache:false,
				success:function(response){
					//$.fancybox.close();
					//alert('Loading..');
					//$("#div1").html(result);
					 $('#sample_2').dataTable().fnDestroy();
					if(response != null  && response.modelMap.dtoClassDetails!=null){
    					var audioQualityDetail='';
    					audioQualityDetail+='<thead><tr><th class="center"><strong >User Type</strong></th>'+
    					'<th class="center"><strong >Class Name</strong></th>'+
    					'<th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';
    					
    					$.each( response.modelMap.dtoClassDetails, function(index,value) {
    						audioQualityDetail+='<tr><td><a onclick="getTeacherDetails(\''+value.classId+'\')" style="color: #02a451;"><p>'+value.userType+'</p></td>'+
    						'<td ><p>'+value.className+'</p></td>'+
    						'<td style="display:none;"></td><td style="display:none;"></td></tr>';
    					});
    		    	
    					
    		    	audioQualityDetail+='</tbody>';
    		    	
    			$("#sample_2").html(audioQualityDetail);
    		    $("#sample_2").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
					}
					 $.fancybox({
						 'minWidth':900,
						 'padding':45,
						 'minHeight':350,
					     'autoScale': true,
					     'autoDimensions': true,
					     'centerOnScroll': true,
					     'href' : '#classDetailPopup'
					  });
					 
					}
			});
		  
	  }
    
    function getTeacherDetails(classId){
		 //alert("classId"+classId);
		
		 //$("#contactPersonId").val(id);
		  var url='<%=request.getContextPath()%>/superadmin/getTeacherDetailsOnClassId';
			$.ajax({
				url:url,
				method:'POST',
				async :false,
				data:{classId:classId},
				cache:false,
				success:function(response){
					//$.fancybox.close();
					//alert('Loading..');
					$('#sample_3').dataTable().fnDestroy();
					if(response != null  && response.modelMap.dtoTeacherDetails!=null){
    					var audioQualityDetail='';
    					audioQualityDetail+='<thead><tr><th class="center"><strong >Teacher Email</strong></th>'+
    					'<th class="center"><strong>Teacher Name</strong></th>'+
    					'<th class="center"><strong >Last LoggedIn Date</strong></th>'+
    					'<th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';
    					
    					$.each( response.modelMap.dtoTeacherDetails, function(index,value) {
    						var date = new Date(value.schoolCreatedDate);
    						if (value.schoolCreatedDate!=null)
    						var lastLoggedIn=(date.getMonth() + 1) + '/' + date.getDate() + '/' +  date.getFullYear()
    						 else
    							 var lastLoggedIn='NA'
    						audioQualityDetail+='<tr><td><p>'+value.teacherEmail+'</p></td>'+
    						'<td ><p>'+value.teacherName+'</p></td>'+
    						'<td><p>'+lastLoggedIn+'</p></td>'+
    						'<td style="display:none;"></td><td style="display:none;"></td></tr>';
    					});
    		    	
    					
    		    	audioQualityDetail+='</tbody>';
    		    	
    			$("#sample_3").html(audioQualityDetail);
    		    $("#sample_3").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
					}
					 $.fancybox({
						 'minWidth':900,
						 'padding':45,
						 'minHeight':150,
					     'autoScale': true,
					     'autoDimensions': true,
					     'centerOnScroll': true,
					     'href' : '#teacherDetailPopup'
					  });
					 
					}
			});
		  
	  }
    
    
    
    function callFreshStateMap(mapMarkers2,mapMarkersValues2){
   	 $('#vmap_usa').vectorMap({
   	      map: 'us_aea_en',
   	      markers:mapMarkers2,
   	      hoverColor: false,
   	      color: '#c6c6c6',
   		    normalizeFunction: 'polynomial',
   		    hoverOpacity: 0.4,
   		    markersSelectable: true,
   		    zoomMax: 92,//def is 8
   	        markerStyle: {
   	    	  initial: {
   	    		    fill: '#a8d7bf',
   	    		    stroke: '#7fcba4',
   	    		    "fill-opacity": 0.4,
   	    		    "stroke-width": 1,
   	    		    "stroke-opacity": 1
   	    		   // r: 7
   	    		  },
   	    		  hover: {
   	    		    stroke: '#7fcba4',
   	    		    "stroke-width": 1,
   	    		    cursor: 'pointer'
   	    		  },
   	    		  selected: {
   	    		      fill: '#3db477'
   	    		    }
   	    		},
   		    
   		    regionStyle: {
   		    	  initial: {
   		    		    fill: '#d8d8d8',
   		    		    "fill-opacity": 0.8,
   		    		    stroke: '#c6c6c6',
   		    		    "stroke-width": 0.7,
   		    		    "stroke-opacity": 1
   		    		  },
   		    		  hover: {
   		    		    "fill-opacity": 1,
   		    		    cursor: 'pointer'
   		    		  }
   		    		  
   		    		},
   		   backgroundColor: 'none',  
   	      series: {
   	    	    markers: [{
   	    	      attribute: 'fill',
   	    	      min: 1,
   	    	      max: 200
   	    	    },{
   	    	      attribute: 'r',
   	    	      scale: [7, 28],
   	    	      values:mapMarkersValues2,
   	    	      min: 7,
   	    	      max: 150
   	    	    }]
   	    	  },
   	    	  
   	    	  onRegionTipShow: function(event, label, code){
   	    		 var shortState = code.substring(3,code.length);
   	    	        label.html(
   	    	        		label.html()+getStateRecordsIe(shortState)
   	    	        );
   	    	  } ,
   	    	  onMarkerTipShow: function(event, label, index){
   	    		  var sname = mapMarkers2[index].name;
   	    		  //var classes = mapMarkers[index].classes;
   	    		 // var students = mapMarkers[index].students;
   	    	        label.html(
   	    	        		sname
   	    	        );
   	    	      },
   	          onRegionOver: function (event, code) {
   	              if (code == 'ca') {
   	                  event.preventDefault();
   	              }
   	          },
   	         /*  onRegionClick: function (element, code, region) {
   	              var message = 'You clicked "' + region + '" which has the code: ' + code.toUpperCase();
   	              //alert(message);
   	           	var geocoder = new google.maps.Geocoder();
   	           	geocoder.geocode({'address':code,componentRestrictions: {
   	           	    country: 'US'
   	         	  }}, function(results, status) {
   	                  if (status == google.maps.GeocoderStatus.OK) {
   	                      //map.setCenter(results[0].geometry.location);
   	                     var lat = ( results[0].geometry.location.lat().toFixed(6));
   	                     var lng = (results[0].geometry.location.lng().toFixed(6));
   	                     initialize(lat,lng);
   	                 		$("#liveClassesDiv").show();
   	              		$("#liveClassesBtn").attr("onclick","viewLiveClasses("+lat+","+lng+")");
   	              		//$("#newRegistrations").hide();
   	                  } else {
   	                      alert("Lat and long cannot be found.");
   	                  }
   	              });
   	              jQuery('#vmap_usa').hide();
   	              $('#map_wrapper').show();
   	          }
   	    */
   	       onRegionClick: function(element, code, region){
          	 var stateCode = code.substring(3,code.length);
              //MasterDB(stateCode);
              //alert(stateCode);
    
       	  }
   	       
   	    });
   	
    }
    
  
    
  </script>
  <script>
  
  </script>

<style>
/*  #mdb{display:none} */
</style>

</body>
</html>
