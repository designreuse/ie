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
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />



 	<%-- <link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/> --%>
	<%-- <link href="<%=request.getContextPath()%>/NewStyles/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/> --%>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/select2/select2_metro.css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.css" />



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
        <div>
        <div class="container">
        <div class="pracProgress_hdr">
            <h2>Campaign</h2>
            <div class="green_line_btm"></div>
			
				<div class="clr"></div>
			
            </div>
            
            
            </div>
            
            <!--misc tabs start-->
            <div class="misc_tabs">
            <div class="misc_tabar">
                <ul>
                    <li id="mtab1" class=" selected"><a class="fp" href="javascript:showTab(1,3)">Global Campaign</a></li>
                    <li id="mtab2"><a class="trial" href="javascript:showTab(2,3)">Programs in Need</a></li>
                    <li id="mtab3" ><a class="hybrid" href="javascript:showTab(3,3)">Favorite Schools</a></li>
                </ul>
            </div>
            <div class="misc_content">
            <!--TAB 1 STARTS-->
          <div id="tab2" style="display:none;" >
                
                <div class="container" id="contentNew">
                   <div class="schools_contacts_listing">
              <div id="contentTab2"></div>
              </div></div>
         </div>
                <!--TAB 1 ENDS-->
                <!--TAB 2 STARTS-->
                <div id="tab1">
                
                <div class="container">
                <%-- <div id="tab1">
                    <div class="schools_contacts">
            
            <c:forEach var="donationList" items="${donationList}">
            
            <div class="schl_contcs_colum min-hgt-380">
            <h3 class="margin-top-ten">${donationList.name}</h3>
            <div class="schools_logos">
                <img src="<%=request.getContextPath() %>/NewStyles/images/school-profile/${donationList.logoUrl}"  alt=""/>
           
                 </div>
                 <h3 class="margin-top-ten">Amount Donated</h3>
                 <h3 class="margin-top-ten">$${donationList.amount}</h3>
                 <h3 class="margin-top-ten">Donated On: <span>${donationList.donationDate}</span></h3>
                 <h3 class="margin-top-ten">Donation Type : <span>${donationList.donationType}</span></h3>
            
				 
				 <div class="btns-outer mtop20">
				 <input type="button" value="Donation Detail" onclick="donationsList(${donationList.schoolId},'${donationList.campType}');" class="submit-btn">
						</div>
				 
            </div>
            </c:forEach>

            </div>
                </div> --%>
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
               
<div class="wrapper">

    
    <!--inner_wrapper starts-->
    <div class="inner_wrapper"> 
        
        <!--inner_header starts-->
        <!--<div class="inner_header"> <img src="images/browse-donation-header.jpg"  alt=""/> </div>-->
        
        <!--about_us starts-->
        <div class="about_us">
                <div class="dntfirst">
				<div class="content_inner">
                    
                         
                       <!--  <div class="gps_img">
                            <div class="frame_gps"></div>
                        </div> -->
                        
                        <div class="gps_content width100">
                        	 <img class="fr" src="<%=request.getContextPath()%>/NewStyles/images/image007.jpg"  alt=""/> 
                        	<h3>HELP US BREAK THE CYCLE</h3>
                            <p>What do academic decline, poverty, and 
juvenile crime ALL have in common? EMOTIONAL STRESS... However what you 
might not know is how these outcomes can be prevented with a simple 
intervention. Inner Explorer has developed a solution that is simple, 
scalable, and sustainable. It works! For only $100 per school results
 show; improvement in grades &amp; reduction in behavior problems, 
