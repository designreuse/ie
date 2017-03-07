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
<title>Inner Explorer</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
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

<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen"/>
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
                    <h2>Contribute Now</h2>
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
                    <div class="tar_container tar_container-bar">
                        <div class="tar_wrapper">
                            <!-- <p>Total Amount Required: $${campaign.totalCampAmount}</p> -->
                            <!-- <p>$${campaign.totalCampAmount}</p> -->
                            <%-- <div class="progress" style="border: 5px solid #dadada; border-radius:15px; overflow: hidden; ">
							    <div class="progress-bar progress-bar-warning pinpoint" id="contributeSchool" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">
							      <div class="pinpoint-txt">
									<div class="sch-contri">School Funds</div>
									<div class="sch-contri-amt" id="contriAmount"></div>

									</div>
							      
							     <!--  School Contribution
							      <div id="contriAmount"></div> -->
							    </div>
							    <div class="progress-bar progress-bar-danger pinpoint" role="progressbar" id="donorContributedAmount" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff;">
							     <div class="pinpoint-txt">
									<div class="sch-contri">Donor Contribution</div>
									<div class="sch-contri-amt" id="donorAmount"></div>

									</div>
							    	<!-- Donor Contribution
							    <div id="donorAmount"></div> -->
							  	</div>
							    <div class="progress-bar progress-bar-success pinpoint" id="needAssistance" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;">
							    <div class="pinpoint-txt">
									<div class="sch-contri">Target</div>
									<div class="sch-contri-amt">$ ${campaign.totalCampAmount}</div>

									</div>
							     <!--  Need Assistance
							      <div id="assisAmount"></div> -->
							    </div>
							   	
							  </div> --%>
							  
							  <div class="tar_container">
		                        <div class="tar_wrapper_camp">
		                            <!-- <p>$490</p> -->
		                            <div class="des_dtl">
		                            	<ul>
		                            	<fmt:parseNumber var="i" type="number" value="${campaign.schoolContribution}" />
		                            	<fmt:parseNumber var="j" type="number" value="${campaign.donorAmount}" />
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
		                                   <%--  <li><img src="<%=request.getContextPath()%>/NewStyles/images/des-3.png"></li>
		                                    <li><img src="<%=request.getContextPath()%>/NewStyles/images/des-4.png"></li> --%>
		                                </ul>
		                            </div>
		                            <!--<div class="tar_btnwrap"> <a href="javascript;:" class="selected">School Contribution <span>$190</span></a> <a href="javascript;:" >Need Funding <span>$300</span></a> </div>-->
		                            <div class="range_wrpr">
		                            	<%-- <img src="<%=request.getContextPath()%>/NewStyles/images/fundRaised-new.png"> --%>
		                            	
		                        <div class="progress" style="border: 5px solid #dadada; border-radius:15px; overflow: hidden; ">
							    <div class="progress-bar progress-bar-warning pinpoint" id="contributeSchool" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">
							      <!-- <div class="pinpoint-txt">
									<div class="sch-contri">School Funds</div>
									<div class="sch-contri-amt" id="contriAmount"></div>

									</div> -->
							      
							     <!--  School Contribution
							      <div id="contriAmount"></div> -->
							    </div>
							    <div class="progress-bar progress-bar-danger pinpoint" role="progressbar" id="donorContributedAmount" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff;">
							     <!-- <div class="pinpoint-txt">
									<div class="sch-contri">Donor Contribution</div>
									<div class="sch-contri-amt" id="donorAmount"></div>

									</div> -->
							    	<!-- Donor Contribution
							    <div id="donorAmount"></div> -->
							  	</div>
							    <div class="progress-bar progress-bar-success pinpoint" id="needAssistance" role="progressbar" style="border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;">
							    <div class="pinpoint-txt">
									<div class="sch-contri">Target</div>
									<div class="sch-contri-amt">$ ${campaign.totalCampAmount}</div>

									</div>
							     <!--  Need Assistance
							      <div id="assisAmount"></div> -->
							    </div>
							    <div class="progress-bar progress-bar-overload pinpoint" role="progressbar" id="donorContributedAmountOverload" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;">
							     
							  	</div>
							   	
							  </div>
		                            	
		                            	
		                            </div>
		                        </div>
                    		</div>
							  
							  
                            <!-- <div class="tar_btnwrap"> <a href="javascript;:" class="selected">School Contribution <span>$190</span></a> <a href="javascript;:" >Need Assistance <span>$300</span></a> </div> -->
                        </div>
                    </div>
                    <div class="containerSmall">
                    <form:form id="donationForm" action="addDonationParent" class="register-form" modelAttribute="dtoDonor" method="post">
                    <div class="ContactForm mtop10">
                    <form:input type="hidden" path="campaignId" value="${campaign.campaignId}"></form:input>
                    <form:input type="hidden" path="schoolId" value="${campaign.schoolId}"></form:input>
					<%-- <ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="fName" type="text" placeholder="First Name" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="lName" type="text" placeholder="Last Name" />
									</div>
								</div>
							</div>
						</li>
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="address1" type="text" placeholder="Address" />
									</div>
								</div>
							</div>
						</li>
						
