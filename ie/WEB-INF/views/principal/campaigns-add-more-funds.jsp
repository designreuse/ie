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
<title>Add More Funds</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
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
        <%-- <div class="inner_header"> <img src="<%=request.getContextPath()%>/NewStyles/images/browse-donation-header.jpg"  alt=""/> </div> --%>
        
        <!--brow_don_camp starts-->
        <div class="brow_don_camp">
        <div class="container">
        <div class="pracProgress_hdr">
            <h2>Add More Funds</h2>
               <div class="green_line_btm"></div>
     </div>
                 <p>​​With your help we are able to make changes for children worldwide that will enable them to become more compassionate, sincere children who are ready to learn! </p>
            <div class="fullrow txtcenter_align mrg_tp20 mrg_btm25">
            <%-- <a class="blueBtn dis_inl_bl" href="<%=request.getContextPath()%>/principal/select-campaign">START A NEW CAMPAIGN</a> --%>
            </div>

            </div>
            
           
            <%-- <c:forEach var="currentName" items="${campaignsList}">
            <div class="get_program_school no_gaptp">
                <h3>${currentName.title}</h3>
                <div class="gps_wrapper">
                    <div class="content_inner">
                        <div class="gps_img">
                            <div class="frame_gps"> <img src="<%=request.getContextPath()%>/fileupload/${currentName.imageUrl}"  alt=""/> </div>
                        </div>
                        <div class="gps_content">
                            <p>${currentName.description}</p>
                            <form action="camp">
                            <input type="submit" value="Details" class="submit-btn fl" />
                            <!-- <a href="javascript:;" class="donate_now_btn">Details</a> -->
                            <input name="id" value="${currentName.campaignId}" type="hidden"/>
                            </form>
                         </div>
                    </div>
                    
                </div>
            </div>
            </c:forEach> --%>
            <c:set var="className" value="get_program_school"></c:set>
            <c:set var="changed" value="n"></c:set>
            <c:forEach var="campaign" items="${campaign}">
            
            <div class="get_program_school no_gaptp ${className}">
                
                <div class="gps_wrapper">
                    <div class="content_inner">
                    
                        <div class="gps_img">
                            <div class="frame_gps"> <img src="<%=request.getContextPath()%>/fileupload/${campaign.imageName}"  alt=""/> </div>
                        </div>
                        <div class="gps_content">
                        	<h3>${campaign.title}</h3>
                            <p>${campaign.description}</p>
                             <form action="campId">
                            <input type="submit" value="Details" class="submit-btn fl" />
                            <!-- <a href="javascript:;" class="donate_now_btn">Details</a> -->
                            <input name="id" value="${campaign.campaignId}" type="hidden"/>
                            </form>
                         </div>
                    </div>
                    <div class="content_inner">
                    <div class="tar_container mbtm0">
                        <div class="tar_wrapper">
                            <!-- <p>$${campaign.totalCampAmount}</p> -->
                            
                            <input type="hidden" value="${campaign.totalCampAmount}" id="totalCampaignAmount${campaign.campaignId}">
                            <input type="hidden" value="${campaign.schoolContribution}" id="schoolContributionTotal${campaign.campaignId}">
                            <input type="hidden" value="${campaign.donorContribution}" id="donorContributionTotal${campaign.campaignId}">
                            
                            <div class="tar_container">
                             <div class="tar_wrapper_camp">
                            <div class="des_dtl">
		                            	<ul>
		                                	<li><img src="<%=request.getContextPath()%>/NewStyles/images/des-1.png"></li>
		                                    <li><img src="<%=request.getContextPath()%>/NewStyles/images/des-2.png"></li>
		                                    <%-- <li><img src="<%=request.getContextPath()%>/NewStyles/images/des-3.png"></li>
		                                    <li><img src="<%=request.getContextPath()%>/NewStyles/images/des-4.png"></li> --%>
		                                </ul>
		                            </div>
                            <div class="range_wrpr">
                            <div class="progress" style="border: 5px solid #dadada; border-radius:15px; overflow: hidden; ">
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
                            
                            <%-- <div class="progress">
							    <div class="progress-bar progress-bar-warning" id="contributeSchoolFirst${campaign.campaignId}" role="progressbar" >
							      School Contribution
							      <div id="contriAmount${campaign.campaignId}"></div> 
							    </div>
							    <div class="progress-bar progress-bar-danger" role="progressbar" id="donorContributedAmount${campaign.campaignId}">
							    	Donor Contribution
							    <div id="donorAmount${campaign.campaignId}"></div>
							  	</div>
							    <div class="progress-bar progress-bar-success" id="needAssistanceSecond${campaign.campaignId}" role="progressbar" >
							      Need Assistance
							       <div id="assisAmount${campaign.campaignId}"></div> 
							    </div>
							   	
							  </div> --%>
                            
                               <%-- <div class="progress">
							    <div class="progress-bar progress-bar-success" id="contributeSchoolFirst${campaign.campaignId}" role="progressbar" >
							      School Contribution
							       <div id="contriAmount${campaign.campaignId}"></div> 
							    </div>
							    <div class="progress-bar progress-bar-warning" id="needAssistanceSecond${campaign.campaignId}" role="progressbar" >
							      Need Assistance
							       <div id="assisAmount${campaign.campaignId}"></div> 
							    </div>
							  </div> --%> 
							 <!--  <div class="progress">
							    <div class="progress-bar progress-bar-success" id="contributeSchool" role="progressbar" >
							      School Contribution
							      <div id="contriAmount"></div>
							    </div>
							    <div class="progress-bar progress-bar-warning" id="needAssistance" role="progressbar" >
							      Need Assistance
							      <div id="assisAmount"></div>
							    </div>
							  </div> -->
                            
                            <%-- <div class="tar_btnwrap"> <a href="javascript;:" class="selected">School Contribution <span>$190</span></a> <a href="javascript;:" >Need Assistance <span>$300</span></a> </div> --%>
                            <div class="clr"></div>
                            <div class="fullrow txtcenter_align mrg_tp50 mrg_btm25">
                       <%-- <a href="<%=request.getContextPath()%>/donate" class="submit-btn dis_inl_bl">CONTRIBUTE TO THEIR MINDFULLNESS</a> --%>
                       
                       <%-- <form action="camp">
                            <input type="submit" value="JOIN US" class="submit-btn dis_inl_bl" />
                            <!-- <a href="javascript:;" class="donate_now_btn">Details</a> -->
                            <input name="id" value="${campaign.campaignId}" type="hidden"/>
                        </form> --%>
                        
                    </div>
                        </div>
                    </div>
                    
                    
                    </div>
                </div>
            </div>
            <c:if test="${className eq 'get_program_school' && changed eq 'n' }">
            <c:set var="className" value="get_program_school_new"></c:set>
            <c:set var="changed" value="y"></c:set>
            </c:if>
            <c:if test="${className eq 'get_program_school_new' && changed eq 'n' }">
            <c:set var="className" value="get_program_school"></c:set>
            </c:if>
            <c:set var="changed" value="n"></c:set>
            </c:forEach>
            
        </div>
        <!--brow_don_camp ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends--> 
