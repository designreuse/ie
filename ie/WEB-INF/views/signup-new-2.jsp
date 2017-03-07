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
<title>Sign Up</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">	
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
</head>
<body>
<div class="wrapper">
	<%@include file="header.jsp" %>
		<section class="getStartSct mtop-5">
		<form:form  method="post" modelAttribute="dtoUser" enctype="multipart/form-data" action="savesignup" id="saveSignupForm" class="register-form" >
		<div class="steps_getstarted">
			<div class="container">
				<form:hidden path="subscriptionPlanId"/> 
				<div class="pracProgress_hdr">
				<h2>Get Started</h2>
				<div class="green_line_btm"></div>
				</div>
				<p>Before May 31st, register and get IE program at your school for 3 Years , Or Pay $100 to start a Campaign and get lifetime subscription.</p>
		       <div class="num_steps_getstarted">
		        <img id="stepsImage" src="<%=request.getContextPath()%>/NewStyles/images/get-started-step-1.png"  alt=""/>
		        </div>
		         <div class="enterscholl_info mbtm_20">
					<input type="button" value="ENTER YOUR SCHOOL INFO" class="esiBtn" id="enterSchoolInfo" onclick="showSchoolInfo();">
				</div>
				<div class="or_text" id="orId">
		        OR</div>
		        <div id="form1" class="containerSmall">
		        <div class="techForm">
							<label>Search:</label>
							<div class="step4-textInput">
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" placeholder="School Name/Address/Zip" name="schoolNameSearch" onchange="getSchoolInfo(this.value);" id="school_name">
										</div>
									</div>
								</div>
							</div>
							<input type="button" value="Go" class="search_btnicon">
				</div>
		        <div class="or-option" id="orOption">
		        <p id="noSchoolFoundMessage">Our Database is growing, We currently do not have data for this School, Please enter the details below.</p>
		        </div>
				<div class="clr"></div>
				<div class="getstartForm" id="schoolInfo">
				<label>School Setup</label>
				<input type="hidden" name="systemSchoolId" id="systemSchoolId"/>
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input placeholder="School Name*" path="schoolName" id="schoolName"/>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input  placeholder="Address*" path="address" id="address" />
										<input type="hidden" name="latitude" id="latitude" value="0.0" />
										<input type="hidden" name="longitude" id="longitude" value="0.0" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input  placeholder="ZipCode*" path="zipCode" id="zipCode" />
										<input type="hidden" name="stateShort" id="state_short" />
										<input type="hidden" name="state" id="state" />
									</div>
								</div>
							</div>
						</li>
						<li id="newSchoolLogo">
							<div class="getstart-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" id="disableImagePath" disabled placeholder="Add Logo"/>
									</div>
								</div>
							</div>
							<div class="photoIcon"><div class="cam_upload"><form:input required="required" path="image" type="file" accept="image/*" id="imagePath" onchange="copyImageName();"/></div></div>
						</li>
						<li id="oldSchoolLogo" style=" margin-right:0px !important;">
						   	<div class="chang_logo">
					       		<div class="img_chnglogo">
					              	<img src="<%=request.getContextPath()%>/NewStyles/images/1440foundation.jpg" id="schoolSelectedLogo" alt=""/> 
					           	</div>
					            <div class="chng_btn">
					                  <input type="button" class="startBtn-table" value="Change Logo" onclick="changeLogo();">
					            </div>
					        </div>
						</li>
					</ul>
				</div>
				<div class="getstartForm" id="schoolSetupInfo">
				<label>Set Credentials</label>
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input placeholder="Email*" path="email" id="email" autocomplete="off" />
									</div>
								</div>
							</div>
						</li><br/>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:password placeholder="Password*" path="password" id="password" />
									</div>
								</div>
							</div>
						</li>
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="password" placeholder="Confirm Password*" name="confirmPassword" id="confirmPassword"/>
									</div>
								</div>
							</div>
						</li>
								<div style="position: relative; clear:both; padding-top: 15px; width: 100%; float: left;">
								<label name="tnc" id="tnc">
								<input type="checkbox" name="check" id="check" >
                       				  I agree to End User
			                        <a href="#term-condition"  class="fancybox">License</a>
			                         Agreement.<br>
			                        </label>
								</div>
						</li>
                  	</ul>
				</div>
				<div class="btns-outer mtop30 mbtm30" id="proceedStepTwo">
					<input type="button" value="PROCEED TO contact info" class="submit-btn" onclick="proceedToStepTwo();" />
				<a href="<%=request.getContextPath()%>/signup?planId=1" class="submit-btn">Cancel</a>
				</div>
				<div class="ur_grid" id="searchResult">
				<!-- <div id="noRecordFound"></div> -->
		        <table width="100%" border="0" cellspacing="0" cellpadding="0" id="recordFound">
		        <thead>
				    <tr>
				        <th class="txtcenter_align" width="20%">school logo</th>
				        <th width="30%">school name</th>
				        <th width="30%">address</th>
				        <th class="txtcenter_align" width="20%">action</th>
				    </tr>
		        </thead>
		    	<tbody id="schoolsRecordsFound">
				   
				</tbody>
				</table>
		        </div>
				</div>
				<div class="containerSmall">
				<div class="getstartForm" id="form2">
				<label>Contact Information</label>
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input placeholder="First Name*" path="firstName" id="firstName" class="ignore"/>
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input placeholder="Last Name" path="lastName" id="lastName" class="ignore"/>
									</div>
								</div>
							</div>
						</li>

 						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<form:input  placeholder="Mobile Number*" path="ownerMobile" id="ownerMobile" class="ignore"/>
									</div>
								</div>
							</div>
						</li> 
					</ul>
				<div class="btns-outer mtop30 mbtm30">
					<input type="button" value="START PROGRAM AT YOUR SCHOOL" class="submit-btn" onclick="proceedToStepThree();"/>
				</div>
				</div>
				</div>
					</div>
					<div id="form3">
			        <div class="tmh_tabs">
				        <ul style="text-align: center;">
				        <li id="mtab1" style="float:none; border:1px solid #ddd; display:inline-block">
						<p style="padding:10px;">Untill may 31st 2016, we are offering 3 year access to all of the programs, if you help us evaluate the beta platform.</p>
						<a href="javascript:showTab(1,2)" class="trailtab" style="background: #e1e1e1; color:#606872">Register Now &amp; Use it for 3 years</a>
						</li>
				        <li id="mtab2" style="float:none; border:1px solid #ddd; display:inline-block">
						<p style="padding:10px;">You can start a crowd funding campagin by donating $100, as a result you get life time membership.</p>
						<a href="javascript:showTab(2,2)" class="hutab" style="background: #e1e1e1;  color:#606872">Start a Campaign &amp; Get Lifetime Subscription</a>
						</li>
				        </ul>
				        
			        </div>
					 <div class="section_makpaymnt">
						<div class="programs_our" id="ourProg">
							<div class="titlebar_programms">
								<h4>Our Programs</h4>
								<div class="payable_amt">
								<input type="hidden" id="paymentType" name="paymentType" >
								<input type="hidden" id="selectedPrograms" name="uniqueProgramIds">
								<input type="hidden" id="paymentAmtInput" name="amount" value="${programs[0].programAmount}">
								</div>
							</div>
						</div>
							<div class="school_setup_wrapper" id="progDetail">

								<div class="school_setup_box ">
								<c:forEach items="${programs}" var="program" varStatus="programCount" begin="0" end="3">
								<c:if test="${programCount.count == 1}">
									<div class="img_setup program4" id="programImg_${program.programId}" onclick="hideProgramContent(${program.programId});">
										<div class="imgsetup_lg">
										<input type="hidden" id="programAmt_${program.programId}" value="${program.programAmount}">
											<img src="<%=request.getContextPath()%>/NewStyles/images/img${program.programId}.jpg" alt="" />
											<div class="overlay_setup" id="overlay_${program.programId}">
												 <p>${program.programDescDetail}</p> 
											</div>
										</div>
										<div class="check-box-absolute">
											<img alt="" src="<%=request.getContextPath()%>/NewStyles/images/tick-mark.png" id="check_${program.programId}"/>
										</div>
									</div>
								</c:if>
								<c:if test="${programCount.count != 1}">
 									<div class="img_setup program4" id="programImg_${program.programId}" onclick="showProgramContent(${program.programId});">
										<div class="imgsetup_lg">
										<input type="hidden" id="programAmt_${program.programId}" value="${program.programAmount}">
											<img src="<%=request.getContextPath()%>/NewStyles/images/img${program.programId}.jpg" alt="" />
											<div class="overlay_setup" id="overlay_${program.programId}">
												<p>${program.programDescDetail}</p> 
											</div>
										</div>
										<div class="check-box-absolute">
											<img alt="" src="" id="check_${program.programId}"/>
										</div>
									</div>
								</c:if>
								</c:forEach>
								</div>
							<c:forEach items="${programs}" var="program" varStatus="programCount" begin="0" end="3">
							<c:if test="${programCount.count == 1}">
								</c:if>
							<c:if test="${programCount.count != 1}">
								</c:if>
							</c:forEach>
							</div>
							<div id="tab2" style="display:none" align="center">
						<div class="containerSmall">
                            <div class="btns-outer mtop30">
                                <input type="button" onclick="proceedToStepFour();" value="Next" class="submit-btn" />
                            </div>
                            </div>
						</div>
							<div id="tab1" >
						     	<div class="containerSmall">
                            <div class="btns-outer mtop30">
                                <input type="button" onclick="proceedToStepFour();" value="Next" class="submit-btn" />
                            </div>
                            </div>
						     </div>
						</div>
					</div>

				</div>
				<div class="btns-outer mtop30" id="submitButton">
				</div>
				</form:form>
				<div class="getStarted-Social">
		</section>
