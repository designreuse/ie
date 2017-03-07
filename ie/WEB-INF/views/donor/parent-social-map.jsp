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
 <spring:eval expression="@propertyConfigurer.getProperty('service.url')" var="baseURL" />
<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Parent Social Map</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css"> --%>
<link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />
<%-- <link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/> --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" /> --%>
<style type="text/css">
.fancybox-inner{
height: auto !important;
overflow: hidden !important;
}
</style>
</head>

<body>
<div class="wrapper">
   <%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    
    
    
    
    
    <section class="getStartSct mtop-5">
    		<div class="steps_getstarted">
				<div class="container">
					<div class="about_title_hdr">
     					<h2>Social Map</h2>
     					<div class="green_line_btm"></div>
     					
     						<div class="social-tabs">
                		<ul>
                    		<li><a class="social-slcd" href="<%=request.getContextPath()%>/donor/parentSocialMap">Social Map</a></li>
                    		<li><a href="<%=request.getContextPath()%>/donor/parentMap">Geo Map</a></li>
                    	</ul>
            		</div>
     				</div>
                    <div class="may-social-map">
                    	<div class="may-pic-section-hd">
                        	  	<c:if test="${profilePic ne 'NA'}">
                        	<img src="<%=request.getContextPath()%>/NewStyles/images/parent-profile/${profilePic}" alt="">
                        	</c:if>
                        	<c:if test="${profilePic eq 'NA'}">
                        	<img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png" alt="">
                        	</c:if>
                            <p>${loginName}</p>
                        </div>
                    </div>
                    <div class="clr"></div>
                    <c:if test="${paymentType eq 2}">
                    
                    
                    	<c:if test="${userType eq 'share' || userType eq 'family'}">
                    	<div class="tree-border widthtree245"></div>
                    <div class="may-social-tree">
                    	<ul>
                    	        <li>
                            	<div class="social-share-icon">
                                	<img src="<%=request.getContextPath()%>/NewStyles/images/fav-school-new.png" alt="">
                                    <p>Favorite Schools</p>
                                </div>
                                <div class="tree-listing">
                                	<ul>
                                	
                                	
                                		<c:if test="${not empty parentFavSchool}">
                                	<c:forEach var="fav" items="${parentFavSchool}">
                                	<c:if test="${not empty fav.schoolDetail}">
                                	<div class="tree-data-icon highlight-person">
                                		<li>
                                        	<c:if test="${not empty fav.schoolDetail.logoUrl}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${fav.schoolDetail.logoUrl}"  alt=""/>
									                </c:if>
									            <c:if test="${empty fav.schoolDetail.logoUrl}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
									                </c:if>
                                        	<p>${fav.schoolDetail.schoolName}</p>
                                        </li>
                                        </div>
                                    </c:if>
                                	<c:if test="${not empty fav.systemSchoolsRecords}">
                                	<div class="tree-data-icon">
                                		<li>
                                        	<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
                                        	<p>${fav.systemSchoolsRecords.name}</p>
                                        </li>
                                        </div>
                                    </c:if>
                                	</c:forEach>
                                	</c:if>
                                    
                                   <c:if test="${fn:length(kidSchool) gt 0}">
	                                		<c:forEach var="kid" items="${kidSchool}">
	                                		<c:if test="${kid.ieSchool eq 'Y'}">
	                                		<div class="tree-data-icon highlight-person">
	                                    		<li>
	                                        	<c:if test="${not empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${kid.schoolLogo}"  alt=""/>
									                </c:if>
									            <c:if test="${empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
									                </c:if> 
									               
	                                        		 <p>${kid.schoolName}</p>
	                                        	</li>
	                                        	</div>
	                                        	</c:if>
	                                        	<c:if test="${kid.ieSchool eq 'N'}">
	                                        	<div class="tree-data-icon">
	                                    		<li>
	                                        		 <c:if test="${not empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${kid.schoolLogo}"  alt=""/>
									                </c:if>
									            <c:if test="${empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
									                </c:if> 
									                
	                                        	<p>${kid.schoolName}</p> 
	                                        	</li>
	                                        	</div>
	                                        	</c:if>
	                                        </c:forEach>
                                        </c:if>
                                    </ul>
                                </div>
                            </li>
                    	
                        	<%-- <li>
                            	<div class="social-share-icon"><a href="<%=request.getContextPath()%>/donor/myChildren">
                                	<img src="<%=request.getContextPath()%>/NewStyles/images/kids-school-new.png" alt=""></a>
                                    <p>Kids Schools</p>
                                </div>
                                
                                
                                <div class="tree-listing">
                                	<ul>
                                	
                                	<c:if test="${fn:length(kidSchool) gt 0}">
	                                		<c:forEach var="kid" items="${kidSchool}">
	                                		<c:if test="${kid.ieSchool eq 'Y'}">
	                                		<div class="tree-data-icon highlight-person">
	                                    		<li>
	                                        		<c:if test="${not empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${kid.schoolLogo}"  alt=""/>
									                </c:if>
									            <c:if test="${empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
									                </c:if>
									                <img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png" alt="">
									                <p>${kid.childName}</p>
									                <p>${kid.className}</p>
	                                        		<p>${kid.schoolName}</p>
	                                        	</li>
	                                        	</div>
	                                        	</c:if>
	                                        	<c:if test="${kid.ieSchool eq 'N'}">
	                                        	<div class="tree-data-icon">
	                                    		<li>
	                                        		<c:if test="${not empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${kid.schoolLogo}"  alt=""/>
									                </c:if>
									            <c:if test="${empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
									                </c:if>
									                <img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png" alt="">
									                <p>${kid.childName}</p>
									                <p>${kid.className}</p>
	                                        		<p>${kid.schoolName}</p>
	                                        	</li>
	                                        	</div>
	                                        	</c:if>
	                                        </c:forEach>
                                        </c:if>
                                    	
                                 
                                    </ul>
                                </div>
                            </li> --%>
                            
                            
                            <li>
                            	<div class="social-share-icon"><a href="<%=request.getContextPath()%>/donor/myFamilyMembers">
                                	<img src="<%=request.getContextPath()%>/NewStyles/images/kids-school-new.png" alt=""></a>
                                    <p>Family Members</p>
                                </div>
                                
                                
                                <div class="tree-listing">
                                	<ul>
                                	
                                	<c:if test="${fn:length(familyMember) gt 0}">
	                                		<c:forEach var="family" items="${familyMember}">
	                                		<div class="tree-data-icon highlight-person">
	                                    		<li>
	                                        		<c:if test="${not empty family.parentDetailFamily.imageUrl}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/parent-profile/${family.parentDetailFamily.imageUrl}"  alt=""/>
									                </c:if>
									            <c:if test="${empty family.parentDetailFamily.imageUrl}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png"  alt=""/>
									                </c:if>
									                
									                <c:if test="${not empty family.parentDetailFamily.lastName}">
									                <p>${family.parentDetailFamily.firstName} ${family.parentDetailFamily.lastName}</p>
									                </c:if>
									                
									                 <c:if test="${empty family.parentDetailFamily.lastName}">
									                <p>${family.parentDetailFamily.firstName}</p>
									                </c:if>
									                
	                                        	</li>
	                                        	</div>
	                                       
	                                        </c:forEach>
                                        </c:if>
                                    	
                                 
                                    </ul>
                                </div>
                            </li>
                            
                            </ul>
                        
                    </div>
                           </c:if>
                            <c:if test="${userType ne 'share' && userType ne 'family'}">
                            <div class="tree-border"></div>
                    <div class="may-social-tree">
                    	<ul>
 								<li>
                            	<div class="social-share-icon">
                                	<img src="<%=request.getContextPath()%>/NewStyles/images/fav-school-new.png" alt="">
                                    <p>Favorite Schools</p>
                                </div>
                                <div class="tree-listing">
                                	<ul>
                                	
                                	
                                		<c:if test="${not empty parentFavSchool}">
                                	<c:forEach var="fav" items="${parentFavSchool}">
                                	<c:if test="${not empty fav.schoolDetail}">
                                	<div class="tree-data-icon highlight-person">
                                		<li>
                                        	<c:if test="${not empty fav.schoolDetail.logoUrl}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${fav.schoolDetail.logoUrl}"  alt=""/>
									                </c:if>
									            <c:if test="${empty fav.schoolDetail.logoUrl}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
									                </c:if>
                                        	<p>${fav.schoolDetail.schoolName}</p>
                                        </li>
                                        </div>
                                    </c:if>
                                	<c:if test="${not empty fav.systemSchoolsRecords}">
                                	<div class="tree-data-icon">
                                		<li>
                                        	<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
                                        	<p>${fav.systemSchoolsRecords.name}</p>
                                        </li>
                                        </div>
                                    </c:if>
                                	</c:forEach>
                                	</c:if>
                                    
                                   <c:if test="${fn:length(kidSchool) gt 0}">
	                                		<c:forEach var="kid" items="${kidSchool}">
	                                		<c:if test="${kid.ieSchool eq 'Y'}">
	                                		<div class="tree-data-icon highlight-person">
	                                    		<li>
	                                        	<c:if test="${not empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${kid.schoolLogo}"  alt=""/>
									                </c:if>
									            <c:if test="${empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
									                </c:if> 
									               
	                                        		 <p>${kid.schoolName}</p>
	                                        	</li>
	                                        	</div>
	                                        	</c:if>
	                                        	<c:if test="${kid.ieSchool eq 'N'}">
	                                        	<div class="tree-data-icon">
	                                    		<li>
	                                        		 <c:if test="${not empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${kid.schoolLogo}"  alt=""/>
									                </c:if>
									            <c:if test="${empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
									                </c:if> 
									                
	                                        	<p>${kid.schoolName}</p> 
	                                        	</li>
	                                        	</div>
	                                        	</c:if>
	                                        </c:forEach>
                                        </c:if>
                                    </ul>
                                </div>
                            </li>
                    	
                        	<%-- <li>
                            	<div class="social-share-icon"><a href="<%=request.getContextPath()%>/donor/myChildren">
                                	<img src="<%=request.getContextPath()%>/NewStyles/images/kids-school-new.png" alt=""></a>
                                    <p>Kids Schools</p>
                                </div>
                                
                                
                                <div class="tree-listing">
                                	<ul>
                                	
                                	<c:if test="${fn:length(kidSchool) gt 0}">
	                                		<c:forEach var="kid" items="${kidSchool}">
	                                		<c:if test="${kid.ieSchool eq 'Y'}">
	                                		<div class="tree-data-icon highlight-person">
	                                    		<li>
	                                        		<c:if test="${not empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${kid.schoolLogo}"  alt=""/>
									                </c:if>
									            <c:if test="${empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
									                </c:if>
									                <img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png" alt="">
									                <p>${kid.childName}</p>
									                <p>${kid.className}</p>
	                                        		<p>${kid.schoolName}</p>
	                                        	</li>
	                                        	</div>
	                                        	</c:if>
	                                        	<c:if test="${kid.ieSchool eq 'N'}">
	                                        	<div class="tree-data-icon">
	                                    		<li>
	                                        		<c:if test="${not empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${kid.schoolLogo}"  alt=""/>
									                </c:if>
									            <c:if test="${empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
									                </c:if>
									                <img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png" alt="">
									                <p>${kid.childName}</p>
									                <p>${kid.className}</p>
	                                        		<p>${kid.schoolName}</p>
	                                        	</li>
	                                        	</div>
	                                        	</c:if>
	                                        </c:forEach>
                                        </c:if>
                                    	
                                 
                                    </ul>
                                </div>
                            </li> --%>
                            
                            
                            <li>
                            	<div class="social-share-icon"><a href="<%=request.getContextPath()%>/donor/myFamilyMembers">
                                	<img src="<%=request.getContextPath()%>/NewStyles/images/kids-school-new.png" alt=""></a>
                                    <p>Family Members</p>
                                </div>
                                
                                
                                <div class="tree-listing">
                                	<ul>
                                	
                                	<c:if test="${fn:length(familyMember) gt 0}">
	                                		<c:forEach var="family" items="${familyMember}">
	                                		<div class="tree-data-icon highlight-person">
	                                    		<li>
	                                        		<c:if test="${not empty family.parentDetailFamily.imageUrl}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/parent-profile/${family.parentDetailFamily.imageUrl}"  alt=""/>
									                </c:if>
									            <c:if test="${empty family.parentDetailFamily.imageUrl}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png"  alt=""/>
									                </c:if>
									                
									                <c:if test="${not empty family.parentDetailFamily.lastName}">
									                <p>${family.parentDetailFamily.firstName} ${family.parentDetailFamily.lastName}</p>
									                </c:if>
									                
									                 <c:if test="${empty family.parentDetailFamily.lastName}">
									                <p>${family.parentDetailFamily.firstName}</p>
									                </c:if>
									                
	                                        	</li>
	                                        	</div>
	                                       
	                                        </c:forEach>
                                        </c:if>
                                    	
                                 
                                    </ul>
                                </div>
                            </li>
                            <li>
                           
                                <div class="social-share-icon" onclick="openShareInvite();">
                                	<img src="<%=request.getContextPath()%>/NewStyles/images/shared-with-new.png" alt="">
                                    <p>Subscription Shared with</p>
                                </div>
                               
                                <div class="tree-listing">
                                	<ul>
                                	
                                	   		<c:if test="${fn:length(parentSubscription) gt 0}">
	                                		<c:forEach var="sub" items="${parentSubscription}">
	                                		<c:if test="${sub.status eq 'Y'}">
	                                		
	                                    		<li>
	                                    		<div class="tree-data-icon highlight-person">
	                                    			<c:if test="${not empty sub.image}">
						                        	<img src="<%=request.getContextPath()%>/NewStyles/images/parent-profile/${sub.image}" alt="">
						                        	</c:if>
						                        	<c:if test="${empty sub.image}">
						                        	<img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png" alt="">
						                        	</c:if>
	                                        		<p>${sub.name}</p>
	                                        		</div>
	                                        	</li>
	                                        	
	                                        	</c:if>
	                                        	<c:if test="${sub.status eq 'N'}">
	                                        	
	                                    		<li>
	                                    		<div class="tree-data-icon ">
	                                    		
						                        	<img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png" alt="">
						                     
	                                        		<p>${sub.name}</p>
	                                        		</div>
	                                        	</li>
	                                        	
	                                        	</c:if>
	                                        </c:forEach>
                                        </c:if>
                                	
                                	
                                    </ul>
                                </div>
                            </li>
                            <li>
                            
                            
                            <div class="social-share-icon" onclick="openRadioInvite();">
                                	<img src="<%=request.getContextPath()%>/NewStyles/images/shared-radio-new.png" alt="">
                                    <p>Radio Invites</p>
                                </div>
                               
                            	
                                <div class="tree-listing">
                                	<ul>
                                	
                                	
                                	     		<c:if test="${fn:length(parentInvitation) gt 0}">
	                                		<c:forEach var="radio" items="${parentInvitation}">
	                                		<c:if test="${radio.status eq 'Y'}">
	                                    		<li>
	                                    		<div class="tree-data-icon highlight-person">
	                                    			<c:if test="${not empty radio.image}">
						                        	<img src="<%=request.getContextPath()%>/NewStyles/images/parent-profile/${radio.image}" alt="">
						                        	</c:if>
						                        	<c:if test="${empty radio.image}">
						                        	<img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png" alt="">
						                        	</c:if>
	                                        		<p >${radio.name}</p>
	                                        		</div>
	                                        	</li>
	                                        	</c:if>
	                                        	<c:if test="${radio.status eq 'N'}">
	                                        	<li class="txt-algn-cntr">
	                                        	<div class="tree-data-icon">
	                                        			
						                        	<img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png" alt="">
						                        	
	                                        		<p>${radio.name}</p>
	                                        		</div>
	                                        	</li>
	                                        	</c:if>
	                                        </c:forEach>
                                        </c:if>
                                	
                                    	
                                      
                                    </ul>
                                </div>
                            </li>
                            </ul>
                        
                    </div>
                            </c:if>
                        
                    </c:if>
                    
                    
                    
                    <c:if test="${paymentType eq 1}">
                    <div class="tree-border widthtree245"></div>
                    <div class="may-social-tree ">
                    	<ul>
                    	
                    	                            <li>
                            	<div class="social-share-icon">
                                	<img src="<%=request.getContextPath()%>/NewStyles/images/fav-school-new.png" alt="">
                                    <p>Favorite Schools</p>
                                </div>
                                <div class="tree-listing">
                                	<ul>
                                	
                                	
                                		<c:if test="${not empty parentFavSchool}">
                                	<c:forEach var="fav" items="${parentFavSchool}">
                                	<c:if test="${not empty fav.schoolDetail}">
                                	<div class="tree-data-icon highlight-person">
                                		<li>
                                        	<c:if test="${not empty fav.schoolDetail.logoUrl}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${fav.schoolDetail.logoUrl}"  alt=""/>
									                </c:if>
									            <c:if test="${empty fav.schoolDetail.logoUrl}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
									                </c:if>
                                        	<p>${fav.schoolDetail.schoolName}</p>
                                        </li>
                                        </div>
                                    </c:if>
                                	<c:if test="${not empty fav.systemSchoolsRecords}">
                                	<div class="tree-data-icon">
                                		<li>
                                        	<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
                                        	<p>${fav.systemSchoolsRecords.name}</p>
                                        </li>
                                        </div>
                                    </c:if>
                                	</c:forEach>
                                	</c:if>
                                    
                                   <c:if test="${fn:length(kidSchool) gt 0}">
	                                		<c:forEach var="kid" items="${kidSchool}">
	                                		<c:if test="${kid.ieSchool eq 'Y'}">
	                                		<div class="tree-data-icon highlight-person">
	                                    		<li>
	                                        	<c:if test="${not empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${kid.schoolLogo}"  alt=""/>
									                </c:if>
									            <c:if test="${empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
									                </c:if> 
									               
	                                        		 <p>${kid.schoolName}</p>
	                                        	</li>
	                                        	</div>
	                                        	</c:if>
	                                        	<c:if test="${kid.ieSchool eq 'N'}">
	                                        	<div class="tree-data-icon">
	                                    		<li>
	                                        		 <c:if test="${not empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${kid.schoolLogo}"  alt=""/>
									                </c:if>
									            <c:if test="${empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
									                </c:if> 
									                
	                                        	<p>${kid.schoolName}</p> 
	                                        	</li>
	                                        	</div>
	                                        	</c:if>
	                                        </c:forEach>
                                        </c:if>
                                    </ul>
                                </div>
                            </li>
                    	
                    	
                        	<li>
                            	<div class="social-share-icon"><a href="<%=request.getContextPath()%>/donor/myChildren">
                                	<img src="<%=request.getContextPath()%>/NewStyles/images/kids-school-new.png" alt=""></a>
                                    <p>Kids Schools</p>
                                </div>
                                
                                
                                <div class="tree-listing">
                                	<ul>
                                	
                                	<c:if test="${fn:length(kidSchool) gt 0}">
	                                		<c:forEach var="kid" items="${kidSchool}">
	                                		<c:if test="${kid.ieSchool eq 'Y'}">
	                                		<div class="tree-data-icon highlight-person">
	                                    		<li>
	                                        		<%-- <c:if test="${not empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${kid.schoolLogo}"  alt=""/>
									                </c:if>
									            <c:if test="${empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
									                </c:if> --%>
									                <img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png" alt="">
									                <p>${kid.childName}</p>
									                <p>${kid.className}</p>
	                                        		<%-- <p>${kid.schoolName}</p> --%>
	                                        	</li>
	                                        	</div>
	                                        	</c:if>
	                                        	<c:if test="${kid.ieSchool eq 'N'}">
	                                        	<div class="tree-data-icon">
	                                    		<li>
	                                        		<%-- <c:if test="${not empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${kid.schoolLogo}"  alt=""/>
									                </c:if>
									            <c:if test="${empty kid.schoolLogo}">
									                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
									                </c:if> --%>
									                <img src="<%=request.getContextPath()%>/NewStyles/images/default-user-icon.png" alt="">
									                <p>${kid.childName}</p>
									                <p>${kid.className}</p>
	                                        		<%-- <p>${kid.schoolName}</p> --%>
	                                        	</li>
	                                        	</div>
	                                        	</c:if>
	                                        </c:forEach>
                                        </c:if>
                                    	
                                 
                                    </ul>
                                </div>
                            </li>

                            
              
                        </ul>
                    </div>
                    </c:if>
                    
                    
			</div>
      </div>
		</section>
    
    

    
		</div>