including bullying.</p>
                             
                         </div>
                    </div>
			</div>
			

            <c:if test="${campaign.campaignId != 0}">    
            	<div class="get_program_school no_gaptp gnewcolor" id="donateForm">
                
                <div class="gps_wrapper">
                   
                    <div class="content_inner">
                    <div class="tar_container tar_container-bar">
                        <div class="tar_wrapper">
							  <div class="tar_container">
		                        <div class="tar_wrapper_camp">
		                            <!-- <p>$490</p> -->
		                            <div class="des_dtl">
		                            	<ul>
		                            	<%-- <fmt:parseNumber var="i" type="number" value="${campaign.schoolContribution}" /> --%>
		                            	<fmt:parseNumber var="j" type="number" value="${campaign.donorContribution}" />
		                                	<%-- <li>
		                                	<c:if test="${i gt 0}">
		                                	<img src="<%=request.getContextPath()%>/NewStyles/images/des-1.png">
		                                	</c:if>
		                                	</li> --%>
		                                    <li>
		                                    <c:if test="${j gt 0}">
		                                    <img src="<%=request.getContextPath()%>/NewStyles/images/des-2.png">
		                                    </c:if>
		                                    </li>
		                                </ul>
		                            </div>
		                            <div class="range_wrpr">
		                            	
		                        <div class="progress" style="border: 5px solid #dadada; border-radius:15px; overflow: hidden; ">
							    <div class="progress-bar progress-bar-warning pinpoint" id="contributeSchool" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">
							      
							    </div>
							    <div class="progress-bar progress-bar-danger pinpoint" role="progressbar" id="donorContributedAmount" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">
							  	</div>
							    <div class="progress-bar progress-bar-success pinpoint" id="needAssistance" role="progressbar" style="border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;">
							    <div class="pinpoint-txt">
									<div class="sch-contri">Target</div>
									<c:set var="min" value="${fn:substringBefore((campaign.amount), '.')}"/> 
									
									
									<fmt:setLocale value="en_US"/>
									<fmt:formatNumber value="${min}" type="currency" var="min"/>
									<div class="sch-contri-amt">${min}</div>

									</div>
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
                    
                    
                    </div>
                </div>
                
                <div class="containerSmall">
                    <form:form role="form" id="donationForm" action="addDonationAdminCamp" class="register-form" modelAttribute="dtoDonor" method="post">
                    <div class="ContactForm mtop10">
                    <form:input type="hidden" path="donorContributionId" value="${donorContribution.donorContributionId}"></form:input>
                    <form:input type="hidden" path="campaignId" value="${campaign.campaignId}"></form:input>
                    <form:input type="hidden" path="schoolId" value="${campaign.schoolId}"></form:input>
					<%-- <ul>
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
											<!-- <input type="text" name="latitude" id="latitude" value="0.0" />
										<input type="text" name="longitude" id="longitude" value="0.0" /> -->
									</div>
								</div>
							</div>
						</li>
						 <li >
							<div class="contact-row" style="display: none;">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="zipCode" id="zipCode" type="text" placeholder="Postal / Zip Code" value="${donorContribution.zipCode}"/>
									</div>
								</div>
							</div>
						</li> 
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input path="affiliationType" id="affiliationType" type="text" placeholder="How did you hear about us"/>
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
					        <!-- <li><a onclick="donate(this,2);">$2</a></li> -->
					        <li><a onclick="donate(this,5);">$5</a></li>
					        <li><a onclick="donate(this,10);">$10</a></li> 
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
	        		<!-- <h2 id="donationAmtTxt">$100</h2> -->
	        	</div>
	        </div>
        </div>
        <div class="otherAmountWrapper">
	        <div class="other_amount">
		        <div class="contact-row">
					<div class="outer-field-wrap">
						<div class="outer-field">
							<form:input type="hidden" id="amount" path="amount" value="${donorContribution.amount}" />
							<input type="hidden" id="selectedAmount">
								<input type="text" name="otherAmount" id="otherAmount" onfocus="removeSelectedAmount();" onchange="setAnotherAmount();" maxlength="10" placeholder="Other Amount" value="${donorContribution.amount}" autocomplete="off">
						</div>
					</div>
				</div>
				<div class="contact-row">
					<div class=" payment_type">
	                  <!-- <label>Payment Frequency:</label> -->
		                  
		                  <div class="radio_payment ">
		             <input type="radio" name="group1" value="OneTime" id="check-3" checked="" > <label for="check-3">One Time</label>
		            <span id="check4"> <input type="radio" name="group1" value="Month" id="check-4" > <label for="check-4">Monthly</label></span>
		            <span id="check5">  <input type="radio" name="group1" value="Year" id="check-5" > <label for="check-5">Annual</label></span>
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
				
				 <div class="radio_payment radio_payment-new" style="display: none;">
		             <input type="radio" name="iPledge" value="N" id="check-1" checked=""> <label for="check-1">Ready to Pay</label>
		             <!-- <input type="radio" name="iPledge" value="Y" id="check-2"> <label for="check-2">I Pledge</label> -->
		        </div>
				
		</div>							
		<div class="btns-outer mrg_btm25">
			<input type="button" value="Pay Now" class="submit-btn fl"	id="demo_5" onclick="submitDonorForm(1);"/>
			<p class="cont-or"></p>
			<!-- <input type="button" value="Make a Pledge" class="submit-btn fl bgnone-bdrgrn"	id="cancelButton" onclick="hideDonateFrom();" /> -->
			<input type="button" value="Make a Pledge" class="submit-btn fl bgnone-bdrgrn"	id="cancelButton" onclick="submitDonorForm(2);" />
		</div>
		
		
		
		<input type="hidden" id="tempDonorId" name="tempDonorId" value="0">
        			</form:form>
                        
                    </div>
                
            </div>
            </c:if>
            
            <!-- dntSnd -->
		<div class="dntSnd">
				<div class="content_inner">
					<p>What do academic decline, poverty, and juvenile crime all have in common?</p>
					<p>If you guessed emotional stress as a root cause, you’d be right.</p>
					<ul>
						<li>
							<h3>Academic Decline</h3>
							<div class="dntSndIn">
								<h5>“And the tests again show large achievement gaps between the nation’s white and minority students as well as between poor and affluent children, an indication that the nation’s disadvantaged students are…</h5>
								<h6>U.S. student performance slips on national test</h6>
								<p>– The Washington Post</p>
							</div>
						</li>
						<li>
							<h3>Poverty</h3>
							<div class="dntSndIn">
								<h5>“For the first time in recent history, a majority of students in U.S. public schools are low income….It’s a continuation of a trend that’s been building for years and a “defining moment”…</h5>
								<h6>New Milestone: Majority of Public School Students Now Considered Low-Income</h6>
								<p>– Education Week</p>
							</div>
						</li>
						<li>
							<h3>Juvenile Crime</h3>
							<div class="dntSndIn">
								<h5>“Those who are unnecessarily forced out of school become stigmatized and fall behind in their studies; many eventually decide to drop out of school altogether, and many others commit crimes in their communities.”</h5>
								<h6>Fact Sheet: How Bad is the School-to-Prison Pipeline?</h6>
								<p>-Tavis Smiley Reports, PBS</p>
							</div>
						</li>
						<li>
							<h3>Emotional Stress as a Root Cause</h3>
							<div class="dntSndIn">
								<h5>“Yet scientists in recent years have been uncovering potentially treatable factors, such as chronic stress that likely help keep people at a low socioeconomic status (SES) by impairing their cognitive abilities.”</h5>
								<h6>Poverty and Cognition: How the Poor Get Poorer</h6>
								<p> – The Dana Foundation</p>
							</div>
						</li>
					</ul>
				</div>
			</div>
			
		
		<!-- dntthird -->
		<div class="dntthird">
				<div class="content_inner">
					<h6>However what you might not know is how these outcomes can be prevented with a simple intervention.</h6>
					<h5>What if every $100 spent today on children saved thousands of dollars a few years from now?</h5>
					<div class="dntthirdIn">
						<div class="dntthirdIn-left">
							<p> However what you might not know is how these outcomes can be prevented with a simple intervention.</p>
							<p>What if every $100 spent today on children saved thousands of dollars a few years from now?</p>
							<p>Inner Explorer has developed a solution that is simple, scalable, and sustainable. It works!  Social emotional competence in children is called ‘Readiness to Learn’ and is more predictive of life success than even IQ! Readiness can be fostered through daily mindfulness practices, leading to less stress, better school performance and improved life outcomes.</p>
							<p>Our programs provide daily 10-minute mindfulness practices, streamed into the classroom on a web-enable device. The teacher simply presses ‘play’ and participates with students. This unique approach allows everyone in the classroom to benefit, even the teachers!</p>
						</div>
						
						<div class="dntthirdIn-right">
							<p>For only $100 per school results show:</p>
							<ul>
								<li>10-30% improvement in grades (Reading, Math, Science, Social Studies)</li>
								<li>50% reduction in behavior problems including bullying and suspensions</li>
								<li>43% reduction in teacher’s stress</li>
								<li>Improved mental health, wellbeing, sleep quality, resilience and compassion</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
            
            
                
            </div>
        </div>
        <!--about_us ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends-->
    

     