</div>

<div id="term-condition" style="display: none;">
	<div class="product-page product-pop-up">
		<div class="row">
			<div class="col-md-12 col-sm-6 col-xs-3">
				<div class="product-main-image">
					<div id="message"></div>
						<div id="recorder" style="width:600px; font-size: 11px;">
							<!-- <b>We are the Innovation Accelerators</b> --><!-- <br><br> -->
								Welcome to the Inner Explorer website.  These Terms of Use and Conditions (“Terms”) govern your use of the Inner Explorer (“our”) website (“Site”).  Please read the terms in full before using our Site.  By accepting these Terms, or by using this Site, you agree to be legally bound by these Terms, and our Privacy Policy and Notice of Privacy Practices. If you do not agree to these terms, please do not use our Site.  We reserve the right to modify these Terms at any time without prior notice, and your use of the Site binds you to the changes made.  We do occasionally update these terms so please refer to them in the future.<br><br>
							<b>Access to Site</b><br>
								You will be able to access our Site without having to register any details with us.<br><br>
							<b>Use of Site</b><br>
								Our Site, images, data, text, audios, videos, photographs, custom graphics, logos, button icons, descriptions and all other material provided and the collection and compilation and assembly thereof are the exclusive property of Inner Explorer or its parent, and are protected by U.S. and international copyright laws.
