<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%          response.setHeader("Cache-Control","no-cache"); //Forces caches to obtain a new copy of the page from the origin server

            response.setHeader("Cache-Control","no-store"); //Directs caches not to store the page under any circumstance

            response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
            response.setHeader("Pragma","no-cache"); //HTTP 1.0 backward compatibility 
 %>

<!doctype html>
<html>
<head>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Teacher SignUp</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"
	id="style_components" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/NewStyles/css/autocomplete/main.css" rel="stylesheet">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
</head>
<body>
	<div class="wrapper">
		<%@include file="header.jsp" %>
		<section class="makeDonateSct mtop-5">
			<div class="containerSmall">
				<form:form role="form" action="saveTeacherTrial"
					enctype="multipart/form-data" class="register-form"
					modelAttribute="dtoUser" method="post">
					<div class="pracProgress_hdr">
		            <h2>Express Start</h2>
		            <div class="green_line_btm"></div>
						<h3 class="teachr_dsh bdr-btm-none">Start your Inner Explorer experience today</h3>
						<div class="clr"></div>
						<div class="btns-outer mtop10">
						</div>
		            </div>
			<div class="signon-down">
            	<ul>
            	 <c:forEach items="${programs}" var="program" varStatus="programCount" begin="0" end="3">
		          <li>
		          <c:if test="${not empty programId && program.programId eq programId}">
		          <div id="overlay_${program.programId}" class="overlay_setup_signon_active">
             <a onclick="getProgId(${program.programId})" id="overlay_${program.programId}">${program.programDescDetail}</a>
            </div>
            </c:if>
		          <c:if test="${empty programId || program.programId ne programId}">
		          <div id="overlay_${program.programId}" >
             <a onclick="getProgId(${program.programId})" id="overlay_${program.programId}">${program.programDescDetail}</a>
            </div>
            </c:if>
		          </li>
		          </c:forEach>
                </ul>
            </div>
					<div class="getstartForm_teacher">
						<label>School Info</label>
						<input type="hidden" name="systemSchoolId" id="systemSchoolId"/>
						<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" name="schoolName" id="schoolName"
												placeholder="School Name" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" id="address" name="address"
												placeholder="School Address" /> <input type="hidden"
												name="latitude" id="latitude" value="0.0" /> <input
												type="hidden" name="longitude" id="longitude" value="0.0" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" id="state" name="state"
												placeholder="State" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" id="city" name="city"
												placeholder="City" /> 
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" name="zipCode" placeholder="Zip Code"
												id="zipCode" /> <input type="hidden" name="stateShort"
												id="state_short" />
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
					<div class="getstartForm">
						<label>Set IE Credentials</label>
						<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" value="${signupTeacherEmail}" name="teacherEmail" placeholder="Email" />
											<input type="hidden" name="programIds" id="programIds">
										</div>
									</div>
								</div>
							</li>
							
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" name="mobile" placeholder="Mobile" />
										</div>
									</div>
								</div>
							</li>

							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="password" name="password" id="password"
												placeholder="Password" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="password" name="confirmPassword"
												placeholder="Confirm Password" />
										</div>
									</div>
								</div>
							</li>

						</ul>


					</div>

					<div class="getstartForm">
						<label>Basic Information</label>
						<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" name="firstName" placeholder="First Name" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" name="lastName" placeholder="Last Name" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" name="className" placeholder="Class Name" />
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" name="studentCount" placeholder="Number of Students" />
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="getstartForm">
						<label>How did you hear about IE?</label>
						<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field_sel">
											<select name="howdidhear" class="select_about_ie" onchange="whereAboutIE(this.value);">
												<option value="">Select</option>
												<option value="1">From social media</option>
												<option value="2">From another school or teacher</option>
												<option value="3">Through IE advertisement</option>
												<option value="4">WISDOM 2.0</option>
												<option value="5">Conference</option>
											</select>
										</div>
									</div>
								</div>
							</li>
							<li id="teacherName">
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" id="className" name="className" placeholder="Teacher Name" />
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
					<div class="getstartForm">
						<label>Promo Code</label>
						<ul>
							<li>
								<div class="contact-row">
									<div class="outer-field-wrap">
										<div class="outer-field">
											<input type="text" name="promoCode" placeholder="Enter Promo Code" />
										</div>
									</div>
								</div>
							</li>
							<li></li>
							</ul>
				<div class="get-start-new-form">
                      <div class="getstartForm_started">
                	<label class="start-new-label">Launch Options</label>
					<ul>
						<li id="first" onclick="selectPaymentType(0);">
                        	<div class="launch-img">
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/teacher1.jpg">
                            	<h4 class="uper-hd-lft">Monthly Access at $${teacherSubMnthlyAmt}</h4>                            	
                            	 <div id="zeroSelectDiv" ></div>
                            </div>
                            <div class="launch-text">
                            	We are offering monthly access to teachers to launch Mindful program at their class for $${teacherSubMnthlyAmt} only.
                            </div>
                            <div class="launch-btn">
                            	<a href="javascript:;" onclick="selectPaymentType(0);">Select</a>
                            </div>
						</li>
                        <li id="second" onclick="selectPaymentType(1);">
                        	<div class="launch-img">
                            	<img src="<%=request.getContextPath()%>/NewStyles/images/teacher2.jpg">
                            	<h4 class="uper-hd-rght">Yearly Membership at $${teacherSubYrlyAmt}</h4>
                            	<div id="paymentSelectDiv"></div>
                            </div>
                            <div class="launch-text">
                            	We are providing yearly subscription to teachers to launch Mindful program at their class for $${teacherSubYrlyAmt} only.
                            </div>
                            <div class="launch-btn">
                            	<a href="javascript:;" onclick="selectPaymentType(1);">Select</a>
                            </div>
                            
						</li>
					</ul>
				</div>
                 </div>
						<input type="hidden" name="paymentType" id="paymentType" value="">	
							<div class="getstartForm_captcha" >
							<ul>
							<li>
							<div class="contact-row">
								<span id="capCode" class="captcha-txt noselect">${captchaCode}</span><a class="refresh-captcha" title="Generate new text" onclick="updateCode();"> </a>
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Type same text" name="cCode" id="cCode"/>
									</div>
									
								</div>
							</div>
							</li>
							</ul>
							</div>
							<ul>
							<li>
								<div style="position: relative; clear:both; margin-bottom: 15px; width: 100%; float: left;">
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
					<div class="btns-outer mtop10">
					<input type="submit" value="Submit" class="submit-btn fl" />
					</div>
				</form:form>
			</div>
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
<%@include file="footer.jsp"%>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.autocomplete.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
<script type="text/javascript">	
jQuery(document).ready
	(function($){
		$("#header").sticky({ topSpacing: 0 });
		$("#programIds").val(1);
		$('#overlay_'+1).addClass("overlay_setup_signon_active");
		$("#login").click(function(e) {
		        $(".login_panel").toggle();
		        e.stopPropagation();
		    });
		    $(document).click(function(e) {
		        if (!$(e.target).is('.login_panel, .login_panel *')) {
		            $(".login_panel").hide();
		        }
		    });
		$('#systemSchoolId').val(0);
		$("#teacherName").hide();
		$("#oldSchoolLogo").hide();
		$.daisyNav();
		$('#schoolName').autocomplete({
	        serviceUrl: '<%=request.getContextPath()%>/searchSchool',
	        paramName: "name",
	        delimiter: ",",
	        delay: 3,
	        minChars: 1,
		    transformResult: function(response) {
		        return {
		            suggestions: $.map($.parseJSON(response), function(item) {	
		                return { value: item.masterSchoolName , data: item.masterSchoolId };
		            })
		        };
		    },
		     onSelect:  function (event,ui) {
		         if(event.data!=0){
		        	// $("#address").val(event.data);
		        	 var schoolId = event.data;
		        	 if(schoolId!=null){
		        	 $.ajax({
		     			url : "<%=request.getContextPath()%>/getMasterSchoolDetails",
		     			type : 'POST',
		     			data : {schoolId:schoolId},
		     			success : function(result) {
		     				$("#address").val(result.modelMap.dtoTeacherSignOn.masterSchoolAddress);
		     				$("#state").val(result.modelMap.dtoTeacherSignOn.state);
		     				$("#city").val(result.modelMap.dtoTeacherSignOn.city);
		     				$("#state_short").val(result.modelMap.dtoTeacherSignOn.stateShort);
		     				$("#zipCode").val(result.modelMap.dtoTeacherSignOn.zipCode);
		     				$("#oldSchoolLogo").show();
		     				$("#newSchoolLogo").hide();
		     				//alert(result.modelMap.dtoTeacherSignOn.logo);
		     				//$("#schoolSelectedLogo").src(result.modelMap.dtoTeacherSignOn.logo);
		     				var logo = "<%=request.getContextPath()%>"+result.modelMap.dtoTeacherSignOn.logo;
		     				$('#schoolSelectedLogo').attr('src',logo);
		     				$('#systemSchoolId').val(result.modelMap.dtoTeacherSignOn.masterSchoolId);
		     			}
		     		});
		        }
		        	 /* $("#searchForm").submit(); $("#searchForm").submit(); */
		         }
		     } 
		});  
	});
    $(function(){
    	$("#zipCode").blur(function(event) {
    		$.ajax({
    			url : "http://zip.getziptastic.com/v2/US/"+$(this).val(),
    			success : function(result) {
    				$("#state_short").val(result.state_short);
    				$("#state").val(result.state);
    				$("#city").val(result.city);
    			}
    		});
    	});
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
                						schoolNameStatus = false;
                				}
                			}
                		});
                	}else{
                		schoolNameStatus = true;
              }
             return schoolNameStatus;
       }
        function emailAlreadyCheck(value){
			var email = value;
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
        $.validator.addMethod("schoolAlreadyExist", function(value, element) {
            return this.optional(element) || schoolAlreadyCheck(value);
        }, "School already registered.");
        $.validator.addMethod("emailAlreadyExist", function(value, element) {
            return this.optional(element) || emailAlreadyCheck(value);
        }, "Email already exists. Click Here to <a href='<%=request.getContextPath()%>/login'> Login");
        $.validator.addMethod("nameRegex", function(value, element) {
            return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
        }, "Field must contain letters only.");
        
        $.validator.addMethod("cCodeValid", function(value, element) {
            return this.optional(element) || cCodeValid(value);
        }, "Please re-enter given text");
        
        $('.register-form').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            //ignore: "",
            rules: {
            	schoolName:{
            		required: true,
            		//schoolAlreadyExist: true,
            		minlength : 1,
            		maxlength : 50
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
                    /* required: true, */
                   /*  maxlength : 20 */
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
                teacherEmail: {
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
            	},
            	howdidhear:{
            		required:true
            	},
            	className:{
            		required:true
            	},
            	cCode:{
             		required:true,
             		cCodeValid: true
             	}
            },
            invalidHandler: function(event, validator) { //display error alert on form submit   
            },

            highlight: function(element) { // hightlight error inputs
                $(element)
                    .closest('.outer-field').addClass('has-error'); // set error class to the control group
                    $(element)
                    .closest('.outer-field-wrap ').addClass('has-error');
                $(element).next('.fancybox').next('.fancybox').addClass('has-error');
            },
            
            success: function(label) {
                label.closest('.outer-field').removeClass('has-error');
                label.closest('.outer-field-wrap ').removeClass('has-error');
                label.next('.fancybox').next('.fancybox').removeClass('has-error');
                label.remove();
            },

            errorPlacement: function(error, element) {
                if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
                    error.insertAfter(element.next('.fancybox').next('.fancybox'));
                } else if (element.closest('.input-icon').size() === 1) {
                    error.insertAfter(element.closest('.input-icon'));
                } else if (element.closest('.outer-field_sel').size() === 1){
                	 error.insertAfter(element.closest('.outer-field_sel'));
                }else {
                    error.insertAfter(element);
                }
            },

            submitHandler: function(form) {
                form.submit();
            }
        });
     // SyntaxHighlighter.all();
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
    /* For getting Lat & Long of Student Address */
    function getStudentAddressLatLong(){
        var homeAddress = document.getElementById('address');
        var autoCompleteHomeAddress = new google.maps.places.Autocomplete(homeAddress);
        var geocoder = new google.maps.Geocoder;
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
    
    function whereAboutIE(val){
    	if(val == 2){
    		$("#teacherName").show();
    		$("#className").attr("name","className");
    		$("#className").attr("placeHolder","Teacher Name");
    	}
    	else if(val == 5){
    		$("#teacherName").show();
    		$("#className").attr("name","conferenceName");
    		$("#className").attr("placeHolder","Conference Name");
    	}
    	else{
    		$("#teacherName").hide();
    		//$("#conferenceName").hide();
    	}
    	
    }
    google.maps.event.addDomListener(window, 'load', getStudentAddressLatLong);
    function changeLogo(){
    	$('#newSchoolLogo').show();
    	$('#oldSchoolLogo').hide();
    	$('#systemSchoolId').val(0);
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
    function getProgId(progId){
    	$("#programIds").val(progId);
    	 $.each($('[id^=overlay_]'),function(i,ele){
    			$(ele).removeClass('overlay_setup_signon_active');
    		});
    	 $('#overlay_'+progId).addClass("overlay_setup_signon_active");
    }
    function cCodeValid(){
    	var cCode = $("#cCode").val();
        		var url='<%=request.getContextPath()%>/checkCaptchaCodeParent';
        		$.ajax({
        			url:url,
        			method:'POST',
        			async :false,
        			data:{cCode:cCode},
        			cache:false,
        			success:function(response){
        				if(response=="Y"){
        					flag=true;
        				}
        				else
        					{
        					flag=false;
        					}
        			}
        		});
        	return flag;
        }
    	function updateCode(){
    		var url='<%=request.getContextPath()%>/getUpdatedCaptcha';
    		$.ajax({
    			url:url,
    			method:'GET',
    			async :false,
    			cache:false,
    			success:function(response){
    				$("#capCode").text(response);
    			}
    		});
    	}
        function selectPaymentType(selectedPaymentType){
        	if(selectedPaymentType == 0){
        		$('#second').removeClass('active');
        		$('#first').addClass('active');
        		
        		var zeroSelectImg='<img alt="" src="<%=request.getContextPath()%>/NewStyles/images/tick-mark.png" id="zeroSelect">';
        		$("#zeroSelectDiv").html(zeroSelectImg);
        		$("#paymentSelectDiv").html('');
        		$("#paymentSelect").prop('src','');
        		$("#zeroSelectDiv").addClass('launch-tick-mark');
        		$("#paymentSelectDiv").removeClass('launch-tick-mark');
        	}
        	else{
        		$('#first').removeClass('active');
        		$('#second').addClass('active');
        		$("#zeroSelect").prop('src','');
        		$("#zeroSelectDiv").html('');
        		var paymentSelectImg='<img alt="" src="<%=request.getContextPath()%>/NewStyles/images/tick-mark.png" id="paymentSelect">';
        		$("#paymentSelectDiv").html(paymentSelectImg);
        		
        		$("#paymentSelectDiv").addClass('launch-tick-mark');
        		$("#zeroSelectDiv").removeClass('launch-tick-mark');
        		
        	}
        	$("#paymentType").val(selectedPaymentType);
        	
        }
    	
</script>

</body>
</html>
