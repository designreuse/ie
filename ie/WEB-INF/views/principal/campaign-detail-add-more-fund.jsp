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
<title>Add More Class</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<meta property="og:url"         content="${baseURL}" />
<meta property="og:type"        content="website" />
<meta property="og:title"       content="Inner Explorer" />
<meta property="og:description" content="Your description" />
<meta property="og:image"       content="${baseURL}NewStyles/images/inner-expl-img2.jpg" />

<!-- <meta property="og:site_name" content="http://121.241.123.114:8090/compass/">
<meta property="og:title" content="Event Name here ..">
<meta property="og:description" content="Description here ..">
<meta property="og:type" content="website">
<meta property="og:image" content="http://121.241.123.114:8090/compass/NewStyles/images/inner-expl-img2.jpg">
<meta property="og:url" content="-CUSTOMER VALUE-"> -->

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"> -->

<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery-ui.css">


<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap-tokenfield.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/tokenfield-typeahead.css">
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
        
        <!--about_us starts-->
        <div class="about_us">
            <div class="content_inner">
                <div class="pracProgress_hdr">
                    <h2>Campaign Add More Funds</h2>
                    <div class="green_line_btm"></div>
                </div>
                
                <%-- <div class="camp_detail_img">
                <img src="<%=request.getContextPath()%>/NewStyles/images/every-contribution.jpg"  alt=""/> 
                </div> --%>
                
                <!--school campaign start-->
                <div class="school_campaign">
                   <div class="containerSmall"> <div class="new_camp_changepic">
                    
                    <div class="nc_changepic">
                       <div class="img_changepic"> 
                       <img src="<%=request.getContextPath()%>/fileupload/${campaign.imageName}"  alt=""/>
                        </div>
                        </div>
                    
                    <div class="nc_changecont">
						<h5>${campaign.title}</h5>
						<p>${campaign.description}</p>
                    </div>
                    </div>
</div>

 <div class="container">
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
                                <p><span>${campaign.donorAmount}</span></p>
                            </li>
                            <li>
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/camp-li-4.png">
                                <p>Average Contribution Size</p><br>
                                <c:if test="${campaign.donorAmount != '0' ||  campaign.donorAmount != '0.0'}">
                                	<p><span>$${(campaign.donorAmount/campaign.donorCount)}</span></p>
                                </c:if>
                                <c:if test="${campaign.donorAmount == '0' ||  campaign.donorAmount == '0.0'}">
                                	<p><span>$0</span></p>
                                </c:if>
                            </li>
                        </ul>
                    </div>
				</div>


                    <div class="tar_container">
		                        <div class="tar_wrapper_camp">
		                            <!-- <p>$490</p> -->
		                            <div class="des_dtl">
		                            	<ul>
		                                	<li><img src="<%=request.getContextPath()%>/NewStyles/images/des-1.png"></li>
		                                    <li><img src="<%=request.getContextPath()%>/NewStyles/images/des-2.png"></li>
		                                    <%-- <li><img src="<%=request.getContextPath()%>/NewStyles/images/des-3.png"></li>
		                                    <li><img src="<%=request.getContextPath()%>/NewStyles/images/des-4.png"></li> --%>
		                                </ul>
		                            </div>
		                            <!--<div class="tar_btnwrap"> <a href="javascript;:" class="selected">School Contribution <span>$190</span></a> <a href="javascript;:" >Need Funding <span>$300</span></a> </div>-->
		                            <div class="range_wrpr">
		                            	<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/fundRaised-new.png"> --%>
		                            	
		                        <div class="progress" style="border: 5px solid #dadada; border-radius:15px; overflow: visible; ">
							    <div class="progress-bar progress-bar-warning pinpoint" id="contributeSchool" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">
							     
							    </div>
							    <div class="progress-bar progress-bar-danger pinpoint" role="progressbar" id="donorContributedAmount" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff;">
							    
							  	</div>
							    <div class="progress-bar progress-bar-success pinpoint" id="needAssistance" role="progressbar" style="border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;">
							    <div class="pinpoint-txt">
									<div class="sch-contri">Target</div>
									<div class="sch-contri-amt">$ ${campaign.totalCampAmount}</div>

									</div>
							    
							    </div>
							    <div class="progress-bar progress-bar-overload pinpoint" role="progressbar" id="donorContributedAmountOverload" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;">
							     
							  	</div>
							   	
							  </div>
		                            	
		                            	
		                            </div>
		                        </div>
                    		</div>
                    		
                    		
                    		<div class="make_schol_contrb">
                        <div class="techForm">
                            <label>Make School Contribution</label>
                            <div class="msc_inputbox">
                                <div class="contact-row">
                                    <div class="outer-field-wrap">
                                        <div class="outer-field">
                                            <input type="number" placeholder="$" id="moreFundAmount">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="button" onclick="addContribution(${campaign.campaignId});" value="Contribute" class="startBtn fl"/>
                        </div>
                    </div>
                    		
                    		
                </div>
                <!--school campaign end--> 
            </div>
        </div>
        <!--about_us ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends--> 