<div id="sendSubscriptionPopUp" style="display: none" class="getstartForm_teacher margin-top-zero">
		<h3 class="migChngPass pophdr">Share Home Edition</h3>
		<form:form action="saveSubscriptionParent" id="parentSubscriptionForm" modelAttribute="dtoParentInvite" name="parentSubscriptionForm" method="post" class="register-principal">
		
		<h3 class="migChngPass popsubhdr" id="pendingInvitesMsg"></h3>
			<ul id="inviteDetail">
               <c:forEach var="homeEdiShare" begin="0" end="${parentHomeEditionShare-1}">
               <li>
               <label>Enter Name</label>
               		<div class="contact-row">
               			<div class="outer-field-wrap">
							<div class="outer-field">
								<input type="text" placeholder="Enter Name" id="name_${homeEdiShare}" name="name_${homeEdiShare}">
							</div>
						</div>
					</div>
				</li>
				<li>
               <label>Enter Email</label>
               		<div class="contact-row">
               			<div class="outer-field-wrap">
							<div class="outer-field">
								<input type="text" placeholder="Enter Email" id="email_${homeEdiShare}" name="email_${homeEdiShare}">
							</div>
						</div>
					</div>
				</li>
				</c:forEach>
				<!-- <li>
               <label>Enter Name</label>
               		<div class="contact-row">
               			<div class="outer-field-wrap">
							<div class="outer-field">
								<input type="text" placeholder="Enter Name" id="name2" name="name2">
							</div>
						</div>
					</div>
				</li>
				<li>
               <label>Enter Email</label>
               		<div class="contact-row">
               			<div class="outer-field-wrap">
							<div class="outer-field">
								<input type="text" placeholder="Enter Email" id="email2" name="email2">
							</div>
						</div>
					</div>
				</li> -->
              </ul>
              
			<input type="submit" value="SEND INVITE" id="submitEmail" class="change_trackbtn_qus" onclick="submitEmailFrom();">
		</form:form>
	</div>
	
	
	
	
	
			<%-- <div id="sendRadioInvitePopUp" style="display: none" class="getstartForm_teacher margin-top-zero">
			<h3 class="migChngPass pophdr">Share The Radio</h3>
		<form:form  method="post" id="sendRadioInviteForm" modelAttribute="dtoLetterToParent"  action="${pageContext.request.contextPath}/donor/sendParentRadioInvite" class="register-form" >
										
										<ul>
										<div id="parentInfo_0">
										<div id="divSection_0_0">
											
											<li class="margin-bottom-ten">
												<!-- <div class="input_relative"> -->
												<!-- <div class="input_add_logo width-less"> -->
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Enter Email*" type="text" name="parentEmail" id="parentEmail_0_0" class="ignore1"/>
														</div>
													</div>
												</div>
											</li>
											
											<li class="margin-bottom-ten">
												<div class="input_relative">
												<div class="input_add_logo width100">
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field full-width-input">
															<input placeholder="Enter Name" type="text" name="parentName" id="parentName_0_0" class="ignore1"/>
														</div>
													</div>
												</div>
												</div>
												 <div class="plusImg plus-pos" id="removeLast_0_0"><a  title="Add More" onclick="addMoreClass(0,0);" id="addMoreClass_0"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div> 
												</div>
											</li>
											
											<li>
												<div class="input_relative">
												<div class="input_add_logo width-less">
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Comment" type="text" name="comments" id="comments_${schoolId}_0" class="ignore1"/>
														</div>
													</div>
												</div>
												</div>
												 <div class="plusImg" id="removeLast_${schoolId}_0"><a  title="Add More" onclick="addMoreClass(${schoolId},0);" id="addMoreClass_${schoolId}"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div> 
												</div>
											</li>
											</div>
											</div>
											</ul>