</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>

<!--tab start --> 
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script> 
<script type="text/javascript">

$(document).ready(function() {     
   	//ComponentsPickers.init();
   	
    '<c:forEach var="campaign" items="${campaign}">'
   	
     				/* var firstValId='${campaign.campaignId}';
   					 var totalCampaignAmount = $("#totalCampaignAmount"+firstValId).val();
   					var response = $("#schoolContributionTotal"+firstValId).val();
   						
                   	var resultPer1 = (response * 100/ totalCampaignAmount).toFixed()+"%";
                	 var resultPer2 = (100-(response * 100/ totalCampaignAmount).toFixed())+"%"; 
                	 
                	 
                	
                	 
                	 $('#contributeSchoolFirst'+firstValId).width(resultPer1);
                	 $('#needAssistanceSecond'+firstValId).width(resultPer2);
                	 
                	  var pendingAmount = totalCampaignAmount-response;
                	 
                	  $("#contriAmount"+firstValId).html("$ "+response);
                	 $("#assisAmount"+firstValId).html("$ "+pendingAmount); */
                	 
                	 var firstValId='${campaign.campaignId}';
                	 var schoolConhtribution = $("#schoolContributionTotal"+firstValId).val();
                		
                		var totalAmount = $("#totalCampaignAmount"+firstValId).val();
                		
                		var totalDonationAmount = $("#donorContributionTotal"+firstValId).val();
                		
                		 var resultPer1 = (schoolConhtribution * 100/ totalAmount);
                		 var resultPer2 = (totalDonationAmount * 100/ totalAmount); //(100-(schoolConhtribution * 100/ totalAmount).toFixed())+"%";
                		 if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
                			 resultPer2 = 100-resultPer1-1;
                			 var resultPer3 = (100-(resultPer1+resultPer2)-1);
                		 }
                		 else{
                			 var resultPer3 = 100-(resultPer1+resultPer2);
                		 }
                		 /* var resultPer3 = 100-(resultPer1+resultPer2); */
                		 
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

</body>
</html>