<!-- 						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Street Address" />
									</div>
								</div>
							</div>
						</li> -->
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="address2" type="text" placeholder="Address Line 2" />
									</div>
								</div>
							</div>
						</li>
						<!-- <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="sign_txt">
										 <select class="select-dept">
											<option>Country</option>
										 </select>
									</div>
								</div>
							</div>
						</li> -->
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="city" type="text" placeholder="City" />
									</div>
								</div>
							</div>
						</li>

						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="state" type="text" placeholder="State / Province / Region" />
									</div>
								</div>
							</div>
						</li>
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="zipCode" type="text" placeholder="Postal / Zip Code" />
									</div>
								</div>
							</div>
						</li>
						
						<!-- <li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="City" />
									</div>
								</div>
							</div>
						</li> -->
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="sign_txt">
										 <form:select path="country" class="select-dept">
											<option value="">Country</option>
											<option value="USA">USA</option>
											<option value="Canada">Canada</option>
										 </form:select>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="email" type="text" placeholder="Email" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="sign_txt">
										 <form:select path="affiliationType" class="select-dept" onchange="whereAboutIE(this.value);">
											<option value="">Affiliation Type</option>
											<option value="parent">I am a Parent</option>
											<option value="alumni">I am an Alumni</option>
											<option value="other" id="">Others</option>
										 </form:select>
									</div>
								</div>
							</div>
						</li>
						<li id="affiliationOther">
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input  path="affiliationOther" type="text" placeholder="Affiliation Type" />
									</div>
								</div>
							</div>
						</li>
            		<li>
							
						</li>
				</ul> --%>
				</div>
			<div class="clr"></div>
		<div class="contribute_now">
	        <div class="contr_nw_col_1">
	        	<h4>Contribute Now</h4>
			        <div class="dollar_selection">
				        <ul>
					        <li><a onclick="donate(this,5);">$5</a></li>
					        <li><a onclick="donate(this,10);">$10</a></li>
					        <!-- <li><a onclick="donate(this,10);">$10</a></li> -->
					        <li><a onclick="donate(this,50);">$50</a></li>
					        <li><a style="background: #02a451;" onclick="donate(this,100);">$100</a></li>
					        <li><a onclick="donate(this,500);">$500</a></li>
					        <li><a onclick="donate(this,1000);">$1000</a></li>
					        <li><a onclick="donate(this,2500);">$2500</a></li>
					        <li><a onclick="donate(this,5000);">$5000</a></li>
				        </ul>
			        </div>
	        </div>
        </div>
        <div class="otherAmountWrapper">
	        <div class="other_amount">
		        <div class="contact-row">
					<div class="outer-field-wrap">
						<div class="outer-field">
							<form:input type="hidden" id="amount" path="amount"/>
							<input type="hidden" id="selectedAmount">
								<input type="text" name="otherAmount" maxlength="10" id="otherAmount" onfocus="removeSelectedAmount();" onchange="setAnotherAmount();" placeholder="Other Amount">
						</div>
					</div>
				</div>
				<div class="contact-row">
					<div class=" payment_type">
	                  <label>Payment Frequency:</label>
		                 <%--  <div class="radio_payment">
		                  	<span><input type="radio" name="radio" checked="checked"> One Time</span>
		                  	<span><input type="radio" name="radio"> Recurring</span>
		                  </div> --%>
		                  
		                  <div class="radio_payment ">
		             <input type="radio" name="group1" value="OneTime" id="check-3" checked="" onchange="showPaymentType();"> <label for="check-3">One Time</label>
		             <input type="radio" name="group1" value="Recurring" id="check-4" onchange="showPaymentType();"> <label for="check-4">Recurring</label>
		        </div>
	                </div>
	                			 <div class="sign_txt" style="display: none;" id="paymentTypeSelect">
										<form:select path="paymentType" class="select-dept" >
											<option value="Day">Daily</option>
											<option value="Week">Weekly</option>
											<option value="Month">Monthly</option>
											<option value="Year">Yearly</option>
										 </form:select>
										</div>
	                  
	<!--                   <div class="sign_txt">
											 <select class="select-dept">
												<option>Frequency</option>
											 </select>
										</div> -->
									
				</div>
	        </div>
        <div class="bg_share_new mrg_btm25">
        	<div class="make-card">
            	<p>We Support Following Payment Methods</p>
                	<ul>
                		<li><img src="<%=request.getContextPath()%>/NewStyles/images/paypal.png" alt="paypal"/></li>
                        <li><img src="<%=request.getContextPath()%>/NewStyles/images/visa-card.jpg" alt="visa card"/></li>
						<li><img src="<%=request.getContextPath()%>/NewStyles/images/master-card.jpg" alt="master card"/></li>
						<li><img src="<%=request.getContextPath()%>/NewStyles/images/discover-card.jpg" alt="discover card"/></li>
						 <li><img src="<%=request.getContextPath()%>/NewStyles/images/express-card.jpg" alt="express card"/></li>
						<%-- <li><img src="<%=request.getContextPath()%>/NewStyles/images/applepay.png" alt="Apple Pay"/></li>--%>
						<li><img src="<%=request.getContextPath()%>/NewStyles/images/eCheck.png" alt="echeck"/></li> 
                    </ul>
            </div>
        </div> 
        </div>
        <div class="btns-outer mrg_btm25" style="float:left;text-align:left;">
			<%-- <label>
				<form:checkbox path="iPledge" value="Y" id="pledge"/> I Pledge</label> --%>
				
				
				 <div class="radio_payment radio_payment-new">
		             <input type="radio" name="iPledge" value="N" id="check-1" checked=""> <label for="check-1">Ready to Pay</label>
		             <input type="radio" name="iPledge" value="Y" id="check-2"> <label for="check-2">I Pledge</label>
		        </div>
				
				
		</div>							
		<div class="btns-outer mrg_btm25">
			<input type="submit" value="MAKE PAYMENT" class="submit-btn fl"	id="demo_5" />
		</div>
                        
                        <%--  <div class="bg_share" style="display:none;" id="paymentSuccess" title='Contribution Done'>
                        <div class="make-card"><h3>Thanks For Your Valuable Contribution.</h3></div>
                            <div class="make-card">
                                <p>Share on</p>
                                <ul>
                                    <li><a><img src="<%=request.getContextPath()%>/NewStyles/images/share-icon-2.jpg" alt=""></a></li>
                                    <li><a><img src="<%=request.getContextPath()%>/NewStyles/images/share-icon-5.jpg" alt=""></a></li>
                                    <li><a><img src="<%=request.getContextPath()%>/NewStyles/images/share-icon-4.jpg" alt=""></a></li>
                                    <li><a><img src="<%=request.getContextPath()%>/NewStyles/images/share-icon-3.jpg" alt=""></a></li>
                                    <li><a><img src="<%=request.getContextPath()%>/NewStyles/images/share-icon-1.jpg" alt=""></a></li>
                                </ul>
                            </div>
                        </div>  --%>
                        
                        
        			</form:form>
        			<%-- <div class="send_campaign">
                            
                            <form:form name="sendCampaign" modelAttribute="dtoOwner" action="${pageContext.request.contextPath}/sendCampaignEmail" method="POST" enctype="multipart/form-data">
                            <div class="bg_sendcamp">
                            <!-- <p class="header_left_margin">Manage Email Campaign</p> -->
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
                                    <input type="submit" value="Send" class="startBtn fl"/>
                                </div>
                            </div>
                            </form:form>
                        </div> --%>
                        <div class="camp_cmnts">
                        	<h4>Comments/Testimonials</h4>
                            <ul>
	                            <c:if test="${not empty campaign.comments}">
	                            	<c:forEach items="${campaign.comments}" var="comment">
	                            		<li><p><span class="large-fnt">${comment.name}</span>: ${comment.comment}</p></li>
	                            	</c:forEach>
	                            </c:if>
	                            <c:if test="${empty campaign.comments}">
	                           	<li><p> No comment Found</p></li>
	                            </c:if>
                            </ul>
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
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/ui-alert-dialog-api.js"></script> 
  <%-- <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script> --%>
  <script src="<%=request.getContextPath()%>/NewStyles/js/jquery-ui.js"></script>
  
  <script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
  
  <script defer src="<%=request.getContextPath()%>/NewStyles/js/bootstrap-tokenfield.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.fancybox.pack.js?v=2.1.5"></script>
  
  
  <script type="text/javascript">

