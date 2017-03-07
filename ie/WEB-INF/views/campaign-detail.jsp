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
<spring:eval expression="@propertyConfigurer.getProperty('social.url')" var="baseURL" />
<!doctype html>
<html >
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Campaign Detail</title>
<meta property="og:url" content="${baseURL}camp?id=${campaign.campaignId}" />
<!-- <meta content="http://innerexplorer.org/" name="author"> -->
<%-- <meta property="og:site_name" content="${baseURL}"> --%>
<meta property="og:type"        content="website" />
<meta property="og:title"       content="school name : ${campaign.title}" />
<meta property="og:description" content="${campaign.description}" />
<meta property="og:image"       content="${baseURL}/fileupload/${campaign.imageName}" />

<!-- twitter tags -->
<meta name="twitter:card" content="summary_large_image" />
<meta name="twitter:site" content="${baseURL}" />
<meta name="twitter:title" content="${campaign.title}" />
<meta name="twitter:image" content="${baseURL}/fileupload/${campaign.imageName}" />
<meta name="twitter:url" content="${baseURL}camp-detail?id=${campaign.campaignId}" />

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>

<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery-ui.css">

<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap-tokenfield.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/tokenfield-typeahead.css">
<style>
.tar_wrapper .progress{overflow: inherit !important;}
</style>
</head>

<body>


 <script>window.twttr = (function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0],
    t = window.twttr || {};
  if (d.getElementById(id)) return t;
  js = d.createElement(s);
  js.id = id;
  js.src = "https://platform.twitter.com/widgets.js";
  fjs.parentNode.insertBefore(js, fjs);
 
  t._e = [];
  t.ready = function(f) {
    t._e.push(f);
  };
 
  return t;
}(document, "script", "twitter-wjs"));</script>


 <div id="fb-root"></div> 
 <script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script> 

<div class="wrapper">
<%-- <%@include file="header.jsp" %> --%>
    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--about_us starts-->
        <div class="about_us">
            <div class="content_inner">
                <div class="pracProgress_hdr">
                    <h2>Campaign Detail</h2>
                    <div class="green_line_btm"></div>
                </div>
                
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
                                <fmt:formatNumber var="cm" value="${campaign.donorAmount}" maxFractionDigits="0"></fmt:formatNumber>
                                <p><span>${cm}</span></p>
                            </li>
                            <li>
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/camp-li-4.png">
                                <p>Average Contribution Size</p><br>
                                <fmt:parseNumber var="i" type="number" value="${campaign.donorAmount}" />
                                 <c:if test="${ i gt 0 }">
                                 <fmt:formatNumber var="avgAmt" value="${i/campaign.donorCount}" maxFractionDigits="0"></fmt:formatNumber>
                                	<p><span>$${avgAmt}</span></p>
                                </c:if>
                                <c:if test="${  avgAmt eq 0}">
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
		                                </ul>
		                            </div>
		                            
	                            <div class="range_wrpr">
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
                    <div class="containerSmall">
                        <div class="SocialSct_dtl">
                <div class="SocialSctInner_dtl">
                	<p>Share on</p>
                    <div class="follow_us_sec">
                        <ul>
                             <li><a href="http://www.linkedin.com/shareArticle?mini=true&url=${baseURL}camp?id=${campaign.campaignId}&title=${campaign.title}&summary=${campaign.description}&image=${baseURL}/fileupload/${campaign.imageName}" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><img src="<%=request.getContextPath()%>/NewStyles/images/linkedin.jpg" alt=""></a><p>LinkedIn</p></li>
                            
                            <li>
                                <a class="fb-share-button" title="Facebook" href="http://www.facebook.com/sharer.php?u=${baseURL}camp?id=${campaign.campaignId}" onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><img src="<%=request.getContextPath()%>/NewStyles/images/facebook.jpg" alt=""> 
                             </a> 

                            <p>Facebook</p></li>
                           
                            <li>
                            <a  href="https://twitter.com/share?url=${baseURL}camp?id=${campaign.campaignId} " onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;" title="Twitter"><img src="<%=request.getContextPath()%>/NewStyles/images/twitter.jpg" alt="">
                            </a>
                            <p>Twitter</p></li>
                             <li><a href="http://smile.amazon.com/ref=smi_ge_rl_rd_gw?_encoding=UTF8&newts=1&pldnNewCustomer=1&ref_=smi_ge_rsr_btnr1_setch#" title="Amazon Smile" target="_blank"><img src="<%=request.getContextPath()%>/NewStyles/images/amazon.png"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
                       <div class="send_campaign">
                            <form:form name="sendCampaign" modelAttribute="dtoOwner" action="${pageContext.request.contextPath}/principal/sendCampaignEmail" method="POST" enctype="multipart/form-data">
                            <div class="bg_sendcamp">
                             
                                <div class="browse_cancel">
                                    <label>Import List from Excel</label>
                                    <div class="fileUpload browse-btn"> <span>BROWSE</span>
                                        
                                        <form:input path="letterToParentExcell" type="file" accept="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" class="upload" />
                                    </div>
                                </div>
								<div class="clr"></div>                                
                                <div class="techForm">
                                    <label>Manage Email Campaign</label>
                                    <div class="step4-textInput">
                                        <div class="bs-example multi-input">
					                	<form:input path="parentEmails" type="text" class="form-control" id="tokenfield" placeholder="Enter Email and press tab" />
					              </div>
                                    </div>
                                    <div class="">
                                    <input type="submit" value="Send" class="startBtn fl margin-top-zero"/>
                                </div>
                            </div>
                            </form:form>
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
	<%-- <%@include file="../footer.jsp" %> --%>
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
	
	 resultPer1 = resultPer1.toFixed()+"%";
	 resultPer2 = resultPer2.toFixed()+"%";
	 resultPer3 = resultPer3.toFixed()+"%";
	 
	 $('#contributeSchool').width(resultPer1);
	 $('#contributeSchool').addClass("xtra_padding");
	 
	 $('#donorContributedAmount').width(resultPer2);
	 
	 $('#donorContributedAmount').addClass("xtra_padding");
	 $('#needAssistance').width(resultPer3);

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

</script>
</body>
</html>