The contents of our Site may be used for informational purposes only.  Any other use of such contents, including the reproduction, modification, distribution, transmission, republication, display or performance of the contents without our prior written consent is expressly forbidden.
Any other trademarks or service marks appearing anywhere on our Site are the property of their respective owners.  To the extent any product name or logo does not appear with a trademark (™) does not constitute a waiver of any and all intellectual property rights that Inner Explorer or its businesses has established in any of its products, features, or service names or logos.
You may not use, reproduce, modify, transmit, display, publish, sell, create derivative works, or distribute by any means, method, or process whatsoever, now known or hereafter developed, any content of this Site for commercial profit or gain.  Nothing in these Terms or on the Site shall be construed as conferring any intellectual property or other proprietary rights to You.  You agree to observe copyright and other applicable laws and may not use the content in any manner that infringes or violates the rights of any person or entity.  We hold all rights to the content on this website.
As a condition of your use of the Site, you will not use the Site, or any contents or services, for any purpose that is unlawful in any applicable jurisdiction where our Site are being used, or prohibited by these terms, conditions, and notices, and you agree to abide by the terms and conditions set forth in the “User Conduct” section. You may not use the Site contents or services in any manner that could damage, disable, overburden, or impair any of our equipment or interfere with any other party’s use and enjoyment of the Site, or any contents or services.  You may not attempt to gain access to any portion of the Site, or any of its contents or services, other than those for which you are authorized.
While every effort is made to ensure the timeliness and accuracy of the Site content and services, we  make no warranties either express or implied, and assume no liability or responsibility for the completeness, use, accuracy, reliability, correctness, timeliness or usefulness, of any of the results obtained from its use.
We make no representation or warranty, express or implied, with respect to the content of the Site, or links to other sites, including but not limited to accurateness, completeness, correctness, timeliness or reliability.  We make no representation or warranty regarding the merchantability or fitness for a particular purpose or use with respect to any content or services whatsoever that may be accessed through this Site, or the results to be obtained from using the Site.  We make no representation or warranty that the Site or content is free from defects or viruses.  Your use of external links and third-party websites is at your own risk and subject to the terms and conditions of use for such links and sites.
While every effort is made to ensure that all content provided on the Site does not contain computer viruses and/or harmful materials, you should take reasonable and appropriate precautions to scan for computer viruses or otherwise protect your computer and you should ensure that you have a complete and current backup of the applicable items on your computer.  We disclaim any liability for the need for services or replacing equipment or data resulting from your use of the Site.  While every effort is made to ensure smooth and continuous operation, we do not warrant the Site will operate error free.
<br><br>
<b>Site Uptime</b><br>
								We take all reasonable steps to ensure that our Site is available 24 hours every day, 365 days per year. However, websites do sometimes encounter downtime due to server and other technical issues. Therefore, we will not be liable if this Site is unavailable at any time.
Our Site may be temporarily unavailable due to issues such as system failure, maintenance or repair, or for reasons beyond our control. Where possible, we will try to give our users advance warning of maintenance issues, but shall not be obliged to do so.
<br><br>
<b>User Conduct</b><br>
								Any material you send or post to our Site shall be considered non-proprietary and non-confidential.  We do not collect or store any personally identifiable information about you while using our Site but please do not send any such information to us.  See also our Privacy Policy and Notice of Privacy Practices, which can be found here.
When using our Site, you shall not post or send to or from the Site:
(a) content for which you have not obtained all necessary consents;
(b) content that is discriminatory, obscene, pornographic, defamatory, liable to incite racial hatred, in breach of confidentiality or privacy, which may cause annoyance or inconvenience to others, which encourages or constitutes conduct that would be deemed a criminal offense, give rise to a civil liability, or otherwise is contrary to the law in any applicable jurisdiction where our Site is being used;
(c)  content which is harmful in nature including, and without limitation, computer viruses, Trojan horses, corrupted data, or other potentially harmful software or data.
We will fully cooperate with any law enforcement authorities or court order requiring us to disclose the identity or other details or any person posting materials to our Site in breach of the this Section.
You shall not use our Site while distracted or preoccupied, such as when operating a motor vehicle.  You should access our Site only with due regard for your own safety and the safety of others.
<br><br>
<b>Links to and from Third Party Websites</b><br>
								Any links furnished on our Site may allow you to leave our Site.  These third party websites are not under our control and we disclaim any responsibility for the contents of such linked sites or any link(s) contained in any such linked site(s) or any changes or updates to any of these sites.  We further disclaim any responsibility for any form of transmission received from any linked third party website or advertising.  If we provide these links to you, it is done simply as a convenience to you and inclusion of any link herein shall in no way be construed as an endorsement by us of the site(s). Additionally, we do not collect or process your credit/debit card payment information.  All payment data is collected and processed through a third party vendor.
