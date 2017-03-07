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
<title>Campaigns</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style-dev.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<style>
.tar_wrapper .progress{overflow: inherit !important;}
</style>
</head>

<body>
<div class="wrapper">
<%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--inner_header starts-->
        
        <!--brow_don_camp starts-->
        <div class="brow_don_camp">
        <div class="container">
        <div class="pracProgress_hdr">
            <h2>Help Us</h2>
               <div class="green_line_btm"></div>
     </div>
            
            <p>​​With your help we are able to make changes for children worldwide that will enable them to become more compassionate, <br/>sincere children who are ready to learn! </p>
            </div>
            
            <!--misc tabs start-->
            <div class="misc_tabs">
            <div class="misc_tabar">
                <ul>
                    <li id="mtab1" class=" selected"><a class="trial" href="javascript:showTab(1,3)">Programs in Need</a>
                    <c:set var="campCount" value="0"></c:set>
                    <c:forEach var="campaign" items="${campaign}">
            			<c:if test="${(campaign.totalCampAmount)>((campaign.schoolContribution)+(campaign.donorContribution))}">
                    		 <c:set var="campCount" value="${campCount+1}"></c:set>
                    	</c:if>
                    		</c:forEach>
                    <span class="notification-dbord-tab"><p id="liveClassesCount">${campCount}</p></span>
                    </li>
                    <li id="mtab2" ><a class="fp" href="javascript:showTab(2,3)">Active Programs</a></li>
                    <li id="mtab3" ><a class="hybrid" href="javascript:showTab(3,3)">Search</a></li>
                </ul>
            </div>
            <div class="misc_content">
            <!--TAB 1 STARTS-->
          <div id="tab1">
              <%-- <div id="contentNew">
            <c:set var="className" value="get_program_school"></c:set>
            <c:set var="changed" value="n"></c:set>
            <c:forEach var="campaign" items="${campaign}">
            <c:if test="${(campaign.totalCampAmount)>((campaign.schoolContribution)+(campaign.donorContribution))}">
            <div class="get_program_school no_gaptp ${className}">
                <div class="gps_wrapper">
                    <div class="content_inner">
                        <div class="gps_img">
                            <div class="frame_gps"> <img src="<%=request.getContextPath()%>/fileupload/${campaign.imageName}"  alt=""/> </div>
                        </div>
                        <div class="gps_content">
                        <h3>${campaign.schoolName}(${campaign.title})</h3>
                            <p>${campaign.description}</p>
                         </div>
                    </div>
                    <div class="content_inner">
                    <div class="tar_container mbtm0">
                        <div class="tar_wrapper">
                            
                            <input type="hidden" value="${campaign.totalCampAmount}" id="totalCampaignAmount${campaign.campaignId}">
                            <input type="hidden" value="${campaign.schoolContribution}" id="schoolContributionTotal${campaign.campaignId}">
                            <input type="hidden" value="${campaign.donorContribution}" id="donorContributionTotal${campaign.campaignId}">
                            <div class="tar_container">
                             <div class="tar_wrapper_camp">
                            <div class="des_dtl">
		                            	<ul>
		                            	<fmt:parseNumber var="i" type="number" value="${campaign.schoolContribution}" />
		                            	<fmt:parseNumber var="j" type="number" value="${campaign.donorContribution}" />
		                                	<li>
		                                	<c:if test="${i gt 0}">
		                                	<img src="<%=request.getContextPath()%>/NewStyles/images/des-1.png">
		                                	</c:if>
		                                	</li>
		                                    <li>
		                                    <c:if test="${j gt 0}">
		                                    <img src="<%=request.getContextPath()%>/NewStyles/images/des-2.png">
		                                    </c:if>
		                                    </li>
		                                </ul>
		                            </div>
                            <div class="range_wrpr">
                            <div class="progress" style="border: 5px solid #dadada; border-radius:15px; overflow: hidden; ">
							    <div class="progress-bar progress-bar-warning pinpoint" id="contributeSchoolFirst${campaign.campaignId}" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">
							     
							    </div>
							    <div class="progress-bar progress-bar-danger pinpoint" role="progressbar" id="donorContributedAmount${campaign.campaignId}" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff;">
							    
							  	</div>
							    <div class="progress-bar progress-bar-success pinpoint" id="needAssistanceSecond${campaign.campaignId}" role="progressbar" style="border-top: 5px solid #fff; border-bottom:none; border-radius: 0px 10px 10px 0;">
							    <div class="pinpoint-txt">
									<div class="sch-contri">Target</div>
									<div class="sch-contri-amt">$ ${campaign.totalCampAmount}</div>

									</div>
							    
							    </div>
							    <div class="progress-bar progress-bar-overload pinpoint" role="progressbar" id="donorContributedAmountOverload${campaign.campaignId}" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;">
							     
							  	</div>
							   	
							  </div>
                            </div>
                            </div>
                            </div>
                            
                            <div class="clr"></div>
                            <div class="fullrow txtcenter_align mrg_tp50 mrg_btm25">
                       
                       <form action="camp">
                            <input type="submit" value="JOIN US" class="submit-btn dis_inl_bl" />
                            <input name="id" value="${campaign.campaignId}" type="hidden"/>
                        </form>
                        
                    </div>
                        </div>
                    </div>
                    
                    
                    </div>
                </div>
                
            </div>
            </c:if>
             <c:if test="${className eq 'get_program_school' && changed eq 'n' }">
            <c:set var="className" value="get_program_school_new"></c:set>
            <c:set var="changed" value="y"></c:set>
            </c:if>
            <c:if test="${className eq 'get_program_school_new' && changed eq 'n' }">
            <c:set var="className" value="get_program_school"></c:set>
            </c:if>
            <c:set var="changed" value="n"></c:set>
            
            </c:forEach>
          </div>   --%>
          
          
          
          
          
           <%-- <c:set var="className" value="get_program_school"></c:set>
            <c:set var="changed" value="n"></c:set> --%>
          <div class="container" id="contentNew">
                       
                   <div class="schools_contacts_listing">
            <ul>
            <c:forEach var="campaign" items="${campaign}">
            
            	<li>
            <div class="schl_contcs_colum_listing">
            <h3>${campaign.schoolName}</h3>
            <div class="schools_logos">
            <c:if test="${not empty campaign.schoolLogo}">
                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${campaign.schoolLogo}"  alt=""/>
                </c:if>
            <c:if test="${empty campaign.schoolLogo}">
                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
                </c:if>
                
                 </div>
                 <h3 class="funding_margin">Funding Status</h3>
                 
                 
                 
                 
                 <div class="content_inner">
                    <div class="tar_container mbtm0">
                        <div class="tar_wrapper">
                            
                            <input type="hidden" value="${campaign.totalCampAmount}" id="totalCampaignAmount${campaign.campaignId}">
                            <input type="hidden" value="${campaign.schoolContribution}" id="schoolContributionTotal${campaign.campaignId}">
                            <input type="hidden" value="${campaign.donorContribution}" id="donorContributionTotal${campaign.campaignId}">
                            <div class="tar_container mbtm0">
                             <div class="tar_wrapper_camp">
                            <%-- <div class="des_dtl">
		                            	<ul>
		                            	<fmt:parseNumber var="i" type="number" value="${campaign.schoolContribution}" />
		                            	<fmt:parseNumber var="j" type="number" value="${campaign.donorContribution}" />
		                                	<li>
		                                	<c:if test="${i gt 0}">
		                                	<img src="<%=request.getContextPath()%>/NewStyles/images/des-1.png">
		                                	</c:if>
		                                	</li>
		                                    <li>
		                                    <c:if test="${j gt 0}">
		                                    <img src="<%=request.getContextPath()%>/NewStyles/images/des-2.png">
		                                    </c:if>
		                                    </li>
		                                </ul>
		                            </div> --%>
                            <div class="range_wrpr">
                            <div class="progress" style="border: 5px solid #dadada; border-radius:35px; overflow: hidden; ">
							    <div class="progress-bar progress-bar-warning pinpoint" id="contributeSchoolFirst${campaign.campaignId}" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">
							     
							    </div>
							    <div class="progress-bar progress-bar-danger pinpoint" role="progressbar" id="donorContributedAmount${campaign.campaignId}" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff;">
							    
							  	</div>
							    <div class="progress-bar progress-bar-success pinpoint" id="needAssistanceSecond${campaign.campaignId}" role="progressbar" style="border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;">
							    <div class="pinpoint-txt">
									<div class="sch-contri">Target</div>
									<div class="sch-contri-amt">$ ${campaign.totalCampAmount}</div>

									</div>
							    
							    </div>
							    <div class="progress-bar progress-bar-overload pinpoint" role="progressbar" id="donorContributedAmountOverload${campaign.campaignId}" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;">
							     
							  	</div>
							   	
							  </div>
                            </div>
                            </div>
                            </div>
                            
                            <div class="clr"></div>
                            <div class="fullrow txtcenter_align mrg_tp50 mrg_btm25">
                       
                      <%--  <form action="camp">
                            <input type="submit" value="JOIN US" class="submit-btn dis_inl_bl" />
                            <input name="id" value="${campaign.campaignId}" type="hidden"/>
                        </form> --%>
                        
                    </div>
                        </div>
                    </div>
                    
                    
                    </div>
                 
                 
                 <%-- <input type="hidden" value="${campaign.totalCampAmount}" id="totalCampaignAmount${campaign.campaignId}">
                            <input type="hidden" value="${campaign.schoolContribution}" id="schoolContributionTotal${campaign.campaignId}">
                            <input type="hidden" value="${campaign.donorContribution}" id="donorContributionTotal${campaign.campaignId}">
                 
                 
                 <div class="tar_container tar_container_small">
                             <div class="tar_wrapper_camp">
                            <div class="range_wrpr">
                            <div class="progress" style="border: 5px solid #dadada; border-radius:35px; overflow: hidden; ">
							    <div class="progress-bar progress-bar-warning pinpoint" id="contributeSchoolFirst${campaign.campaignId}" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">
							     
							    </div>
							    <div class="progress-bar progress-bar-danger pinpoint" role="progressbar" id="donorContributedAmount${campaign.campaignId}" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff;">
							    
							  	</div>
							    <div class="progress-bar progress-bar-success pinpoint" id="needAssistanceSecond${campaign.campaignId}" role="progressbar" style="border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;">
							    <div class="pinpoint-txt">
									<div class="sch-contri">Target</div>
									<div class="sch-contri-amt">$ ${campaign.totalCampAmount}</div>

									</div>
							    
							    </div>
							    <div class="progress-bar progress-bar-overload pinpoint" role="progressbar" id="donorContributedAmountOverload${campaign.campaignId}" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;">
							     
							  	</div>
							   	
							  </div>
                            </div>
                            </div>
                            </div> --%>
                 
                 
				
				
					<form action="camp">
						<div class="btns-outer mtop20">
							<input class="submit-btn" type="submit" value="join us">
							<input name="id" value="${campaign.campaignId}" type="hidden"/>
						</div>
                        </form>
                
            </div>
            	</li>
            
            </c:forEach>
            </ul>
           
            </div>
                        
                        
                </div>
          
         </div>
                <!--TAB 1 ENDS-->
                <!--TAB 2 STARTS-->
                <div id="tab2" style="display:none;" >
                <div class="container">
                       
                   <div class="schools_contacts_listing">
            <ul>
            <c:forEach var="schoolDetails" items="${schoolDetails}">
            
            	<li>
            <div class="schl_contcs_colum_listing">
            <h3>${schoolDetails.schoolName}</h3>
            <div class="schools_logos">
            <c:if test="${not empty schoolDetails.schoolLogo}">
                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/${schoolDetails.schoolLogo}"  alt=""/>
                </c:if>
            <c:if test="${empty schoolDetails.schoolLogo}">
                <img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>
                </c:if>
                
                 </div>
                 <h3 class="funding_margin">Funding Status</h3>
                 <input type="hidden" value="${schoolDetails.totalCampAmount}" id="totalCampaignAmount${schoolDetails.schoolId}">
                            <input type="hidden" value="${schoolDetails.schoolContribution}" id="schoolContributionTotal${schoolDetails.schoolId}">
                            <input type="hidden" value="${schoolDetails.donorContribution}" id="donorContributionTotal${schoolDetails.schoolId}">
                 
                 
                 <div class="tar_container tar_container_small">
                             <div class="tar_wrapper_camp">
                            <div class="range_wrpr">
                            <div class="progress" style="border: 5px solid #dadada; border-radius:35px; overflow: hidden; ">
							    <div class="progress-bar progress-bar-warning pinpoint" id="contributeSchoolFirst${schoolDetails.schoolId}" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">
							     
							    </div>
							    <div class="progress-bar progress-bar-danger pinpoint" role="progressbar" id="donorContributedAmount${schoolDetails.schoolId}" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff;">
							    
							  	</div>
							    <div class="progress-bar progress-bar-success pinpoint" id="needAssistanceSecond${schoolDetails.schoolId}" role="progressbar" style="border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;">
							    
							    </div>
							    <div class="progress-bar progress-bar-overload pinpoint" role="progressbar" id="donorContributedAmountOverload${schoolDetails.schoolId}" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;">
							     
							  	</div>
							   	
							  </div>
                            </div>
                            </div>
                            </div>
                 
                 <h3>Total No. of Classes : ${schoolDetails.totalClassCountUnderSchool}</h3>
                
            </div>
            	</li>
            
            </c:forEach>
            </ul>
           
            </div>
                        
                        
                </div>
                </div>
                <!--TAB 2 ENDS-->
                <!--TAB 3 STARTS-->
                <div id="tab3" style="display:none;" >
                <div class="search_school_cont">
                <div class="containerSmall">
                <form:form  method="POST" modelAttribute="dtoCampaign" action="searchResults" class="register-form" >
                <div class="techForm">
                                    <label class="wdth_auto">Search a School</label>
                                    <div class="step4-textInput" style="margin-right:10px;">
                                        <div class="contact-row">
                                            <div class="outer-field-wrap">
                                                <div class="outer-field">
                                                    <input type="text" id="searchKeyword" name="searchKeyword" onchange="getSearchContent();">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <input onclick="getSearchContent();" type="button" value="Search" class="startBtn fl">
                                </div>
                               </form:form>
                </div>
                </div>
                
                <div class="ur_grid" id="searchResult">
				</div>
		        <table width="100%" border="0" cellspacing="0" cellpadding="0" id="recordFound" class="ur_grid">
		        <thead>
				    <tr>
				        <th class="txtcenter_align" width="20%"><strong>school logo</strong></th>
				        <th width="30%"><strong>school name</strong></th>
				        <th width="30%"><strong>address</strong></th>
				        <th class="txtcenter_align" width="20%"><strong>action</strong></th>
				    </tr>
		        </thead>
		    	<tbody id="schoolsRecordsFound">
				   
				</tbody>
				</table>
				
				<div id="noRecordFound" style="text-align:center;"></div>
		        
                
                
                 </div>
                 <!--TAB 3 ENDS-->

            </div>
        </div>
            <!--misc tabs end-->
            
        </div>
        <!--brow_don_camp ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends--> 
