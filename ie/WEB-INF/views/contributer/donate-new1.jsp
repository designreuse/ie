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
<title>Contribute Now</title>

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
		                            	<div class="amountBarDetail">
							  <span id="totalDonationRaised"></span>
							  </div>
		                            	
		                            </div>
		                        </div>
                    		</div>
							  
							  
                            <!-- <div class="tar_btnwrap"> <a href="javascript;:" class="selected">School Contribution <span>$190</span></a> <a href="javascript;:" >Need Assistance <span>$300</span></a> </div> -->
                        </div>
                    </div>
                    <div class="containerSmall">
                    <form:form role="form" id="donationForm" action="addContribution" class="register-form" modelAttribute="dtoDonor" method="post">
                    <div class="ContactForm mtop10">
                    <form:input type="hidden" path="donorContributionId" value="${donorContribution.donorContributionId}"></form:input>
                    <form:input type="hidden" path="campaignId" value="${campaign.campaignId}"></form:input>
                    <form:input type="hidden" path="schoolId" value="${campaign.schoolId}"></form:input>
					<%-- <ul>
					<c:if test="${empty donorContribution.user}">
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="fName" id="fName" type="text" placeholder="First Name" value="${donorContribution.firstName}"/>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="lName" id="lName" type="text" placeholder="Last Name" value="${donorContribution.lastName}"/>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="email" id="email" type="text" placeholder="Email" value="${donorContribution.email}"/>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="address1" id="address1" type="text" placeholder="Address" value="${donorContribution.address2}"/>
										<input type="hidden" name="latitude" id="latitude" value="0.0" />
										<input type="hidden" name="longitude" id="longitude" value="0.0" />
									</div>
								</div>
							</div>
						</li>
						
						<li style="display: none;">
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="zipCode" id="zipCode" type="text" placeholder="Postal / Zip Code" value="${donorContribution.zipCode}"/>
									</div>
								</div>
							</div>
						</li>
						
						
						</c:if>
						<c:if test="${donorContribution.donorContributionId eq 0}">
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="affiliationType" id="affiliationType" type="text" placeholder="How did you hear about us"/>
									</div>
								</div>
							</div>
						</li>
						
						</c:if>
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
	        <div class="dnt100dlr">
	        	<div class="dntimgsec">
	        		<img src="<%=request.getContextPath()%>/NewStyles/images/donate-icon-new.png" alt=""/>
	        	</div>
	        	<div class="dnttxtsec">
	        	<h4>Every contribution of $100 can sponsor an entire School for one year</h4>
	        		
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
								<input type="text" name="otherAmount" maxlength="10" id="otherAmount" onfocus="removeSelectedAmount();" onchange="setAnotherAmount();" placeholder="Other Amount" value="${donorContribution.amount}" autocomplete="off">
						</div>
					</div>
				</div>
				<div class="contact-row">
					<div class=" payment_type">
	                  <!-- <label>Payment Frequency:</label> -->
		              
		                  
		                  <div class="radio_payment ">
		             <input type="radio" name="group1" value="OneTime" id="check-3" checked="" > <label for="check-3">One Time</label>
		             <input type="radio" name="group1" value="Month" id="check-4" > <label for="check-4">Monthly</label>
		             <input type="radio" name="group1" value="Year" id="check-5" > <label for="check-5">Annual</label>
		             <!-- <input type="radio" name="group1" value="Recurring" id="check-4" onchange="showPaymentType();"> <label for="check-4">Recurring</label> -->
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
        <p class="employ_id_num">Inner Explorer is a 501(c)3 non profit organization, EIN 45-2395336</p>
        </div>
        <div class="btns-outer mrg_btm25" style="float:left;text-align:left;">
			<%-- <label>
				<form:checkbox path="iPledge" value="Y" id="pledge"/> I Pledge</label> --%>
				
				<c:if test="${donorContribution.donorContributionId eq 0}">
				 <div class="radio_payment radio_payment-new" style="display: none;">
		             <input type="radio" name="iPledge" value="N" id="check-1" checked=""> <label for="check-1">Ready to Pay</label>
		             <!-- <input type="radio" name="iPledge" value="Y" id="check-2"> <label for="check-2">I Pledge</label> -->
		        </div>
				</c:if>
				<c:if test="${donorContribution.donorContributionId ne 0}">
				<input type="hidden" name="iPledge" value="N"/>
				</c:if>
		</div>							
		<div class="btns-outer mrg_btm25">
			<input type="submit" value="PAY NOW" class="submit-btn fl"	id="demo_5" />
		</div>
                        
                   
                        
                        
        			</form:form>
        	
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

