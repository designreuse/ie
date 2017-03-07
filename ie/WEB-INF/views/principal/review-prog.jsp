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
<title>Review Program</title>
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
	  <!--<section class="slider-inner">
			<img src="images/browse-donation-header.jpg" alt="Slider" />
		</section>-->

		<section class="makeDonateSct mtop-5">
			<div class="container">
			
        
         <div class="pracProgress_hdr">
            <h2>Review Program</h2>
            <div class="green_line_btm"></div>

            </div>
				
				<div class="clr"></div>
                <div class="review-prog-con">
               		<div class="prog-details bdr-radius-6">
                    	<div class="hdr">Program Details</div>
                        <div class="prog-detailsTxt">
                        	<div class="pDetailsRow">
                            	<p>Selected Programs : <span id="progCount"></span></p>
                                <div class="pNames">
                                	<label>Program Names</label>
                                    <div class="label-Txt">
                                    	<ul>
                                   <c:forEach items="${programsList}" var="program" varStatus="programCount" begin="0" end="3">
<%--  									<div class="img_setup" id="programImg_${program.programId}" onclick="showProgramContent(${program.programId});">
										<div class="imgsetup_lg">
										<input type="hidden" id="programAmt_${program.programId}" value="${program.programAmount}">
											<img src="<%=request.getContextPath()%>${program.imagePath}" alt="" />
											<div class="overlay_setup" id="overlay_${program.programId}">
												${program.programDesc}
											</div>
										</div>
									</div> --%>
											<li>
                                            	<%-- <input type="checkbox" id="check_${program.programId}"> --%>
                                                <a href="javascript:;" id="progClass_${program.programId}" class="bdr-radius-6">${program.programDescDetail}</a>
                                            </li>
								</c:forEach>
                                        	<!-- <li>
                                            	<input type="checkbox" checked>
                                                <a href="javascript:;" class="bdr-radius-6 sltd">Pre-k-Kindergarten</a>
                                            </li>
                                            <li>
                                            	<input type="checkbox" checked>
                                                <a href="javascript:;" class="bdr-radius-6 sltd">Elementary School</a>
                                            </li>
                                             <li>
                                            	<input type="checkbox" checked>
                                                <a href="javascript:;" class="bdr-radius-6 sltd">Middle School</a>
                                            </li>
                                             <li>
                                            	<input type="checkbox">
                                                <a href="javascript:;" class="bdr-radius-6">High School</a>
                                            </li> -->
                                        </ul>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="pDetailsRow">
                            <fmt:formatDate value="${schoolDetails.schoolCreatedDate}" pattern="yyyy-MM-dd" var="startDate"/>
                            Program Start Date : ${startDate}
                            </div>
                            <div class="pDetailsRow">
                            <div class="fund-Raised-main">	
                            	<p>Funding Raised : $<span id="fundRaised"></span></p>
                            
                           <%--   <input type="button" value="Help" onClick="location.href='<%=request.getContextPath()%>/principal/help';" class="startBtn">
                             <input type="button" onClick="location.href='<%=request.getContextPath()%>/principal/addFunds';" value="Add Funds" class="startBtn"> --%>
                            TotalCampAmount
                            <%-- <input type="hidden" value="${schoolDetails.target}" id="totalCampaignAmount${schoolDetails.schoolId}"> --%>
                            <input type="hidden" value="${schoolDetails.totalCampAmount}" id="totalCampaignAmount${schoolDetails.schoolId}">
                            <%-- <input type="hidden" value="${schoolDetails.totalCampAmount}" id="totalCampaignAmount${schoolDetails.schoolId}"> --%>
                            <input type="hidden" value="${schoolDetails.schoolContribution}" id="schoolContributionTotal${schoolDetails.schoolId}">
                            <input type="hidden" value="${schoolDetails.donorContribution}" id="donorContributionTotal${schoolDetails.schoolId}">
							  
							  <div class="tar_container">
		                        <div class="tar_wrapper_camp">
		                            <!-- <p>$490</p> -->
		                            <div class="des_dtl_sml">
		                            	<ul>
		                                	<li><img src="<%=request.getContextPath()%>/NewStyles/images/des-1.png"></li>
		                                    <li><img src="<%=request.getContextPath()%>/NewStyles/images/des-2.png"></li>
		                                    <%-- <li><img src="<%=request.getContextPath()%>/NewStyles/images/des-3.png"></li>
		                                    <li><img src="<%=request.getContextPath()%>/NewStyles/images/des-4.png"></li> --%>
		                                </ul>
		                            </div>
		                            <div class="range_wrpr_sml">
		                            	
		                        <div class="progress" style="border: 5px solid #dadada; border-radius:15px; overflow: visible; ">
							    <div class="progress-bar progress-bar-warning pinpoint" id="contributeSchoolFirst${schoolDetails.schoolId}" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">
							     
							    </div>
							    <div class="progress-bar progress-bar-danger pinpoint" role="progressbar" id="donorContributedAmount${schoolDetails.schoolId}" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff;">
							    
							  	</div>
							    <div class="progress-bar progress-bar-success pinpoint" id="needAssistanceSecond${schoolDetails.schoolId}" role="progressbar" style="border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;">
							    <div class="pinpoint-txt">
									<div class="sch-contri">Target</div>
									<div class="sch-contri-amt" id="targetAmount"></div>

									</div>
							    
							    </div>
							    <div class="progress-bar progress-bar-overload pinpoint" role="progressbar" id="donorContributedAmountOverload" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;">
							     
							  	</div>
							   	
							  </div>
		                            	
		                            	
		                            </div>
		                            <div class="fund-Raised_sml">
                                    	<ul>
                                        	<li id="raechTargetLi">
                                            	<h4>$<span id="reachTarget"></span></h4>
                                            	<p>TO REACH TARGET</p>
                                            </li>
                                            <li>
                                            	<h4>30</h4>
                                            	<p>DAYS REMAINING</p>
                                            </li>
                                            <li>
                                            	<h4><span id="uniqueDonors"></span></h4>
                                            	<p>UNIQUE DONORS</p>
                                            </li>
                                        </ul>
                                    </div>
                                    
                                     <div class="support_btn">
                                    	<a href="<%=request.getContextPath()%>/principal/help"><input class="home_act_btn_2" type="button" value="Additional Support Resources"></a>
                                    </div>
                                    
                                    <div class="support_btn">
                                    	<a href="<%=request.getContextPath()%>/principal/addFunds"><input class="home_act_btn_2" type="button" value="Add Funds"></a>
                                    </div>
                                    
                                      <div class="support_btn" id="forwardFund" style="display:none;">
                                    	<a href="<%=request.getContextPath()%>/principal/forwardFunds"><input class="home_act_btn_2" type="button" value="Forward Funds"></a>
                                   	 </div>
                                    
                                    
                                    <%--   <input type="button" value="Help" onClick="location.href='<%=request.getContextPath()%>/principal/help';" class="startBtn">
                             <input type="button" onClick="location.href='<%=request.getContextPath()%>/principal/addFunds';" value="Add Funds" class="startBtn"> --%>
                                    
		                        </div>
                    		</div>
							  
							  
							  
                                
                            </div>
                            </div>
                        </div>
                    </div>
                </div>
			</div>
		</section>
	</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %> 
   <script src="<%=request.getContextPath()%>/NewStyles/principal-module/js/jquery.daisynav.min.js"></script> 
   <script type="text/javascript">	
