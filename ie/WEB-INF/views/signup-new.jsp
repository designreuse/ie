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
			<div class="containerSmall">
				<form:hidden path="subscriptionPlanId"/> 
				<h2>Get Started</h2>
				<div class="green_line_btm"></div>
				<p>Before May 31st, register and get IE program at your school for 3 Years , Or Pay $100 to start a Campaign and get lifetime subscription.</p>
		       <div class="num_steps_getstarted">
		        <img id="stepsImage" src="<%=request.getContextPath()%>/NewStyles/images/get-started-step-1.png"  alt=""/>
		        </div>
		         <div class="enterscholl_info mbtm_20">
					<input type="button" value="ENTER YOUR SCHOOL INFO" class="esiBtn" id="enterSchoolInfo" onclick="showSchoolInfo();">
				</div>
				<div class="or_text" id="orId">
		        OR</div>
		        <div id="form1">
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
										<form:input placeholder="Email*" path="email" id="email" />
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
<!-- 						<li>
						<div class="step4-textInput">
							<div class="contact-row">
								<div class="outer-field-wrap"> -->
								<div style="position: relative; clear:both; padding-top: 15px; width: 100%; float: left;">
								<label name="tnc" id="tnc">
								<input type="checkbox" name="check" id="check" >
                       				  I agree to End User
			                        <a href="#term-condition"  class="fancybox">License</a>
			                         Agreement.<!-- <a href="#privacy" class="fancybox"> Privacy Policy</a> --><br>
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
					<div id="form3">
			        <div class="tmh_tabs">
				        <ul style="text-align: center;">
				        <li id="mtab1" style="float:none; border:1px solid #ddd; display:inline-block"><a href="javascript:showTab(1,2)" class="trailtab" style="background: #e1e1e1; color:#606872">Register Now &amp; Use it for 3 years</a>
						<p style="padding:10px;">Untill may 31st 2016, we are offering 3 year access to all of the programs, if you help us evaluate the beta platform.</p>
						</li>
				        <!-- <li id="mtab3"><a class="mptab"></a></li>  -->
				        <li id="mtab2" style="float:none; border:1px solid #ddd; display:inline-block"><a href="javascript:showTab(2,2)" class="hutab" style="background: #e1e1e1;  color:#606872">Start a Campaign &amp; Get Lifetime Subscription</a>
						<p style="padding:10px;">You can start a crowd funding campagin by donating $100, as a result you get life time membership.</p>
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
									<%-- Payable Amount: <span>$<span id="paymentAmt">${programs[0].programAmount}</span></span> --%>
									Payable Amount: <span>$<span>0</span></span>
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
											<img src="<%=request.getContextPath()%>${program.imagePath}" alt="" />
											<div class="overlay_setup" id="overlay_${program.programId}" style="background-color:green;">
												 <p>${program.programDescDetail}</p> 
											</div>
										</div>
									</div>
								</c:if>
								<c:if test="${programCount.count != 1}">
 									<div class="img_setup program4" id="programImg_${program.programId}" onclick="showProgramContent(${program.programId});">
										<div class="imgsetup_lg">
										<input type="hidden" id="programAmt_${program.programId}" value="${program.programAmount}">
											<img src="<%=request.getContextPath()%>${program.imagePath}" alt="" />
											<div class="overlay_setup" id="overlay_${program.programId}">
												<p>${program.programDescDetail}</p> 
											</div>
										</div>
									</div>
								</c:if>
								</c:forEach>
								</div>
							<c:forEach items="${programs}" var="program" varStatus="programCount" begin="0" end="3">
							<c:if test="${programCount.count == 1}">
								<div class="content_setup background-none" id="programDiv_${program.programId}">
									<h5>${program.programDescDetail}</h5>
									<div class="getstartForm">
										<ul>
								 		<div id="parentInfo_${program.programId}">
										<div id="divSection_${program.programId}_0"> 
											<li>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input type="hidden" id="programId_${program.programId}_0" name="programIds"/>
															<input placeholder="Class*" type="text" name="className" id="className_${program.programId}_0" class="ignore1" onchange="setProgramId(this.value,0,${program.programId});"/>
														</div>
													</div>
												</div>
											</li><br/>
											<li>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Teacher Name*" type="text" name="teacherName" id="teacherName_${program.programId}_0" class="ignore1"/>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="input_relative">
												<div class="input_add_logo">
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Teacher Email*" type="text" name="teacherEmail" id="teacherEmail_${program.programId}_0" class="ignore1"/>
														</div>
													</div>
												</div>
												</div>
												 <!-- <input type="button" class="input_abs_plus">  -->
												 <div class="plusImg" id="removeLast_${program.programId}_0"><a  title="Add More" onclick="addMoreClass(${program.programId},0);" id="addMoreClass_${program.programId}"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a></div> 
												</div>
											</li>
											</div>
											</div>
										</ul>
									</div>
								</div>
								</c:if>
							<c:if test="${programCount.count != 1}">
								<div class="content_setup background-none" id="programDiv_${program.programId}" style="display:none;">
									<h5>${program.programDescDetail}</h5>
									<div class="getstartForm">
										<ul>
								 		<div id="parentInfo_${program.programId}">
										<div id="divSection_${program.programId}_0"> 
											<li>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input type="hidden" id="programId_${program.programId}_0" name="programIds"/>
															<input placeholder="Class*" type="text" name="className_${program.programId}_0" id="className_${program.programId}_0" class="ignore1" onchange="setProgramId(this.value,0,${program.programId});"/>
														</div>
													</div>
												</div>
											</li><br/>
											<li>
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Teacher Name*" type="text" name="teacherName_${program.programId}_0" id="teacherName_${program.programId}_0" class="ignore1"/>
														</div>
													</div>
												</div>
											</li>
											<li>
												<div class="input_relative">
												<div class="input_add_logo">
												<div class="contact-row">
													<div class="outer-field-wrap">
														<div class="outer-field">
															<input placeholder="Teacher Email*" type="text" name="teacherEmail_${program.programId}_0" id="teacherEmail_${program.programId}_0" class="ignore1"/>
														</div>
													</div>
												</div>
												</div>
												 <!-- <input type="button" class="input_abs_plus">  -->
												 <div class="plusImg" id="removeLast_${program.programId}_0"><a  title="Add More" onclick="addMoreClass(${program.programId},0);" id="addMoreClass_${program.programId}"><img src="<%=request.getContextPath()%>/NewStyles/images/plus-icon.png" alt="Image" /></a></div> 
												</div>
											</li>
											</div>
											</div>
										</ul>
									</div>
								</div>
								</c:if>
							</c:forEach>
							</div>
							<div id="tab2" style="display:none" align="center">
						<div class="containerSmall">
             				<div class="getstartForm">
                                <div class="check-select-out">
				                	<div class="check-select ">
				                    	<p>Minimum Cost to Start a Campaign is $${minContri}</p>
				                    </div>
				                </div>
                                        <div class="contact-row contact-row-center">
                                            <div class="outer-field-wrap">
                                                <div class="outer-field">
                                                    <input type="text" name="contriAmount" id="contriAmount" placeholder="Add additional amount (optional)" />
                                                </div>
                                            </div>
                                        </div>
                            </div>
                            <div class="make-card contact-row-center">
                                <p>Payment Via</p>
                               <ul>
		                		<li><img src="<%=request.getContextPath()%>/NewStyles/images/paypal.png" alt="paypal"/></li>
		                        <li><img src="<%=request.getContextPath()%>/NewStyles/images/visa-card.jpg" alt="visa card"/></li>
								<li><img src="<%=request.getContextPath()%>/NewStyles/images/master-card.jpg" alt="master card"/></li>
								<li><img src="<%=request.getContextPath()%>/NewStyles/images/discover-card.jpg" alt="discover card"/></li>
								 <li><img src="<%=request.getContextPath()%>/NewStyles/images/express-card.jpg" alt="express card"/></li>
								<li><img src="<%=request.getContextPath()%>/NewStyles/images/eCheck.png" alt="echeck"/></li> 
                    		</ul>
                            </div>

                            <div class="btns-outer mtop30">
                                <input type="button" onclick="proceedToStepFour();" value="MAKE PAYMENT" class="submit-btn" />
                            </div>
                            </div>
						</div>
							<div id="tab1" >
	        					<div class="section_trial">
	        						<div class="free_trial_somedays">
	                            		<div class="txtcenter_align"> <a class="blueBtn"  onclick="proceedToStepFour();">START</a> </div>
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
<div id="privacy" style="display: none;">
	<div class="product-page product-pop-up">
		<div class="row">
			<div class="col-md-12 col-sm-6 col-xs-3">
				<div class="product-main-image">
					<div id="message"></div>
						<div id="recorder" style="width:600px; font-size: 11px;">
								Inner Explorer (“we”) are committed to protecting and preserving your privacy.  This policy, together with our Terms of Use and Conditions, sets out the basis on which any personal data we collect from you, or that you provide to us, will be processed by us.  By using our website (“Site”) and/or through our mobile application (“Mobile App”), you are accepting the practices described in this Privacy Policy and Notices of Privacy Practices (“Privacy Policy”).<br><br>
								By using this Site and/or our Mobile App, you consent to the use of information that you provide us in accordance with this Privacy Policy.  We do update this Privacy Policy from time to time so please review this Privacy Policy regularly. If we materially alter our Privacy Policy, we will notify you of such changes by contacting you through your user account e-mail address or by posting a notice on our Site or within our Mobile App. Your continued use of the Site and/or Mobile App will be deemed your agreement that your information may be used in accordance with the new policy.  If you do not agree with the changes, then you should stop using the Site and/or Mobile App and you should notify us that you do not want your information used in accordance with the changes.<br><br>
								We have structured our Site so that you can visit it without identifying yourself or revealing any personal information other than your e-mail address.  If you choose to provide us with information by which you can be identified, you can be assured that it will only be used in accordance with this Privacy Policy. In order to access our Mobile App you will need to download it from a third party. Please note that these third parties may have different privacy policies than Inner Explorer and as such, before downloading the Mobile App you should review those third party privacy policies. Inner Explorer is not responsible for any policies of these third parties.<br><br>
							<b>Privacy Notice</b><br>
								Please read this Privacy Policy carefully to fully understand how we collect, share and protect information about you.  This Policy is incorporated into and is a part of the Terms of Use and Conditions of this Site and our Mobile App.  To access the Terms of Use and Conditions click <a href="#term-condition" class="fancybox">here</a><br><br>
								By accessing and using the Site and/or Mobile App, you agree that you have read and understand this Privacy Policy and that you accept and consent to the privacy practices and uses or disclosures of information about you that are described herein.<br><br>
								In order to deliver personalized and relevant information to you through our Site and through our Mobile App, we collect certain information from users.  Please do not provide any sensitive information or health information.  If you should do so inadvertently, we will use and disclose that information in the same manner as any other information you provide to us.<br><br>
							<b>Information We Collect</b><br>
								In operating our Site and our Mobile App, we may collect and process the following data about you:<br><br>
								i.	Details of your visits to our Site and the resources that you access, including, but not limited to, traffic data, location data, weblogs and other communication data, including your IP address, the date and time you accessed or left the Site and which pages you viewed.  Some parts of our Site use cookies and other technologies to collect this information about your general internet usage.  See section below ‘How We Use Cookies” to learn more.<br><br>
								ii.	Information that you provide directly to us by “Contacting Us” through our Site or Mobile App (i.e. name, job title, school, city and state, telephone number, e-mail address, and the content of your message).<br><br>
								iii.	Information provided to us when you communicate with us for any reason.<br><br>