</div>



	<div id="principalDetailsPopUp" style="display: none" class="getstartForm_teacher margin-top-zero">
		<form action="principalDetails" id="principalDetailsForm" name="principalDetailsForm" method="post" class="register-principal">
		<h3 class="migChngPass">Enter Principal Details</h3>
			<ul id="principalDetails">
               
              </ul>
              <input type="hidden" id="emailCount" name="emailCount">
               <input type="hidden" id="donorEmail" name="donorEmail">
              
			<input type="button" value="SEND PROMO CODE" class="change_trackbtn_qus" onclick="submitEmailFrom();">
		</form>
	</div>

       
				</div>
                
                 <!--TAB 2 ENDS-->
                <!--TAB 3 STARTS-->
                <div id="tab3" style="display:none;" >
                <div class="container" id="contentNew">
                   <div class="schools_contacts_listing">
                <div id="contentTab3"></div>
                </div></div>
      
		        
                
                
                 </div>
                 <!--TAB 3 ENDS-->
                
                </div>
               

            </div>
        </div>
            <!--misc tabs end-->
            
        </div>
        <!--brow_don_camp ends--> 
        
        <!--inner_header ends--> 
        
    </div>
    <!--inner_wrapper ends--> 
</div>

<div id="uniqueDonations" style="display:none; width: 1100px;">
							<div class="container" style="width: 95%">
							<h3>Donations Details</h3>
								<div class="ur_grid_new_fd" style="margin:0 0 0 0;">
									<table class="table table-striped table-hover table-bordered" id="sample_6">
									<thead>
										<tr>
											<th>Campaign Name</th>
											<th>Amount</th>
											<th>Payment Type</th>
											<th>Recurring Type</th>
											<th>Payment Date</th>
											<th>Action</th>
										</tr>
										</thead>
										<tbody>

										</tbody>

									</table>


								</div>
							</div>
                </div>

	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
	<%@include file="../footer.jsp"%>
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/dateFormat.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/jquery.dataTables.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
	<script src="<%=request.getContextPath()%>/NewStyles/js/table-managed.js"></script>
	
	<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>

