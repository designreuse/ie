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
<title>Financials</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/NewStyles/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
 	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery-ui.min.css" /> 
		<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/> 
<style type="text/css">
#map_wrapper {
    height: 400px;
}

#map_canvas {
    width: 100%;
    height: 100%;
}
    .flotTip 
    {
      padding: 3px 5px;
      background-color: #000;
      z-index: 100;
      color: #fff;
      box-shadow: 0 0 10px #555;
      opacity: .7;
      filter: alpha(opacity=70);
      border: 2px solid #fff;
      -webkit-border-radius: 4px;
      -moz-border-radius: 4px;
      border-radius: 4px;
    }
     #place_holder {
    width: 200px;
    height: 175px;
</style>
</head>

<body>
<div class="wrapper">
  <%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--inner_header starts-->
        <!--<div class="inner_header"> <img src="images/browse-donation-header.jpg"  alt=""/> </div>-->
        
        <!--about_us starts-->
        <div class="admin_dashboard">
            <div class="content_inner">
                <div class="pracProgress_hdr">
                    <h2>Financials</h2>
                    <div class="green_line_btm"></div>
                </div>
        <div class="fullrow txtcenter_align mrg_tp20 mrg_btm25" style="display:none;" id="liveClassesDiv">
            <a href="javascript:;" class="blueBtn dis_inl_bl" id="liveClassesBtn">View Live Classes</a>
            <a href="javascript:;" onclick="displayVectorMap();" style="color: #02a451; text-decoration: underline;">Go Back</a>
            </div>
                

             <div class="dash-wrapper">
             
            <%--  <div class="mc_col_new_head">
                    <div class="min_goal_sec">
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
                    </div>
                </div> --%>
             
                
                <div class="new-dash-main">
                	<div class="dash-left">
                        <div id="vmap_usa" class="vmaps chart"></div>
						<div id="map_wrapper" style="display:none;">
							<div id="map_canvas" class="mapping" style="max-height: 300px;"></div>
						</div> 
                    </div>
                    <div class="dash-right">
                    	<h3>Number of Students: <span> ${numberOfStudent + studentAdjustment}</span></h3>
							<div class="easy-pie-chart">
								<div class="number visits"  data-percent="${studentsTargetAchied}" style="margin: 0 auto;"></div>
								<div class="goal-updated">	
                    	<h3 class="goal-txt">Goal: 
                       	 	<input type="hidden" id="goalId" value="${goalId}"/>
							<input type="hidden" id="goal" value="${goal}" placeholder="10,000" onblur="updateGoal();"/> 
							
								<span onclick="modifyGoalCount(this); return false;" style="font-size:16px;">${goal}</span>
								<br/>
                        	<input type="hidden" id="goalExpire" value="${goalExpire}" placeholder="2016-12-23" onchange="updateGoal();" style="width:90px;"/>
                        	<img src="<%=request.getContextPath()%>/NewStyles/images/camp-li-1.png" onclick="showDatePicker(); return false;" style="margin:0;cursor:pointer;"/>
                        	
                        	
                        </h3> 
                    </div>  
							</div>
                    	
                       <%-- <h3>Goal: 
                        
                        <input type="hidden" id="goalId" value="${goalId}"/>
								<input type="number" id="goal" min="0" value="${goal}" placeholder="10,000" onblur="updateGoal();"/>
                        <input type="text" id="goalExpire" readonly="readonly" value="${goalExpire}" placeholder="2016-12-23" onchange="updateGoal();" />
                        </h3>  --%>
                        
                        
                        <h3><span>${studentsTargetAchied}</span> % Completed </h3>
                        <c:if test="${goalRemainingDay >= 0}">
                        	<h3><span>${goalRemainingDay}</span> Days Remaining </h3>
                        </c:if>
                        <c:if test="${goalRemainingDay < 0}">
                        	<c:set var="daysPast" value="${goalRemainingDay*(-1)}"></c:set>
                        	<h3><span>${daysPast}</span> Days Past </h3>
                        </c:if>
                    </div>
                    <div class=" dash-listing">
                    	<ul>
                        	<li>
                        		<c:set var="noCampaign" value="0"></c:set>
                        		<c:forEach var="school" items="${schoolDonationDetailList}">
					                <c:if test="${not empty school.trialStatus && empty school.isMigrated && school.trialStatus != 'Y' && school.campaignCount eq 0 }">
					                	<c:set var="noCampaign" value="${noCampaign+1}"></c:set>
					                </c:if>
				                </c:forEach>
				                <h4>${noCampaign}</h4>
				                <p>SCHOOLS</br>WITHOUT CAMPAIGN</p>