/* 	jQuery(document).ready
	(function($){
		$.daisyNav();
	}); */
	</script>
	
   <script type="text/javascript" src="principal-module/js/jquery.flexisel.js"></script>
   <script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
   
   <script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
<script type="text/javascript">

$(document).ready(function() {     
	
    var firstValId='${schoolDetails.schoolId}';
    var schoolConhtribution = $("#schoolContributionTotal"+firstValId).val();
   	
   	var totalAmount = $("#totalCampaignAmount"+firstValId).val();
   	var uniqueDonors = '${schoolDetails.uniqueDonors}';
   	$("#targetAmount").html(totalAmount);
   	
   	
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
		 $('#donorContributedAmountOverload').width("1%");
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
   		 
   	 resultPer1 = resultPer1.toFixed()+"%";
   	 resultPer2 = resultPer2.toFixed()+"%";
   	 resultPer3 = resultPer3.toFixed()+"%";
   		 
   	 $('#contributeSchoolFirst'+firstValId).width(resultPer1);
   	 $('#contributeSchoolFirst'+firstValId).addClass("xtra_padding");
   	 $('#donorContributedAmount'+firstValId).width(resultPer2);
   	 $('#donorContributedAmount'+firstValId).addClass("xtra_padding");
   	 $('#needAssistanceSecond'+firstValId).width(resultPer3);
/*    	 if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
 	 	$('#donorContributedAmountOverload').width("1%");
 	 } */
   	 $('#needAssistanceSecond'+firstValId).addClass("xtra_padding");
   		 
   	 var fundingAmount = (Number(schoolConhtribution))+(Number(totalDonationAmount));
   	 var pendingAmount = totalAmount-fundingAmount;
   		 
   	 $("#contriAmount"+firstValId).html("$ "+schoolConhtribution)
   	 $("#donorAmount"+firstValId).html("$ "+totalDonationAmount)
   	 $("#assisAmount"+firstValId).html("$ "+pendingAmount)
 	$("#fundRaised").text(fundingAmount);

   	 $("#uniqueDonors").text(uniqueDonors);
   	if(totalAmount > fundingAmount){
  		$("#reachTarget").text(totalAmount-fundingAmount);
  	 }
   	 if(totalAmount == fundingAmount){
   		 $("#raechTargetLi").addClass("target_ac");
   		$("#reachTarget").text(0);
   	 }
   	 if(totalAmount < fundingAmount){
   		 $("#raechTargetLi").addClass("target_ov");
   		$("#reachTarget").text(0);
   		
   		if('${payeeforward}'=='N'){
   		$("#forwardFund").show();
   		}
   		
   		
   	 }
   });

</script>
   <script type="text/javascript">
    $(function(){
    	$.each(${programs},function(index,value){
			//$('#programImg_'+value).attr('onclick','showProgramContent('+value+')');
			$('#check_'+value).attr('checked','checked');
			$('#progClass_'+value).addClass('sltd');
			$('#progCount').html((index+1));
		});
      SyntaxHighlighter.all();
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
    
	
</script>



</body>
</html>