<!--tab start --> 
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script>
<script type="text/javascript">
$(document).ready(function() {     
	
});
</script>
<script language="javascript">
				function showTab(current,max){
					//location.reload();
					for (i=1;i<=max;i++){
					getMyHTMLElement('tab' + i).style.display = 'none';
					getMyHTMLElement('mtab' + i).className = '';
					}
					getMyHTMLElement('tab' + current).style.display = '';
					getMyHTMLElement('mtab' + current).className = 'selected';
					
					if(current==2){
						programsInNeed();
					}
					if(current==3){
						favoritePrograms();
					}
					
					}
				</script> 
<!--tab end -->
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
  <script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
    });
    
function donationsList(schoolId, campType){
	$("#sample_6").dataTable().fnDestroy();
	var action ='--';
	  var url='<%=request.getContextPath()%>/donor/getSchoolDonations/'+schoolId+'/'+campType;
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			cache:false,
			success:function(response){
				var records='';
				
				records+='<thead><tr><th><strong>Campaign Name</strong></th><th><strong>Amount</strong></th>'+
				'<th><strong>Payment Type</strong></th>'+
				'<th><strong>Recurring Type</strong></th>'+
				'<th><strong>Payment Date</strong></th>'+
				'<th><strong>Action</strong></th>'+
				'</tr></thead><tbody>';
				
				
				$.each(response,function(index,value){
					if(value.pamentType=='Recurring'){
						if(value.isCancelled != 'Y'){
							action = '<a onclick=cancelPayment('+value.donationId+'); style="cursor:pointer;"> Cancel </a>';
						}
					}
					records+='<tr><td><span class="fd_span">'+value.campaignName+'</span></td>'
					+'<td><span class="fd_span">'+value.amount+'</span></td>'
					+'<td><span class="fd_span">'+value.pamentType+'</span></td>'
					+'<td><span class="fd_span">'+value.reccuringType+'</span></td>'
					+'<td><span class="fd_span">'+value.paymentDate+'</span></td>'
					+'<td><span class="fd_span">'+action+'</span></td>'
					+'</tr>';
				});
				records+='</tbody>';
				$("#sample_6").html(records);
				$("#sample_6").dataTable({"aLengthMenu": [[5, 15, 20, -1],[5, 15, 20, "All"] ],"iDisplayLength": 15});
				  $("#sample_6").attr("style","width:100%");
				 $.fancybox({
				     'autoScale': true,
				     'autoDimensions': true,
				     'centerOnScroll': true,
				     'href' : '#uniqueDonations'
				  });
				}
		});
}

function cancelPayment(donationId){
	 var url='<%=request.getContextPath()%>/contributer/cancelSubscription/'+donationId;
		$.ajax({
			url:url,
			method:'GET',
			async :false,
			cache:false,
			success:function(response){
				if(response=="Y"){
				location.reload(true);
				}
				}
		});
}