<b>How We Use Cookies</b><br>
A “cookie” is a piece of text which asks permission to be placed on your computer’s hard drive. Once you agree, this cookie file is stored on the hard drive of your computer.  They help us and our affiliates to improve our Site.  They ensure that the content from our Site is presented in the most effective manner for you and your computer.<br><br>
All computers have the ability to decline cookies.  This can be done by activating the setting on your browser which enables you to decline the cookies. Please note that should you choose to decline cookies, you may be unable to access particular parts of our Site. We do not track our users across websites or across time.<br><br>
<b>Use of Your Information</b><br>
								The information that we collect and store relating to you is primarily used to enable us to provide our products and services to you in the best possible manner.  In addition, we may use the information for the following purposes:<br><br>
								i.	To provide you with information relating to our products and services;<br><br>
								ii.	To provide third parties with statistical information about the users of our Site and Mobile App;<br><br>
								iii.	To monitor and conduct an analysis of our Site traffic and Site and Mobile App usage patterns.<br><br>
<b>Security</b><br>
								To ensure that your information is secure, we have put in place commercially suitable physical, electronic, and managerial procedures to safeguard and secure the information we collect on our Site and through our Mobile App.<br><br>
								Nonetheless, the transmission of information via the internet is not completely secure and therefore we cannot guarantee the security of data sent to us electronically on our Site or Mobile App, and transmission of such data is therefore entirely at your own risk.<br><br>