If you would like to link to our Site, you may only do so on the basis that you link to, but do not replicate, any page of our Site, and subject to the following conditions:
(a) you do not in any way imply that we are endorsing any services or products unless this has been specifically agreed with us;
(b) you do not misrepresent your relationship with us or present any false information about us;
(c) you do not link from a website that is not owned by you; and
(d) your website does not contain content that is offensive, controversial, infringes any intellectual property rights or other rights of any other person or does not comply in any way with the law of the United States of America.
If you choose to link our website in breach of this Section, you shall fully indemnify us for any loss or damage suffered as a result of your actions.
<br><br>
<b>Disclaimers</b><br>
								All information on our Site is of a general nature and is furnished for your knowledge and understanding and as an informational resource only.  The documents and any related graphics published on this server could include technical inaccuracies or typographical errors.  Changes are periodically added to the information contained on our Site.  We may make improvements and/or changes to any of the products depicted or described herein at any time.  We expressly disclaim any responsibility or liability for any adverse consequences or damages resulting from your use of the Site or reliance on the information from either.
THE SITE IS PROVIDED ON AN “AS IS” AND “AS AVAILABLE” BASIS.  WE MAKE NO WARRANTIES, EXPRESS OR IMPLIED, REPRESENTATIONS OR ENDORSEMENTS WHATSOEVER WITH REGARD TO ANY PRODUCTS, INFORMATION OR SERVICE PROVIDED THROUGH THIS SITE, INCLUDING, TITLE, NON-INFRINGEMENT, OR ANY OTHER WARRANTY, CONDITION, GUARANTY, OR REPRESENTATION, WHETHER ORAL OR IN WRITING, OR IN ELECTRONIC FORM.
<br><br>
<b>Limitation of Liability</b><br>
								YOUR USE OF OUR SITE IS ENTIRELY AT YOUR OWN RISK. WE WILL NOT BE RESPONSIBLE TO YOU OR TO ANY THIRD PARTIES FOR ANY DIRECT OR INDIRECT, INCIDENTAL, CONSEQUENTIAL, SPECIAL, OR PUNITIVE DAMAGES OR LOSSES OR INJURY YOU MAY INCUR IN CONNECTION WITH YOUR USE OR INABILITY TO USE THE SITE OR THE PRODUCTS, OR YOUR RELIANCE ON OR USE OF THE SITE, THE INFORMATION, OR SERVICES PROVIDED, OR THAT RESULT FROM MISTAKES, OMISSIONS, INTERRUPTIONS, DELETIONS OR ANY FAILURE OF PERFORMANCE, OR ANY OF THE DATA OR OTHER MATERIALS TRANSMITTED THROUGH OR RESIDING ON OUR SITE, REGARDLESS OF THE TYPE OF CLAIM OR THE NATURE OF THE CAUSE OF ACTION, EVEN IF WE HAVE ADVISED OF THE POSSIBILITY OF SUCH DAMAGE OR LOSS.
<br><br>
<b>Indemnification</b><br>
								You agree to defend, indemnify, and hold us, our officers, directors, employees, volunteers, agents, licensors, and suppliers, harmless from and against any claims, actions or demands, liabilities and settlements including without limitation, reasonable legal and accounting fees, resulting from or alleged to result from, your use of and access to the Site or your violation of these Terms or your violation of any third party right, including without limitation any trademark, copyright or other proprietary or privacy right.
<br><br>
<b>Assignment</b><br>
								These Terms, and any rights and licenses granted hereunder, may not be transferred or assigned by you.
<br><br>
<b>Applicable Law</b><br>
								We make no representations that the content or the Site are appropriate or may be used or downloaded outside the United States. Access to the Site and/or the content may not be legal in certain countries outside the United States.  If you access the Site from outside the United States, you do so at your own risk and are responsible for compliance with the laws of the jurisdiction from which you access the website.