function setFavorite(campId){
	var url = '<%=request.getContextPath()%>';
	$.ajax({
		url : url+'/contributer/setFavorite',
		data:{campId:campId},
		success : function(result) {
			if(result){
				//$("#fav-"+schoolId).removeAttr("onclick");
				$("#fav-"+campId).removeClass('fav-sel-un');
				$("#fav-"+campId).addClass('fav-sel-un-active');
			}
			else{
				$("#fav-"+campId).removeClass('fav-sel-un-active');
				$("#fav-"+campId).addClass('fav-sel-un');
			}
		}
	});
}
function setFavoriteNew(campId){
	var url = '<%=request.getContextPath()%>';
	$.ajax({
		url : url+'/contributer/setFavorite',
		data:{campId:campId},
		success : function(result) {
			if(result){
				//$("#fav-"+schoolId).removeAttr("onclick");
				$("#favNew-"+campId).removeClass('fav-sel-un');
				$("#favNew-"+campId).addClass('fav-sel-un-active');
			}
			else{
				$("#favNew-"+campId).removeClass('fav-sel-un-active');
				$("#favNew-"+campId).addClass('fav-sel-un');
			}
		}
	});
	favoritePrograms();
}
function programsInNeed(){
	$("#searchKeyword").val("");
	var url='<%=request.getContextPath()%>/donor/getAllCampaigns';
	$.ajax({
	url:url,
	method:'GET',
	async :false,
	cache:false,
	success:function(response){
		if(response.modelMap.campaign.length==0){
			$("#contentTab2").html("<p class='noact-camp'>No Active Campaign Found</p>");
		}
		else{ 
	var htmlContent = '<ul>';
	$.each(response.modelMap.campaign,function(index,value){
	htmlContent += '<li>'+
	'<div class="schl_contcs_colum_listing">'+
	'<h3>'+value.schoolName+'</h3>'+
		'<div class="schools_logos">';
		if(typeof value.schoolLogo ==='undefined'){
			htmlContent +='<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>';
		}
		else{
			htmlContent +='<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/'+value.schoolLogo+'"  alt=""/>';
		}
		htmlContent +='</div>'+
			'<h3 class="funding_margin">Funding Status</h3>'+
			'<div class="content_inner">'+
				'<div class="tar_container mbtm0">'+
					'<div class="tar_wrapper">'+
						"<input type='hidden' value='"+value.totalCampAmount+"' id='"+'totalCampaignAmount'+value.campaignId+"'>"+
							"<input type='hidden' value='"+value.schoolContribution+"' id='"+'schoolContributionTotal'+value.campaignId+"'>"+
							"<input type='hidden' value='"+value.donorContribution+"' id='"+'donorContributionTotal'+value.campaignId+"'>"+
							'<div class="tar_container mbtm0">'+
								'<div class="tar_wrapper_camp">'+
									'<div class="range_wrpr">'+
										'<div class="progress" style="border: 5px solid #dadada; border-radius:35px; overflow: hidden; ">'+
											'<div class="progress-bar progress-bar-warning pinpoint" id="contributeSchoolFirst'+value.campaignId+'" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">'+
											'</div>'+
											'<div class="progress-bar progress-bar-danger pinpoint" role="progressbar" id="donorContributedAmount'+value.campaignId+'" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff;">'+
											'</div>'+
											'<div class="progress-bar progress-bar-success pinpoint" id="needAssistanceSecond'+value.campaignId+'" role="progressbar" style="border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;">'+
												'<div class="pinpoint-txt">'+
													'<div class="sch-contri">Target</div>'+
														'<div class="sch-contri-amt">$'+value.totalCampAmount+'</div>'+
												'</div>'+
											'</div>'+
											'<div class="progress-bar progress-bar-overload pinpoint" role="progressbar" id="donorContributedAmountOverload'+value.campaignId+'" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;">'+
											'</div>'+
										'</div>'+
									'</div>'+
								'</div>'+
							'</div>'+
							'<div class="clr"></div>'+
								'<div class="fullrow txtcenter_align mrg_tp50 mrg_btm15">'+
								'</div>'+
						'</div>'+
					'</div>'+
				'</div>';
				/* if(value.favorite == 'Y'){
				htmlContent +='<div class="fav-sel-un-active" id="fav-'+value.campaignId+'">'+
									'<a href="javascript:;" onclick="setFavorite('+value.campaignId+');">Set as Favorite</a>'+
							'</div>';
				}
				else{
					htmlContent +='<div class="fav-sel-un" id="fav-'+value.campaignId+'">'+
									'<a href="javascript:;" onclick="setFavorite('+value.campaignId+');">Set as Favorite</a>'+
								'</div>';
					} */
					htmlContent +='<form action="camp">'+
					'<div class="btns-outer mtop20">'+
						'<input class="submit-btn" type="submit" value="join us">'+
						'<input name="id" value="'+value.campaignId+'" type="hidden"/>'+
					'</div>'+
								'</form>'+
				'</div>'+
			'</li>';
			});
			htmlContent += '</ul>';
	$("#contentTab2").html(htmlContent);
$.each(response.modelMap.campaign,function(index,value){
var firstValId=value.campaignId;
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
});
}
	}
});
}

