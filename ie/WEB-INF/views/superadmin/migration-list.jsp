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
	
	<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet prefetch" href="<%=request.getContextPath()%>/NewStyles/css/datepicker.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/autocomplete/main.css" rel="stylesheet">
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
	.table{
	    width: 100% !important;
	}
	.width30{width:33% !important;}
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
            <h2>App Users</h2>
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
          <%--   
            <div class="function-list padding-top-zero">
                	<ul>
                    	
                        
                        <li class="new-dshbrd wdth75">
                        	<div class="left-fun-mini wdth20" style="cursor: pointer;" onclick="newUsers(3);">
                            	<h3>${dtoDailyStats.dailyPrincipalCount}</h3>
                                <p>New Principals</p>
                            </div>
                            <div class="mid-fun-mini wdth20" style="cursor: pointer;" onclick="newUsers(2);">
                            	<h3>${dtoDailyStats.dailyTeacherCount}</h3>
                                <p>New Teachers</p>
                            </div>
                            <div class="mid-fun-mini wdth20" style="cursor: pointer;" onclick="newUsers(4);">
                            	<h3>${dtoDailyStats.dailyParentCount}</h3>
                                <p>New Parents</p>
                            </div>
                            <div class="mid-fun-mini wdth20" style="cursor: pointer;" onclick="newUsers(5);">
                            	<h3>${dtoDailyStats.dailyAmbassadorsCount}</h3>
                                <p>New Brand Ambassadors</p>
                            </div>
                            <div class="right-fun-mini wdth20" style="cursor: pointer;" onclick="newUsers(6);">
                            	<h3>${dtoDailyStats.dailySponsorsCount}</h3>
                                <p>New Sponsors</p>
                            </div>
                        </li>
                    </ul>
                </div> --%>
            
            <!--TAB 1 STARTS-->
                <div id="tab1">
                
                	<div class="container">
                	<div class="table-head-btns">
                	<%-- <input type="button" value="Legacy Users" id="tab-1" onclick="location.href='<%=request.getContextPath()%>/superadmin/migration';" class="table-head-btns-slctd"/> --%>
                		<input type="button" value="Legacy Users" id="tab-1" onclick="getAllTeachers(1)" class="table-head-btns-slctd"/>
            			<input type="button" value="Teachers" id="tab-2" onclick="getAllTeachers(2);"/>
            			<input type="button" value="Principals" id="tab-3" onclick="getAllTeachers(3);"/>
            			<input type="button" value="Parents" id="tab-4" onclick="getAllTeachers(4);"/>
	            		<input type="button" value="Incomplete Signups"  id="incompleteSignups" name="incompleteSignups" onclick="location.href='<%=request.getContextPath()%>/superadmin/incomplete-signups'"  />
	            		<input type="button" value="Subscription Expired" id="subscriptionExpired" name="subscriptionExpired" onclick="location.href='<%=request.getContextPath()%>/superadmin/subscription-expired'""/>
            			<%-- <input type="button" value="Global Search" id="tab-4" onclick="location.href='<%=request.getContextPath()%>/superadmin/searchResult';"/>
            			<input type="button" value="Revenue Report" id="tab-4" onclick="getAllRevenueDetails();"/> --%>
            			
            			
            			</div>
            			<input type="hidden" id="isAnAdminPrime" value="${isAnAdminPrime}" >
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
 
 <div class="function-list padding-top-zero" id="joinedNotJoined">
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
                </div>
                
                 <div class="function-list padding-top-zero" id="activeNotActive" style="display:none">
                	<ul>
                    	
                        
                        <li class="new-dshbrd wdth75">
                        	<div class="left-fun-mini wdth50 width30" style="cursor: pointer;" onclick="activeNotActive(2,'Y')">
                            	<%-- <h3>${dtoUser.migratedJoinedCount}</h3> --%>
                                <p>Active</p>
                            </div>
                            <div class="mid-fun-mini wdth50 width30" style="cursor: pointer;" onclick="activeNotActive(2,'N')">
                            	<%-- <h3>${dtoUser.migratedNotJoinedCount}</h3> --%>
                                <p>Inactive</p>
                            </div>
                            <div class="mid-fun-mini wdth50 bdrright0 width30" style="cursor: pointer;" onclick="teacherSignUp()">
                            	<%-- <h3>${dtoUser.migratedNotJoinedCount}</h3> --%>
                                <p>Add Users</p>
                            </div>
                        </li>
                    </ul>
                </div>
                 <div class="function-list padding-top-zero" id="activeNotActivePrinc" style="display:none">
                	<ul>
                    	
                        
                        <li class="new-dshbrd wdth75">
                        	<div class="left-fun-mini wdth50 width30" style="cursor: pointer;" onclick="activeNotActive(3,'Y')">
                            	<%-- <h3>${dtoUser.migratedJoinedCount}</h3> --%>
                                <p>Active</p>
                            </div>
                            <div class="mid-fun-mini wdth50 width30" style="cursor: pointer;" onclick="activeNotActive(3,'N')">
                            	<%-- <h3>${dtoUser.migratedNotJoinedCount}</h3> --%>
                                <p>Inactive</p>
                            </div>
                            <div class="mid-fun-mini wdth50 bdrright0 width30" style="cursor: pointer;width:30%;" onclick="principalSignUp()">
                            	<%-- <h3>${dtoUser.migratedNotJoinedCount}</h3> --%>
                                <p>Add Users</p>
                            </div>
                        </li>
                    </ul>
                </div>
                
                  <div class="function-list padding-top-zero" id="activeNotActiveParent" style="display:none">
                	<ul>
                    	
                        
                        <li class="new-dshbrd wdth75">
                        	<div class="left-fun-mini wdth50 width30" style="cursor: pointer;" onclick="activeNotActive(4,'Y')">
                            	<%-- <h3>${dtoUser.migratedJoinedCount}</h3> --%>
                                <p>Active</p>
                            </div>
                            <div class="mid-fun-mini wdth50 width30" style="cursor: pointer;" onclick="activeNotActive(4,'N')">
                            	<%-- <h3>${dtoUser.migratedNotJoinedCount}</h3> --%>
                                <p>Inactive</p>
                            </div>
                            <div class="mid-fun-mini wdth50 bdrright0 width30" style="cursor: pointer;" onclick="parentSignUp()">
                            	<%-- <h3>${dtoUser.migratedNotJoinedCount}</h3> --%>
                                <p>Add Users</p>
                            </div>
                        </li>
                    </ul>
                </div>