<b>Disclosing Your Information</b><br>
Where applicable, we may disclose your personal information to any affiliated business entities or third parties necessary to provide products and services to you.  This includes, where applicable, our subsidiaries, our holding company and its other subsidiaries (if any), as well as third parties involved in the administration and operation of our products and services.<br><br>								
								We may also disclose your personal information to third parties:<br><br>
								i.	Where we sell any or all of our business and/or our assets to a third party.<br><br>
								ii.	Where we are legally required to disclose your information.<br><br>
								iii.	When we are contractually obligated to disclose it.<br><br>
<b>Third Party Website and Interaction</b><br>
By accessing other third party websites or applications through our Site, you are consenting to the terms and privacy policies of those websites.  We do not accept any responsibility or liability for their policies whatsoever as we have no control over them.<br><br>
<b>Users Only of Legal Age of Majority</b><br>
								Our Site and Mobile App are designed and intended for those who have reached the age of majority (18 years of age). By using our Site and/or Mobile App you affirm that you are at least 18 years of age or older.  We are not liable for any damages that may result from a user’s misrepresentation of age.<br><br>
								No one under age 13 is authorized to submit any information, including personally identifying information, on our Site or through our Mobile App. Under no circumstances may anyone under age 13 use our Site or Mobile App.  Parents or legal guardians of children under 13 cannot agree to these terms on their behalf.<br><br>