$(document).ready(function() {     
	$("#amount").val(100);
	$(".fancybox").fancybox();

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
            
	  $.validator.addMethod("amountRegex", function(value, element) {
		  						return ($("#otherAmount").val()!='' || $("#amount").val()!='');
		                   }, "Please enter amount.");
	 
	 $.validator.addMethod("amountValid", function(value, element) {
	        return this.optional(element) || /^0$|^[1-9]\d*$|^\.\d+$|^0\.\d*$|^[1-9]\d*\.\d*$/i.test(value);
	    }, "Field must contain number only.");
		
	 $.validator.addMethod("amountZero", function(value, element) {
	        return ($("#amount").val()!=0 || $("#amount").val()!=0.00);
	    }, "Please enter amount greater than zero.");	
	 
	  $.validator.addMethod("nameRegex", function(value, element) {
		                       return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
		                   }, "Field must contain letters only.");
		                   
		                   $('#donationForm').validate({
		                       errorElement: 'span', //default input error message container
		                       errorClass: 'help-block', // default input error message class
		                       focusInvalid: false, // do not focus the last invalid input
		                       ignore: "",
		                       rules: {

		                    	
		                       	amount:{
		                       		amountRegex: true
		                       	},
		                    	otherAmount:{
		                    		amountValid:true,
		                    		amountZero:true,
		                    		amountRegex: true,
		                    	}
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
		                    	   var otherAmount=$("#amount").val();
		                    		var otherAmount1= Number(otherAmount).toFixed(2);
		                    		$("#otherAmount").val(otherAmount1);
		                    		$("#amount").val(otherAmount1);
		                           		form.submit();
		                       }
		                   });
	 
	 
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
<script type="text/javascript">
/* $(document).ready(function(){
	UIAlertDialogApi.init();
}); */
 <%-- function paymentSuccess(){
	$( "#paymentSuccess" ).dialog({
		resizable: false,
		height:275,
		width:500,
		modal: true,
		buttons: {
		  "OK": function() {
			  
			  /*saving donation*/
				
				var url='<%=request.getContextPath()%>/addDonation';
			   	var selectedAmount = $("#selectedAmount").val();
				var otherAmount = $("#otherAmount").val();
				
				var amount;
				
				if(otherAmount == null || otherAmount == ''){
					amount = selectedAmount;
				}
				else if(otherAmount != null || otherAmount != ''){
					amount = otherAmount;
				}
				else{
					amount = otherAmount;
				}
				
			   	var campaignId = $("#hiddenCampaignId").val();
			   	
			    $.ajax({
			    	
			          url:url,
			          method:'POST',
			          async :false,
			          data:{amount:amount,campaignId:campaignId},
			          success:function(response){
			                	 return true;
			          }
			    });
			  
			  location.href = '<%=request.getContextPath()%>/camp?id='+campaignId;
			  $( this ).dialog( "close" );
		  }
		}
		});
} --%>
<%-- function paymentSuccess(){
				
				var url='<%=request.getContextPath()%>/addDonation';
			   	var selectedAmount = $("#selectedAmount").val();
				var otherAmount = $("#otherAmount").val();
				
				var amount;
				
				if(otherAmount == null || otherAmount == ''){
					amount = selectedAmount;
				}
				else if(otherAmount != null || otherAmount != ''){
					amount = otherAmount;
				}
				else{
					amount = otherAmount;
				}
				
			   	var campaignId = $("#hiddenCampaignId").val();
			   	var schoolId = $("#hiddenSchoolId").val();
			   	/* if(!(document.getElementById('pledge').checked)){ */
			    $.ajax({
			    	
			          url:url,
			          method:'POST',
			          async :false,
			          data:{amount:amount,campaignId:campaignId,schoolId:schoolId},
			          success:function(response){
			                	 return true;
			          }
			    });
			   	/* } */
			  location.href = '<%=request.getContextPath()%>/thank-you';
} --%>
function donate(ele,value){
	$('a[style*="background: #02a451"]').removeAttr("style");
	$(ele).attr("style","background: #02a451;");
	
	var selectedAmount = value;
	//alert("selectedAmount = "+selectedAmount);
	var amount = $("#amount").val();
	//alert("amount = "+amount);
	/* $("#selectedAmount").val(selectedAmount); */
	//if(amount == null || amount == ""){
		$("#amount").val(selectedAmount);
	//}
	
		$("#otherAmount").val("");
	<%-- $( "#paymentSuccess" ).dialog({
		resizable: false,
		height:275,
		width:500,
		modal: true,
		buttons: {
		  "OK": function() {
			  
			  /*saving donation*/
				
				var url='<%=request.getContextPath()%>/addDonation';
			   	var amount = value;
			   	var campaignId = $("#hiddenCampaignId").val();
			   	
			    $.ajax({
			    	
			          url:url,
			          method:'POST',
			          async :false,
			          data:{amount:amount,campaignId:campaignId},
			          success:function(response){
			                	 return true;
			          }
			    });
			  
			  //location.href = '<%=request.getContextPath()%>/camp?id='+campaignId;
			  $( this ).dialog( "close" );
		  }
		}
		}); --%>
	
	
}
function removeSelectedAmount(){
	
	//alert("d");
	$("#amount").val("");
	
	$('a[style*="background: #02a451"]').removeAttr("style");
	//$(ele).attr("style","background: #02a451;");
	
}
function setAnotherAmount() {
	var otherAmount = $("#otherAmount").val();
	$("#amount").val(otherAmount);
}
</script>

<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
  <script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
    });
    
    function showPaymentType(){
		if(document.getElementById('check-4').checked){
			$("#paymentTypeSelect").show();
		}
		else
			{
			$("#paymentTypeSelect").hide();
			}
		
		
	
}    
  </script>	
</body>
</html>