function favoritePrograms(){
	$("#searchKeyword").val("");
	var url='<%=request.getContextPath()%>/donor/getAllFavCampaigns';
	$.ajax({
	url:url,
	method:'GET',
	async :false,
	cache:false,
	success:function(response){
	 	if(response.modelMap.campaign.length==0){
			$("#contentTab3").html("<p class='noact-camp'>No Active Campaign Found</p>");
		}
		else{ 
	var htmlContent = '<ul>';
	$.each(response.modelMap.campaign,function(index,value){
	/* if(value.favorite == 'Y'){ */
		htmlContent += '<li>'+
		'<div class="schl_contcs_colum_listing">'+
		'<h3>'+value.schoolName+'</h3>'+
			'<div class="schools_logos">';
			if(typeof value.schoolLogo ==='undefined'){
				htmlContent +='<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>';
			}
			else{
				htmlContent +='<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/'+value.schoolLogo+'"  alt=""/>';
			}
			htmlContent +='</div>'+
				'<h3 class="funding_margin">Funding Status</h3>'+
				'<div class="content_inner">'+
					'<div class="tar_container mbtm0">'+
						'<div class="tar_wrapper">'+
							"<input type='hidden' value='"+value.totalCampAmount+"' id='"+'totalCampaignAmountFav'+value.campaignId+"'>"+
								"<input type='hidden' value='"+value.schoolContribution+"' id='"+'schoolContributionTotalFav'+value.campaignId+"'>"+
								"<input type='hidden' value='"+value.donorContribution+"' id='"+'donorContributionTotalFav'+value.campaignId+"'>"+
								'<div class="tar_container mbtm0">'+
									'<div class="tar_wrapper_camp">'+
										'<div class="range_wrpr">'+
											'<div class="progress" style="border: 5px solid #dadada; border-radius:35px; overflow: hidden; ">'+
												'<div class="progress-bar progress-bar-warning pinpoint" id="contributeSchoolFirstFav'+value.campaignId+'" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">'+
												'</div>'+
												'<div class="progress-bar progress-bar-danger pinpoint" role="progressbar" id="donorContributedAmountFav'+value.campaignId+'" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff;">'+
												'</div>'+
												'<div class="progress-bar progress-bar-success pinpoint" id="needAssistanceSecondFav'+value.campaignId+'" role="progressbar" style="border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;">'+
													'<div class="pinpoint-txt">'+
														'<div class="sch-contri">Target</div>'+
															'<div class="sch-contri-amt">$'+value.totalCampAmount+'</div>'+
													'</div>'+
												'</div>'+
												'<div class="progress-bar progress-bar-overload pinpoint" role="progressbar" id="donorContributedAmountOverloadFav'+value.campaignId+'" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;">'+
												'</div>'+
											'</div>'+
										'</div>'+
									'</div>'+
								'</div>'+
								'<div class="clr"></div>'+
									'<div class="fullrow txtcenter_align mrg_tp50 mrg_btm15">'+
									'</div>'+
							'</div>'+
						'</div>'+
					'</div>';
					/* if(value.favorite == 'Y'){
					htmlContent +='<div class="fav-sel-un-active" id="favNew-'+value.campaignId+'">'+
										'<a href="javascript:;" onclick="setFavoriteNew('+value.campaignId+');">Set as Favorite</a>'+
								'</div>';
					}
					else{
						htmlContent +='<div class="fav-sel-un" id="favNew-'+value.campaignId+'">'+
										'<a href="javascript:;" onclick="setFavoriteNew('+value.campaignId+');">Set as Favorite</a>'+
									'</div>';
						} */
						htmlContent +='<form action="camp">'+
						'<div class="btns-outer mtop20">'+
							'<input class="submit-btn" type="submit" value="join us">'+
							'<input name="id" value="'+value.campaignId+'" type="hidden"/>'+
						'</div>'+
									'</form>'+
					'</div>'+
				'</li>';
	/* } */
	
			});
			htmlContent += '</ul>';
	$("#contentTab3").html(htmlContent);
$.each(response.modelMap.campaign,function(index,value){
var firstValId=value.campaignId;
var schoolConhtribution = $("#schoolContributionTotalFav"+firstValId).val();
var totalAmount = $("#totalCampaignAmountFav"+firstValId).val();
var totalDonationAmount = $("#donorContributionTotalFav"+firstValId).val();
var resultPer1 = (schoolConhtribution * 100/ totalAmount);
var resultPer2 = (totalDonationAmount * 100/ totalAmount);
if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
resultPer2 = 100-resultPer1-1;
var resultPer3 = (100-(resultPer1+resultPer2)-1);
}
else{
var resultPer3 = 100-(resultPer1+resultPer2);
}
resultPer1 = resultPer1.toFixed()+"%";
resultPer2 = resultPer2.toFixed()+"%";
resultPer3 = resultPer3.toFixed()+"%";
$('#contributeSchoolFirstFav'+firstValId).width(resultPer1);
$('#contributeSchoolFirstFav'+firstValId).addClass("xtra_padding");
$('#donorContributedAmountFav'+firstValId).width(resultPer2);
$('#donorContributedAmountFav'+firstValId).addClass("xtra_padding");
$('#needAssistanceSecondFav'+firstValId).width(resultPer3);
if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
$('#donorContributedAmountOverloadFav'+firstValId).width("1%");
}
$('#needAssistanceSecondFav'+firstValId).addClass("xtra_padding");
});
}
}
});
}