<table class="table table-striped table-bordered table-hover" id="sample_1">
							<thead>
							<tr>
								<th>
									 Email
								</th>
								<th>
									 School Name
								</th>
								<th>
									 Status
								</th>
								<th>
									 Action
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
									 ${migrated.email}
								</td>
								<td>
									 ${migrated.schoolName}
								</td>
								
								<td>
								<c:if test="${not empty migrated.joined}">
									 Joined
								</c:if>
								<c:if test="${empty migrated.joined}">
									 Not Joined
								</c:if>
								</td>
								<td>
									 <c:if test="${isAnAdminPrime eq '1'}">
									 <a onclick="setTeacherProgress('${migrated.email}',${migrated.userId});">[Set Progress] </a>
									 <a onclick="setTeacherBlock(${migrated.userId});" id=bloackStatus-${migrated.userId}>
									 <c:if test="${migrated.isBlocked == 'N'}">[Block]</c:if>
									 <c:if test="${migrated.isBlocked == 'Y'}">[Unblock]</c:if>
									 </a>
									 </c:if>
									 <a onclick="sendInviteMail('${migrated.email}');" style="cursor: pointer;">
									 <c:if test="${empty migrated.inviteDate }">[Invite]</c:if>
									 <c:if test="${not empty migrated.inviteDate }">[Re-invite]</c:if>
									 </a>
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
    
			<div class="container" style="display:none" id="principalsignup">
				<div class="new-started-step">
					<div class="containerSmall">
					
					<form:form  id="signupForm" method="post" modelAttribute="dtoSignUp" enctype="multipart/form-data">
					<input type="hidden" value="${schoolDetailTemp.schoolId}" name="schoolId">
						
						<div class="get-start-new-form">
							<div class="getstartForm_teacher">
								<label class="start-new-label">School Information</label>
								<ul>
									<li>
										<div class="contact-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<input type="text" placeholder="School Name*" id="prischoolName" name="schoolName" value="${schoolDetailTemp.schoolName}" >
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="contact-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<input type="text" id="priaddress" name="address"
												placeholder="School Address*" value="${schoolDetailTemp.addressLineOne}"/>
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="contact-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<input type="text" id="pristate" name="state"
												placeholder="State" value="${schoolDetailTemp.state}" />
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="contact-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<input type="text" id="pricity" name="city"
												placeholder="City" value="${schoolDetailTemp.city}" />
												</div>
											</div>
										</div>
									</li>
									<li>
										<div class="contact-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<input type="text" id="prizipCode" name="zipCode"
												placeholder="Zip Code*" value=""/>
												</div>
											</div>
										</div>
									</li>
									<li>
															   <div class="contact-row">
								<div class="outer-field-wrap">
							<div id="datepicker" class="input-group date" data-date-format="yyyy-mm-dd">
                                  <input class="form-control" type="text" readonly id="prisubExpDate" name="subExpDate" placeholder="Sub. expiry date" />
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
</div>
</div>
</div>
									</li>
										<li>
										<div class="contact-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<input name="totalStudentCountUnderSchool" type="text" placeholder="No. of Students" value="${schoolDetailTemp.studentCount}" id="pritotalStudentCountUnderSchool">
												</div>
											</div>
										</div>
									</li>
			                        <li>
										<div class="contact-row">
											<div class="outer-field-wrap">
												<div class="outer-field">
													<input name="teacherCount" type="text" placeholder="No. of Teachers" value="${schoolDetailTemp.teacherCount}" id="priteacherCount" >
												</div>
											</div>
										</div>
									</li>
									
						
		
            		
									<%-- <p class="red-text">
										This School is already registered with Inner Explorer <span><a
											href="javascript:;">View Details</a></span>
									</p> --%>
								</ul>
								
								<%-- <input type="text" name="state" id="state" placeholder="State" value="${schoolDetailTemp.state}"/> --%>
						
                	<label class="start-new-label">Contact Information</label>
                	
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Name*" name="name" id="priname" value="${schoolDetailTemp.principalName}">
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Email*" name="email" id="priEmail" value="${schoolDetailTemp.principalEmail}">
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="password" placeholder="Password*" name="password" id="pripassword" value="${schoolDetailTemp.principalPass}">
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="password" placeholder="Confirm Password*" name="confirmPassword" id="priconfirmPassword" value="${schoolDetailTemp.principalPass}">
									</div>
								</div>
							</div>
						</li>
                        
				</div>
                        </div>
						
				<!-- 				<div class="getstartForm_captcha" id="submitButton"  >
			<input type="button" value="Submit" class="submit-btn fl"  />
					
				</div> -->
				<div class="btns-outer mtop10">
					<input type="button" value="Submit" onclick="savePrincipal();" class="submit-btn fl" />
					</div>
								
							
								
							
						</form:form>
						
					</div>
				</div>
			</div>
	
    
    <!--inner_wrapper ends-->
    		<div class="container" id="parentSignUp" style="display:none">
		<form:form name="parentSignup" class="register-form" modelAttribute="dtoUser"  method="POST" >	
        
				<div class="getstartForm_teacher" id="parentForm" ">
                	<label>Parent Info</label>
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="firstName" type="text" placeholder="First Name" id="firstName" />
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="lastName" type="text" placeholder="Last Name" id="lastName"  />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="address" id="address" type="text" placeholder="Address" />
										<input type="hidden"
												name="latitude" id="latitude" value="0.0" /> <input
												type="hidden" name="longitude" id="longitude" value="0.0" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="city" id="city" type="text" placeholder="City Name" />
									
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="zipCode" id="zipCode" type="text" placeholder="Zipcode" />
										<input type="hidden" name="stateShort" id="state_short" />
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="email"  type="text" placeholder="Email" id="parentEmail"/>
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="mobile" type="text" id ="mobile" placeholder="Mobile" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="password" type="password" id="password" placeholder="Password" />
									</div>
								</div>
							</div>
						</li>
                        <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="password" placeholder="Confirm Password" id="confirmPassword" name="confirmPassword"/>
									</div>
								</div>
							</div>
						</li>
						   <li>
						   <div class="contact-row">
								<div class="outer-field-wrap">
							<div id="datepicker_parent" class="input-group date" data-date-format="yyyy-mm-dd">
                                  <input class="form-control" type="text" readonly  name="inviteDate" id ="pinviteDate" placeholder="Sub. expiry date" />
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
</div>
</div>
</div>
						</li>
					</ul>
						
				</div>
     
                <div class="btns-outer mtop10">
				<input type="hidden" name="parentType" value=1 id="parentType"/>
				<input type="hidden" name="parentAmount" id="parentAmount" value="${parentAmount}"/>
				<div class="getstartForm_captcha" id="submitButton"  >
			<input type="button" value="Submit" class="submit-btn fl" onclick="saveParent();" />
					
				</div>
				</div> 
				</form:form>
				
				</div> 
   
     <div class="containerSmall" id="teachersignup" style="display:none">
				<form:form role="form" 
					enctype="multipart/form-data" id="teacher-register"
					modelAttribute="dtoUser" method="post">
	
										<div class="getstartForm_teacher">
						<center><h3>Create a new teacher </h3></center>
						<input type="hidden" value =0 name="systemSchoolId" id="systemSchoolId" />
						<ul>
						<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" name="email" placeholder="Email*"
												id="temail" /> 
												
										</div>
										<input type="radio" name="gender" id="Seperate" checked> Separate teacher
  										<input type="radio" name="gender" id="Existing"> Linked To School
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											
												<input type="password" name="password" placeholder="password*" id="tpassword" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
									 
										<div class="outer-field">
											<input type="text" name="schoolName" id="tschoolName"
												placeholder="School Name*" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" id="taddress" name="address"
												placeholder="School Address*" /> <input type="hidden"
												name="latitude" id="tlatitude" value="0.0" /> <input
												type="hidden" name="longitude" id="tlongitude" value="0.0" />
										</div>
									</div>
								</div>
							</li>
						
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" id="tcity" name="city"
												placeholder="City" /> 
										</div>
									</div>
								</div>
							</li>
								<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" id="tstate" name="state"
												placeholder="State" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" name="zipCode" placeholder="Zip Code*"
												id="tzipCode" /> <input type="hidden" name="stateShort"
												id="tstate_short" />
											
										</div>
									</div>
								</div>
							</li>
							
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" name="className" id="tclassName" placeholder="Class Name*" />
										</div>
									</div>
								</div>
							</li>
						
												<li>
															   <div class="contact-row">
								<div class="outer-field-wrap">
							<div id="datepicker_teacher" class="input-group date" data-date-format="yyyy-mm-dd">
                                  <input class="form-control" type="text" readonly id="tsubExpDate" name="inviteDate" placeholder="Sub. expiry date*" />
                            <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