<%--                             	<h4>${trialSchools}</h4>
                            	<p>SCHOOLS</br>UNDER TRIAL</p> --%>
                            </li>
                            <li>
                            	<h4>${totalSchools}</h4>
                            	<p>TOTAL</br>SCHOOLS</p>
                            </li>
                            <li>
                            	<h4>${totalClasses}</h4>
                            	<p>TOTAL</br>CLASSES</p>
                            </li>
                             <c:if test="${overTarget le 0 && campaignAmount gt 0}">
                            <li>
								<div id="pie_chart" class="chart" style="width:100%; height:163px; margin: 0px 0 0 0;"></div>
                            </li>
                             </c:if> 
                            <c:if test="${overTarget gt 0 && campaignAmount gt 0}">
                            <li class="target_ov">
								<h4>${overTarget}</h4>
                                <p>OVER <br>TARGET</p>
                            </li>
                            </c:if> 
                            <c:if test="${campaignAmount eq 0}">
                            <li class="target_ov">
								<h4>${campaignAmount}</h4>
                                <p>NO <br>CAMPAIGN</p>
                            </li>
                            </c:if> 
							<li>
							
							<!-- <div style="width:450px;height:300px;text-align:center;margin:10px">        
						        <div id="flot-placeholder1" style="width:100%;height:100%;"></div>        
						    </div> -->
							
							 <div id="place_holder"></div>
                            	 <%-- <img src="<%=request.getContextPath()%>/NewStyles/images/fin-4.png"> --%> 
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="function-list">
                
                <ul>
                    	<li>
                        	<div class="left-fun">
                            	<h3>${allCampaign}</h3>
                                <p>All Campaigns</p>
                            </div>
                            <div class="right-fun">
                            	<h3>${campaignExpireInLimitedDays}</h3>
                                <p>Expiring <30 days</p>
                            </div>
                        </li>
                        <li>
                        	<div class="left-fun">
                            	<h3>$${donorFunds}</h3>
                                <p>Funds Raised</p>
                            </div>
                            <div class="right-fun">
                            	<h3>$${donationInLastDays}</h3>
                                <p>In Last 30 Days</p>
                            </div>
                        </li>
                    </ul>
                    	
                </div>
                
                
                
                <div class="function-list padding-top-zero">
                	<ul>
                    	
                        
                        <li class="new-dshbrd">
                        	<div class="left-fun-mini" onclick="uniqueDonorsList();" style="cursor: pointer;">
                            	<h3>${uniqueDonors}</h3>
                                <p>Unique Donors</p>
                            </div>
                            <div class="mid-fun-mini" onclick="uniqueIPledgeList();" style="cursor: pointer;">
                            	<h3>${uniqueIPledge}</h3>
                                <p>IPledge Donor</p>
                            </div>
                            <div class="right-fun-mini">
                            	<h3>$${avgDonation}</h3>
                                <p>Average Donation</p>
                            </div>
                        </li>
                    </ul>
                </div>
                
               <%--  <div class="function-list padding-top-zero">
                	<ul>
                    	
                        
                        <li class="new-dshbrd">
                        	<div class="left-fun-mini">
                            	<h3>${dtoDailyStats.dailyPrincipalCount}</h3>
                                <p>Daily Principals</p>
                            </div>
                            <div class="mid-fun-mini">
                            	<h3>${dtoDailyStats.dailyTeacherCount}</h3>
                                <p>Daily Teachers</p>
                            </div>
                            <div class="right-fun-mini">
                            	<h3>${dtoDailyStats.dailyParentCount}</h3>
                                <p>Daily Parents</p>
                            </div>
                        </li>
                    </ul>
                </div> --%>
                
                
                
                
             </div>   
            </div>
            
            <!--misc tabs start-->
              
            <div class="misc_tabs">
            <div class="misc_tabar findsh-tab">
                <ul>
                	<li id="mtab5" class=" selected"><a class="hybrid" href="javascript:showTab(5,5)">Not Running Any Campaign</a></li>
                    <li id="mtab1" ><a class="trial" href="javascript:showTab(1,5)">Working on Target</a></li>
                    <li id="mtab2" ><a class="fp" href="javascript:showTab(2,5)">Close to Target</a></li>
                    <li id="mtab3" ><a class="hybrid" href="javascript:showTab(3,5)">Target Accomplished</a></li>
                    <li id="mtab4" ><a class="hybrid" href="javascript:showTab(4,5)">Over the Target</a></li>
                </ul>
            </div>
           
            <div class="misc_content">
            <!--TAB 1 STARTS-->
						<div id="tab5">

							<div class="container">
							 
								<div class="ur_grid_new_fd">
									<a class="margin-bottom-ten display-block" onclick="migratedSchoolsList();">Life Time Schools</a>
									<table class="table table-striped table-hover table-bordered" id="sample_1">
									<thead>
										<tr>
											<th>school logo</th>
											<th>Main Contact</th>
											<th>State</th>
											<th>Target</th>
											<th>Fund Raised</th>
										</tr>
										</thead>
										<tbody>
										<c:forEach var="school" items="${schoolDonationDetailList}">
										<c:if test="${not empty school.trialStatus && school.trialStatus != 'Y' && school.campaignCount eq 0 && empty school.isMigrated}">
											<tr>
												<td class="s-logo-fd">
												            <c:if test="${not empty school.schoolLogo}">
												                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${school.schoolLogo}"  alt=""/>
												                </c:if>
												            <c:if test="${empty school.schoolLogo}">
												                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
												                </c:if>
												<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${school.schoolLogo}"> --%>
													<p>
														${school.schoolName}
													</p></td>
												<td><span class="fd_span">${school.principalName}</span></td>
												<td><span class="fd_span">${school.state}</span></td>
												<fmt:formatNumber var="tg" value="${school.totalCampAmount}" maxFractionDigits="0"></fmt:formatNumber>
												<td><span class="fd_span">$${tg}</span></td>
												<fmt:formatNumber var="sc" value="${school.donorContribution + school.schoolContribution}" maxFractionDigits="0"></fmt:formatNumber>
												<td><span class="fd_span">$${sc}</span></td>
											</tr>
											</c:if>
										</c:forEach>
										</tbody>
									</table>


								</div>
							</div>

						</div>
						<!--TAB 1 ENDS-->
            <!--TAB 1 STARTS-->
						<div id="tab1" style="display: none;">

							<div class="container">
								<div class="ur_grid_new_fd">
									<table class="table table-striped table-hover table-bordered" id="sample_2">
									<thead>
										<tr>
											<th>school logo</th>
											<th>PRINCIPAL name</th>
											<th>State</th>
											<th>Total fund assistance needed</th>
											<th>Fund Raised</th>
										</tr>
										</thead>
										<tbody>
										<c:forEach var="school" items="${schoolDonationDetailList}">
										<c:if test="${not empty school.trialStatus && empty school.isMigrated && school.trialStatus != 'Y' && school.campaignCount gt 0 && ((school.donorContribution + school.schoolContribution)*100/school.totalCampAmount) lt 80 }">
											<tr>
												<td class="s-logo-fd">
												            <c:if test="${not empty school.schoolLogo}">
												                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${school.schoolLogo}"  alt=""/>
												                </c:if>
												            <c:if test="${empty school.schoolLogo}">
												                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
												                </c:if>
												<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${school.schoolLogo}"> --%>
													<p>
														${school.schoolName}
													</p></td>
												<td><span class="fd_span">${school.principalName}</span></td>
												<td><span class="fd_span">${school.state}</span></td>
												<fmt:formatNumber var="tg" value="${school.totalCampAmount}" maxFractionDigits="0"></fmt:formatNumber>
												<td><span class="fd_span">$${tg}</span></td>
												<fmt:formatNumber var="sc" value="${school.donorContribution + school.schoolContribution}" maxFractionDigits="0"></fmt:formatNumber>
												<td><span class="fd_span">$${sc}</span></td>
											</tr>
											</c:if>
										</c:forEach>
										</tbody>
									</table>


								</div>
							</div>

						</div>
						<!--TAB 1 ENDS-->
                <!--TAB 2 STARTS-->
						<div id="tab2" style="display: none;">
						
							<div class="container">
							
							
								<div class="ur_grid_new_fd">
								<div style="width: 500px;display: inline-block; /*position: absolute; top:-24px;*/">
									<label for="closeToTarget" style="display: inline-block;">Close To Target</label>
									