<input type="button" value="SEND INVITE" class="change_trackbtn_qus" onclick="sendingEmailToParents();">
				</form:form>
	</div> --%>
	
	<div id="sendRadioInvitePopUp" style="display: none" class="getstartForm_teacher margin-top-zero">
			<h3 class="migChngPass pophdr">Share The Radio</h3>
		<form:form  method="post" id="sendRadioInviteForm" modelAttribute="dtoLetterToParent"  action="${pageContext.request.contextPath}/donor/sendParentRadioInvite" class="register-form" >
								<h3 class="migChngPass popsubhdr" id="radioInvitesMsg">${radioInvite} radio invites</h3>		
										<ul>
										<div id="parentInfo_0">
										<div id="divSection_0_0">
											
											<li class="margin-bottom-ten">
												<div class="input_relative">
												<div class="input_add_logo width100">
												 <label>Enter Name</label>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field full-width-input">
															<input placeholder="Enter Name" type="text" name="parentName" id="parentName_0_0" class="ignore1"/>
														</div>
													</div>
												</div>
												</div>
												</div>
											</li>
											
											<li class="margin-bottom-ten">
												<!-- <div class="input_relative"> -->
												<!-- <div class="input_add_logo width-less"> -->
												 <label>Enter Email</label>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Enter Email*" type="text" name="parentEmail" id="parentEmail_0_0" class="ignore1"/>
														</div>
													</div>
												</div>
											</li>
											
												<li class="margin-bottom-ten">
												<div class="input_relative">
												<div class="input_add_logo width100">
												 <label>Enter Name</label>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field full-width-input">
															<input placeholder="Enter Name" type="text" name="parentName_123" id="parentName_123" class="ignore1"/>
														</div>
													</div>
												</div>
												</div>
												</div>
											</li>
											
											<li class="margin-bottom-ten">
												<!-- <div class="input_relative"> -->
												<!-- <div class="input_add_logo width-less"> -->
												 <label>Enter Email</label>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Enter Email*" type="text" name="parentEmail_123" id="parentEmail_123" class="ignore1"/>
														</div>
													</div>
													
												</div>
												<div class="plusImg plus-pos" id="removeLast_0_0">
										        <a  title="Add More" onclick="addMoreClass(0,0);" id="addMoreClass_0">
										         <img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a>
										       </div> 
											</li>
																				
										     
										        