</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<footer>
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
	</footer>
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>

<!--tab start --> 
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script>
<script type="text/javascript">

$(document).ready(function() {     
   	//ComponentsPickers.init();
   	
   	$("#searchResult").hide();
	$("#recordFound").hide();
   	
   	'<c:forEach var="schoolDetails" items="${schoolDetails}">'
	 
    var firstValId='${schoolDetails.schoolId}';
    var schoolConhtribution = $("#schoolContributionTotal"+firstValId).val();
   	
   	var totalAmount = $("#totalCampaignAmount"+firstValId).val();
   	
   	var totalDonationAmount = $("#donorContributionTotal"+firstValId).val();
   	
 	 var resultPer1 ;
	 var resultPer2 ; //(100-(schoolConhtribution * 100/ totalAmount).toFixed())+"%";
	 var resultPer3;
	 if((Number(totalDonationAmount)+Number(schoolConhtribution))>(Number(totalAmount))){
		 resultPer1 = (schoolConhtribution * 100/ (Number(totalDonationAmount)+Number(schoolConhtribution)));
		 resultPer2 = (totalDonationAmount * 100/ (Number(totalDonationAmount)+Number(schoolConhtribution)));
		 if((Number(totalDonationAmount)>0)){
			 resultPer2 = resultPer2-1;
		 }else{
			 resultPer1 = resultPer1-1;
		 }
		 resultPer3 = 0;
		 $('#donorContributedAmountOverload'+firstValId).width("1%");
	 }else{
		 resultPer1 = (schoolConhtribution * 100/ totalAmount);
		 resultPer2 = (totalDonationAmount * 100/ totalAmount);
		 resultPer3 = 100-(resultPer1+resultPer2);
	 }
/*    	 var resultPer1 = (schoolConhtribution * 100/ totalAmount);
   	 var resultPer2 = (totalDonationAmount * 100/ totalAmount); //(100-(schoolConhtribution * 100/ totalAmount).toFixed())+"%";
   	 if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
			 resultPer2 = 100-resultPer1-1;
			 var resultPer3 = (100-(resultPer1+resultPer2)-1);
		 }
		 else{
			 var resultPer3 = 100-(resultPer1+resultPer2);
		 } */
   	 /* var resultPer3 = 100-(resultPer1+resultPer2); */
   		 
   	 resultPer1 = resultPer1.toFixed()+"%";
   	 resultPer2 = resultPer2.toFixed()+"%";
   	 resultPer3 = resultPer3.toFixed()+"%";
   		 
   	 $('#contributeSchoolFirst'+firstValId).width(resultPer1);
   	 $('#contributeSchoolFirst'+firstValId).addClass("xtra_padding");
   	 $('#donorContributedAmount'+firstValId).width(resultPer2);
   	 $('#donorContributedAmount'+firstValId).addClass("xtra_padding");
   	 $('#needAssistanceSecond'+firstValId).width(resultPer3);
/*    	 if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
			 	$('#donorContributedAmountOverload'+firstValId).width("1%");
			 } */
   	 $('#needAssistanceSecond'+firstValId).addClass("xtra_padding");
   		 
   	 var fundingAmount = (Number(schoolConhtribution))+(Number(totalDonationAmount));
   	 var pendingAmount = totalAmount-fundingAmount;
   		 
   	 $("#contriAmount"+firstValId).html("$ "+schoolConhtribution)
   	 $("#donorAmount"+firstValId).html("$ "+totalDonationAmount)
   	 $("#assisAmount"+firstValId).html("$ "+pendingAmount)
   	 
    '</c:forEach>'
   	
   	
   	
   	
   	
    '<c:forEach var="campaign" items="${campaign}">'
   	
                	 var firstValId='${campaign.campaignId}';
                	 var schoolConhtribution = $("#schoolContributionTotal"+firstValId).val();
                		
                		var totalAmount = $("#totalCampaignAmount"+firstValId).val();
                		
                		var totalDonationAmount = $("#donorContributionTotal"+firstValId).val();
                		
                		 var resultPer1 = (schoolConhtribution * 100/ totalAmount);
                		 var resultPer2 = (totalDonationAmount * 100/ totalAmount);
                		 
                		 if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
                			 resultPer2 = 100-resultPer1-1;
                			 var resultPer3 = (100-(resultPer1+resultPer2)-1);
                		 }
                		 else{
                			 var resultPer3 = 100-(resultPer1+resultPer2);
                		 }
                		 
                		 //var resultPer3 = 100-(resultPer1+resultPer2);
                		 
                		 resultPer1 = resultPer1.toFixed()+"%";
                		 resultPer2 = resultPer2.toFixed()+"%";
                		 resultPer3 = resultPer3.toFixed()+"%";
                		 
                		 $('#contributeSchoolFirst'+firstValId).width(resultPer1);
                		 $('#contributeSchoolFirst'+firstValId).addClass("xtra_padding");
                		 $('#donorContributedAmount'+firstValId).width(resultPer2);
                		 $('#donorContributedAmount'+firstValId).addClass("xtra_padding");
                		 $('#needAssistanceSecond'+firstValId).width(resultPer3);
                		 
                		 
                		 if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
                			 	$('#donorContributedAmountOverload'+firstValId).width("1%");
                			 }
                		 
                		 
                		 $('#needAssistanceSecond'+firstValId).addClass("xtra_padding");
                		 
                		 var fundingAmount = (Number(schoolConhtribution))+(Number(totalDonationAmount));
                		 var pendingAmount = totalAmount-fundingAmount;
                		 
                		 $("#contriAmount"+firstValId).html("$ "+schoolConhtribution)
                		 $("#donorAmount"+firstValId).html("$ "+totalDonationAmount)
                		 $("#assisAmount"+firstValId).html("$ "+pendingAmount)
                	 
                	 '</c:forEach>'
                	 
   });