<div class="slider-close-to-target">									
<ul id="sliders">
    <li>
        <div class="slider">80</div>
        <span class="value">0</span>%
    </li>
</ul>
</div>									
									
									<%-- <div id="progress"></div><div class="application-progress"></div>
							<span class="min">100</span> --%>
									
									<!-- <input type="text"  class="table-form-left-input" name="closeToTarget" id="closeToTarget" onchange="closeToTargetList();"/> -->
								</div>
									<table class="table table-striped table-hover table-bordered" id="sample_3">
									<thead>
										<tr>
											<th>school logo</th>
											<th>PRINCIPAL name</th>
											<th>State</th>
											<th>Total fund assistance needed</th>
											<th>Remaining Funds</th>
										</tr>
										</thead>
										<tbody id="closeToTargetBody">
										<c:forEach var="school" items="${schoolDonationDetailList}">
										<c:if test="${not empty school.trialStatus && empty school.isMigrated && school.trialStatus != 'Y' && school.campaignCount gt 0 && ((school.donorContribution + school.schoolContribution)*100/school.totalCampAmount) gt 80 && ((school.donorContribution + school.schoolContribution)*100/school.totalCampAmount) lt 100}">
											<tr>
												<td class="s-logo-fd">
												            <c:if test="${not empty school.schoolLogo}">
												                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${school.schoolLogo}"  alt=""/>
												                </c:if>
												            <c:if test="${empty school.schoolLogo}">
												                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
												                </c:if>
												<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${school.schoolLogo}"> --%>
													<p>
														${school.schoolName}
													</p></td>
												<td><span class="fd_span">${school.principalName}</span></td>
												<td><span class="fd_span">${school.state}</span></td>
												<fmt:formatNumber var="tg1" value="${school.totalCampAmount}" maxFractionDigits="0"></fmt:formatNumber>
												<td><span class="fd_span">$${tg1}</span></td>
												<fmt:formatNumber var="sc1" value="${school.totalCampAmount - (school.donorContribution + school.schoolContribution)}" maxFractionDigits="0"></fmt:formatNumber>
												<td><span class="fd_span">$${sc1}</span></td>
											</tr>
											</c:if>
										</c:forEach>
										</tbody>

									</table>


								</div>
							</div>
						</div>
						<!--TAB 2 ENDS-->
                <!--TAB 3 STARTS-->
                <div id="tab3" style="display:none;">
							<div class="container">
								<div class="ur_grid_new_fd">
									<table class="table table-striped table-hover table-bordered" id="sample_4">
									<thead>
										<tr>
											<th>school logo</th>
											<th>PRINCIPAL name</th>
											<th>State</th>
											<th>Total fund assistance needed</th>
											<th>Fund Raised</th>
										</tr>
										</thead>
										<tbody>
										<c:forEach var="school" items="${schoolDonationDetailList}">
										<c:if test="${not empty school.trialStatus && empty school.isMigrated && school.trialStatus != 'Y' && school.campaignCount gt 0 && ((school.donorContribution + school.schoolContribution)*100/school.totalCampAmount) eq 100 }">
											<tr>
												<td class="s-logo-fd">
												            <c:if test="${not empty school.schoolLogo}">
												                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${school.schoolLogo}"  alt=""/>
												                </c:if>
												            <c:if test="${empty school.schoolLogo}">
												                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
												                </c:if>
												<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${school.schoolLogo}"> --%>
													<p>
														${school.schoolName}
													</p></td>
												<td><span class="fd_span">${school.principalName}</span></td>
												<td><span class="fd_span">${school.state}</span></td>
												<fmt:formatNumber var="tg2" value="${school.totalCampAmount}" maxFractionDigits="0"></fmt:formatNumber>
												<td><span class="fd_span">$${tg2}</span></td>
												<fmt:formatNumber var="sc" value="${school.donorContribution + school.schoolContribution}" maxFractionDigits="0"></fmt:formatNumber>
												<td><span class="fd_span">$${sc}</span></td>
											</tr>
											</c:if>
										</c:forEach>
										</tbody>

									</table>


								</div>
							</div>
                </div>
                 <!--TAB 3 ENDS-->
                <!--TAB 4 STARTS-->
                <div id="tab4" style="display:none;">
							<div class="container">
								<div class="ur_grid_new_fd">
									<table class="table table-striped table-hover table-bordered" id="sample_5">
									<thead>
										<tr>
											<th>school logo</th>
											<th>PRINCIPAL name</th>
											<th>State</th>
											<th>Total fund assistance needed</th>
											<th>Over Target</th>
										</tr>
										</thead>
										<tbody>
										<c:forEach var="school" items="${schoolDonationDetailList}">
										<c:if test="${not empty school.trialStatus && empty school.isMigrated && school.trialStatus != 'Y' && school.campaignCount gt 0 && ((school.donorContribution + school.schoolContribution)*100/school.totalCampAmount) gt 100}">
											<tr>
												<td class="s-logo-fd">
												            <c:if test="${not empty school.schoolLogo}">
												                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${school.schoolLogo}"  alt=""/>
												                </c:if>
												            <c:if test="${empty school.schoolLogo}">
												                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
												                </c:if>
												<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${school.schoolLogo}"> --%>
													<p>
														${school.schoolName}
													</p></td>
												<td><span class="fd_span">${school.principalName}</span></td>
												<td><span class="fd_span">${school.state}</span></td>
												<fmt:formatNumber var="tg2" value="${school.totalCampAmount}" maxFractionDigits="0"></fmt:formatNumber>
												<td><span class="fd_span">$${tg2}</span></td>
												<fmt:formatNumber var="sc2" value="${ school.donorContribution + school.schoolContribution - school.totalCampAmount}" maxFractionDigits="0"></fmt:formatNumber>
												<td><span class="fd_span">$${sc2}</span></td>
											</tr>
											</c:if>
										</c:forEach>
										</tbody>

									</table>


								</div>
							</div>
                </div>
                 <!--TAB 4 ENDS-->
            </div>
        </div>
            <!--misc tabs end-->
        </div>
        <!--about_us ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends--> 
    </div>
                     <div id="migratedSchools" style="display:none; width: 1100px;">
							<div class="container" style="width: 95%">
							<h3 class="mbtm30">Life Time Schools</h3>
								<div class="ur_grid_new_fd" style="margin:0 0 0 0;">
									<table class="table table-striped table-hover table-bordered" id="sample_8">
									<thead>
										<tr>
											<th>Name</th>
											<th>Contact</th>
											<th>City/State</th>
										</tr>
										</thead>
										<tbody>
										<c:forEach var="school" items="${schoolDonationDetailList}">
										<c:if test="${not empty school.isMigrated}">
											<tr>
												<td><span class="fd_span">${school.schoolName}</span></td>
												<td><span class="fd_span">${school.contact}</span></td>
												<td><span class="fd_span">${school.state}</span></td>
											</tr>
										</c:if>
										</c:forEach>
										</tbody>

									</table>


								</div>
							</div>
                </div>
                    <div id="uniqueDonors" style="display:none; width: 1100px;">
							<div class="container" style="width: 95%">
							<h3 class="mbtm30">Unique Donors</h3>
								<div class="ur_grid_new_fd" style="margin:0 0 0 0;">
									<table class="table table-striped table-hover table-bordered" id="sample_7">
									<thead>
										<tr>
											<th>Name</th>
											<th>Email</th>
											<th>Contribution</th>
											<th>Zip Code</th>
											<th>City/State</th>
											<th>Contribution Date</th>
											<th>Last Donation ($)</th>
											<th>Cumulative Amount ($)</th>
											
										</tr>
										</thead>
										<tbody>
										<c:forEach var="uniqueDonor" items="${uniqueDonorsList}">
											<tr>
												<td><span class="fd_span">${uniqueDonor.name}</span></td>
												<td><span class="fd_span">${uniqueDonor.email}</span></td>
												<td><span class="fd_span">${uniqueDonor.donationType}</span></td>
												<td><span class="fd_span">${uniqueDonor.zipCode}</span></td>
												<td><span class="fd_span">${uniqueDonor.state}</span></td>
												<td><span class="fd_span">${uniqueDonor.donationDate}</span></td>
												<fmt:formatNumber var="tg2" value="${uniqueDonor.lastDonation}" maxFractionDigits="0"></fmt:formatNumber>
												<td><span class="fd_span">${tg2}</span></td>
												<fmt:formatNumber var="sc2" value="${uniqueDonor.cumulativeAmount}" maxFractionDigits="0"></fmt:formatNumber>
												<td><span class="fd_span">${sc2}</span></td>
												
											</tr>
										</c:forEach>
										</tbody>

									</table>


								</div>
							</div>
                </div>
                
                
                
                <div id="uniqueIpledge" style="display:none; width: 1100px;">
							<div class="container" style="width: 95%">
							<h3 class="mbtm30">IPledge Donor</h3>
							<div>
				<input class="submit-btn fl" type="button" id="sendStarRatingButton" value="Send Email" onclick="openSendEmailStarRatingPopup();" style="margin-bottom: 10px;"> 
			</div>
								<div class="ur_grid_new_fd" style="margin:0 0 0 0;">
								
								
									<table class="table table-striped table-hover table-bordered" id="sample_6">
									<thead>
										<tr>
											<th>Name</th>
											<th>Email</th>
											
											<!-- <th>Zip Code</th> -->
											<th>City/State</th>
											<th>Last Donation ($)</th>
											<th>Days Passed</th>
											<th>Cumulative Amount ($)</th>
										</tr>
										</thead>
										<tbody>
										<c:forEach var="uniqueIPledge" items="${uniqueIPledgeList}">
											<tr>
												<td><span class="fd_span">${uniqueIPledge.name}</span></td>
												<td><span class="fd_span">${uniqueIPledge.email}</span></td>
												
												<%-- <td><span class="fd_span">${uniqueIPledge.zipCode}</span></td> --%>
												<td><span class="fd_span">${uniqueIPledge.state}</span></td>
												<fmt:formatNumber var="tg2" value="${uniqueIPledge.lastDonation}" maxFractionDigits="0"></fmt:formatNumber>
												<td><span class="fd_span">${tg2}</span></td>
												<td><span class="fd_span">${uniqueIPledge.days}</span></td>
												<fmt:formatNumber var="sc2" value="${uniqueIPledge.cumulativeAmount}" maxFractionDigits="0"></fmt:formatNumber>
												<td><span class="fd_span">${sc2}</span></td>
											</tr>
										</c:forEach>
										</tbody>

									</table>


								</div>
							</div>
                </div>
                
                <!-- Send Email Popup  Ipledge Donor -->
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
                
                
                <form action="<%=request.getContextPath() %>" id="priceform"></form>