<b>Contacting Us</b><br>
								We welcome any queries, comments, requests or complaints you may have regarding this Privacy Policy and Notice of Privacy Practices.  Please do not hesitate to contact us at:<br><br>
<p><b>Inner Explorer</b></p>
<p><b>430 Franklin Village Dr. #325</b></p>
<p><b>Franklin, MA, 02038</b></p>
<p><b>Phone: 888-466-9732</b></p>
<p><b>Email: info@innerexplorer.org</b></p>
<br><br>

								
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="term-condition" style="display: none;">
	<div class="product-page product-pop-up">
		<div class="row">
			<div class="col-md-12 col-sm-6 col-xs-3">
				<div class="product-main-image">
					<div id="message"></div>
						<div id="recorder" style="width:600px; font-size: 11px;">
								Welcome to the Inner Explorer website and/or mobile application. These Terms of Use and Conditions (“Terms”) govern your use of the Inner Explorer (“our”) website (“Site”) and our mobile application (“Mobile App”). Please read the terms in full before using our Site and/or Mobile App. By accepting these Terms, or by using this Site or Mobile App, you agree to be legally bound by these Terms, and our Privacy Policy and Notice of Privacy Practices. If you do not agree to these terms, please do not use our Site or Mobile App. We reserve the right to modify these Terms at any time without prior notice, and your use of the Site and/or Mobile App binds you to the changes made. We do occasionally update these terms so please refer to them in the future.<br><br>
							<b>Access to Site and Mobile App</b><br>
								You will be able to access our Site without having to register any details with us. However, in order to access our Mobile  App you will need to download it through a third party.<br><br>
							<b>Use of Site and Mobile App</b><br>
								Our Site, Mobile App, images, data, text, audios, videos, photographs, custom graphics, logos, button icons, descriptions and all other material provided and the collection and compilation and assembly thereof are the exclusive property of Inner Explorer or its parent, and are protected by U.S. and international copyright laws. The contents of our Site and Mobile App may be used for informational purposes only. Any other use of such contents, including the reproduction, modification, distribution, transmission, republication, display or performance of the contents without our prior written consent is expressly forbidden. Any other trademarks or service marks appearing anywhere on our Site or Mobile App are the property of their respective owners. To the extent any product name or logo does not appear with a trademark (™) does not constitute a waiver of any and all intellectual property rights that Inner Explorer or its businesses has established in any of its products, features, or service names or logos. You may not use, reproduce, modify, transmit, display, publish, sell, create derivative works, or distribute by any means, method, or process whatsoever, now known or hereafter developed, any content of this Site or Mobile App for commercial profit or gain. Nothing in these Terms or on the Site or Mobile App shall be construed as conferring any intellectual property or other proprietary rights to You. You agree to observe copyright and other applicable laws and may not use the content in any manner that infringes or violates the rights of any person or entity. We hold all rights to the content on this Site and Mobile App. As a condition of your use of the Site and/or Mobile App, you will not use the Site, the Mobile App, or any contents or services, for any purpose that is unlawful in any applicable jurisdiction where our Site and/or Mobile App are being used, or prohibited by these terms, conditions, and notices, and you agree to abide by the terms and conditions set forth in the “User Conduct” section. You may not use the Site and/or Mobile App contents or services in any manner that could damage, disable, overburden, or impair any of our equipment or interfere with any other party’s use and enjoyment of the Site or Mobile App, or any contents or services. You may not attempt to gain access to any portion of the Site or Mobile App, or any contents or services, other than those for which you are authorized. While every effort is made to ensure the timeliness and accuracy of the Site and Mobile App content and services, we make no warranties either express or implied, and assume no liability or responsibility for the completeness, use, accuracy, reliability, correctness, timeliness or usefulness, of any of the results obtained from its use. We make no representation or warranty, express or implied, with respect to the content of the Site, the Mobile App or links to other websites, including but not limited to accurateness, completeness, correctness, timeliness or reliability. We make no representation or warranty regarding the merchantability or fitness for a particular purpose or use with respect to any content or services whatsoever that may be accessed through this Site and/or Mobile App, or the results to be obtained from using the Site and/or Mobile App. We make no representation or warranty that the Site, the Mobile App or content is free from defects or viruses. Your use of external links and third-party websites is at your own risk and subject to the terms and conditions of use for such links and sites. While every effort is made to ensure that all content provided on the Site and Mobile App do not contain computer viruses and/or harmful materials, you should take reasonable and appropriate precautions to scan for computer viruses or otherwise protect your computer or device and you should ensure that you have a complete and current backup of the applicable items on your computer and/or device. We disclaim any liability for the need for services or replacing equipment or data resulting from your use of the Site or Mobile App. While every effort is made to ensure smooth and continuous operation, we do not warrant the Site or Mobile App will operate error free.<br><br>