<%-- 											<li>
												<div class="input_relative">
												<div class="input_add_logo width-less">
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Comment" type="text" name="comments" id="comments_${schoolId}_0" class="ignore1"/>
														</div>
													</div>
												</div>
												</div>
												 <div class="plusImg" id="removeLast_${schoolId}_0"><a  title="Add More" onclick="addMoreClass(${schoolId},0);" id="addMoreClass_${schoolId}"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div> 
												</div>
											</li> --%>
											</div>
											</div>
											</ul>
                   <input type="button" value="SEND INVITE" class="change_trackbtn_qus" onclick="sendingEmailToParents();">
				</form:form>
	</div>
	





<!-- <footer>
		<div class="container">
			<div class="footerLeft">
				<p>Copyright © 2015 Inner Explorer</p>
			</div>
			<div class="footerRight">
				<ul>
					<li><a href="javascript:;">Privacy Policy</a></li>
					<li><a href="javascript:;">Terms & Conditions</a></li>
				</ul>
			</div>
		</div>
	</footer> -->
<%-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script> --%> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="../footer.jsp" %>
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.fancybox.pack.js?v=2.1.5"></script> --%>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>

</body>
<script type="text/javascript">
jQuery(document).ready
(function($){
	$("#header").sticky({ topSpacing: 0 });
	jQuery.validator.addMethod("notEqual", function(value, element) {
		var status = true;
		$('[id^=parentEmail_]').each( function( index, el ){
			if(($( el ).val() == value) && $( el ).attr("id") != $(element).attr("id") ){
				status = false;
			}
		});
		  return this.optional(element) || status;
		}, "Please use unique email address.");
	
	jQuery.validator.addMethod("laxEmail", function(value, element) {
		if(value==$('#email1').val()){
			return false;
		}else{
			return true;
		}
		}, 'Please enter a new email address.');
	
	jQuery.validator.addMethod("notEqualHomeE", function(value, element) {
		var status = true;
		$('[id^=email_]').each( function( index, el ){
			if(($( el ).val() == value) && $( el ).attr("id") != $(element).attr("id") ){
				status = false;
			}
		});
		  return this.optional(element) || status;
		}, "Invite already sent on this email.");
	
	/* $(".fancybox").fancybox(); */

});
</script>
 <%-- <script src="js/woco.accordion.min.js"></script> 
	<script>
	$(".accordion").accordion();