function getSearchContent(){
	
    var searchKeyword = $("#searchKeyword").val().trim();
 if(searchKeyword!=""){
    var url='<%=request.getContextPath()%>/donor/searchCampaign';
    $.ajax({
           url:url,
           method:'GET',
           async :false,
           data:{searchKeyword:searchKeyword},
           success:function(response){
        	  // alert("response = "+response.modelMap.campaign);
                 if(response != null){
                	 var htmlContent = '<ul>';
                	 $.each( response.modelMap.campaign, function(index,value) {
                			htmlContent += '<li>'+
                			'<div class="schl_contcs_colum_listing">'+
                			'<h3>'+value.schoolName+'</h3>'+
                				'<div class="schools_logos">';
                				if(typeof value.schoolLogo ==='undefined'){
                					htmlContent +='<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/default-school-logo.png"  alt=""/>';
                				}
                				else{
                					htmlContent +='<img src="<%=request.getContextPath()%>/NewStyles/images/school-profile/'+value.schoolLogo+'"  alt=""/>';
                				}
                				htmlContent +='</div>'+
                					'<h3 class="funding_margin">Funding Status</h3>'+
                					'<div class="content_inner">'+
                						'<div class="tar_container mbtm0">'+
                							'<div class="tar_wrapper">'+
                								"<input type='hidden' value='"+value.totalCampAmount+"' id='"+'totalCampaignAmountSea'+value.campaignId+"'>"+
                									"<input type='hidden' value='"+value.schoolContribution+"' id='"+'schoolContributionTotalSea'+value.campaignId+"'>"+
                									"<input type='hidden' value='"+value.donorContribution+"' id='"+'donorContributionTotalSea'+value.campaignId+"'>"+
                									'<div class="tar_container mbtm0">'+
                										'<div class="tar_wrapper_camp">'+
                											'<div class="range_wrpr">'+
                												'<div class="progress" style="border: 5px solid #dadada; border-radius:35px; overflow: hidden; ">'+
                													'<div class="progress-bar progress-bar-warning pinpoint" id="contributeSchoolFirstSea'+value.campaignId+'" role="progressbar" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 10px 0px 0px 10px;">'+
                													'</div>'+
                													'<div class="progress-bar progress-bar-danger pinpoint" role="progressbar" id="donorContributedAmountSea'+value.campaignId+'" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff;">'+
                													'</div>'+
                													'<div class="progress-bar progress-bar-success pinpoint" id="needAssistanceSecondSea'+value.campaignId+'" role="progressbar" style="border-top: 5px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0;">'+
                														'<div class="pinpoint-txt">'+
                															'<div class="sch-contri">Target</div>'+
                																'<div class="sch-contri-amt">$'+value.totalCampAmount+'</div>'+
                														'</div>'+
                													'</div>'+
                													'<div class="progress-bar progress-bar-overload pinpoint" role="progressbar" id="donorContributedAmountOverloadSea'+value.campaignId+'" style="border-top: 5px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;">'+
                													'</div>'+
                												'</div>'+
                											'</div>'+
                										'</div>'+
                									'</div>'+
                									'<div class="clr"></div>'+
                										'<div class="fullrow txtcenter_align mrg_tp50 mrg_btm15">'+
                										'</div>'+
                								'</div>'+
                							'</div>'+
                						'</div>';
                						/* if(value.favorite == 'Y'){
                						htmlContent +='<div class="fav-sel-un-active" id="favNew-'+value.campaignId+'">'+
                											'<a href="javascript:;" onclick="setFavoriteNew('+value.campaignId+');">Set as Favorite</a>'+
                									'</div>';
                						}
                						else{
                							htmlContent +='<div class="fav-sel-un" id="favNew-'+value.campaignId+'">'+
                											'<a href="javascript:;" onclick="setFavoriteNew('+value.campaignId+');">Set as Favorite</a>'+
                										'</div>';
                							} */
                							htmlContent +='<form action="camp">'+
                							'<div class="btns-outer mtop20">'+
                								'<input class="submit-btn" type="submit" value="join us">'+
                								'<input name="id" value="'+value.campaignId+'" type="hidden"/>'+
                							'</div>'+
                										'</form>'+
                						'</div>'+
                					'</li>';
                		
                     });
                	htmlContent += '</ul>';
                	$("#contentTab2").html(htmlContent);
                	$.each(response.modelMap.campaign,function(index,value){
                		var firstValId=value.campaignId;
                		var schoolConhtribution = $("#schoolContributionTotalSea"+firstValId).val();
                		var totalAmount = $("#totalCampaignAmountSea"+firstValId).val();
                		var totalDonationAmount = $("#donorContributionTotalSea"+firstValId).val();
                		var resultPer1 = (schoolConhtribution * 100/ totalAmount);
                		var resultPer2 = (totalDonationAmount * 100/ totalAmount);
                		if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
                		resultPer2 = 100-resultPer1-1;
                		var resultPer3 = (100-(resultPer1+resultPer2)-1);
                		}
                		else{
                		var resultPer3 = 100-(resultPer1+resultPer2);
                		}
                		resultPer1 = resultPer1.toFixed()+"%";
                		resultPer2 = resultPer2.toFixed()+"%";
                		resultPer3 = resultPer3.toFixed()+"%";
                		$('#contributeSchoolFirstSea'+firstValId).width(resultPer1);
                		$('#contributeSchoolFirstSea'+firstValId).addClass("xtra_padding");
                		$('#donorContributedAmountSea'+firstValId).width(resultPer2);
                		$('#donorContributedAmountSea'+firstValId).addClass("xtra_padding");
                		$('#needAssistanceSecondSea'+firstValId).width(resultPer3);
                		if(Number(totalDonationAmount)>(Number(totalAmount)-Number(schoolConhtribution))){
                		$('#donorContributedAmountOverloadSea'+firstValId).width("1%");
                		}
                		$('#needAssistanceSecondSea'+firstValId).addClass("xtra_padding");
                		});
                        
                  }
                 else{
                	 programsInNeed();
                 }
                  
           }
           
    });  
 }
 if(searchKeyword==""){
    location.reload();
 }
    
}

  </script>
  
  
  <script type="text/javascript">