<b>Site and Mobile App Uptime</b><br>
We take all reasonable steps to ensure that our Site and Mobile App are available 24 hours every day, 365 days per year. However, websites and mobile applications do sometimes encounter downtime due to server and other technical issues. Therefore, we will not be liable if this Site or Mobile App is unavailable at any time. Our Site or Mobile App may be temporarily unavailable due to issues such as system failure, maintenance or repair, or for reasons beyond our control. Where possible, we will try to give our users advance warning of maintenance issues, but shall not be obliged to do so.<br><br>
<b>User Conduct</b><br>
								Any material you send or post to our Site and/or Mobile App shall be considered non-proprietary and non-confidential. We do not collect or store any personally identifiable information about you while using our Site or Mobile App but please do not send any such information to us. See also our Privacy Policy and Notice of Privacy Practices, which can be found <a href="#privacy" class="fancybox">here</a>. When using our Site and/or Mobile  App, you shall not post or send to or from the Site or Mobile App: (a) content for which you have not obtained all necessary consents; (b) content that is discriminatory, obscene, pornographic, defamatory, liable to incite racial hatred, in breach of confidentiality or privacy, which may cause annoyance or inconvenience to others, which encourages or constitutes conduct that would be deemed a criminal offense, give rise to a civil liability, or otherwise is contrary to the law in any applicable jurisdiction where our Site or Mobile App is being used; (c) content which is harmful in nature including, and without limitation, computer viruses, Trojan horses, corrupted data, or other potentially harmful software or data. We will fully cooperate with any law enforcement authorities or court order requiring us to disclose the identity or other details or any person posting materials to our Site or Mobile App in breach of the this Section. You shall not use our Site or Mobile App while distracted or preoccupied, such as when operating a motor vehicle. You should access our Site and Mobile App only with due regard for your own safety and the safety of others.<br><br>