</script> --%>

<script type="text/javascript">

$(document).ready(function (){

	$.validator.addMethod("nameRegex", function(value, element) {
        return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
    }, "Field must contain letters only.");
	
	/* $.validator.addMethod("nameEmailReq", function(value, element) {
		return ($("#name1").val()!='' || $("#email1").val()!='');
}, "This field is required.") */;
	
    $('#parentSubscriptionForm').validate({
        errorElement: 'span', //default input error message container
        errorClass: 'help-block', // default input error message class
        focusInvalid: false, // do not focus the last invalid input
        ignore: "",
        rules: {

        	
        },


        invalidHandler: function(event, validator) { //display error alert on form submit   
        },

        highlight: function(element) { // hightlight error inputs
            $(element)
                .closest('.outer-field').addClass('has-error'); // set error class to the control group
            $(element)
                .closest('.fullrow').addClass('has-error'); // set error class to the control group
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
            		form.submit();
        }
    });
		

                	 
               
            });

	
function openShareInvite(){
	
	var sysShareCount = ${parentHomeEditionShare};
	$.ajax({
	    type : 'POST',
	    url : '<%=request.getContextPath()%>/donor/getSubscriptionDetail',
	    success:function(result){
	    if(result.length <= sysShareCount){
	    	if(result.length != 0){
	    		$("#pendingInvitesMsg").text((sysShareCount-result.length)+" Invite Left");
	    	}else{
	    		$("#pendingInvitesMsg").text("You can send invites to "+sysShareCount+" users.");
	    	}
	    }else{
	    	$("#pendingInvitesMsg").text("");
	    }
	    if(result.length >= sysShareCount){
	    	$("#submitEmail").hide();
	    }
		    $.each(result,function(index,value){
		    	$("#name_"+index).val(value.name);
		    	$("#email_"+index).val(value.email);
		    	$("#name_"+index).attr("readOnly","true");
	    		$("#email_"+index).attr("readOnly","true");
		    	/* if(index==0){
		    		$("#name1").val(value.name1);
		    		$("#email1").val(value.email1);
		    		$("#name1").attr("readOnly","true");
		    		$("#email1").attr("readOnly","true");
		    		
		    	}
		    	if(index==1){
		    		$("#name2").val(value.name1);
		    		$("#email2").val(value.email1);
		    		$("#name2").attr("readOnly","true");
		    		$("#email2").attr("readOnly","true");
		    	} */
		    	
		    });
	    }
		});
	
	
	
	$.fancybox({
		 'minWidth':200,
		 'maxWidth':600,
		 'padding':25,
		 'minHeight':250,
	     'autoScale': true,
	     'autoDimensions': true,
	     'centerOnScroll': true,
	     'href' : '#sendSubscriptionPopUp'
	  });
}