$(document).ready(function() {  
	
	$("#amount").val(100);
	$.format = DateFormat.format;
	//$("#donateForm").hide();
	//$("#donateHereButton").show();
	
	 $("#header").sticky({ topSpacing: 0 });
	 
	 $("#login").click(function(e) {
	        $(".login_panel").toggle();
	        e.stopPropagation();
	    });

	    $(document).click(function(e) {
	        if (!$(e.target).is('.login_panel, .login_panel *')) {
	            $(".login_panel").hide();
	        }
	    });
	
var schoolConhtribution = "${campaign.schoolContribution}";
	
	var totalAmount = "${campaign.amount}";
	
	var totalDonationAmount = "${campaign.donorContribution}";
	
	var clientDate = $.format.date(new Date(), 'MM/dd/yyyy')

	$("#totalDonationRaised").text("$"+parseInt(totalDonationAmount)+" raised till "+clientDate);
	
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
	 
	 
	 $.validator.addMethod("amountRegex", function(value, element) {
			return ($("#otherAmount").val()!='' || $("#amount").val()!='');
    }, "Please enter amount.");

	$.validator.addMethod("nameRegex", function(value, element) {
        return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
    }, "Field must contain letters only.");
	
	
	$.validator.addMethod("amountZero", function(value, element) {
        return ($("#amount").val()!=0 || $("#amount").val()!=0.00);
    }, "Please enter amount greater than zero.");
	
	
	$.validator.addMethod("amountValid", function(value, element) {
        return this.optional(element) || /^0$|^[1-9]\d*$|^\.\d+$|^0\.\d*$|^[1-9]\d*\.\d*$/i.test(value);
    }, "Field must contain number only.");
	
	
	
	jQuery.validator.addMethod("notEqual", function(value, element) {
		var status = true;
		$('[id^=principalEmail]').each( function( index, el ){
			if(($( el ).val() == value) && $( el ).attr("id") != $(element).attr("id") ){
				status = false;
			}
		});
		  return this.optional(element) || status;
		}, "Please use unique email address.");
    
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
        		/* amountValid: true */
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
     		maxlength : 20
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
            		form.submit();
        }
    });
		
    
    
    $('.register-principal').validate({
        errorElement: 'span', //default input error message container
        errorClass: 'help-block', // default input error message class
        focusInvalid: false, // do not focus the last invalid input
        //ignore: "",
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
    });
                	 
   });
   
/* function getStudentAddressLatLong(){
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

google.maps.event.addDomListener(window, 'load', getStudentAddressLatLong); */ 

function donate(ele,value){
	
	$("#amount-error").hide();
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
		//$("#donationAmtTxt").text("$"+selectedAmount);
		$("#otherAmount").val("");

	
	
}

function removeSelectedAmount(){
	
	//alert("d");
	//alert($("#otherAmount").val());
	$("#amount").val($("#otherAmount").val());
	
	$('a[style*="background: #02a451"]').removeAttr("style");
	//$(ele).attr("style","background: #02a451;");
	
}
function setAnotherAmount() {
	var otherAmount = $("#otherAmount").val();
	$("#amount").val(otherAmount);
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


function submitDonorForm(paymentType){
	if(paymentType == 1){
		if($("#donationForm").valid()){
				
    var otherAmount=$("#amount").val();
	var otherAmount1= Number(otherAmount).toFixed(2);
	//$("#otherAmount").val(otherAmount1);
	$("#amount").val(otherAmount1);
			            $("#donationForm").submit();
			     
				
				}
	}
	else{
		if($("#donationForm").valid()){
			
				    $("#check-1").val("Y");
				    var otherAmount=$("#amount").val();
	var otherAmount1= Number(otherAmount).toFixed(2);
	//$("#otherAmount").val(otherAmount1);
	$("#amount").val(otherAmount1);
			            $("#donationForm").submit();
			     
				
				}
	}
	
	
	
}
function showPaymentOption(){
	if($("#principalEmailChk").is(':checked')){
		$("#check4").hide();
		$("#check5").hide();
	}
	else
		{
		$("#check4").show();
		$("#check5").show();
		}
}

function submitEmailFrom(){
	
	 	$("#principalDetailsForm").validate({ ignore: []});
	$("#principalDetailsForm").validate();
	
	$('[id^=principalName_]').each( function( index, el ) {
	    $( el ).rules('add', {
    	    required: true ,
    	    maxlength:40
    	});
	});
	$('[id^=principalEmail_]').each( function( index, el ) {
	    $( el ).rules('add', {
    	    required: true,
    	    email: true,
    	   notEqual:true
    	});
	}); 
	
	if($("#principalDetailsForm").valid()){ 
	
	var donorEmail=$("#email").val();
	$("#donorEmail").val(donorEmail);
	$.ajax({
	    type : 'POST',
	    url : '<%=request.getContextPath()%>/principalDetails',
	    data : $('#principalDetailsForm').serialize(),
	    success:function(result){
	    
		if(result!=0){
			
			$("#tempDonorId").val(result);
			
			var otherAmount=$("#amount").val();
			var otherAmount1= Number(otherAmount).toFixed(2);
			$("#otherAmount").val(otherAmount1);
			$("#amount").val(otherAmount1);

                   $("#donationForm").submit();
           

		}	
			
	    }
		});
	}
	
}

</script>
  
  
  
  
</body>
</html>