<%-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script> --%> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
<%@include file="../footer.jsp" %>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script> 
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>   
<script src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script> 
 <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
 
<script type="text/javascript">

function getStateRecords(code){
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

function showTab(current,max){
	for (i=1;i<=max;i++){
	getMyHTMLElement('tab' + i).style.display = 'none';
	getMyHTMLElement('mtab' + i).className = '';
	}
	getMyHTMLElement('tab' + current).style.display = '';
	getMyHTMLElement('mtab' + current).className = 'selected';
	}

jQuery(document).ready
(function($){
	
$.daisyNav();

/* var script = document.createElement('script');
script.src = "http://maps.googleapis.com/maps/api/js?sensor=false&callback=initialize";
document.body.appendChild(script); */

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

});
    $(function(){
    	var map = jQuery("#vmap_usa");
        var setMap = function (name) {
            var data = {
                map: 'usa_en',
                backgroundColor: null,
                borderColor: '#333333',
                borderOpacity: 0.5,
                borderWidth: 1,
                color: '#c6c6c6',
                enableZoom: false,
                hoverColor: '#c9dfaf',
                hoverOpacity: null,
                values: null,
                normalizeFunction: 'linear',
                scaleColors: ['#b6da93', '#909cae'],
                //selectedColor: '#c9dfaf',
                selectedColor: '#01a04e',
                selectedRegion: null,
                showTooltip: true,
                onLabelShow: function (event, label, code) {
                	label[0].innerHTML = label[0].innerHTML+getStateRecords(code);
                },
                onRegionOver: function (event, code) {
                    if (code == 'ca') {
                        event.preventDefault();
                    }
                },
                onRegionClick: function (element, code, region) {
                }   
            };

            data.map = name + '_en';
            var map = jQuery('#vmap_' + name);
            if (!map) {
                return;
            }
            map.width(550);
            map.height(300);
            map.show();
            map.vectorMap(data);
            map.hide();
            //map.setSelectedRegions(  JSON.parse('${statesList}') );
        }
        setMap("usa");
        jQuery('#vmap_usa').show();
    	var states = ${statesList};
    	var schoolValue=0;
    	var schoolColor ="#C8EEFF";
     	$.each(states,function(index,value){
     		if(value!=""){
     			
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
     	$('[id^=jqvmap1_]').prop("disabled", true).off('click');
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
     	$.each(states,function(index,value){
     		if(value!=""){
     			$('#vmap_usa').vectorMap('select', value.toLowerCase());
     		}
    	});
        $('#map_wrapper').hide();
        $("#liveClassesDiv").hide();
	}

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
    var marker;
    var markers = [];
    $.ajax({
		url : "<%=request.getContextPath()%>/superadmin/getSchoolsList/",
		success : function(result) {
			$.each( result, function( index, value ) {
				if(value.latitude){
				var position = new google.maps.LatLng(value.latitude,value.longitude);
				//bounds.extend(position);
				marker = new google.maps.Marker({
				      position: position,
				      map: map,
				      title: value.schoolName
				  });
				
				var contentString ='<div class="info_content"><h5>'+value.schoolName+'</h5><p>'+value.address+'</p></div>';
				var infowindow = new google.maps.InfoWindow({
				      content: contentString,
				      //maxWidth: 200,
				      //maxHeight:200,
				      buttons:{close:{visible: true}}
				  });
				//map.fitBounds(bounds);
				
				google.maps.event.addListener(marker, 'click', function() {
				    infowindow.open(map,marker);
				  });
				
				markers.push(marker);
				}
				});
			}
		});
}
function closeToTargetList(val){
	//alert("dd = "+val);
	//var closeToTarget = $("#closeToTarget").val();
	var closeToTarget = val;
	if(closeToTarget == ''){
		closeToTarget = 80;
	} 
	if(val==0){
		closeToTarget = val;
	}
    var url = '<%=request.getContextPath()%>';
    var filteredResult = '';
    var logoUrl=url+'/NewStyles/images/school-profile/default-school-logo.png';
    $.ajax({
		url : "<%=request.getContextPath()%>/superadmin/closeToTargetList/",
		cache :false,
		async: false,
		success : function(result) {
			$("#sample_3").dataTable().fnDestroy();
	        $('#sample_3').removeAttr("style");
	        $('#sample_3').children().children().children(":visible").removeAttr("style");
			$("#closeToTargetBody").html('');
			$.each(result,function(index,value){
				if(value.schoolLogo != ''){
					logoUrl=url+'/NewStyles/images/school-profile/'+value.schoolLogo;
				}
				if(value.trialStatus!='Y' && value.campaignCount > 0 && (((value.donorContribution + value.schoolContribution)*100/value.totalCampAmount) > closeToTarget && ((value.donorContribution + value.schoolContribution)*100/value.totalCampAmount) <= 100)){
					filteredResult += '<tr>'+
									'<td class="s-logo-fd"><img src="'+logoUrl+'"  alt=""/><p>'+value.schoolName+'</p></td>'+
									'<td><span class="fd_span">'+value.principalName+'</span></td>'+
									'<td><span class="fd_span">'+value.state+'</span></td>'+
									'<td><span class="fd_span">'+value.totalCampAmount+'</span></td>'+
									'<td><span class="fd_span">'+(value.totalCampAmount - (value.donorContribution + value.schoolContribution))+'</span></td>';
				}
				
			});
			$("#closeToTargetBody").html(filteredResult);
		    $("#sample_3").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
		    $("#sample_3").attr("style","width:100%");
		    //jQuery('#sample_3_wrapper .dataTables_info ').attr("style","display:none");
		    //jQuery('#sample_3_wrapper .dataTables_paginate ').attr("style","display:none");
		    //jQuery('#sample_3_wrapper .dataTables_length ').attr("style","display:none");
			}
		});
} 
</script>
<script src="<%=request.getContextPath()%>/NewStyles/jquery-easy-pie-chart/jquery.easy-pie-chart.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/app.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/index.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.min.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.resize.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.pie.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.stack.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.crosshair.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.time.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.axislabels.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/charts.js"></script>    
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.tooltip.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/select2/select2.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery-ui.min.js"></script>








<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.flot.symbol.js" type="text/javascript"></script>
 <%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.numberformatter-1.2.3.min.js" type="text/javascript"></script> --%>
 <script src="<%=request.getContextPath()%>/NewStyles/js/jshashtable-2.1.js" type="text/javascript"></script>
 
 
  <script>
  $(window).load(function(){
        //******* 2012 Gold Price Chart
    //    alert("draw graph========"+lineGraphVal);
       var data1 = "["+lineGraphVal+"];";
     //   alert("final val8888888888888888-----------------"+data1);
        
        var arr = jQuery.makeArray( lineGraphVal );
        
        //alert("arr = "+arr);
        
      /*   var data1 = [
                      [gd(2012, 0, 1), 1652.21], [gd(2012, 1, 1), 1742.14], [gd(2012, 2, 1), 1673.77]
                 ];
        alert(data1); */
 
       /*  var data2 = [
            [gd(2012, 0, 1), 0.63], [gd(2012, 1, 1), 5.44], [gd(2012, 2, 1), -3.92], [gd(2012, 3, 1), -1.44],
            [gd(2012, 4, 1), -3.55], [gd(2012, 5, 1), 0.48], [gd(2012, 6, 1), -0.55], [gd(2012, 7, 1), 2.54],
            [gd(2012, 8, 1), 7.02], [gd(2012, 9, 1), 0.10], [gd(2012, 10, 1), -1.43], [gd(2012, 11, 2), -2.14]
        ]; */
        var dataset = [
            { label: "Schools", data: arr, yaxis: 2}/* ,
            { label: "Change", data: data2, yaxis: 2 } */
        ];
 //alert("Sdfsdfsf");
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
                axisLabel: "2016",
                axisLabelUseCanvas: false,
                axisLabelFontSizePixels: 12,
                axisLabelFontFamily: 'Verdana, Arial',
                axisLabelPadding: 10
            },
            yaxes: [{
                /* axisLabel: "No. of school", */
                /* axisLabelUseCanvas: true,
                axisLabelFontSizePixels: 12,
                axisLabelFontFamily: 'Verdana, Arial', */
                /* axisLabelPadding: 3, */
               /*  tickFormatter: function (v, axis) {
                    return $.formatNumber(v, { format: "#,###", locale: "us" });
                } */
            }/* , {
                position: "right",
                axisLabel: "Change(%)",
                axisLabelUseCanvas: true,
                axisLabelFontSizePixels: 12,
                axisLabelFontFamily: 'Verdana, Arial',
                axisLabelPadding: 3
            } */
          ],
             legend: {
                noColumns: 0,
               /*  labelBoxBorderColor: "#000000", */
                position: "nw"
            }, 
            grid: {
                hoverable: true,
                borderWidth: 2,
                borderColor: "#633200",
                backgroundColor: { colors: ["#ffffff", "#EDF5FF"] }
            },
            colors: ["#02A451"]
        };
 
        $(document).ready(function () {
            $.plot($("#place_holder"), dataset, options);
            $("#place_holder").UseTooltip();
        });
 
 
 
 
        function gd(year, month, day) {
            return new Date(year, month, day).getTime();
        }
 
        
        
  });
    </script>


<script type="text/javascript">

var previousPoint = null, previousLabel = null;
var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];

$.fn.UseTooltip = function () {
    $(this).bind("plothover", function (event, pos, item) {
        if (item) {
            if ((previousLabel != item.series.label) || (previousPoint != item.dataIndex)) {
                previousPoint = item.dataIndex;
                previousLabel = item.series.label;
                $("#tooltip").remove();

                var x = item.datapoint[0];
                var y = item.datapoint[1];

                var color = item.series.color;
                var month = new Date(x).getMonth();

                //console.log(item);

                if (item.seriesIndex == 0) {
                    showTooltip(item.pageX,
                    item.pageY,
                    color,
                    "<strong>" + item.series.label + "</strong><br>" + monthNames[month] + " : <strong>" + y + "</strong>");
                } else {
                    showTooltip(item.pageX,
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

function showTooltip(x, y, color, contents) {
    $('<div id="tooltip">' + contents + '</div>').css({
        position: 'absolute',
        display: 'none',
        top: y - 20,
        left: x - 60,
        border: '2px solid ' + color,
        padding: '3px',
        'font-size': '9px',
        'border-radius': '5px',
        'background-color': '#fff',
        'font-family': 'Verdana, Arial, Helvetica, Tahoma, sans-serif',
        opacity: 0.9
    }).appendTo("body").fadeIn(200);
}

</script>











<script>
var lineGraphVal=[];
$(document).ready(function (){
    	//App.init();
    	$("#header").sticky({ topSpacing: 0 });
    	TableManaged.init();
    	Index.initMiniCharts();
    	 var maxDataVal = 0;
    	var data1 = GenerateSeries();
    	//alert(data1);
    	lineGraphVal=data1;
    	//var data= [[1, 15], [2, 20], [4, 27], [6, 32], [8, 35]];
    	/* var abc = '${dtoSchool.lineGraphValues}';
    	abc = abc.replace(/=/g , ',');
    	
    	alert("abc = "+abc); */
    	
    	   function gd1(year, month, day) {
            return new Date(year, month, day).getTime();
        }
    	 
    	 function GenerateSeries() {
             var data1 = [];
var j = 0;
             var abc = '${dtoSchool.lineGraphValues}';
             if(abc.indexOf("=") > -1){
             	abc = abc.replace(/=/g , ':');
             }
             //alert("abc = "+abc);
             var json = JSON.stringify(eval("(" + abc + ")"));
             var obj = $.parseJSON(json);
             var status=0;
             
             $.each(obj,function(key,value){
  	        	  j++;
  	          });
             //alert("j = "+j);
             for (i = 0; i < j; i++) {
   	          $.each(obj,function(key,value){
   	        	  if(i==(key-1)){
   	        		  status = value;
   	        	  }
   	          });
   	          /* data1.push([0,0]); */
   	        /* data1.push([i,status]); */
   	        
   	        
   	       var val = gd1(2016,i,1);
   	        data1.push([val,status]);
   	        if(status>maxDataVal){
   	        	maxDataVal = status;
   	        }
   	        status=0;
             }
            /*  for (i = 1; i <= 12; i++) {
                 var d = Math.floor(100);
                 data.push([i, d]);
             } */
//alert("data = "+data);
             //alert(data1);
             return data1;
         }
    	 
    	 $( "#goalExpire" ).datepicker({
             defaultDate: "+1w",
             changeMonth: true,
             minDate: 0,
             dateFormat: 'yy-mm-dd'
           });
            var data = [];
            var series = 4;
            data[0] = {
                    label: "Need Assistance" ,
                    data: '${needAssistance}',
                    color: '#ffffff'
                };
            data[1] = {
                    label: "School Funds" ,
                    data: '${schoolFunds}',
                    color : '#faa619'
                }
            data[2] = {
                    label: "Contributions" ,
                    data: '${donorFunds}',
                    color: '#f37020'
                }
            data[3] = {
                    label: "I Pledged" ,
                    data: '${fundPledged}',
                    color:'#4DA74D'
                }

            // DEFAULT
        var plotObj =     $.plot($("#pie_chart"), data, {
                    series: {
                        pie: {
                            show: true,
                        }
                    },
                    grid: {
                        hoverable: true
                    },
                    tooltip: {
                        show: true,
                        content:function(label,x,y){
                            return y+", "+label;
                        },
                        defaultTheme: false
                    }
                });
            /* $(".legend").children("div").addClass("legend-div");
            $(".legend").children("table").addClass("legend-div");
            $(".legend").children("table").children().children().children("td:first-child").addClass("legend-td"); */
    	//Charts.initPieCharts();
           
            
    });
    
    function uniqueDonorsList(){
		 $.fancybox({
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#uniqueDonors'
		  });
    }
    function migratedSchoolsList(){
		 $.fancybox({
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#migratedSchools'
		  });
   }
    
    function uniqueIPledgeList(){
		 $.fancybox({
		     'autoScale': true,
		     'autoDimensions': true,
		     'centerOnScroll': true,
		     'href' : '#uniqueIpledge'
		  });
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
  	 // var progId=$("#programID").val();
  	  var title=$("#titleStarRating").val();
  	  var message=$("#messageStarRating").val();
  	  var url='<%=request.getContextPath()%>/superadmin/sendIPLedgeEmail';
  		$.ajax({
  			url:url,
  			method:'POST',
  			async :false,
  			data:{title:title,message:message},
  			cache:false,
  			success:function(response){
  				$.fancybox.close();
  	
  				}
  			
  		});
  	  }
    }
    
    
    
    var sliders = $("#sliders .slider");
    var availableTotal = 100;

    sliders.each(function() {
        var init_value = parseInt($(this).text());

        $(this).siblings('.value').text(init_value);

        $(this).empty().slider({
            value: init_value,
            min: 0,
            max: availableTotal,
            range: "max",
            step: 2,
            animate: 0,
            slide: function(event, ui) {
                
                // Update display to current value
                $(this).siblings('.value').text(ui.value);

                // Get current total
                var total = 0;

                sliders.not(this).each(function() {
                    total += $(this).slider("option", "value");
                });

                // Need to do this because apparently jQ UI
                // does not update value until this event completes
                total += ui.value;

                var delta = availableTotal - total;
                
                // Update each slider
                sliders.not(this).each(function() {
                    var t = $(this),
                        value = t.slider("option", "value");

                    var new_value = value + (delta/2);
                    
                    if (new_value < 0 || ui.value == 100) 
                        new_value = 0;
                    if (new_value > 100) 
                        new_value = 100;

                    t.siblings('.value').text(new_value);
                    t.slider('value', new_value);
                });
            },
            change: function(event, ui) {
            	closeToTargetList(ui.value);
            }
        });
    });
    
    
/*     $('.application-progress').slider({
        range: "min",
        min: 0,
        max: 100,
        animate: true,
        slide: function(event, ui) {
            $("#progress").html(ui.value + "%");
         //   alert(ui.value);
           
        }
    });
    $("#progress").html($(".application-progress").slider("value") + "%");

    $("input, select").change(function() {
        var percentage = 0;
        $('input, select').each(function() {
            if ($.trim(this.value) != "") percentage += 10;
        });
        $(".application-progress").slider("value", percentage);
        alert(percentage);
        $("#progress").html(percentage + "%");
        closeToTargetList(percentage);
    }); */
    function updateGoal(){
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
    }
    
    function modifyGoalCount(obj){
    	var goalCount = $(obj).text();
    	$(obj).replaceWith('<input type="number" id="editGoalCount" class="margin-btm-zero" min="0" value="" placeholder="10,000" onblur="updateGoalCount(this);" style="width:75px; font-size: 12px;"/>');
    	$("#editGoalCount").focus();
    	$("#editGoalCount").val(goalCount);
    }
    function showDatePicker(){
    	$('#ui-datepicker-div').addClass('calndr-fin');
    	$('#goalExpire').datepicker('show');
    	
    }
    
    function updateGoalCount(obj){
    	// update #goal value and call updateGoal function
    	$("#goal").val( $(obj).val())
    	updateGoal();
    } 
  </script>
</body>
</html>