<b>Links to and from Third Party Websites</b><br>
								Any links furnished on our Site or Mobile App may allow you to leave our Site or our Mobile App. These third party websites are not under our control and we disclaim any responsibility for the contents of such linked websites or any link(s) contained in any such linked website(s) or any changes or updates to any of these websites. We further disclaim any responsibility for any form of transmission received from any linked third party website or advertising. If we provide these links to you, it is done simply as a convenience to you and inclusion of any link herein shall in no way be construed as an endorsement by us of the website(s). Additionally, we do not collect or process your credit/debit card payment information. All payment data is collected and processed through a third party vendor. If you would like to link to our Site or Mobile App, you may only do so on the basis that you link to, but do not replicate, any page of our Site, or Mobile App, and subject to the following conditions: (a) you do not in any way imply that we are endorsing any services or products unless this has been specifically agreed with us; (b) you do not misrepresent your relationship with us or present any false information about us; (c) you do not link from a website that is not owned by you; and (d) your website does not contain content that is offensive, controversial, infringes any intellectual property rights or other rights of any other person or does not comply in any way with the law of the United States of America. If you choose to link our Site or Mobile App in breach of this Section, you shall fully indemnify us for any loss or damage suffered as a result of your actions.<br><br>
<b>Disclaimers</b><br>
All information on our Site and in our Mobile App is of a general nature and is furnished for your knowledge and understanding and as an informational resource only. The documents and any related graphics published on this server could include technical inaccuracies or typographical errors. Changes are periodically added to the information contained on our Site and Mobile App. We may make improvements and/or changes to any of the products depicted or described herein at any time. We expressly disclaim any responsibility or liability for any adverse consequences or damages resulting from your use of the Site, Mobile App or reliance on the information from either. THE SITE AND MOBILE APP ARE PROVIDED ON AN “AS IS” AND “AS AVAILABLE” BASIS. WE MAKE NO WARRANTIES, EXPRESS OR IMPLIED, REPRESENTATIONS OR ENDORSEMENTS WHATSOEVER WITH REGARD TO ANY PRODUCTS, INFORMATION OR SERVICE PROVIDED THROUGH THIS SITE OR MOBILE APP, INCLUDING, TITLE, NON-INFRINGEMENT, OR ANY OTHER WARRANTY, CONDITION, GUARANTY, OR REPRESENTATION, WHETHER ORAL OR IN WRITING, OR IN ELECTRONIC FORM.<br><br>								
<b>Limitation of Liability</b><br>
YOUR USE OF OUR SITE AND MOBILE APP IS ENTIRELY AT YOUR OWN RISK. WE WILL NOT BE RESPONSIBLE TO YOU OR TO ANY THIRD PARTIES FOR ANY DIRECT OR INDIRECT, INCIDENTAL, CONSEQUENTIAL, SPECIAL, OR PUNITIVE DAMAGES OR LOSSES OR INJURY YOU MAY INCUR IN CONNECTION WITH YOUR USE OR INABILITY TO USE THE SITE, MOBILE APP OR THE PRODUCTS, OR YOUR RELIANCE ON OR USE OF THE SITE, THE MOBILE APP, THE INFORMATION, OR SERVICES PROVIDED, OR THAT RESULT FROM MISTAKES, OMISSIONS, INTERRUPTIONS, DELETIONS OR ANY FAILURE OF PERFORMANCE, OR ANY OF THE DATA OR OTHER MATERIALS TRANSMITTED THROUGH OR RESIDING ON OUR SITE, REGARDLESS OF THE TYPE OF CLAIM OR THE NATURE OF THE CAUSE OF ACTION, EVEN IF WE HAVE ADVISED OF THE POSSIBILITY OF SUCH DAMAGE OR LOSS.<br><br>
<b>Indemnification</b><br>
								You agree to defend, indemnify, and hold us, our officers, directors, employees, volunteers, agents, licensors, and suppliers, harmless from and against any claims, actions or demands, liabilities and settlements including without limitation, reasonable legal and accounting fees, resulting from or alleged to result from, your use of and access to the Site or Mobile App or your violation of these Terms or your violation of any third party right, including without limitation any trademark, copyright or other proprietary or privacy right.<br><br>
<b>Assignment</b><br>
								These Terms, and any rights and licenses granted hereunder, may not be transferred or assigned by you.<br><br>
