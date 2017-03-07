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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport"/>
<meta content="" name="description"/>
<meta content="" name="author"/>
<meta charset="utf-8"><meta name="viewport" content="width=device-width">
<title>Ambassador Kit</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">

</head>
<style>
	.ambsder_kit_section{width:100%; float:left; paddind:40px 0}
	.narrators-area-inner {box-shadow: 0 0 3px #bcbcbc;background-color: #f2f2f2; float: left; min-height: 255px; padding: 32px 20px 0px; width: 100%;
    color: #000; text-align: center; margin-bottom: 25px; margin-top: 10px;  -webkit-transition: all .4s linear;
    -moz-transition: all .4s linear;  -o-transition: all .4s linear; }
    .narrators-area-inner:hover{box-shadow:0 0 10px #333 !important}
    .narrators-area-inner img {width: 100%; max-width: 30%; margin: 36px auto 0px;}
    .kit_hower_caption {position: absolute;left: 4.8%; bottom: 10px; text-align: center; height: 88%; width: 90.5%;
     opacity: 1; -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=1)";
    filter: alpha(opacity=1); -webkit-transition: all 0.4s ease-out; transition: all 0.4s ease-out;}
    .kit_hower_caption:hover {opacity: 1; -ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=100)"; filter: alpha(opacity=100);
    -webkit-transition: all 0.4s ease-out; transition: all 0.4s ease-out;}
    .narrators-area-inner > a {float: left;  width: 100%;}
    .kit_hower_caption h2 {font-size: 15px !important; text-transform: uppercase; font-weight: 700; color: #333; -webkit-transition: .3s; transition: .3s;
    text-align: center; margin: 55% auto 0;}
</style>

<body>
<div class="wrapper">
<%@include file="header.jsp" %>

    <!--inner_wrapper starts-->
    <section class="ambsder_kit_section">
    	<div class="container">
    		<div class="row">
    			<div class="col-md-12 col-sm-12 col-xs-12 p0">
    				<div class="pracProgress_hdr">
						<h2>Ambassador Kit</h2>
						<div class="green_line_btm"></div>
					</div>
					<div class="clr"></div>
			       <div class="col-md-4 col-sm-4 col-xs-12">
				       <div class="narrators-area-inner">
					         <img src="<%=request.getContextPath()%>/NewStyles/images/pdf_download.png" alt="Inner Explorer Logo">
                                       <a href="<%=request.getContextPath()%>/NewStyles/pdf/1_Welcome.pdf" target="_blank"> <div class="kit_hower_caption">
                                         <h2>Welcome</h2>
                                      </div></a>
					   </div>
				   </div>
				   <div class="col-md-4 col-sm-4 col-xs-12">
				       <div class="narrators-area-inner">
					         <img src="<%=request.getContextPath()%>/NewStyles/images/pdf_download.png" alt="Inner Explorer Logo">
                                       <a href="<%=request.getContextPath()%>/NewStyles/pdf/2_Executive_Summary.pdf" target="_blank"> <div class="kit_hower_caption">
                                         <h2>Executive Summary</h2>
                                      </div></a>
					   </div>
				   </div>
				   <div class="col-md-4 col-sm-4 col-xs-12">
				       <div class="narrators-area-inner">
					         <img src="<%=request.getContextPath()%>/NewStyles/images/pdf_download.png" alt="Inner Explorer Logo">
                                       <a href="<%=request.getContextPath()%>/NewStyles/pdf/3_FAQ.pdf" target="_blank"> <div class="kit_hower_caption">
                                         <h2>FAQ</h2>
                                      </div></a>
					   </div>
				   </div>
				   
				   <div class="col-md-4 col-sm-4 col-xs-12">
				       <div class="narrators-area-inner">
					         <img src="<%=request.getContextPath()%>/NewStyles/images/pdf_download.png" alt="Inner Explorer Logo">
                                       <a href="<%=request.getContextPath()%>/NewStyles/pdf/4_Testimonials.pdf" target="_blank"> <div class="kit_hower_caption">
                                         <h2>Testimonials</h2>
                                      </div></a>
					   </div>
				   </div>
				   <div class="col-md-4 col-sm-4 col-xs-12">
				       <div class="narrators-area-inner">
					         <img src="<%=request.getContextPath()%>/NewStyles/images/pdf_download.png" alt="Inner Explorer Logo">
                                       <a href="<%=request.getContextPath()%>/NewStyles/pdf/5_Research_Abstracts_2017(1).pdf" target="_blank"> <div class="kit_hower_caption">
                                         <h2>Research Abstracts 2017</h2>
                                      </div></a>
					   </div>
				   </div>
				   <div class="col-md-4 col-sm-4 col-xs-12">
							       <div class="narrators-area-inner">
								         <img src="<%=request.getContextPath()%>/NewStyles/images/doc_icoo.png" alt="Inner Explorer Logo" style="width:66px">

                                          <a href="<%=request.getContextPath()%>/NewStyles/pdf/6_Sample_Letter.pdf" target="_blank"> <div class="kit_hower_caption">
                                            <h2>Sample Letter</h2>
                                         </div></a>
								   </div>
							   </div>
				</div>
    		</div>
    	</div>
   <br><br><br><br><br><br>
    </section>  
        
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp"%>
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>

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
								Please read this Privacy Policy carefully to fully understand how we collect, share and protect information about you.  This Policy is incorporated into and is a part of the Terms of Use and Conditions of this Site and our Mobile App.  To access the Terms of Use and Conditions click <a href="#terms" class="fancybox">here</a><br><br>
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

<div id="terms" style="display: none;">
</div>
</body> 
</html>