function openRadioInvite(){
	
	$.fancybox({
		 'minWidth':250,
		 'maxWidth':600,
		 'padding':25,
		 'minHeight':150,
	     'autoScale': true,
	     'autoDimensions': true,
	     'centerOnScroll': true,
	     'href' : '#sendRadioInvitePopUp'
	  });
	
	
}

function addMoreClass(programId,index){
	var divId = index + 1;
	var htmlContents='<a title="Remove" onclick="removeClassDetails('+programId+','+ index + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a>';
	$($("#removeLast_"+programId+"_" + index + '')).empty();
	$($("#removeLast_"+programId+"_" + index + '')).html(htmlContents);
	$("#addMoreClass_"+programId).remove();
	$("#parentInfo_"+programId).append('<div id="divSection_'+programId+'_'+ divId + '">'+
			
			'<li><label>Enter Name</label><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
		    '<input type="text" name="parentName_'+programId+'_'+ divId +'" placeholder="Enter Name"   class="ignore1" id="parentName_'+programId+'_'+ divId + '" /></div></div></div>'+
		    '</li>'+
		    '<li><div class="input_relative"><div class="input_add_logo width100"><label>Enter Email</label> <div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
		    '<input type="text" name="parentEmail_'+programId+'_'+ divId +'" placeholder="Enter Email*" class="ignore1"  id="parentEmail_'+programId+'_'+ divId + '"/></div></div></div></div>'+//</li>'+
		   // '<li><div class="input_relative"><div class="input_add_logo width-less"><div class="contact-row"><div class="outer-field-wrap">'+
		   // '<div class="outer-field"><input placeholder="Comment" type="text" name="comments_'+programId+'_'+ divId +'" id="comments_'+programId+'_'+ divId +'" class="ignore1"/></div></div></div></div>'+
		    '<div class="plusImg plus-pos" id="removeLast_'+programId+'_'+divId+'"><a style="margin: 0 10px 0 0;" onclick="removeClassDetailsLast('+programId+','+ divId +');" id="removeParent_'+programId+'">'+ 
		    '<img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a><a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'">'+
		    '<img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a></div>'+
		    '</div></li><div class="contact-row" style="height: 10px;"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" id="programId_'+programId+'_'+ divId +'" name="programIds"/>'+
			'</div></div></div>');

}