</script>
<script language="javascript">
				function showTab(current,max){
					for (i=1;i<=max;i++){
					getMyHTMLElement('tab' + i).style.display = 'none';
					getMyHTMLElement('mtab' + i).className = '';
					}
					getMyHTMLElement('tab' + current).style.display = '';
					getMyHTMLElement('mtab' + current).className = 'selected';
					}
				</script> 
<!--tab end -->
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
  <script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
    });
    
    function getSearchContent(){
        var searchKeyword = $("#searchKeyword").val().trim();
        
      //  alert("searchKeyword = "+searchKeyword);
     if(searchKeyword!=""){
        var url='<%=request.getContextPath()%>/searchResults';
        $.ajax({
               url:url,
               method:'GET',
               async :false,
               data:{searchKeyword:searchKeyword},
               success:function(response){
            	  // alert("response = "+response.modelMap.campaign);
                     if(response != null){
                    	 var status="0";
                    	
                    	 
                    	 var contextPath = '<%=request.getContextPath()%>';
                    	 var htmlcontent='';
                    	 
                    	 
                    	 
                    	$.each( response.modelMap.campaign, function(index,value) {
                    		
                    		 var status="1";
							//alert("title = "+value.title);
							//alert("title = "+value.description);
     						var schoolImage = value.schoolLogo;
    						if(typeof value.title === 'undefined'){
    							if(typeof value.schoolLogo === 'undefined'){
    								schoolImage = 'default-school-logo.png'
    							}
								
								//alert("School listing");
								
								htmlcontent =htmlcontent+'<tr><td class="txtcenter_align"><img src="'+contextPath+"/NewStyles/images/school-profile/"+schoolImage+'" width="38" id="selectSchoolImage'+value.schoolId+'" alt=""/></td>'+
						        '<td id="selectSchoolName'+value.schoolId+'">'+value.schoolName+'</td><td id="selectSchoolAddress'+value.schoolId+'">'+value.address+'</td>'+
						        '<td class="txtcenter_align"><input type="button" value="View Campaign" class="startBtn-table" id="selectSchool'+index+'" onclick="showCampaigns('+value.schoolId+');"></td>'+
						    '</tr>'; 
						    $("#schoolsRecordsFound").html(htmlcontent);
						    //$("#contentNew").html('');
						    $('#searchResult').hide();
						    $("#recordFound").show();
						    $('#noRecordFound').html('');
							}
							else{
								//alert("campaign listing");
								$('#searchResult').show();
								
								htmlcontent +=  "<div class='get_program_school no_gaptp'>"+
				                "<div class='gps_wrapper'><div class='content_inner'>"+
				                        "<div class='gps_img'>"+
				                            "<div class='frame_gps'> <img src='<%=request.getContextPath()%>/fileupload/"+value.imageName+"'  alt=''/> </div></div>"+
				                        "<div class='gps_content'><h3>"+value.title+"</h3><p>"+value.description+"</p></div></div>"+
				                    "<div class='content_inner'><div class='tar_container mbtm0'><div class='tar_wrapper'>"+
				                            "<input type='hidden' value='"+value.totalCampAmount+"' id='"+'totalCampaignAmountDS'+value.campaignId+"'>"+
				                            "<input type='hidden' value='"+value.schoolContribution+"' id='"+'schoolContributionTotalDS'+value.campaignId+"'>"+
				                            "<input type='hidden' value='"+value.donorContribution+"' id='"+'donorContributionTotalDS'+value.campaignId+"'>"+
				                            
				                            
				                            
				                            
				                            
				                           /*  "<div class='progress'><div class='progress-bar progress-bar-warning' id='"+'contributeSchoolFirst'+value.campaignId+"' role='progressbar' >School Contribution"+
											      "<div id='"+'contriAmount'+value.campaignId+"'></div></div>"+
											    "<div class='progress-bar progress-bar-danger' role='progressbar' id='"+'donorContributedAmount'+value.campaignId+"'>Donor Contribution"+
											    "<div id='"+'donorAmount'+value.campaignId+"'></div></div>"+
											    "<div class='progress-bar progress-bar-success' id='"+'needAssistanceSecond'+value.campaignId+"' role='progressbar' >Need Assistance"+
											       "<div id='"+'assisAmount'+value.campaignId+"'></div></div>"+
											 "</div>"+
											  */
											 
									"<div class='tar_container'>"+
					                    "<div class='tar_wrapper_camp'>"+
					                        "<div class='des_dtl'>"+
							                            	"<ul>"+
							                                	"<li><img src='<%=request.getContextPath()%>/NewStyles/images/des-1.png'></li>"+
							                                    "<li><img src='<%=request.getContextPath()%>/NewStyles/images/des-2.png'></li>"+
							                                "</ul>"+
							                            "</div>"+
											"<div class='range_wrpr'>"+
											 "<div class='progress' style='border: 5px solid #dadada; border-radius:15px; overflow: hidden; '>"+
											    "<div class='progress-bar progress-bar-warning pinpoint' id='"+'contributeSchoolFirstDS'+value.campaignId+"' role='progressbar' style='border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;'>"+
											     
											    "</div>"+
											    "<div class='progress-bar progress-bar-danger pinpoint' role='progressbar' id='"+'donorContributedAmountDS'+value.campaignId+"' style='border-top: 5px solid #fff; border-bottom: 5px solid #fff;'>"+
											    
											  	"</div>"+
											    "<div class='progress-bar progress-bar-success pinpoint' id='"+'needAssistanceSecondDS'+value.campaignId+"' role='progressbar' style='border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;'>"+
											    "<div class='pinpoint-txt'>"+
													"<div class='sch-contri'>Target</div>"+
													"<div class='sch-contri-amt'>$"+value.totalCampAmount+"</div>"+

													"</div>"+
											    
											    "</div>"+
											    "<div class='progress-bar progress-bar-overload pinpoint' id='"+'donorContributedAmountOverloadDS'+value.campaignId+"' role='progressbar' style='border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;'>"+
											     
											  	"</div>"+
											   	
											  "</div>"+
											"</div>"+
										"</div>"+
									"</div>"+
				                            
											 "<div class='clr'></div><div class='fullrow txtcenter_align mrg_tp50 mrg_btm25'>"+
				                       "<form action='camp'><input type='submit' value='JOIN US' class='submit-btn dis_inl_bl' />"+
				                            "<input name='id' value='"+value.campaignId+"' type='hidden'/></form>"+
				                    "</div></div></div></div></div></div>";
				                    $("#schoolsRecordsFound").html('');
				                    $("#recordFound").hide();
				                    $('#searchResult').html(htmlcontent);
				                    $('#noRecordFound').html('');
								//$("#contentNew").html(htmlcontent);
							}
                         });
			            if(htmlcontent==''){
						    $('#searchResult').hide();
						    $("#recordFound").hide();
			            	 $('#noRecordFound').html('<div class="notfound"><h4>No Record Found</h4></div>');
			            }
                    	//if(!value.title){
                    		$.each( response.modelMap.campaign, function(index,value) {
                       //	alert("Hiiii");
                   	 var firstValId=value.campaignId;
                   	 var schoolConhtribution = $("#schoolContributionTotalDS"+firstValId).val();
                   		
                   		var totalAmount = $("#totalCampaignAmountDS"+firstValId).val();
                   		
                   		var totalDonationAmount = $("#donorContributionTotalDS"+firstValId).val();
                   		
                   	 var resultPer1 ;
                	 var resultPer2 ; //(100-(schoolConhtribution * 100/ totalAmount).toFixed())+"%";
                	 var resultPer3;
                	 if((Number(totalDonationAmount)+Number(schoolConhtribution))>(Number(totalAmount))){
                		 resultPer1 = (schoolConhtribution * 100/ (Number(totalDonationAmount)+Number(schoolConhtribution)));
                		 resultPer2 = (totalDonationAmount * 100/ (Number(totalDonationAmount)+Number(schoolConhtribution)));
                		 if((Number(totalDonationAmount)>0)){
                			 resultPer2 = resultPer2-1;
                		 }else{
                			 resultPer1 = resultPer1-1;
                		 }
                		 resultPer3 = 0;
                		 $('#donorContributedAmountOverloadDS'+firstValId).width("1%");
                	 }else{
                		 resultPer1 = (schoolConhtribution * 100/ totalAmount);
                		 resultPer2 = (totalDonationAmount * 100/ totalAmount);
                		 resultPer3 = 100-(resultPer1+resultPer2);
                	 }
                   		
/*                    		 var resultPer1 = (schoolConhtribution * 100/ totalAmount);
                   		 var resultPer2 = (totalDonationAmount * 100/ totalAmount);
                   		 if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
                			 resultPer2 = 100-resultPer1-1;
                			 var resultPer3 = (100-(resultPer1+resultPer2)-1);
                		 }
                		 else{
                			 var resultPer3 = 100-(resultPer1+resultPer2);
                		 } */
                   		 
                   		 resultPer1 = resultPer1.toFixed()+"%";
                   		 resultPer2 = resultPer2.toFixed()+"%";
                   		 resultPer3 = resultPer3.toFixed()+"%";
                   		 
                   		 $('#contributeSchoolFirstDS'+firstValId).width(resultPer1);
                   		 $('#contributeSchoolFirstDS'+firstValId).addClass("xtra_padding");
                   		 $('#donorContributedAmountDS'+firstValId).width(resultPer2);
                   		 $('#donorContributedAmountDS'+firstValId).addClass("xtra_padding");
                   		 $('#needAssistanceSecondDS'+firstValId).width(resultPer3);
                   		 
                   		 /* if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
             			 	$('#donorContributedAmountOverloadDS'+firstValId).width("1%");
             			 } */
                   		 
                   		 $('#needAssistanceSecondDS'+firstValId).addClass("xtra_padding");
                   		 
                   		 var fundingAmount = (Number(schoolConhtribution))+(Number(totalDonationAmount));
                   		 var pendingAmount = totalAmount-fundingAmount;
                   		 
                   		 $("#contriAmountDS"+firstValId).html("$ "+schoolConhtribution)
                   		 $("#donorAmountDS"+firstValId).html("$ "+totalDonationAmount)
                   		 $("#assisAmountDS"+firstValId).html("$ "+pendingAmount)
                    		});
                  // 	 }
                           
                      /*      
                    	if(status=="0"){
                            $("#contentNew").html('No School/Campaign Found');
                      } */
                            
                            }
                      
               }
               
        });  
     }
     if(searchKeyword==""){
        location.reload();
     }
        
 }