<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="../footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/ui-alert-dialog-api.js"></script> 
  <%-- <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script> --%>
  <script src="<%=request.getContextPath()%>/NewStyles/js/jquery-ui.js"></script>
  <script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/dateFormat.js"></script>
  <script defer src="<%=request.getContextPath()%>/NewStyles/js/bootstrap-tokenfield.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
  
  <script type="text/javascript">

$(document).ready(function() { 
	
	$("#amount").val(100);
	$.format = DateFormat.format;
	
	if('${donorContribution.donorContributionId}' != '0'){
		$("#fName").attr("readOnly","readOnly");
		$("#lName").attr("readOnly","readOnly");
		$("#address1").attr("readOnly","readOnly");
		$("#address2").attr("readOnly","readOnly");
		$("#city").attr("readOnly","readOnly");
		$("#state").attr("readOnly","readOnly");
		$("#zipCode").attr("readOnly","readOnly");
		$("#country").attr("readOnly","readOnly");
		$("#email").attr("readOnly","readOnly");
		
	}

	$(".fancybox").fancybox();

	var schoolConhtribution = "${campaign.schoolContribution}";
	
	var totalAmount = "${campaign.totalCampAmount}";
	
	var totalDonationAmount = "${campaign.donorAmount}";
	
	var clientDate = $.format.date(new Date(), 'MM/dd/yyyy')
	
	$("#totalDonationRaised").text("$"+parseInt(Number(totalDonationAmount)+Number(schoolConhtribution))+" raised till "+clientDate);
	
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

		                    	email:{
		                       		required: true,
		                       		email:true
		                       	},
		                       	amount:{
		                       		/* amountRegex: true */
		                       	},
		                    	fName:{
		                    		 required: true,
		                             maxlength : 20
		                       	},
		                    	lName:{
		                    		 maxlength : 20
		                       	},
		                    	address1:{
		                    		required: true,
	                                maxlength :100
		                       	},
		                    	city:{
		                    		required: true,
	                                maxlength : 20
		                       	},
		                       	state:{
		                       		required: true,
	                                maxlength : 20
		                       	},
		                       	/* zipCode:{
		                       		required: true,
	                        		maxlength : 20,
		                       	}, */
		                      	country:{
		                       		required: true
		                       	},
		                       	affiliationType:{
		                       		/* required: true */
		                       	},
		                       	otherAmount:{
		                    		amountValid:true,
		                    		amountRegex: true,
		                    		amountZero:true
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
   function getStudentAddressLatLong(){
	    var homeAddress = document.getElementById('address1');
	    var geocoder = new google.maps.Geocoder;
	    var autoCompleteHomeAddress = new google.maps.places.Autocomplete(homeAddress);
	    google.maps.event.addListener(autoCompleteHomeAddress,	'place_changed', function() {
	   	 $("#latitude").val(autoCompleteHomeAddress.getPlace().geometry.location.lat());
			 $("#longitude").val(autoCompleteHomeAddress.getPlace().geometry.location.lng());
			 var latlng = {lat: parseFloat($("#latitude").val()), lng: parseFloat($("#longitude").val())};
			 geocoder.geocode({'location': latlng}, function(results, status) {
				    if (status === google.maps.GeocoderStatus.OK) {
	 			    	  for (var i = 0; i < results[0].address_components.length; i++) {
				    		    var addressType = results[0].address_components[i].types[0];
				    		    if (addressType == 'postal_code') { 
				    		    	$("#zipCode").val(results[0].address_components[i].long_name);
				    		    	$("#zipCode").blur();
				    		    } 
	 			    	  }
				    	}
				    });
		});
	}

	google.maps.event.addDomListener(window, 'load', getStudentAddressLatLong); 
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
		$("#donationAmtTxt").text("$"+selectedAmount);
	
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
	$("#amount").val($("#otherAmount").val());
	
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
      $("#affiliationOther").hide();
      
      $("#login").click(function(e) {
          $(".login_panel").toggle();
          e.stopPropagation();
      });

      $(document).click(function(e) {
          if (!$(e.target).is('.login_panel, .login_panel *')) {
              $(".login_panel").hide();
          }
      });
      
    });
    
    function whereAboutIE(val){
    	if(val == 'other'){
    		$("#affiliationOther").show();
    	}
    	else{
    		$("#affiliationOther").hide();
    	}
    }
    
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