Our Site is created and controlled in the Commonwealth of Massachusetts, United States of America.  The Site, and its contents, and any disputes arising therefrom shall be construed and interpreted under the laws of the Commonwealth of Massachusetts, and applicable United States federal laws.  Use of our Site constitutes agreement of the user to the jurisdiction of the state and federal courts located therein.
Our Site is subject to the United States export control laws and regulations, and may be subject to export or import regulations in other countries. You agree to strictly comply with all such laws and regulations and acknowledge that you have the responsibility to obtain authorization to export, re-export, or import of any data on our Site, as may be required.
<br><br>
<b>Our Contact Information</b><br>
<p>Inner Explorer</p>
<p>430 Franklin Village Dr. #325</p>
<p>Franklin, MA, 02038</p>
<p>Phone: 888-466-9732</p>
<p>Email: info@innerexplorer.org</p>
<br><br>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div id="privacy" style="display: none;">
	<div class="product-page product-pop-up">
		<div class="row">
			<div class="col-md-12 col-sm-6 col-xs-3">
				<div class="product-main-image">
					<div id="message"></div>
						<div id="recorder" style="width:600px;">
							<b>We are the Innovation Accelerators</b><br><br>
								Our clients rely on us for guidance and leadership while navigating through toughest business challenges, primarily driven by technology change, competitive threats, regulatory forces or growth expectations. Execution of strategic initiatives require a unique skills involving both Art & Science, and our team is equipped with right tools, processes, and most importantly right mindset. We measure our success in degree of step-functional change in business results that we help create for our stakeholders.<br><br>
							<b>We help our Clients realize their vision in a pragmatic manner</b><br><br>
								Our clients tell us that our biggest differentiator is the way in which we collaborate across business, operations and technology disciplines, and seek a holistic approach to address the challenge at hand. Our mission always centers around finding ways to create right conditions for sustainable business results. We provide our clients with the most innovative yet practical approaches to their toughest challenges. Our team brings a unique set of skills to the table that allows us to get stuff done in a rightful manner. <br><br>
							<b>We harness the power of your organizations most valuable resource - People</b><br><br>
								Research shows a direct correlation between an organizations overall performance and engagement of its workforce. We help our clients in devising practical yet powerful ways to develop high performance work environment and drive innovation forward. We are practitioners & providers of generative solutions that allow our teams to gain alignment with Client teams in driving superior outcomes, no matter how complex the challenge is. <br><br>
								
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
<script src="<%=request.getContextPath()%>/js/countries.js"></script> 
<script language="javascript" type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/tab.js" ></script>
<script type="text/javascript">
	function showTab(current,max){
    	$('#progDetail').show();
    	$('#ourProg').show();
    	$('#paymentType').val(current);
		for (i=1;i<=max;i++){
		getMyHTMLElement('tab' + i).style.display = 'none';
		getMyHTMLElement('mtab' + i).className = '';
		}
		getMyHTMLElement('tab' + current).style.display = '';
		getMyHTMLElement('mtab' + current).className = 'selected';
		}
   function setProgramId(value,index,programId){
	   var selectedProg = $('#selectedPrograms').val();
	   if(value != ''){
	   		$('#programId_'+programId+'_'+index).val(programId);
	   }else{
		   $('#programId_'+programId+'_'+index).val('');
	   }
   }
   function copyImageName(){
	   var fullPath  = $("#imagePath").val();
	   if (fullPath) {
	         var startIndex = (fullPath.indexOf('\\') >= 0 ? fullPath.lastIndexOf('\\') : fullPath.lastIndexOf('/'));
	         var filename = fullPath.substring(startIndex);
	         if (filename.indexOf('\\') === 0 || filename.indexOf('/') === 0) {
	                 filename = filename.substring(1);
	         }
	         $("#disableImagePath").val(filename);
	}
   }
	jQuery(document).ready
	(function($){
		 $("#login").click(function(e) {
		        $(".login_panel").toggle();
		        e.stopPropagation();
		    });

		    $(document).click(function(e) {
		        if (!$(e.target).is('.login_panel, .login_panel *')) {
		            $(".login_panel").hide();
		        }
		    });
		    
		$.daisyNav();
	});
	function proceedToStepTwo(){
		$("#saveSignupForm").validate({ ignore: ".ignore"});
		$("#saveSignupForm").validate({ ignore: ".ignore1"});
		if($("#saveSignupForm").valid()){
	    	$('#form1').hide();
	    	$('#form2').show();
	    	$('#form3').hide();
	    	$('#stepsImage').attr('src','<%=request.getContextPath()%>/NewStyles/images/get-started-step-2.png');
		}
		
	}
	function proceedToStepThree(){
		$("#saveSignupForm").validate({ ignore: ".ignore1"});
		if($("#saveSignupForm").valid()){
	    	$('#form1').hide();
	    	$('#form2').hide();
	    	$('#form3').show();
	    	$('#stepsImage').attr('src','<%=request.getContextPath()%>/NewStyles/images/get-started-step-3.png');
		}
		
	}
	function proceedToStepFour(){
		var minContri = parseInt('${minContri}');
		var selectedProg = $('#selectedPrograms').val();
		if(selectedProg != ''){
			if($("#saveSignupForm").valid()){
				var contriAmount = $("#contriAmount").val();
				var doubleVal = "0";
				 if(contriAmount == ''){
					 $("#contriAmount").val(doubleVal);
				}
				 $("#saveSignupForm").submit();
				return true;
			}else{
				return false;
			}
		}else{
			alert("Please select a program first.");
			return false;
		}
		
	}
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script> 
<script type="text/javascript">
/*     $(function(){
      SyntaxHighlighter.all();
    }); */
	jQuery(document).ready
	(function($){

		$(".fancybox").fancybox();
		
		$.daisyNav();
		
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
var gbIndex = 0; 
function getSchoolInfo(searchSchool){
	var schoolExist = $('input[name="schoolNameSearch"]').valid()
	if(schoolExist==false){
		$("#noSchoolFoundMessage").text("");
		return false;
	}
	else{
		$("#noSchoolFoundMessage").text("Our Database is growing, We currently do not have data for this School, Please enter the details below.");
		if(searchSchool != ""){
			searchSchool = searchSchool.replace("'","''");
			$('#enterSchoolInfo').show();
			$('#orId').show();
			$('#orOption').hide();
			$('#schoolInfo').hide();
			$('#schoolSetupInfo').hide();
			$('#proceedStepTwo').hide();
			$('#schoolName').val('');
			$('#address').val('');
			$.ajax({
				url : "<%=request.getContextPath()%>/getDefaultSchoolsList",
				type : 'POST',
				data : {"schoolName":searchSchool},
				success : function(result) {
					$('#searchResult').show();
					$('#schoolsRecordsFound').html('');
					var contextPath = '<%=request.getContextPath()%>';
					if(result.length > 0){
						var records = '';
						gbIndex = 0;
					    $.each(result,function(index,value){
					    	records =records+'<tr><td class="txtcenter_align"><img src="'+contextPath+value.schoolLogo+'" width="38" id="selectSchoolImage'+value.schoolId+'" alt=""/></td>'+
					        '<td id="selectSchoolName'+value.schoolId+'">'+value.schoolName+'</td><td id="selectSchoolAddress'+value.schoolId+'">'+value.address+', '+value.city+', '+value.zipCode+', '+value.stateShort+'</td>'+
					        '<td class="txtcenter_align"><input type="button" value="Select" class="startBtn-table" id="selectSchool'+index+'" onclick="schoolSelected('+value.schoolId+','+index+');"></td>'+
					    '</tr>'; 
					    	gbIndex+=1;
					    });
					    $('#schoolsRecordsFound').html(records);
					   // $('#noRecordFound').html('');
					    $('#recordFound').show();
					} else{
						$('#orOption').show();
						$('#enterSchoolInfo').show();
						$('#orId').show();
						//$('#noRecordFound').html('<p>We are working hard to bring the mindful awareness to school near you.</p>');
						$('#recordFound').hide();
						//$('#schoolsRecordsFound').html('<tr><td>We are working hard to bring the mindful awareness to school near you.</td><td></td><td></td><td></td</tr>');
					}
				}
			});
		}else{
			$('#schoolName').val('');
			$('#address').val('');
			//$('#enterSchoolInfo').removeAttr("disabled");
			$('#searchResult').hide();
			$('#schoolInfo').hide();
			$('#schoolSetupInfo').hide();
			$('#enterSchoolInfo').show();
			$('#orId').show();
			$('#orOption').hide();
			$('#proceedStepTwo').hide();
		}
	}
	
}
function schoolSelected(schoolId,index){
	
	
	$('#orId').hide();
	$('#enterSchoolInfo').hide();
	$('#systemSchoolId').val(schoolId);
	$('#schoolName').val($('#selectSchoolName'+schoolId).html());
	$('#address').val($('#selectSchoolAddress'+schoolId).html());
	$('#schoolSelectedLogo').attr('src',$('#selectSchoolImage'+schoolId).attr('src'));
	$('#newSchoolLogo').hide();
	$('#oldSchoolLogo').show();
	$('#selectSchool'+index).attr('style','background: #d8dce3');
	$('#schoolSetupInfo').show();
	$('#proceedStepTwo').show();
	$('#schoolInfo').show();
	for(var i=0;i<gbIndex;i++){
		if(i != index){
			$('#selectSchool'+i).attr('style','background: #01a34e');
		} /* else{
			$('#selectSchool'+i).attr('style','background: #d8dce3');
		}  */
	}
	getStudentAddressLatLong();
	
	$(window).scrollTop(0);
}
function showSchoolInfo(){
	/* $('#schoolName').val(''); */
	var school = $("#school_name").val();
	$('#schoolName').val(school);
	$('#address').val('');
	$('#schoolInfo').show();
	$('#schoolSetupInfo').show();
	$('#proceedStepTwo').show();
	$('#searchResult').hide();
	$('#newSchoolLogo').show();
	$('#oldSchoolLogo').hide();
	$('#systemSchoolId').val(0);
	$('#recordFound').hide();
	$("#noSchoolFoundMessage").text("");
}
function changeLogo(){
	$('#newSchoolLogo').show();
	$('#oldSchoolLogo').hide();
	$('#systemSchoolId').val(0);
}
function replaceLogo(){
	$('#newSchoolLogo').hide();
	$('#oldSchoolLogo').show();
	$('#disableImagePath').val('');
	$('#imagePath').val('');
	$('#systemSchoolId').val(0);
}
/* For getting Lat & Long of Student Address */
function getStudentAddressLatLong(){
    var homeAddress = document.getElementById('address');
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
var emailStatus = false;
                    function emailAlreadyCheck(email){
            			//var email = $("#email").val().trim();
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
var schoolNameStatus = false;
	function schoolAlreadyCheck(schoolName){
    //var email = $("#email").val().trim();
    	if(schoolName != ""){
        	$.ajax({
            	url : "<%=request.getContextPath()%>/check/availability/school",
            		method : 'POST',
            			headers: { 
            						'Content-Type':'application/json'
            					},
            			data : JSON.stringify({"schoolName":schoolName}),
            			async:false,
            			success : function(result) {
            				if(result.response.code == 200){
            					schoolNameStatus = true;
            					} else if(result.response.code == 409){
            						$("#noSchoolFoundMessage").text("");
            						schoolNameStatus = false;
            				}
            			}
            		});
            	}else{
            		schoolNameStatus = true;
          }
         return schoolNameStatus;
   }
                    
    $(document).ready(function() {   
    	$("#latitude").val('0.0');
    	$("#longitude").val('0.0');
    	$("#zipCode").blur(function(event) {
    		$.ajax({
    			url : "http://zip.getziptastic.com/v2/US/"+$(this).val(),
    			success : function(result) {
    				$("#state_short").val(result.state_short);
    				$("#state").val(result.state);
    			}
    		});
    	});
    	getMyHTMLElement('tab1').style.display = 'none';
    	$('#progDetail').hide();
    	$('#ourProg').hide();
    	$('#orOption').hide();
    	$('#schoolInfo').hide();
		$('#schoolSetupInfo').hide();
		$('#proceedStepTwo').hide();
    	$('#searchResult').hide();
    	$('#form1').show();
    	$('#form2').hide();
    	$('#form3').hide();
    	$('#selectedPrograms').val('1,');
    	$('#submitButton').hide();
                $('.register-form').show();

	                $.validator.addMethod("schoolAlreadyExist", function(value, element) {
	                    return this.optional(element) || schoolAlreadyCheck(value);
	                }, "School already registered.");
                    $.validator.addMethod("emailAlreadyExist", function(value, element) {
                        return this.optional(element) || emailAlreadyCheck(value);
                    }, "Email already exists. Click Here to <a href='<%=request.getContextPath()%>/login'> Login");
                    $.validator.addMethod("nameRegex", function(value, element) {
                        return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
                    }, "Field must contain letters only.");
                    $.validator.addMethod("specialChar", function(value, element) {
                        return this.optional(element) || /^[a-zA-Z0-9- ]+$/i.test(value);
                    }, "Remove special characters.");
        			jQuery.validator.addMethod("notEqual", function(value, element) {
        				var status = true;
        				$('[id^=teacherEmail_]').each( function( index, el ){
        					if(($( el ).val() == value || $("#email").val() == value) && $( el ).attr("id") != $(element).attr("id") ){
        						status = false;
        					}
        				});
        				  return this.optional(element) || status;
        				}, "Please use unique email address.");
                    
                    $('.register-form').validate({
                        errorElement: 'span', //default input error message container
                        errorClass: 'help-block', // default input error message class
                        focusInvalid: false, // do not focus the last invalid input
                        //ignore: "",
                        rules: {
                        	schoolName:{
                        		required: true,
                        		schoolAlreadyExist: true,
                        		minlength : 3,
                        		maxlength : 80
                        	},
                        	schoolNameSearch:{
                        		minlength : 4,
                        		schoolAlreadyExist: true
                        	},
                        	phone:{
                        		required: true,
                        		minlength : 10,
                        		maxlength : 30
                        		//digits	: true
                        	},
                        	acnDetail:{
                        		required: true,
                        		maxlength : 12
                        	},
                            address: {
                                required: true,
                                maxlength :100
                            },
                            zipCode:{
                        		required: true,
                        		maxlength : 20
                            },
                            suburb: {
                                required: true,
                                maxlength : 20
                            },
                            state: {
                                required: true,
                                maxlength : 20
                            },
                            country: {
                                required: true
                            },
                            title: {
                                required: true,
                                maxlength : 5
                            },
                            firstName: {
                                required: true,
                                //nameRegex:true,
                                maxlength : 20
                            },
                            lastName: {
                                /* required: true, */
                               // nameRegex:true,
                                maxlength : 20
                            },
                            dob: {
                                required: true,
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
                            ownerMobile:{
                        		required: true,
                        		minlength : 10,
                        		maxlength : 30
                        		//digits	: true
                        	},
                        	ownerPhone:{
                        		required: true,
                        		minlength : 10,
                        		maxlength : 30
                        		//digits	: true
                        	},
                        	check:{
                        		required:true
                        		
                        	},
                        	image:{
                        		required:false
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
                    });
                 

    });
    function addMoreClass(programId,index){
    	var divId = index + 1;
    	var htmlContents='<a title="Remove" onclick="removeClassDetails('+programId+','+ index + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon.png" alt="Image" /></a>';
    	$($("#removeLast_"+programId+"_" + index + '')).empty();
    	$($("#removeLast_"+programId+"_" + index + '')).html(htmlContents);
    	$("#addMoreClass_"+programId).remove();
    	$("#parentInfo_"+programId).append('<div id="divSection_'+programId+'_'+ divId + '">'+
    			'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" id="programId_'+programId+'_'+ divId +'" name="programIds"/>'+
    			'<input type="text" name="className_'+programId+'_'+ divId + '" placeholder="Class*" id="className_'+programId+'_'+ divId + '" class="ignore1" onchange="setProgramId(this.value,'+ divId + ','+programId+');"/></div></div></div></li><br/>'+
        '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
        '<input type="text" name="teacherName_'+programId+'_'+ divId +'" placeholder="Teacher Name*"  class="ignore1" id="teacherName_'+programId+'_'+ divId + '" /></div></div></div></li>'+
        '<li><div class="input_relative"><div class="input_add_logo"><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
        '<input type="text" name="teacherEmail_'+programId+'_'+ divId +'" placeholder="Teacher Email*" class="ignore1"  id="teacherEmail_'+programId+'_'+ divId + '"/></div></div></div></div>'+
        '<div class="plusImg" id="removeLast_'+programId+'_'+divId+'"><a onclick="removeClassDetailsLast('+programId+','+ divId +');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon.png" alt="Image" /></a><a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a></div>'+
        '</div></li>');
    }

    function removeClassDetails(programId,index){
    	$($("#divSection_"+programId+"_" + index + '')).remove();
    	if($('[id^=removeLast_'+programId+'_]').length == 1){
    		var divId = $('[id^=removeLast_'+programId+'_]').attr('id').replace('removeLast_'+programId+'_','');
    		$('[id^=removeLast_'+programId+'_]').empty('');
    		$('[id^=removeLast_'+programId+'_]').html('<a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a>');
    	}
    }

    function removeClassDetailsLast(programId,index){
    	var previous = index - 1;
    	var htmlContents = '<a onclick="removeClassDetailsLast('+programId+','+ previous + ');" id="removeParent_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/minus-icon.png" alt="Image" /></a><a onclick="addMoreClass('+programId+','+ previous +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a>';
    	
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
    			$($("#removeLast_"+programId+"_" + previous + '')).html('<a onclick="addMoreClass('+programId+','+ previous +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a>');
    		}
        	if($('[id^=removeLast_'+programId+'_]').length == 1){
        		var divId = $('[id^=removeLast_'+programId+'_]').attr('id').replace('removeLast_','');
        		$('[id^=removeLast_'+programId+'_]').empty();
        		$('[id^=removeLast_'+programId+'_]').html('<a onclick="addMoreClass('+programId+','+ previous +');"  id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a>');
        	}
    }
function showProgramContent(programId){
	$('#check_'+programId).prop('src', '<%=request.getContextPath()%>/NewStyles/images/tick-mark.png');   
	$('#programDiv_'+programId).show();
	   $('#programImg_'+programId).removeAttr("onclick");
	   $('#programImg_'+programId).attr("onclick","hideProgramContent("+programId+")");
	   var selectedProg = $('#selectedPrograms').val();
		if(selectedProg.indexOf(programId)<0){
			$('#selectedPrograms').val(selectedProg+programId+",");
			var amount = $('#paymentAmt').html();
			var amt = $('#programAmt_'+programId).val();
			$('#paymentAmt').html(parseInt(amount)+parseInt(amt));
			$('#finalAmt').html(parseInt(amount)+parseInt(amt));
			$('#paymentAmtInput').val(parseInt(amount)+parseInt(amt));
		}
}
function hideProgramContent(programId){
	$('#check_'+programId).prop('src', '');
	   var sectionLength = $('[id^=divSection_'+programId+'_]').length;
	   var divId = 0;
			$("#parentInfo_"+programId).html('<div id="divSection_'+programId+'_'+ divId + '">'+
					'<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field"><input type="hidden" id="programId_'+programId+'_'+ divId +'" name="programIds"/>'+
					'<input type="text" name="className_'+programId+'_'+ divId + '" placeholder="Class*" id="className_'+programId+'_'+ divId + '" onchange="setProgramId(this.value,'+ divId + ','+programId+');"/></div></div></div></li><br/>'+
		    '<li><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
		    '<input type="text" name="teacherName_'+programId+'_'+ divId +'" placeholder="Teacher Name*"  id="teacherName_'+programId+'_'+ divId + '" /></div></div></div></li>'+
		    '<li><div class="input_relative"><div class="input_add_logo"><div class="contact-row"><div class="outer-field-wrap"><div class="outer-field">'+
		    '<input type="text" name="teacherEmail_'+programId+'_'+ divId +'" placeholder="Teacher Email*"  id="teacherEmail_'+programId+'_'+ divId + '"/></div></div></div></div>'+
		    '<div class="plusImg" id="removeLast_'+programId+'_'+divId+'"><a onclick="addMoreClass('+programId+','+ divId +');" id="addMoreClass_'+programId+'"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a></div>'+
		    '</div></li>');

	   $('#programImg_'+programId).removeAttr("onclick");
	   $('#programImg_'+programId).attr("onclick","showProgramContent("+programId+")");
	   $('#programDiv_'+programId).hide();
	   $('#overlay_'+programId).removeAttr('style');
	   var selectedProg = $('#selectedPrograms').val();
		if(selectedProg.indexOf(programId)>=0){
				$('#selectedPrograms').val((selectedProg.replace(programId+',','')));
	   			var amount = $('#paymentAmt').html();
	   			var amt = $('#programAmt_'+programId).val();
	   			$('#paymentAmt').html(parseInt(amount)-parseInt(amt)*sectionLength);
	   			$('#finalAmt').html(parseInt(amount)-parseInt(amt)*sectionLength);
	   			$('#paymentAmtInput').val(parseInt(amount)-parseInt(amt)*sectionLength);
		}

}
populateCountries("country", "state");
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
  <script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
    });
  </script>
</body>
</html>