</div>
</div>
</div>
									</li>
							<li id="teacherName">
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" id="tfirstName" name="firstName" placeholder="Teacher Name*" />
										</div>
									</div>
								</div>
							</li>
			
						</ul>
					</div>
					<div class="getstartForm">
				
						<ul>
							
							
						</ul>
					</div>
				<!-- 	<div class="getstartForm">
						<label>Promo Code</label>
						<ul>
							
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" name="pCode" id="pCode" placeholder="Enter Promo Code" />
										</div>
									</div>
								</div>
							</li>
							<li></li>
							
							</ul>
							
					</div> -->
				<div class="getstartForm">
					<label>Please select your program *</label>
							<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field_sel outer-field">
											<select name="programIds" id="tprogramIds" class="select_about_ie" >
												<option value="0" selected>Select</option>
												<option value="1">Pre-k–Kindergarten</option>
												<option value="2">Elementary School</option>
												<option value="3">Middle School</option>
												<option value="4">High School</option>
											</select>
										</div>
									</div>
								</div>
							</li>
							</ul>
						</div> 
					<div class="btns-outer mtop10">
					<input type="button" value="Submit" class="submit-btn fl" onclick="saveTeacher();" />
					</div>
					
				</form:form>
			</div>
     
    
    
</div>
<div id="teacherProgressBox" style="display:none">
<form action="" id="teacherProgressForm">
<label>Email : </label><input type="text" readonly="readonly" id="email" name="email"/>
<label>Select Class : </label><select id="classId" name="classId" ></select><!-- onchange="setProgress(this);" -->
<label>Set Progress</label><input type="number" id="progressCount" name="progress" maxlength="3"/><br>
<input type="button" title="Save" value="Save" onclick="submitProgress();" class="startBtn"/>
</form>
</div>

<div id="teacherPaymentBox" style="display:none">
<label>Is Paid : <p id="IsPaid">  </p></label>
<label>Subscription Expire Date : <p id="subscriptionDate">  </p></label>
<input id="uId" type="hidden" value=""/>
<input type="button" title="Save" value="Change Payment Block" onclick="submitPaymentChange();" class="startBtn"/>

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


<div id="editSchoolDetails" style="display:none">
<form action="" id="editSchoolDetailsForm" name="editSchoolDetailsForm">
<h3 class="migChngPass">Edit School</h3>
<label>School Name : </label><input type="text" id="schoolName1" name="schoolName1"/>
<label>Address: </label><input type="text" id="schoolAddress1" name="schoolAddress1"/><br>
<label>Principal Email: </label><input type="text" id="priEmail1" name="priEmail1"/><br>
<input type="hidden" id="principalUserId" name="principalUserId">
<input type="button" title="Save" value="Save" onclick="editSchoolDetailsFrom();" class="startBtn"/>
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


 <%-- <script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script> --%>
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.numberformatter-1.2.3.min.js"></script> --%>
<script src="<%=request.getContextPath()%>/NewStyles/js/charts-flotcharts.js"></script>
<%-- <script src="<%=request.getContextPath()%>/NewStyles/js/jshashtable-2.1.js"></script> --%>


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
				
				 function setTeacherPaymentBlock(userId){
						var options = '';
						$.ajax({
				    		url : "<%=request.getContextPath()%>/superadmin/getTeacherPaymentProgress",
				    		type : 'POST',
				    		data:{userId:userId},
				    		success : function(response) {
				    			
				    			if (response.model.subscriptionExpire!="NA"){
				    			var d = new Date(response.model.subscriptionExpire);
								   var curr_date = d.getDate();
								   var curr_month = d.getMonth() + 1; //Months are zero based
								   var curr_year = d.getFullYear();
								  newdate= curr_year + "-" + curr_month + "-" + curr_date;
								  $("#subscriptionDate")[0].textContent=newdate;
				    			}
				    			else
				    				{
				    				$("#subscriptionDate")[0].textContent="NA"
				    				}
								$("#IsPaid")[0].textContent=response.model.isPaid;
								$("#uId").val(userId);
				    		}
								
						});
				    		    $.fancybox({
								     'autoScale': true,
								     'autoDimensions': true,
								     'centerOnScroll': true,
								     'href' : '#teacherPaymentBox'
								  });
				    			}
				
				
				function submitPaymentChange(){
					var userId =$("#uId").val();
					
					$.ajax({
			    		url : "<%=request.getContextPath()%>/superadmin/changePaymentBlock",
			    		type : 'POST',
			    		data:{userId:userId},
							async :false,
							cache:false,
							success:function(response){
								if(response){
									alert("Unblocked successfully");
								}else{
									alert("There is some error in unblocking the user");
								}
							}
						});
						$.fancybox.close();
					}
				
				
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
				function deleteTeacher(userId){
					var url='<%=request.getContextPath()%>/superadmin/deleteTeacher';
					$.ajax({
						url:url,
						method:'GET',
						async :false,
						data:{userId:userId},
						success:function(response){
							if(response!=null){
								$("#status-"+userId).text('Deleted');
								$("#action-"+userId).text('');
								alert("Teacher deleted successfully");
							return true;
						}
						
					}
				});
				}
				function teacherSignUp(){
					
						
					
					$("#sample_1").dataTable().fnDestroy();
					
					$("#sample_1").hide();
						$("#teachersignup").show();
						
						
					
				}
function parentSignUp(){
					
						
					
					$("#sample_1").dataTable().fnDestroy();
					
					$("#sample_1").hide();
					$("#parentSignUp").show();
					$("#principalsignup").hide();
						
						
					
				}