</div>
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp" %>

<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>

<script defer src="<%=request.getContextPath()%>/NewStyles/js/bootstrap-tokenfield.js"></script> 
<script type="text/javascript">

$(document).ready(function() {     
	
var schoolConhtribution = "${campaign.schoolContribution}";
	
	var totalAmount = "${campaign.totalCampAmount}";
	
	var totalDonationAmount = "${campaign.donorAmount}";
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
/* 	 var resultPer1 = (schoolConhtribution * 100/ totalAmount);
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
	 
	 $('#contributeSchool').width(resultPer1);
	 $('#contributeSchool').addClass("xtra_padding");
	 
	// if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
	 	$('#donorContributedAmount').width(resultPer2);
	// }
	 /* else{
		 $('#donorContributedAmount').width(resultPer2);
	 } */
	 
	 $('#donorContributedAmount').addClass("xtra_padding");
	 $('#needAssistance').width(resultPer3);
/* 	 if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
	 	$('#donorContributedAmountOverload').width("1%");
	 } */
	 $('#needAssistance').addClass("xtra_padding");
	 
	 var fundingAmount = (Number(schoolConhtribution))+(Number(totalDonationAmount));
	 var pendingAmount = totalAmount-fundingAmount;
	 
	 $("#contriAmount").html("$ "+schoolConhtribution)
	 $("#donorAmount").html("$ "+totalDonationAmount)
	 $("#assisAmount").html("$ "+pendingAmount)
	 
	  $('#tokenfield')

		  .on('tokenfield:createtoken', function (e) {
		    var data = e.attrs.value.split('|')
		    e.attrs.value = data[1] || data[0]
		    e.attrs.label = data[1] ? data[0] + ' (' + data[1] + ')' : data[0]
		  })

		  .on('tokenfield:createdtoken', function (e) {
		    // Über-simplistic e-mail validation
		    var re = /\S+@\S+\.\S+/
		    var valid = re.test(e.attrs.value)
		    if (!valid) {
		      $(e.relatedTarget).addClass('invalid')
		    }
		  })

		  .on('tokenfield:edittoken', function (e) {
		    if (e.attrs.label !== e.attrs.value) {
		      var label = e.attrs.label.split(' (')
		      e.attrs.value = label[0] + '|' + e.attrs.value
		    }
		  })

		  .on('tokenfield:removedtoken', function (e) {
		    alert('Token removed! Token value was: ' + e.attrs.value)
		  })

		  .tokenfield()
            

   });

   function addContribution(campaignId){
		var url='<%=request.getContextPath()%>/principal/addMoreContribution';
	   	var amount = $("#moreFundAmount").val();
	    $.ajax({
	    	
	          url:url,
	          method:'POST',
	          async :false,
	          data:{amount:amount,campaignId:campaignId},
	          success:function(response){
	        	  window.location.href = "https://www.paypal.com/webscr?cmd=_ap-payment&paykey="+response;
	          }
	    });
		
		
	}
</script>
</body>
</html>