<b>Applicable Law</b><br>								
								We make no representations that the content or the Site or Mobile App are appropriate or may be used or downloaded outside the United States. Access to the Site, Mobile App and/or the content may not be legal in certain countries outside the United States. If you access the Site or Mobile App from outside the United States, you do so at your own risk and are responsible for compliance with the laws of the jurisdiction from which you access the Site and/or Mobile App. Our Site and Mobile App are created and controlled in the Commonwealth of Massachusetts, United States of America. The Site, Mobile App and their contents, and any disputes arising therefrom shall be construed and interpreted under the laws of the Commonwealth of Massachusetts, and applicable United States federal laws. Use of our Site and/or Mobile App constitutes agreement of the user to the jurisdiction of the state and federal courts located therein. Our Site and Mobile App are subject to the United States export control laws and regulations, and may be subject to export or import regulations in other countries. You agree to strictly comply with all such laws and regulations and acknowledge that you have the responsibility to obtain authorization to export, re-export, or import of any data on our Site and/or Mobile App, as may be required.<br><br>
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
			$("#saveSignupForm").validate({ ignore: []});
			$("#saveSignupForm").validate();
			$('[id^=className_]').each( function( index, el ) {
			    $( el ).rules('add', {
		    	    required: true,
		    	    specialChar :true
		    	});
			   // $( el ).attr("name","className_"+index);
			});
			$('[id^=teacherName_]').each( function( index, el ) {
			    $( el ).rules('add', {
		    	    required: true ,
		    	    maxlength:40,
		    	    specialChar :true
		    	});
			});
			$('[id^=teacherEmail_]').each( function( index, el ) {
			    $( el ).rules('add', {
		    	    required: true,
		    	    email: true,
		    	    emailAlreadyExistForTeacher: true,
		    	    notEqual:true
		    	});
			});
			$("#contriAmount").rules('add', {
	    	   /*  required: true,
	    	    min : minContri,*/
	    	    digits:true 
	    	});
			
			if($("#saveSignupForm").valid()){
				//alert("hiiii"+true);
				$('[id^=className_]').each( function( index, el ) {
			    	$( el ).attr('name',"className");
				});
				$('[id^=teacherName_]').each( function( index, el ) {
					$( el ).attr('name',"teacherName");
				});
				$('[id^=teacherEmail_]').each( function( index, el ) {
					$( el ).attr('name',"teacherEmail");
				});
				
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
					    $('#recordFound').show();
					} else{
						$('#orOption').show();
						$('#enterSchoolInfo').show();
						$('#orId').show();
						$('#recordFound').hide();
					}
				}
			});
		}else{
			$('#schoolName').val('');
			$('#address').val('');
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
		} 
	}
	getStudentAddressLatLong();
	
	$(window).scrollTop(0);
}
function showSchoolInfo(){
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
                    
                    var emailStatusForTeacher = false;
                    function emailAlreadyCheckForTeacher(email){
            			if(email != ""){
            				$.ajax({
            					url : "<%=request.getContextPath()%>/check/availability/emailForTeacher",
            					method : 'POST',
            					headers: { 
            						'Content-Type':'application/json'
            						},
            					data : JSON.stringify({"email":email}),
            					async:false,
            					success : function(result) {
            						if(result.response.code == 200){
            							emailStatusForTeacher = true;
            						} else if(result.response.code == 202){
            							emailStatusForTeacher = true;
            						}else if(result.response.code == 409){
            							emailStatusForTeacher = false;
            						}
            					}
            				});
            			}else{
            				emailStatusForTeacher = true;
            			}
            			return emailStatusForTeacher;
                    }
var schoolNameStatus = false;
	function schoolAlreadyCheck(schoolName){
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
                    }, "Email already exists.");
                    $.validator.addMethod("emailAlreadyExistForTeacher", function(value, element) {
                        return this.optional(element) || emailAlreadyCheckForTeacher(value);
                    }, "Email already exists.");
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
	   $('#programDiv_'+programId).show();
	   $('#programImg_'+programId).removeAttr("onclick");
	   $('#programImg_'+programId).attr("onclick","hideProgramContent("+programId+")");
		$('#overlay_'+programId).attr('style','background-color:green');
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