function principalSignUp(){
	
	
	
	$("#sample_1").dataTable().fnDestroy();
	
	$("#sample_1").hide();
	$("#principalsignup").show();
	$("#parentSignUp").hide();
		
		
	
}
				function getAllTeachers(userRoleId){
					var isAnAdminPrime=$("#isAnAdminPrime").val();
					//alert("isAnAdminPrime"+isAnAdminPrime);
					if(userRoleId==2){
						
						$("#adminLoader").show();
						$("#sample_1").show();
						$("#joinedNotJoined").hide();
						$("#activeNotActive").show();
						$("#teachersignup").hide();
						$("#parentSignUp").hide();
						$("#principalsignup").hide();
						$("#activeNotActivePrinc").hide();
						$("#activeNotActiveParent").hide();
						$("#tab-2").val("Loading ...");
						$("#tab-1").removeClass("table-head-btns-slctd");
						$("#tab-2").addClass("table-head-btns-slctd");
						
						$("#tab-3").removeClass("table-head-btns-slctd");
						$("#tab-4").removeClass("table-head-btns-slctd");
					}
					else if(userRoleId==3){
						$("#adminLoader").show();
						$("#sample_1").show();
						$("#joinedNotJoined").hide();
						$("#parentSignUp").hide();
						$("#principalsignup").hide();
						$("#teachersignup").hide();
						$("#activeNotActive").hide();
						$("#activeNotActiveParent").hide();
						$("#activeNotActivePrinc").show();
						$("#tab-3").val("Loading ...");
						$("#tab-1").removeClass("table-head-btns-slctd");
						$("#tab-2").removeClass("table-head-btns-slctd");
						
						$("#tab-3").addClass("table-head-btns-slctd");
						$("#tab-4").removeClass("table-head-btns-slctd");
					}
					else if(userRoleId==4){
						$("#adminLoader").show();
						$("#sample_1").show();
						$("#activeNotActive").hide();
						$("#teachersignup").hide();
						$("#parentSignUp").hide();
						$("#principalsignup").hide();
						$("#activeNotActivePrinc").hide();
						$("#activeNotActiveParent").show();
						
						$("#joinedNotJoined").hide();
						$("#tab-4").val("Loading ...");
						$("#tab-1").removeClass("table-head-btns-slctd");
						$("#tab-2").removeClass("table-head-btns-slctd");
						
						$("#tab-3").removeClass("table-head-btns-slctd");
						$("#tab-4").addClass("table-head-btns-slctd");
					}
					else if(userRoleId==1){
						$("#adminLoader").show();
						$("#sample_1").show();
						$("#activeNotActive").hide();
						$("#activeNotActivePrinc").hide();
						$("#parentSignUp").hide();
						$("#teachersignup").hide();
						$("#activeNotActiveParent").hide();
						$("#joinedNotJoined").show();
						$("#tab-1").val("Loading ...");
						$("#tab-4").removeClass("table-head-btns-slctd");
						$("#tab-2").removeClass("table-head-btns-slctd");
						
						$("#tab-3").removeClass("table-head-btns-slctd");
						$("#tab-1").addClass("table-head-btns-slctd");
					}
					
					
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
								
								/* $.each(response.modelMap.migrated, function(index,value) {
									console.log(value[0]);
								}); */
								
								 var teacherDetail='';
								 teacherDetail+='<thead><tr><th>Email</th>';
								 if(userRoleId==2 || userRoleId==1 || userRoleId==3){
									 if(userRoleId==2){
										 teacherDetail+='<th>Teacher Name</th>';
									 }
									 teacherDetail+='<th>School Name</th>';
								 }
								 else{
									 teacherDetail+='<th>Name</th>';
								 }
								 
								 
								 teacherDetail+='<th>Status</th>'+	
								 '<th>Action</th>'+
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
												teacherDetail+='</td><td>';
												//avneet
												if(isAnAdminPrime==1){
													
													teacherDetail+='<a onclick="setTeacherProgress(\''+value.email+'\','+value.userId+');">[Set Progress] </a>'+
												 	
												 	'<a onclick="setTeacherBlock('+value.userId+');" id=bloackStatus-'+value.userId+'>';
												 	
												 if(value.isBlocked == 'N'){
													 teacherDetail+='[Block]';
												 }
												 else{
													 teacherDetail+='[Unblock]';
												 }
												 teacherDetail+='</a>';
												}
												
												//if(value.title == 'Y'){
												 teacherDetail+='<a onclick="sendInviteMail(\''+value.email+'\');" style="cursor: pointer;">';
												 //console.log("date="+value.inviteDate);
												 if(typeof value.inviteDate == 'undefined'){
													 teacherDetail+='[Invite]';
												 }
												 else{
													 teacherDetail+='[Re-invite]';
												 }
												 teacherDetail+='</a>';
											// }
											 teacherDetail+='</td>'+
											'<td style="display:none;"></td><td style="display:none;"></td></tr>';
											
										}
										else if(userRoleId==2){
											teacherDetail+='<tr><td>'+value.email+'</td>';
											teacherDetail+='<td>'+value.teacherName+'</td>';
											teacherDetail+='<td>'+value.schoolName+'</td>';
											teacherDetail+='<td id=status-'+value.userId+'>';
											
												if(value.isBlocked == 'N'){
													if(value.completeStatus == 'Y'){
													 teacherDetail+='Active';
													}
													else
														{
														 teacherDetail+='Incomplete';
														}
												 }
												 else{
													 teacherDetail+='Inactive';
												 }
												teacherDetail+='</td><td>';
												if(isAnAdminPrime==1){
											/* teacherDetail+='<td id=action-'+value.userId+'>'+ */
											 teacherDetail+='<a onclick="setTeacherProgress(\''+value.email+'\','+value.userId+');">[Set Progress] </a>'+
											 '<a onclick="deleteTeacher('+value.userId+');">[Delete] </a>'+
											 '<a onclick="setTeacherBlock('+value.userId+');" id=bloackStatus-'+value.userId+'>';
											 
											 if(value.isBlocked == 'N'){
												 teacherDetail+='[Block]';
											 }
											 else{
												 teacherDetail+='[Unblock]';
											 }
											 teacherDetail+='</a>';
												
											teacherDetail+='<a onclick="setChangePassword(\''+value.email+'\','+value.userId+');"> [Change Password]</a>'+
											'<a onclick="setTeacherPaymentBlock('+value.userId+');" id=blockPaymentStatus-'+value.userId+'>[Check Payment Success] </a>';
											 }
											 teacherDetail+='</td>'+
											'<td style="display:none;"></td><td style="display:none;"></td></tr>';
										}
										else if(userRoleId==3){
											teacherDetail+='<tr><td>'+value.email+'</td>';
											
											teacherDetail+='<td>'+value.schoolName+'</td>';
											
											teacherDetail+='<td id=status-'+value.userId+'>';
											
												//console.log("else");
												if(value.isBlocked == 'N'){
													 teacherDetail+='Active';
												 }
												 else{
													 teacherDetail+='Inactive';
												 }
												teacherDetail+='</td><td>';
											
												if(isAnAdminPrime==1){
											teacherDetail+='<a onclick="setTeacherBlock('+value.userId+');" id=bloackStatus-'+value.userId+'>';
											 if(value.isBlocked == 'N'){
												 teacherDetail+='[Block]';
											 }
											 else{
												 teacherDetail+='[Unblock]';
											 }
											 teacherDetail+='</a>';
											 
											 teacherDetail+='<a onclick="setChangePassword(\''+value.email+'\','+value.userId+');"> [Change Password]</a>';
											 teacherDetail+='<a onclick="editSchool(\''+value.email+'\','+value.userId+');"> [Edit]</a>';
												}
											 teacherDetail+='</td>'+
											'<td style="display:none;"></td><td style="display:none;"></td></tr>';
										}
										else if(userRoleId==4){
											teacherDetail+='<tr><td>'+value.email+'</td>';
											
											teacherDetail+='<td>'+value.schoolName+'</td>';
											
											teacherDetail+='<td id=status-'+value.userId+'>';
											
											
												//console.log("else");
												if(value.isBlocked == 'N'){
													 teacherDetail+='Active';
												 }
												 else{
													 teacherDetail+='Inactive';
												 }
												teacherDetail+='</td><td>';
											
											
												if(isAnAdminPrime==1){
											 
											teacherDetail+= '<a onclick="setTeacherBlock('+value.userId+');" id=bloackStatus-'+value.userId+'>';
											 if(value.isBlocked == 'N'){
												 teacherDetail+='[Block]';
											 }
											 else{
												 teacherDetail+='[Unblock]';
											 }
											 teacherDetail+='</a>';
											 
											 teacherDetail+='<a onclick="setChangePassword(\''+value.email+'\','+value.userId+');"> [Change Password]</a>';
												}
											 teacherDetail+='</td>'+
											'<td style="display:none;"></td><td style="display:none;"></td></tr>';
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
				function activeNotActive(userRoleId, status){
					$("#sample_1").show();
					$("#adminLoader").show();
					$("#sample_1").dataTable().fnDestroy();
					$("#sample_1").html('');
					$("#teachersignup").hide();
					$("#parentSignUp").hide();
					$("#principalsignup").hide();
					var isAnAdminPrime=$("#isAnAdminPrime").val();
					//alert("alert"+isAnAdminPrime)
					var url='<%=request.getContextPath()%>/superadmin/getAllTeachers';
					$.ajax({
						url:url,
						method:'GET',
						async :true,
						data:{userRoleId:userRoleId},
						success:function(response){
							if(response!=null){
								
								if(userRoleId==2)
								{
								 var teacherDetail='';
								 teacherDetail+='<thead><tr><th>Email</th>';
								 teacherDetail+='<th>Teacher Name</th>';
									 teacherDetail+='<th>School Name</th>';
								 teacherDetail+='<th>Status</th>'+	
								 '<th>Action</th>'+
									'<th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';
								
									
									$.each(response.modelMap.migrated, function(index,value) 
										{
											
											if(userRoleId==2 && status=='Y'){
												if(value.isBlocked == 'N'){
											teacherDetail+='<tr><td>'+value.email+'</td>';
											teacherDetail+='<td>'+value.teacherName+'</td>';
											teacherDetail+='<td>'+value.schoolName+'</td>';
											teacherDetail+='<td id=status-'+value.userId+'>';
											
												if(value.isBlocked == 'N'){
													if(value.completeStatus == 'Y'){
													 teacherDetail+='Active';
													}
													else
														{
														 teacherDetail+='Incomplete';
														}
												 }
												 else{
													 teacherDetail+='Inactive';
												 }
												teacherDetail+='</td>';
												teacherDetail+='<a onclick="sendInviteMail(\''+value.email+'\');" style="cursor: pointer;">';
												 //console.log("date="+value.inviteDate);
												 if(typeof value.inviteDate == 'undefined'){
													 teacherDetail+='[Invite]';
												 }
												 else{
													 teacherDetail+='[Re-invite]';
												 }
												 teacherDetail+='</a>';
											teacherDetail+='<td id=action-'+value.userId+'>';
											if(isAnAdminPrime==1){
											teacherDetail+='<a onclick="setTeacherProgress(\''+value.email+'\','+value.userId+');">[Set Progress] </a>'+
											 '<a onclick="deleteTeacher('+value.userId+');">[Delete] </a>'+
											 '<a onclick="setTeacherBlock('+value.userId+');" id=bloackStatus-'+value.userId+'>';
											 
											 if(value.isBlocked == 'N'){
												 teacherDetail+='[Block]';
											 }
											 else{
												 teacherDetail+='[Unblock]';
											 }
											 teacherDetail+='</a>';
											 
											teacherDetail+='<a onclick="setChangePassword(\''+value.email+'\','+value.userId+');"> [Change Password]</a>'+
											'<a onclick="setTeacherPaymentBlock('+value.userId+');" id=blockPaymentStatus-'+value.userId+'>[Check Payment Success] </a>';
											}
											 teacherDetail+='</td>'+
											'<td style="display:none;"></td><td style="display:none;"></td></tr>';
										}}
											
												else if(userRoleId==2 && status=='N'){
													if(value.isBlocked == 'Y'){
													teacherDetail+='<tr><td>'+value.email+'</td>';
													teacherDetail+='<td>'+value.teacherName+'</td>';
													teacherDetail+='<td>'+value.schoolName+'</td>';
													teacherDetail+='<td id=status-'+value.userId+'>';
													
														if(value.isBlocked == 'N'){
															if(value.completeStatus == 'Y'){
															 teacherDetail+='Active';
															}
															else
																{
																 teacherDetail+='Incomplete';
																}
														 }
														 else{
															 teacherDetail+='Inactive';
														 }
														teacherDetail+='</td>';
														
													teacherDetail+='<td id=action-'+value.userId+'>';
													if(isAnAdminPrime==1){
													teacherDetail+= '<a onclick="setTeacherProgress(\''+value.email+'\','+value.userId+');">[Set Progress] </a>'+
													 '<a onclick="deleteTeacher('+value.userId+');">[Delete] </a>'+
													 '<a onclick="setTeacherBlock('+value.userId+');" id=bloackStatus-'+value.userId+'>';
													
													 if(value.isBlocked == 'N'){
														 teacherDetail+='[Block]';
													 }
													 else{
														 teacherDetail+='[Unblock]';
													 }
													 teacherDetail+='</a>';
													 
													teacherDetail+='<a onclick="setChangePassword(\''+value.email+'\','+value.userId+');"> [Change Password]</a>'+
													 '<a onclick="setTeacherPaymentBlock('+value.userId+');" id=blockPaymentStatus-'+value.userId+'>[Check Payment Success] </a>';
													}
													 teacherDetail+='</td>'+
													'<td style="display:none;"></td><td style="display:none;"></td></tr>';
												
											
												
												
										}
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
						
								else if(userRoleId==3)
								{
								 var teacherDetail='';
								 teacherDetail+='<thead><tr><th>Email</th>';
								
									 teacherDetail+='<th>School Name</th>';
								 teacherDetail+='<th>Status</th>'+	
								 '<th>Action</th>'+
									'<th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';
									

									$.each(response.modelMap.migrated, function(index,value) 
										{
											
											if(userRoleId==3 && status=='Y'){
												if(value.isBlocked == 'N'){
													teacherDetail+='<tr><td>'+value.email+'</td>';
													
													teacherDetail+='<td>'+value.schoolName+'</td>';
													
													teacherDetail+='<td id=status-'+value.userId+'>';
													
														//console.log("else");
														if(value.isBlocked == 'N'){
															 teacherDetail+='Active';
														 }
														 else{
															 teacherDetail+='Inactive';
														 }
														teacherDetail+='</td>';
													
													teacherDetail+='<td>';
													if(isAnAdminPrime==1){
													teacherDetail+='<a onclick="setTeacherBlock('+value.userId+');" id=bloackStatus-'+value.userId+'>';
													 if(value.isBlocked == 'N'){
														 teacherDetail+='[Block]';
													 }
													 else{
														 teacherDetail+='[Unblock]';
													 }
													 teacherDetail+='</a>';
													 
													 teacherDetail+='<a onclick="setChangePassword(\''+value.email+'\','+value.userId+');"> [Change Password]</a>';
													}
													 teacherDetail+='</td>'+
													'<td style="display:none;"></td><td style="display:none;"></td></tr>';
										}}
											
												else if(userRoleId==3 && status=='N'){
													if(value.isBlocked == 'Y'){
														teacherDetail+='<tr><td>'+value.email+'</td>';
														
														teacherDetail+='<td>'+value.schoolName+'</td>';
														
														teacherDetail+='<td id=status-'+value.userId+'>';
														
															//console.log("else");
															if(value.isBlocked == 'N'){
																 teacherDetail+='Active';
															 }
															 else{
																 teacherDetail+='Inactive';
															 }
															teacherDetail+='</td>';
														
														teacherDetail+='<td>';
														if(isAnAdminPrime==1){
															teacherDetail+='<a onclick="setTeacherBlock('+value.userId+');" id=bloackStatus-'+value.userId+'>';
														 if(value.isBlocked == 'N'){
															 teacherDetail+='[Block]';
														 }
														 else{
															 teacherDetail+='[Unblock]';
														 }
														 teacherDetail+='</a>';
														 
														 teacherDetail+='<a onclick="setChangePassword(\''+value.email+'\','+value.userId+');"> [Change Password]</a>';
														}
														 teacherDetail+='</td>'+
														'<td style="display:none;"></td><td style="display:none;"></td></tr>';
											
												
												
										}
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
									
								}

								else if(userRoleId==4)
								{
								 var teacherDetail='';
								 teacherDetail+='<thead><tr><th>Email</th>';
								
									 teacherDetail+='<th>Name</th>';
								 teacherDetail+='<th>Status</th>'+	
								 '<th>Action</th>'+
									'<th style="display:none;"></th><th style="display:none;"></th></tr></thead><tbody>';
									

									$.each(response.modelMap.migrated, function(index,value) 
										{
											
											if(userRoleId==4 && status=='Y'){
												if(value.isBlocked == 'N'){
													teacherDetail+='<tr><td>'+value.email+'</td>';
													
													teacherDetail+='<td>'+value.schoolName+'</td>';
													
													teacherDetail+='<td id=status-'+value.userId+'>';
													
													
														//console.log("else");
														if(value.isBlocked == 'N'){
															 teacherDetail+='Active';
														 }
														 else{
															 teacherDetail+='Inactive';
														 }
														teacherDetail+='</td>';
													
													
													teacherDetail+='<td>';
													if(isAnAdminPrime==1){
														teacherDetail+='<a onclick="setTeacherBlock('+value.userId+');" id=bloackStatus-'+value.userId+'>';
													 if(value.isBlocked == 'N'){
														 teacherDetail+='[Block]';
													 }
													 else{
														 teacherDetail+='[Unblock]';
													 }
													 teacherDetail+='</a>';
													 
													 teacherDetail+='<a onclick="setChangePassword(\''+value.email+'\','+value.userId+');"> [Change Password]</a>';
													}
													 teacherDetail+='</td>'+
													'<td style="display:none;"></td><td style="display:none;"></td></tr>';
										}}
											
												else if(userRoleId==4 && status=='N'){
													if(value.isBlocked == 'Y'){
														teacherDetail+='<tr><td>'+value.email+'</td>';
														
														teacherDetail+='<td>'+value.schoolName+'</td>';
														
														teacherDetail+='<td id=status-'+value.userId+'>';
														
														
															//console.log("else");
															if(value.isBlocked == 'N'){
																 teacherDetail+='Active';
															 }
															 else{
																 teacherDetail+='Inactive';
															 }
															teacherDetail+='</td>';
														
														
														teacherDetail+='<td>';
														if(isAnAdminPrime==1){
															teacherDetail+='<a onclick="setTeacherBlock('+value.userId+');" id=bloackStatus-'+value.userId+'>';
														 if(value.isBlocked == 'N'){
															 teacherDetail+='[Block]';
														 }
														 else{
															 teacherDetail+='[Unblock]';
														 }
														 teacherDetail+='</a>';
														 
														 teacherDetail+='<a onclick="setChangePassword(\''+value.email+'\','+value.userId+');"> [Change Password]</a>';
														}
														 teacherDetail+='</td>'+
														'<td style="display:none;"></td><td style="display:none;"></td></tr>';
											
												
												
										}
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
									
								}
								
						}
						}});
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
				
				
				function editSchool(email,userId){
					$("#priEmail1").val("");
					$("#schoolName1").val("");
					$("#schoolAddress1").val("");
					$("#principalUserId").val(userId);
			           $.fancybox({
					     'autoScale': true,
					     'autoDimensions': true,
					     'centerOnScroll': true,
					     'href' : '#editSchoolDetails'
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
				
				function editSchoolDetailsFrom(){
					
					
					var principalUserId = $("#principalUserId").val();
					
					var priEmail=$("#priEmail1").val();
					var schoolName=$("#schoolName1").val();
					var schoolAddress=$("#schoolAddress1").val();
					var url='<%=request.getContextPath()%>/superadmin/setSchoolDetails';
					
						$.ajax({
							url:url,
							method:'POST',
							async :false,
							data:{principalUserId:principalUserId ,priEmail:priEmail,schoolName:schoolName,schoolAddress:schoolAddress},
							success:function(response){
								
									alert("Details updated successfully");
								
							}
					});
						
						$.fancybox.close();
			
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
					var isAnAdminPrime=$("#isAnAdminPrime").val();
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
													'<td>';
													if(isAnAdminPrime==1){
													teacherDetail+='<a onclick="setTeacherProgress(\''+value.email+'\','+value.userId+');">[Set Progress] </a>'+
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
													 //console.log("date="+value.inviteDate);
													 if(typeof value.inviteDate == 'undefined'){
														 teacherDetail+='[Invite]';
													 }
													 else{
														 teacherDetail+='[Re-invite]';
													 }
													 teacherDetail+='</a>';
												 }}
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
												'<td>';
												if(isAnAdminPrime==1){
													teacherDetail+='<a onclick="setTeacherProgress(\''+value.email+'\','+value.userId+');">[Set Progress] </a>'+
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
												 //console.log("date="+value.inviteDate);
												 if(typeof value.inviteDate == 'undefined'){
													 teacherDetail+='[Invite]';
												 }
												 else{
													 teacherDetail+='[Re-invite]';
												 }
												 teacherDetail+='</a>';
											 }}
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
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script> 

 


<script type="text/javascript">	
jQuery(document).ready
	(function($){
		
		$("#parentType").val(1);
		
		
		 $.validator.addMethod("emailAlreadyExist", function(value, element) {
	            return this.optional(element) || emailAlreadyCheck(value);
	        }, "Email already exists. Click Here to <a href='<%=request.getContextPath()%>/login'> Login");
         $.validator.addMethod("nameRegex", function(value, element) {
             return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
         }, "Field must contain letters only.");
         $.validator.addMethod("specialChar", function(value, element) {
             return this.optional(element) || /^[a-zA-Z0-9- ]+$/i.test(value);
         }, "Remove special characters.");
         

         
         $('.register-form').validate({
             errorElement: 'span', //default input error message container
             errorClass: 'help-block', // default input error message class
             focusInvalid: false, // do not focus the last invalid input
             //ignore: "",
             rules: {
             	
                 firstName: {
                     required: true,
                     //nameRegex:true,
                     maxlength : 20,
                     specialChar :true
                 },
                 lastName: {
                     /* required: true, */
                    // nameRegex:true,
                     maxlength : 20,
                     specialChar :true
                 },
                 address: {
                     required: true
                     //nameRegex:true,
                    // maxlength : 20,
                     //specialChar :true
                 },
                 city: {
                     required: true,
                     //nameRegex:true,
                     maxlength : 80,
                     //specialChar :true
                 },
                 zipCode: {
                     required: true,
                     //nameRegex:true,
                     maxlength : 20/* ,
                     specialChar :true */
                 },
                 email: {
                     required: true,
                     email: true,
                     emailAlreadyExist: true
                 },

                 password: {
                     required: true,
             		minlength : 6,
             		maxlength : 20
                 },
                 confirmPassword: {
                     equalTo: "#password"
                 },
                 mobile:{
             		/* required: true, */
             		minlength : 10,
             		maxlength : 30
             		//digits	: true
             	}
             	
             	
             },


             invalidHandler: function(event, validator) { //display error alert on form submit   
             },

             highlight: function(element) { // hightlight error inputs
                 $(element)
                     .closest('.outer-field').addClass('has-error'); // set error class to the control group
                 $(element).next('.fancybox').next('.fancybox').addClass('has-error');
             },
             
             success: function(label) {
                 label.closest('.outer-field').removeClass('has-error');
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
            	 if($(".register-form").valid()){
                 form.submit();
            	 }
             }

          /*     submitHandler: function(form) {
            	 
            	 if($(".register-form").valid()){
            		 saveParent();
            		
     				return true;
     			}else{
     				return false;
     			}
             }  */
         });
         
        
		
	});
	
	function setLatLongValueAndSubmit(form){
		var lat = $("#latitude").val() ;
		var lng = $("#longitude").val() ;
		console.log(lat +":"+lng);
		if(lat == 0.0 && lng == 0.0){
			if($('#city').val().trim().length>0){
			    var zipCodeAddress = $('#city').val() +","+ $('#zipCode').val();
			    //alert(zipCodeAddress);
			    var geocoder = new google.maps.Geocoder();
			    geocoder.geocode( { 'address': zipCodeAddress}, function(results, status) {
			      if (status == google.maps.GeocoderStatus.OK) {
			         lat = results[0].geometry.location.lat();
			         lng = results[0].geometry.location.lng();
			         //alert(lat+",,,"+lng);
			         $("#latitude").val(lat);
			         $("#longitude").val(lng);
			         form.submit();
			         }
			       else {
			    	   form.submit();
			      }
			    });
		     }else{
		    	 form.submit();
		    	 }
			}
			else{
		    	 form.submit();
		    	 }
	}

    function saveParent(){
    	var email = $("#parentEmail").val().trim();
    	var firstName= $("#firstName").val().trim();
    	var lastName= $("#lastName").val().trim();
    	var address= $("#address").val().trim();
    	var latitude= $("#latitude").val().trim();
    	var longitude= $("#longitude").val().trim();
    	var city= $("#city").val().trim();
    	var zipCode= $("#zipCode").val().trim();
    	var stateShort = $("#state_short").val().trim();
    	var mobile= $("#mobile").val().trim();
    	var password= $("#password").val().trim();
    	var confirmPassword= $("#confirmPassword").val().trim();
    	var parentType= $("#parentType").val().trim();
    	var parentAmount= $("#parentAmount").val().trim();
    	var inviteDate=$("#pinviteDate").val().trim();

    	if($(".register-form").valid()){
		$.ajax({
			url : "<%=request.getContextPath()%>/superadmin/parentSignupTemp",
			method : 'POST',
			headers: { 
				'Content-Type':'application/json'
				},
			data : JSON.stringify({"email":email,"firstName":firstName ,"lastName":lastName,"address":address, "latitude":latitude,"longitude":longitude,"city":city,"zipCode":zipCode,"stateShort":stateShort,"mobile":mobile,"password":password,"confirmPassword":confirmPassword,"parentType":parentType,"parentAmount":parentAmount , "inviteDate":inviteDate}),
			async:false,
			success : function(result) {
			
				if(result.response.code == 200){
					
					alert("Parent has been created successfully")
				} else if(result.response.code == 409){
					alert("There is some issue, Please check with admin")
				}
			}
		});
	}else{
		alert("form is not valid")
		emailStatus = true;
	}
	return emailStatus;
}
   
	

	 function emailAlreadyCheck(value){
			//var email = $("#email").val().trim();
			var email = value;
			if(email != ""){
				$.ajax({
					url : "<%=request.getContextPath()%>/check/availability/parent/email",
					method : 'POST',
					headers: { 
						'Content-Type':'application/json'
						},
					data : JSON.stringify({"email":email}),
					async:false,
					success : function(result) {
						if(result.response.code == 200){
							emailStatus = true;
						} else if(result.response.code == 409){
							emailStatus = false;
						}
					}
				});
			}else{
				emailStatus = true;
			}
			return emailStatus;
	    }
	 
	</script>
				
				<script type="text/javascript">
				
				  function newUsers(roleId){
					  
					  $("#userRoleId").val(roleId);
						   var url='<%=request.getContextPath()%>/superadmin/getNewUsersThirtyDays';
							$.ajax({
								url:url,
								method:'POST',
								async :false,
								data:{roleId:roleId},
								cache:false,
								success:function(response){
									var totalLogin =0;
									if(response != null  && response.modelMap.dtoUser!=null){
										   
										//$('#totalLoginSpan').text(response.modelMap.noOfLogins);   
										
										var objBarGraphValues = response.modelMap.dtoUser.barGraph;
										callDailyActivityBarGraph(objBarGraphValues,roleId);
										
										
										 $.fancybox({
											 'minWidth':900,
											 'minHeight':375,
										     'autoScale': true,
										     'autoDimensions': true,
										     'centerOnScroll': true,
										     'href' : '#userBarChat'
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



<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.autocomplete.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery(document).ready
	(function($){
    		$('#prischoolName').autocomplete({
    	        serviceUrl: '<%=request.getContextPath()%>/searchSchool',
    	        paramName: "name",
    	        delimiter: ",",
    	        delay: 3,
    	        minChars: 1,
    		    transformResult: function(response) {
    		        return {
    		            suggestions: $.map($.parseJSON(response), function(item) {	
    		                return { value: item.masterSchoolName , data: item.masterSchoolId };
    		            })
    		        };
    		    },
    		     onSelect:  function (event,ui) {
    		         if(event.data!=0){
    		        	// $("#address").val(event.data);
    		        	 var schoolId = event.data;
    		        	 if(schoolId!=null){
    		        	 $.ajax({
    		     			url : "<%=request.getContextPath()%>/getMasterSchoolDetails",
    		     			type : 'POST',
    		     			data : {schoolId:schoolId},
    		     			success : function(result) {
    		     				$("#pstateShort").val(result.modelMap.dtoTeacherSignOn.stateShort);
    		     				$("#priaddress").val(result.modelMap.dtoTeacherSignOn.masterSchoolAddress);
    		     				$("#prizipCode").val(result.modelMap.dtoTeacherSignOn.zipCode);
    		     				$("#pristate").val(result.modelMap.dtoTeacherSignOn.state);
    		     				$("#pricity").val(result.modelMap.dtoTeacherSignOn.city);
    		     				$("#platitude").val(result.modelMap.dtoTeacherSignOn.latitude);
    		     				$("#plongitude").val(result.modelMap.dtoTeacherSignOn.longitude);
    		     			}
    		     		});
    		        	 
    		        }
    		         }
    		        
    		     } 
    		}); 
    }); 
	
	

</script>

<script type="text/javascript">
	jQuery(document).ready
	(function($){
    		$('#tschoolName').autocomplete({
    	        serviceUrl: '<%=request.getContextPath()%>/searchSchool',
    	        paramName: "name",
    	        delimiter: ",",
    	        delay: 1,
    	        minChars: 1,
    		    transformResult: function(response) {
    		        return {
    		            suggestions: $.map($.parseJSON(response), function(item) {	
    		                return { value: item.masterSchoolName , data: item.masterSchoolId };
    		            })
    		        };
    		    },
    		     onSelect:  function (event,ui) {
    		         if(event.data!=0){
    		        	// $("#address").val(event.data);
    		        	 var schoolId = event.data;
    		        	 if(schoolId!=null){
    		        	 $.ajax({
    		     			url : "<%=request.getContextPath()%>/getMasterSchoolDetails",
    		     			type : 'POST',
    		     			data : {schoolId:schoolId},
    		     			success : function(result) {
    		     				$("#tstateShort").val(result.modelMap.dtoTeacherSignOn.stateShort);
    		     				$("#taddress").val(result.modelMap.dtoTeacherSignOn.masterSchoolAddress);
    		     				$("#tzipCode").val(result.modelMap.dtoTeacherSignOn.zipCode);
    		     				$("#tstate").val(result.modelMap.dtoTeacherSignOn.state);
    		     				$("#tcity").val(result.modelMap.dtoTeacherSignOn.city);
    		     				$("#tlatitude").val(result.modelMap.dtoTeacherSignOn.latitude);
    		     				$("#tlongitude").val(result.modelMap.dtoTeacherSignOn.longitude);
    		     			}
    		     		});
    		        	 
    		        }
    		         }
    		        
    		     } 
    		}); 
    }); 
	
	

</script>
<script src='<%=request.getContextPath()%>/NewStyles/js/datepicker.js'></script>
 <script>
      $(function () {
    $('#datepicker').datepicker({
        autoclose: true,
        todayHighlight: true
    }).datepicker('update', new Date(new Date().getTime()+(5*24*60*60*1000)));
    ;
    
    $('#datepicker_teacher').datepicker({
        autoclose: true,
        todayHighlight: true
    }).datepicker('update', new Date(new Date().getTime()+(5*24*60*60*1000)));
    ;
    
    $('#datepicker_parent').datepicker({
        autoclose: true,
        todayHighlight: true
    }).datepicker('update', new Date(new Date().getTime()+(5*24*60*60*1000)));
    ;
});
      
      //# sourceURL=pen.js
    </script>
    
    <script type="text/javascript">
jQuery(document).ready
(function($){
    		
	 $.validator.addMethod("emailAlreadyExist", function(value, element) {
         return this.optional(element) || emailAlreadyCheckPrincipal(value);
     }, "Email already exists. Click Here to <a href='<%=request.getContextPath()%>/login'> Login");
 		 
     	
     		$('#signupForm').validate({
     			 errorElement: 'span', //default input error message container
                 errorClass: 'help-block', // default input error message class
                 focusInvalid: false, // do not focus the last invalid input
                 rules: {
                	 schoolName:{
                         required: true,
                         //nameRegex:true,
                       
                         
                     },       
                 	
                     name: {
                         required: true,
                         //nameRegex:true,
                         maxlength : 20,
                         specialChar :true
                     },                 
                     address: {
                         required: true
                         //nameRegex:true,
                        // maxlength : 20,
                         //specialChar :true
                     },
                     city: {
                         required: true,
                         //nameRegex:true,
                         maxlength : 80,
                         //specialChar :true
                     },
                     zipCode: {
                         required: true,
                         //nameRegex:true,
                         maxlength : 20/* ,
                         specialChar :true */
                     },
                     email: {
                         required: true,
                         email: true,
                         emailAlreadyExist: true
                     },
                     
                     password: {
                         required: true,
                 		minlength : 6,
                 		maxlength : 20
                     },confirmPassword: {
                         equalTo: "#pripassword"
                     }
                    
                    
                     
                    
                 },
                 


                 invalidHandler: function(event, validator) { //display error alert on form submit   
                 },

                 highlight: function(element) { // hightlight error inputs
                     $(element)
                         .closest('.outer-field').addClass('has-error'); // set error class to the control group
                     $(element).next('.fancybox').next('.fancybox').addClass('has-error');
                 },
                 
                 success: function(label) {
                     label.closest('.outer-field').removeClass('has-error');
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

              /*     submitHandler: function(form) {
                	 
                	 if($(".register-form").valid()){
                		 saveParent();
                		
         				return true;
         			}else{
         				return false;
         			}
                 }  */


                 
              
             }); 
     		

     		
}); 

function savePrincipal()
{
	
	var email = $("#priEmail").val().trim();
	var name= $("#priname").val().trim();
	var address= $("#priaddress").val().trim();
	var schoolName=$("#prischoolName").val().trim();
	var state= $("#pristate").val().trim();
	var city= $("#pricity").val().trim();
	var name= $("#priname").val().trim();
	var zipCode= $("#prizipCode").val().trim();
	var subExpDate=$("#prisubExpDate").val().trim();
	var teacherCount=$("#priteacherCount").val().trim();pritotalStudentCountUnderSchool
	var totalStudentCountUnderSchool=$("#pritotalStudentCountUnderSchool").val().trim();

	var password= $("#pripassword").val().trim();
	var confirmPassword= $("#priconfirmPassword").val().trim();
	
	
	
	if($('#signupForm').valid()){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/principalSignup",
		method : 'POST',
		headers: { 
			'Content-Type':'application/json'
			},
		data : JSON.stringify({"email":email,"name":name ,"address":address,"city":city,"zipCode":zipCode,"password":password,"confirmPassword":confirmPassword,"schoolName":schoolName,"state":state,"subExpDate":subExpDate,"teacherCount":teacherCount,"totalStudentCountUnderSchool":totalStudentCountUnderSchool}),
		async:false,
		success : function(result) {
		
			if(result.response.code == 200){
				
				alert("Principal has been created successfully")
			} else if(result.response.code == 409){
				alert("There is some issue, Please check with admin")
			}
		}
	});
	
	}
	else
		{
		alert("form is not valid");
		}
	
}

	 
function emailAlreadyCheckPrincipal(value){
	//var email = $("#email").val().trim();
	var email = value;
	if(email != ""){
		$.ajax({
			url : "<%=request.getContextPath()%>/check/availability/email",
			method : 'POST',
			headers: { 
				'Content-Type':'application/json'
				},
			data : JSON.stringify({"email":email}),
			async:false,
			success : function(result) {
				if(result.response.code == 200){
					emailStatus = true;
				} else if(result.response.code == 409){
					emailStatus = false;
				}
			}
		});
	}else{
		emailStatus = true;
	}
	return emailStatus;
}
	





    		</script>
    		
    		
  <!--   validation for teacher	 -->	
  <script type="text/javascript">
jQuery(document).ready
(function($){
    		
	 $.validator.addMethod("emailAlreadyExist", function(value, element) {
         return this.optional(element) || emailAlreadyCheckTeacher(value);
     }, "Email already exists. Click Here to <a href='<%=request.getContextPath()%>/login'> Login");
 		 
	 $.validator.addMethod("validProgram", function(value, element) {
         return this.optional(element) || validProgram(value);
     }, "Please select a program");
     		$('#teacher-register').validate({
     			 errorElement: 'span', //default input error message container
                 errorClass: 'help-block', // default input error message class
                 focusInvalid: false, // do not focus the last invalid input
                 rules: {
                	 schoolName:{
                         required: true,
                         //nameRegex:true,
                       
                         
                     },       
                 	
                     firstName: {
                         required: true,
                         //nameRegex:true,
                         maxlength : 20,
                         specialChar :true
                     },                 
                     address: {
                         required: true
                         //nameRegex:true,
                        // maxlength : 20,
                         //specialChar :true
                     },
                     city: {
                         required: true,
                         //nameRegex:true,
                         maxlength : 80,
                         //specialChar :true
                     },
                     zipCode: {
                         required: true,
                         //nameRegex:true,
                         maxlength : 20/* ,
                         specialChar :true */
                     },
                     email: {
                         required: true,
                         email: true,
                         emailAlreadyExist: true
                     },
                     className:
                    	 {
                    	 required: true
                    	 },
                     
                     password: {
                         required: true,
                 		minlength : 6,
                 		maxlength : 20
                     },
                     programIds:
                    	 {
                    	 validProgram:true,
                    	 }
                    
                    
                     
                    
                 },
                 


                 invalidHandler: function(event, validator) { //display error alert on form submit   
                 },

                 highlight: function(element) { // hightlight error inputs
                     $(element)
                         .closest('.outer-field').addClass('has-error'); // set error class to the control group
                     $(element).next('.fancybox').next('.fancybox').addClass('has-error');
                 },
                 
                 success: function(label) {
                     label.closest('.outer-field').removeClass('has-error');
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

              /*     submitHandler: function(form) {
                	 
                	 if($(".register-form").valid()){
                		 saveParent();
                		
         				return true;
         			}else{
         				return false;
         			}
                 }  */


                 
              
             }); 
     		

     		
}); 


function validProgram(value)
{
	if(value!="0")
		return true;
	else
		return false;
	}

function saveTeacher()
{
	
	var email = $("#temail").val().trim();
	var firstName= $("#tfirstName").val().trim();
	var address= $("#taddress").val().trim();
	var schoolName=$("#tschoolName").val().trim();
	var state= $("#tstate").val().trim();
	var city= $("#tcity").val().trim();

	var zipCode= $("#tzipCode").val().trim();
	var inviteDate=$("#tsubExpDate").val().trim();
	var programIds=$("#tprogramIds").val().trim();
	var className=$("#tclassName").val().trim();

	var password= $("#tpassword").val().trim();
	var confirmPassword= $("#priconfirmPassword").val().trim();
	var isSeparateTeacher;
	if($("#Seperate")[0].checked==true)
		{
		
		 isSeparateTeacher=true;
		}
	 else
		{
		 isSeparateTeacher=false;
		} 
	
	if($('#teacher-register').valid()){
	$.ajax({
		url : "<%=request.getContextPath()%>/superadmin/teacherSignup",
		method : 'POST',
		headers: { 
			'Content-Type':'application/json'
			},
		data : JSON.stringify({"email":email,"firstName":firstName ,"address":address,"city":city,"zipCode":zipCode,"password":password,"schoolName":schoolName,"state":state,"inviteDate":inviteDate,"programIds":programIds,"className":className,"isSeparateTeacher":isSeparateTeacher,}),
		async:false,
		success : function(result) {
		
			if(result.response.code == 200){
				
				alert("Teacher has been created successfully")
			} else if(result.response.code == 409){
				alert("There is some issue, Please check with admin")
			}
		}
	});
	
	 
	 
	}
	else
		{
		alert("form is not valid");
		}
	
}

	 
function emailAlreadyCheckTeacher(value){
	//var email = $("#email").val().trim();
	var email = value;
	if(email != ""){
		$.ajax({
			url : "<%=request.getContextPath()%>/check/availability/email",
			method : 'POST',
			headers: { 
				'Content-Type':'application/json'
				},
			data : JSON.stringify({"email":email}),
			async:false,
			success : function(result) {
				if(result.response.code == 200){
					emailStatus = true;
				} else if(result.response.code == 409){
					emailStatus = false;
				}
			}
		});
	}else{
		emailStatus = true;
	}
	return emailStatus;
}
	





    		</script>   		
    
<!--tab end -->
<%-- <%@include file="../footer.jsp" %> --%>
</body>
</html>