function showCampaigns(schoolId){
	
    var url='<%=request.getContextPath()%>/getAllSchoolCampaigns';
    $.ajax({
           url:url,
           method:'GET',
           async :false,
           data:{schoolId:schoolId},
           success:function(response){
        	   //alert("response = "+response.modelMap.campaign);
                 if(response != null){
                	 var status="0";
                	 var contextPath = '<%=request.getContextPath()%>';
                	 var htmlcontent='';
                	$.each( response.modelMap.campaign, function(index,value) {
                		 status="1";
						//alert("title = "+value.title);
						//alert("title = "+value.description);
						
							htmlcontent +=  "<div class='get_program_school no_gaptp'>"+
			                "<div class='gps_wrapper'><div class='content_inner'>"+
			                        "<div class='gps_img'>"+
			                            "<div class='frame_gps'> <img src='<%=request.getContextPath()%>/fileupload/"+value.imageName+"'  alt=''/> </div></div>"+
			                        "<div class='gps_content'><h3>"+value.title+"</h3><p>"+value.description+"</p></div></div>"+
			                    "<div class='content_inner'><div class='tar_container mbtm0'><div class='tar_wrapper'>"+
			                            "<input type='hidden' value='"+value.totalCampAmount+"' id='"+'totalCampaignAmountSearch'+value.campaignId+"'>"+
			                            "<input type='hidden' value='"+value.schoolContribution+"' id='"+'schoolContributionTotalSearch'+value.campaignId+"'>"+
			                            "<input type='hidden' value='"+value.donorContribution+"' id='"+'donorContributionTotalSearch'+value.campaignId+"'>"+
			                            
			                            /* "<div class='progress'><div class='progress-bar progress-bar-warning' id='"+'contributeSchoolFirst'+value.campaignId+"' role='progressbar' >School Contribution"+
										      "<div id='"+'contriAmount'+value.campaignId+"'></div></div>"+
										    "<div class='progress-bar progress-bar-danger' role='progressbar' id='"+'donorContributedAmount'+value.campaignId+"'>Donor Contribution"+
										    "<div id='"+'donorAmount'+value.campaignId+"'></div></div>"+
										    "<div class='progress-bar progress-bar-success' id='"+'needAssistanceSecond'+value.campaignId+"' role='progressbar' >Need Assistance"+
										       "<div id='"+'assisAmount'+value.campaignId+"'></div></div></div>"+ */
			                            
										       
										       "<div class='tar_container'>"+
							                    "<div class='tar_wrapper_camp'>"+
							                        "<div class='des_dtl'>"+
									                            	"<ul>"+
									                                	"<li><img src='<%=request.getContextPath()%>/NewStyles/images/des-1.png'></li>"+
									                                    "<li><img src='<%=request.getContextPath()%>/NewStyles/images/des-2.png'></li>"+
									                                    
									                                "</ul>"+
									                            "</div>"+
													"<div class='range_wrpr'>"+
													 "<div class='progress' style='border: 5px solid #dadada; border-radius:15px; overflow: hidden; '>"+
													    "<div class='progress-bar progress-bar-warning pinpoint' id='"+'contributeSchoolFirstSearch'+value.campaignId+"' role='progressbar' style='border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;'>"+
													     
													    "</div>"+
													    "<div class='progress-bar progress-bar-danger pinpoint' role='progressbar' id='"+'donorContributedAmountSearch'+value.campaignId+"' style='border-top: 5px solid #fff; border-bottom: 5px solid #fff;'>"+
													    
													  	"</div>"+
													    "<div class='progress-bar progress-bar-success pinpoint' id='"+'needAssistanceSecondSearch'+value.campaignId+"' role='progressbar' style='border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;'>"+
													    "<div class='pinpoint-txt'>"+
															"<div class='sch-contri'>Target</div>"+
															"<div class='sch-contri-amt'>$"+value.totalCampAmount+"</div>"+

															"</div>"+
													    
													    "</div>"+
													    "<div class='progress-bar progress-bar-overload pinpoint' id='"+'donorContributedAmountOverloadSearch'+value.campaignId+"' role='progressbar' style='border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;'>"+
													     
													  	"</div>"+
													   	
													  "</div>"+
													"</div>"+
												"</div>"+
											"</div>"+
										       
										       
										 "<div class='clr'></div><div class='fullrow txtcenter_align mrg_tp50 mrg_btm25'>"+
			                       "<form action='camp'><input type='submit' value='JOIN US' class='submit-btn dis_inl_bl' />"+
			                            "<input name='id' value='"+value.campaignId+"' type='hidden'/></form>"+
			                    "</div></div></div></div></div></div>";
			                    
							 //$('#searchResult').hide();
		                	 $("#schoolsRecordsFound").html('');
		                	$("#searchResult").html(htmlcontent);
		                	$("#searchResult").show();
		                	$("#recordFound").hide();
				          
				         
                     });
                 	 if(htmlcontent==''){
						    $('#searchResult').hide();
						    $("#recordFound").hide();
			            	// $('#noRecordFound').html('No Record Found');
			            } 
                	$.each( response.modelMap.campaign, function(index,value) {
                		//alert("==="+value.campaignId+"**********"+$("#donorContributionTotal"+value.campaignId).val());
           	 var firstValId=value.campaignId;
           	 
           	 var schoolConhtribution = $("#schoolContributionTotalSearch"+firstValId).val();
           	 
           		
           		var totalAmount = $("#totalCampaignAmountSearch"+firstValId).val();
           		
           		
           		var totalDonationAmount = $("#donorContributionTotalSearch"+firstValId).val();
           	 var resultPer1 ;
        	 var resultPer2 ; //(100-(schoolConhtribution * 100/ totalAmount).toFixed())+"%";
        	 var resultPer3;
        	 if((Number(totalDonationAmount)+Number(schoolConhtribution))>(Number(totalAmount))){
        		 resultPer1 = (schoolConhtribution * 100/ (Number(totalDonationAmount)+Number(schoolConhtribution)));
        		 resultPer2 = (totalDonationAmount * 100/ (Number(totalDonationAmount)+Number(schoolConhtribution)));
        		 if((Number(totalDonationAmount)>0)){
        			 resultPer2 = resultPer2-1;
        		 }else{
        			 resultPer1 = resultPer1-1;
        		 }
        		 resultPer3 = 0;
        		 $('#donorContributedAmountOverloadSearch').width("1%");
        	 }else{
        		 resultPer1 = (schoolConhtribution * 100/ totalAmount);
        		 resultPer2 = (totalDonationAmount * 100/ totalAmount);
        		 resultPer3 = 100-(resultPer1+resultPer2);
        	 }
           		
/*            		 var resultPer1 = (schoolConhtribution * 100/ totalAmount);
           		 var resultPer2 = (totalDonationAmount * 100/ totalAmount);
           		 if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
        			 resultPer2 = 100-resultPer1-1;
        			 var resultPer3 = (100-(resultPer1+resultPer2)-1);
        		 }
        		 else{
        			 var resultPer3 = 100-(resultPer1+resultPer2);
        		 } */
           		 
           		 resultPer1 = resultPer1.toFixed()+"%";
           		 resultPer2 = resultPer2.toFixed()+"%";
           		 resultPer3 = resultPer3.toFixed()+"%";
           		 
           		
           		
           		 $('#contributeSchoolFirstSearch'+firstValId).width(resultPer1);
           		 $('#contributeSchoolFirstSearch'+firstValId).addClass("xtra_padding");
           		 $('#donorContributedAmountSearch'+firstValId).width(resultPer2);
           		 $('#donorContributedAmountSearch'+firstValId).addClass("xtra_padding");
           		 $('#needAssistanceSecondSearch'+firstValId).width(resultPer3);
/*            		 if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
      			 	$('#donorContributedAmountOverloadSearch'+firstValId).width("1%");
      			 } */
           		 $('#needAssistanceSecondSearch'+firstValId).addClass("xtra_padding");
           		 
           		 var fundingAmount = (Number(schoolConhtribution))+(Number(totalDonationAmount));
           		 var pendingAmount = totalAmount-fundingAmount;
           		 
           		 $("#contriAmountSearch"+firstValId).html("$ "+schoolConhtribution)
           		 $("#donorAmountSearch"+firstValId).html("$ "+totalDonationAmount)
           		 $("#assisAmountSearch"+firstValId).html("$ "+pendingAmount)
            		});
                	
                	
                    if(status=="0"){
                    	//alert("dffd");
                        $("#noRecordFound").html('<div class="notfound"><h4>No Campaign Found</h4></div>');
                  }

                        
                        }
                  
           }
           
    });  
 
	
}
  </script>
</body>
</html>