function removeClassDetails(programId,index){
	$($("#divSection_"+programId+"_" + index + '')).remove();
	if($('[id^=removeLast_'+programId+'_]').length == 1){
		var divId = $('[id^=removeLast_'+programId+'_]').attr('id').replace('removeLast_'+programId+'_','');
		$('[id^=removeLast_'+programId+'_]').empty('');
		$('[id^=removeLast_'+programId+'_]').html('<a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a>');
	}

}

function removeClassDetailsLast(programId,index){
	var previous = index - 1;
	var htmlContents = '<a style="margin: 0 10px 0 0;" onclick="removeClassDetailsLast('+programId+','+ previous + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon-new.png" alt="Image" /></a><a onclick="addMoreClass('+programId+','+ previous +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a>';
	
	$($("#divSection_"+programId+"_" + index + '')).remove();
		while($("#removeLast_"+programId+"_" + previous + '').length == 0){
			previous--;
			if(previous == 0)
			break;
		}
		if(previous != 0){
			$($("#removeLast_"+programId+"_" + previous + '')).empty();
			$($("#removeLast_"+programId+"_" + previous + '')).html(htmlContents);
		}else{
			$($("#removeLast_"+programId+"_" + previous + '')).empty();
			$($("#removeLast_"+programId+"_" + previous + '')).html('<a onclick="addMoreClass('+programId+','+ previous +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a>');
		}
    	if($('[id^=removeLast_'+programId+'_]').length == 1){
    		var divId = $('[id^=removeLast_'+programId+'_]').attr('id').replace('removeLast_','');
    		$('[id^=removeLast_'+programId+'_]').empty();
    		$('[id^=removeLast_'+programId+'_]').html('<a onclick="addMoreClass('+programId+','+ previous +');"  id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon-new.png" alt="Image" /></a>');
    	}
}


function sendingEmailToParents(){
	$("#sendRadioInviteForm").validate({ ignore: []});
	$("#sendRadioInviteForm").validate();

	$('[id^=parentName_]').each( function( index, el ) {
		var id  = '#'+el.id;
		//console.log($(id));
		//$(id).removeClass('error');
		if(id != '#parentName_123'){
	    $( el ).rules('add', {
	    	required: true, 
    		//minlength : 10,
    		maxlength : 30
    		//digits	: true
    	});
		}
		
		else if(id == '#parentName_123'){
			if($('#parentName_123').val().trim().length>0){
				
				$('#parentName_123').rules('add', {
					required: true,
		    		maxlength : 30
		    	});
				
				$('#parentEmail_123').rules('add', {
			    	   required: true,
			    	    email: true,
			    	    notEqual:true,
			    	    remote: {
			    	        url: '<%=request.getContextPath()%>/donor/checkParentInviteEmailExist',
			    	        type: "post",
			    	        data: {
			    	          email: function() {
			    	            return $(id).val();
			    	          }
			    	        }
			    	    }
			    	});
				
			}
			else if($('#parentEmail_123').val().trim().length>0){
				$('#parentEmail_123').rules('add', {
			    	   required: true,
			    	    email: true,
			    	    notEqual:true,
			    	    remote: {
			    	        url: '<%=request.getContextPath()%>/donor/checkParentInviteEmailExist',
			    	        type: "post",
			    	        data: {
			    	          email: function() {
			    	            return $(id).val();
			    	          }
			    	        }
			    	    }
			    	})
				
			
				$('#parentName_123').rules('add', {
		    	    required: true,
		    	    maxlength : 30
		    	});
			}
			else{
				 $('#parentName_123').rules('remove');
				 $('#parentEmail_123').rules('remove');
			}
			
		}
		else{
			 $('#parentName_123').rules('remove');
			 $('#parentEmail_123').rules('remove');
		}
	});
	$('[id^=parentEmail_]').each( function( index, el ) {
		var id  = '#'+el.id;
		//console.log($(id).val());
		//$(id).removeClass('error');
		if(id != '#parentEmail_123'){
	    $( el ).rules('add', {
    	    required: true,
    	    email: true,
    	    notEqual:true,
    	    remote: {
    	        url: '<%=request.getContextPath()%>/donor/checkParentInviteEmailExist',
    	        type: "post",
    	        data: {
    	          email: function() {
    	            return $(id).val();
    	          }
    	        }
    	    } 
    	})
		}
		 else if(id == '#parentEmail_123' && $(id).val().trim().length>0){
			 $( el ).rules('add', {
		    	    required: true, 
		    	    email: true,
		    	    notEqual:true,
		    	    remote: {
		    	        url: '<%=request.getContextPath()%>/donor/checkParentInviteEmailExist',
		    	        type: "post",
		    	        data: {
		    	          email: function() {
		    	            return $(id).val();
		    	          }
		    	        }
		    	    }
		    	})
		} 
	    
	});

	
	if($("#sendRadioInviteForm").valid()){
		//alert("hiiii"+true);
		
		$('[id^=parentName_]').each( function( index, el ) {
			$( el ).attr('name',"parentName");
		});
		$('[id^=parentEmail_]').each( function( index, el ) {
			$( el ).attr('name',"parentEmail");
		});
		/* $('[id^=comments_]').each( function( index, el ) {
			$( el ).attr('name',"comments");
		}); */
		 $("#sendRadioInviteForm").submit();
		return true;
	}else{
		return false;
	}

}

<%-- function sendingEmailToParents(){
	$("#sendRadioInviteForm").validate({ ignore: []});
	$("#sendRadioInviteForm").validate();

	$('[id^=parentName_]').each( function( index, el ) {
	    $( el ).rules('add', {
	    	required: true, 
    		//minlength : 10,
    		maxlength : 30
    		//digits	: true
    	});
	});
	$('[id^=parentEmail_]').each( function( index, el ) {
		var id  = '#'+el.id;
		//console.log($(id).val());
		//$(id).removeClass('error');
		
	    $( el ).rules('add', {
    	    required: true,
    	    email: true,
    	    /* emailAlreadyExist: true, */
    	    notEqual:true,
    	    remote: {
    	        url: '<%=request.getContextPath()%>/donor/checkParentInviteEmailExist',
    	        type: "post",
    	        data: {
    	          email: function() {
    	            return $(id).val();
    	          }
    	        }
    	    }
    	})
	});

	
	if($("#sendRadioInviteForm").valid()){
		//alert("hiiii"+true);
		
		$('[id^=parentName_]').each( function( index, el ) {
			$( el ).attr('name',"parentName");
		});
		$('[id^=parentEmail_]').each( function( index, el ) {
			$( el ).attr('name',"parentEmail");
		});
		/* $('[id^=comments_]').each( function( index, el ) {
			$( el ).attr('name',"comments");
		}); */
		 $("#sendRadioInviteForm").submit();
		return true;
	}else{
		return false;
	}

} --%>

$(document).on('click', '.fancybox-close', function () {
	 $("#parentSubscriptionForm")[0].reset();
	 $('#email1-error').text(" ");
	 $('#email2-error').text(" ");
	 $('#name1-error').text(" ");
	 $('#name1-error').text(" ");
	 
	  $("#sendRadioInviteForm")[0].reset();
	 
	 $('[id^=parentName_]').each( function( index, el ) {
			$( el ).text(" ");
			if(index>0){
				removeClassDetailsLast(0,index);
			}
			$('#'+el.id).removeClass('error');
		});
		$('[id^=parentEmail_]').each( function( index, el ) {
			$( el ).text(" ");
			$('#'+el.id).removeClass('error');
		}); 
	
		
});

function submitEmailFrom(){
	
	$("#parentSubscriptionForm").validate({ ignore: []});
	$("#parentSubscriptionForm").validate();
	
	$('[id^=name_]').each( function( index, el ) {
		$('[id^=email_]').each( function( index1, el1 ) {
			if(index ==  index1 && $(el1).val() != ''){
				$( el ).rules('add', {
		    	    required: true ,
		    	    maxlength:40
		    	});
			}
		});
	});
	$('[id^=email_]').each( function( index, el ) {
		$('[id^=name_]').each( function( index1, el1 ) {
			if(index ==  index1 && $(el1).val() != ''){
			    $( el ).rules('add', {
		    	    required: true,
		    	    email: true,
		    	    notEqualHomeE:true
		    	    
		    	    //notEqual:true
		    	});
			}
		});
	});
	if($("#parentSubscriptionForm").valid()){
		
		$('[id^=name_]').each( function( index, el ) {
			$( el ).attr('name',"name");
		});
		$('[id^=email_]').each( function( index, el ) {
			$( el ).attr('name',"email");
		});
		$("#parentSubscriptionForm").submit();
		return true;
	}else{
		return false;
	}
	
	
		/*  if($('#name2').val().trim().length>0){
			  $('#name2').rules('add', {
			    	required: true, 
		    		maxlength : 30
		    	});
			  $('#email2').rules('add', {
		    	    required: true,
		    	    email: true,
		    	    laxEmail:true
		    	});
			  
		    }
		 else if($('#email2').val().trim().length>0){
			 $('#name2').rules('add', {
			    	required: true, 
		    		maxlength : 30
		    	});
			  $('#email2').rules('add', {
		    	    required: true,
		    	    email: true,
		    	    laxEmail:true
		    	});
		 }
		 else{
		    	 $('#name2').rules('remove');
		    	 $('#email2').rules('remove');
		    } */
		  
	}

</script>
</html>
