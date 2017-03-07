<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server

	response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance

	response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale" 
	response.setHeader("Pragma", "no-cache"); //HTTP 1.0 backward compatibility
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta name="description" content="Your contributions will help bring Inner Explorer’s mindfulness programs to students in need in the U.S. and around the world. ">

<meta name="keywords" content="Donate to Inner Explorer | Bring Mindfulness to Schools">
<title>Contribute Now</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css"
	id="style_components" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/NewStyles/css/contribute-page-style.css">
<style>
.banner1 .banner-data1 p {
   font-size: 14px !important;
   line-height: 20px !important;
  
   /* line-height: 47px !important; */
}
.tar_wrapper .progress {
	overflow: inherit !important;
}



.progress-custom {
	height: 58px !important;
}

.dntSndIn h6 a {
	color: #02a451;
}

#donateForm {
	margin-top: 55px
}
#donateHereButton{padding-top:10px !important}

.banner1 .banner-data1 {padding: 40px 8px 0px !important;
}
/* .sliderlayer1 {height:600px !important} */
.videobtn {margin-top:0}
/* .sliderlayer1 img{height:425px !important} */

</style>
</head>
<style type="text/css">
</style>

<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js"
	type="text/javascript"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/NewStyles/js/dateFormat.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/NewStyles/js/jquery.formatCurrency.all.js"></script>
<%-- <script
	src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script> --%>

<%-- <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script> --%>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/NewStyles/data-tables/DT_bootstrap.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/NewStyles/js/braintree.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/NewStyles/js/countries.js"></script>
<script
	src="<%=request.getContextPath()%>/NewStyles/js/jquery.dataTables.min.js"></script>
<script
	src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js"
	type="text/javascript"></script>
<script
	src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
	<script type="text/javascript">setTimeout(function(){var a=document.createElement("script");var b=document.getElementsByTagName("script")[0];a.src=document.location.protocol+"//script.crazyegg.com/pages/scripts/0059/6602.js?"+Math.floor(new Date().getTime()/3600000);a.async=true;a.type="text/javascript";b.parentNode.insertBefore(a,b)}, 1);</script>

<body>
	<div class="wrapper">
		<%@include file="header.jsp"%>

		<!--inner_wrapper starts-->
		<div class="inner_wrapper">

			<!--about_us starts-->
			<div class="about_us">
				<div class="content_inner">

				<!-- 	<div class="pracProgress_hdr">
						<h2>Contribute Now</h2>
						<div class="green_line_btm"></div>
					</div> -->
					<div class="clear20"></div>

					<div class="videobtn " style="margin-top:25px">
						<%--     <input type="button" onclick="location.href='<%=request.getContextPath()%>/sponsorNew';" value='Be a Sponsor' title="Be a Sponsor" style="margin-right:10px" class="imgvc">
                <input type="button" onclick="location.href='<%=request.getContextPath()%>/honour';" value='Donate in Honour' title="Donate in Honour" style="margin-right:10px" class="imgvc">
                <input type="button"  onclick="location.href='<%=request.getContextPath()%>/campaign';" value='GLOBAL CAMPAIGN' title="GLOBAL CAMPAIGN" class="imgvc">  --%>

						<a href='javascript:;'
							id="scrolbtncontribute" class="btn-new-contribut btn-actv"><img
							src="<%=request.getContextPath()%>/NewStyles/images/gc.png"
							class="imgvc">&nbsp;GLOBAL CAMPAIGN</a> <a
							href='<%=request.getContextPath()%>/sponsorNew'
							class="btn-new-contribut btnextrapadding"><img
							src="<%=request.getContextPath()%>/NewStyles/images/bs.png"
							class="imgvc">&nbsp; BE A SPONSOR</a> <a
							href='<%=request.getContextPath()%>/honour'
							class="btn-new-contribut"><img
							src="<%=request.getContextPath()%>/NewStyles/images/don-ne.png"
							class="imgvc">&nbsp; DONATE IN HONOR</a>
					</div>

				</div>

				<%-- <section class="banner">
				      <div class="container">
				        <div class="row">
				          <div class="col-md-8 banner-data">
				            <h2 class="">CHANGE THE WORLD. <span class="">ONE STUDENT AT A TIME.</span></h2>
				        <p>   How do we move from distraction, destruction, and chaos to possibility?</p>

<p>With kindness and compassion.  We are at a critical point in education where students are facing more stress and trauma than ever before.  As a result, children struggle to succeed in school, setting them on a negative cycle in life.  We need to show them positive possibilities.</p> 
<p>Inner Explorer’s daily mindfulness practices reduce student stress, help strengthen self-regulation skills and improve academic performance.  Teachers in pre-K through 12th grade classrooms simply log on and press ‘play’.  While the implementation is simple, the results are dramatic.</p>
<p> An example of this ongoing work of possibilities is in Flint, Michigan, where children have been exposed to lead poisoning, causing stress and trauma.  In November, every public school in Flint will begin using Inner Explorer daily to reach 25,000 students.</p>
<p> Although stress does not discriminate and it shows up in students regardless of socioeconomic status, your contribution will help Inner Explorer reach the underserved.  By reaching every child in these communities, through kindness and compassion, we can break the cycle in one generation. It’s hard to imagine a donation that could make a bigger impact on students than this one.</p>
<p> #BreakTheCycle</p>
				           <!--  <a href="#!" class="btn btn-lg btn-theme-colored mt-20">DONATE NOW</a> -->
				          </div>
				        </div>
				      </div>
               </section> --%>
				<script
					src="<%=request.getContextPath()%>/NewStyles/js/jssor1.slider-21.1.5.min.js"
					type="text/javascript"></script>
				<link rel="stylesheet" type="text/css"
					href="<%=request.getContextPath()%>/NewStyles/css/slider.css">

				<div id="jssor_1" class="sliderlayer1 banner1">
					<div data-u="slides" class="image-outer">
						<div data-p="225.00" style="display: none;">
							<img data-u="image"
								src="<%=request.getContextPath()%>/NewStyles/images/honor-banner-nw.jpg" />
							<div class="container">
								<div class="row">
									<div class="col-md-12">
										<div class="carousel-caption captwo">
											<div class="col-md-12 col-sm-12">
												<div class="banner-data1">
													<h2 class="">
														CHANGE THE WORLD. <span class=""> ONE STUDENT AT A
															TIME.</span>
													</h2>
													<button type="button"
														class="btn btn-success show_small_dvCon hidden-md hidden-sm hidden-lg"
														data-toggle="modal" data-target="#myModalSml">
														Read More</button>
													<div class="bigScreen hidden-xs">
														<p>We are grateful to all who contributed to our recent global campaign.
									 The generosity of our community continues to humble and amaze us. 
									 This drive to reach 100 new schools with Inner Explorer was nearly achieved.
									  The $36,644 raised will allow us to provide mindful awareness programs to 
									  81 schools reaching 10530 students. Inner Explorer's practices stimulate 
									  children to develop their natural promise and potential by bolstering
									   academic performance, creative, social and emotional aptitude, and well-being.  </p>
									<p>We will continue to accept monies in support of our mission of 
									One Million Mindful Children, and believe with your help we can create a more
									 compassionate, joyful, healthful, loving and peaceful world.  We're changing the world, 
									 one student at a time.</p>
									 <p>Thank You</p>
													</div>

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>

				</div>

				<!-- Modal -->
				<div id="myModalSml" class="modal fade" role="dialog">
					<div class="modal-dialog">

						<!-- Modal content-->
						<div class="modal-content  modal-contentCustom">
							<div class="modal-header modal-headerCustom"></div>
							<div class="modal-body">
								<div class="bigScreen">
									<p>How do we move from distraction, destruction, and chaos
										to possibility?</p>
									<p>With kindness and compassion. We are at a critical point
										in education where students are facing more stress and trauma
										than ever before. As a result, children struggle to succeed in
										school, setting them on a negative cycle in life. We need to
										show them positive possibilities.</p>
									<p>Inner Explorer’s daily mindfulness practices reduce
										student stress, help strengthen self-regulation skills and
										improve academic performance. Teachers in pre-K through 12th
										grade classrooms simply log on and press ‘play’. While the
										implementation is simple, the results are dramatic.</p>
									<p>An example of this ongoing work of possibilities is in
										Flint, Michigan. Children have been exposed to lead, which
										causes brain changes that inhibit learning. Flint Public
										Schools recently implemented Inner Explorer in every
										classroom, reaching 25,000 students, as a counter measure to
										lead poisoning and stress.</p>
									<p>Yet stress does not discriminate. It shows up in
										students regardless of socioeconomic status, regardless of zip
										code. Your contribution will help Inner Explorer reach every
										child, as we work to break the negative cycle in one
										generation.</p>
									<p>This may be the most impactful social justice and peace
										initiative of our time. Imagine the possibilities and positive
										impact on students your donation will make!</p>
									<p>#BreakTheCycle</p>
								</div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">Close</button>
							</div>
						</div>

					</div>
				</div>
				<!--end  -->
				<!-- #endregion Jssor Slider End -->
				<%-- <section class="banner">
                		<div class="hero-img">        
                                <img src="<%=request.getContextPath()%>/NewStyles/images/banner-donate-page.jpg" alt="" style="max-width:100%; width:100%">
    					</div>
				      <div class="container">
				        <div class="row">
				          <div class="col-md-8 banner-data">
				            <h2 class="">CHANGE THE WORLD. <span class="">ONE STUDENT AT A TIME.</span></h2>
				            <h2 class="">${campaign.title}</h2>
				           <p>${campaign.description}</p>
				           				           <!--  <a href="#!" class="btn btn-lg btn-theme-colored mt-20">DONATE NOW</a> -->
				          </div>
				        </div>
				      </div>
               </section>           
      --%>


				<!-- <div class="dntfirst">
				<div class="content_inner">
                    
                         
                        <div class="gps_img">
                            <div class="frame_gps"></div>
                        </div>

                   
                      
                             
                         </div>

                    </div> -->
			</div>

			<div class="dntfrth" id="donateHereButton">
				<div class="dntfrth_inner">
					<div class="dntfrthIn">
						<h4>We appreciate your Support</h4>
						<p>Inner Explorer is a non-profit organization under Section
							501(c)(3) of the Internal Revenue Code.</p>
						<div class="dntfrthIn-btn">
							<input type="button" value="Click Here to Contribute" id="donbt"
								onclick="showDonateFrom('${campaign.campaignEndDate}');" />
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-12" id="donateFormooo"></div>
			<div class="get_program_school no_gaptp gnewcolor" id="donateForm">

				<div class="gps_wrapper" style="display:none;">

					<div class="content_inner">
						<div class="tar_container tar_container-bar">
							<div class="tar_wrapper">
								<div class="tar_container">
									<div class="tar_wrapper_camp">
										<!-- <p>$490</p> -->
										<div class="progress-heading">
											<h2>CAMPAIGN TO SUPPORT 100 SCHOOLS</h2>
										</div>
										<div class="des_dtl">
											<ul>

												<%-- <fmt:parseNumber var="j" type="number" value="${campaign.donorContribution}" /> --%>

												<li><c:if test="${j gt 0}">
														<img
															src="<%=request.getContextPath()%>/NewStyles/images/des-2.png">
													</c:if></li>
											</ul>
										</div>
										<div class="range_wrpr">

											<div class="progress progress-custom"
												style="border: 5px solid #dadada; border-radius: 15px; overflow: hidden;">
												<div class="progress-bar progress-bar-warning pinpoint"
													id="contributeSchool" role="progressbar"
													style="border-top: 0px solid #fff; border-bottom: 0px solid #fff; border-radius: 10px 0px 0px 10px;">

												</div>


												<div class="progress-bar progress-bar-danger pinpoint"
													role="progressbar" id="donorContributedAmount"
													style="border-top: 0px solid #fff; border-bottom: 0px solid #fff; border-radius: 10px 0px 0px 10px; background-color: #f37021;">

												</div>

												<div class="progress-bar progress-bar-success pinpoint"
													id="needAssistance" role="progressbar"
													style="border-top: 0px solid #fff; border-bottom: none; border-radius: 0px 10px 10px 0; background-color: #dfe5e9;">
													<div class="progress-line"></div>
													<div class="pinpoint-txt">

														<div class="sch-contri" style="width: 180px; left: -81px;">TARGET
															= 100 SCHOOLS</div>
														<c:set var="min"
															value="${fn:substringBefore((campaign.amount), '.')}" />

														<fmt:setLocale value="en_US" />
														<fmt:formatNumber value="${min}" type="currency" var="min" />
														<div class="sch-contri-amt" style="color: #43A047;">${min}</div>

													</div>
												</div>


												<div class="progress-bar progress-bar-overload pinpoint"
													role="progressbar" id="donorContributedAmountOverload"
													style="border-top: 0px solid #fff; border-bottom: 5px solid #fff; border-radius: 0px 10px 10px 0;">

												</div>

											</div>
											<div class="amountBarDetail" style="margin: -7px;">
												<span id="totalDonationRaised"></span>
												<!--  <input type="hidden" id="totalDonationRaised"> -->
											</div>

										</div>
									</div>
								</div>

							</div>
						</div>

						<div class="col-sm-12 text-center">
							<input type="hidden" id="amount" class="form-control">
							<p>
								SCHOOLS SUPPORTED: <b id="totalSchools"
									class="suport_schol"></b>
							</p>
						</div>
					</div>
				</div>

				<div class="form-row">
					 <div class="row">
						<div class="col-md-6 col-md-offset-3" style="text-align: center;">
							 <div id="clockdiv">
								<%-- <div>
									<span class="days"></span>
									<div class="smalltext">Days</div>
								</div>
								<div>
									<span class="hours"></span>
									<div class="smalltext">Hours</div>
								</div>
								<div>
									<span class="minutes"></span>
									<div class="smalltext">Minutes</div>
								</div>
								<div>
									<span class="seconds"></span>
									<div class="smalltext">Seconds</div>
								</div> --%>
							</div> 
						</div>
					</div> 

					<div class="container">
						<div class="col-md-12 donrinfo-outr">
							<div class="heading-left">
								<h2 class="donr-info">Your Information</h2>
							</div>
						</div>
						<div class="">
							<form:form role="form" id="donationForm"
								action="addDonationAdminCamp" class="register-form"
								modelAttribute="dtoDonor" method="post">
								<div class="ContactForm mtop10">
									<form:input type="hidden" path="donorContributionId"
										value="${donorContribution.donorContributionId}"></form:input>
									<form:input type="hidden" path="campaignId"
										value="${campaign.campaignId}"></form:input>
									<form:input type="hidden" path="schoolId"
										value="${campaign.schoolId}"></form:input>

									<div class="col-md-4 col-sm-6">
										<form:input path="fName" id="fName" type="text" required=""
											placeholder="First Name"
											value="${donorContribution.firstName}" />
									</div>
									<div class="col-md-4 col-sm-6">
										<form:input path="lName" id="lName" type="text"
											placeholder="Last Name" value="${donorContribution.lastName}" />
									</div>
									<div class="col-md-4 col-sm-6">
										<form:input path="email" id="email" type="text" required=""
											placeholder="Email" value="${donorContribution.email}" />
									</div>
									<div class="col-md-4 col-sm-6" style="margin-top: 30px;">
										<form:input path="phoneNo" id="phone" type="text" 
											placeholder="PhoneNo" value="${donorContribution.phoneNo}" />
									</div>
									<div class="col-md-4 col-sm-6" style="margin-top: 30px;">
										<form:input path="address1" id="address1" type="text"
											required="" placeholder="Address"
											value="${donorContribution.address2}" />
									</div>
									<div class="col-md-4 col-sm-6" style="margin-top: 30px;">
										<form:input path="affiliationType" id="affiliationType"
											type="text" placeholder="How did you hear about us" />
									</div>
								</div>
								<div class="clr"></div>
								<div class="contribute_now">
									<div class="contr_nw_col_1">


										<div class="dollar_selection dollar_selection1 "
											style="width: 80% !important">
											<ul>
												<li><a onclick="donate(this,10);">$10</a></li>
												<li><a onclick="donate(this,50);">$50</a></li>
												<li><a onclick="donate(this,90);">$90</a></li>
												<li><a onclick="donate(this,125);">$125</a></li>
												<li><a style="background: #02a451; color: #fff"
													onclick="donate(this,450);">$450</a></li>
												<li><a onclick="donate(this,990);">$990</a></li>
												<li><a onclick="donate(this,2250);">$2250</a></li>
												<li><a onclick="donate(this,4500);">$4500</a></li>
												<!-- <li><a onclick="donate(this,5000);">$5000</a></li> -->
											</ul>
										</div>
									</div>
									<div class="dnt100dlr">
										<div class="dntimgsec">
											<img
												src="<%=request.getContextPath()%>/NewStyles/images/donate-icon-new.png"
												alt="" />
										</div>
										<div class="dnttxtsec secalign">
											<p class="pre-definetxt" style="padding-top: 0px;">
												Support Mindfulness Practice Program </br> 1 School for 1 Year
											</p>
											<p class="support-txt1"
												style="display: none; padding-top: 0px;">
												Support Mindfulness Practice Program </br> 1 Classroom for 1
												Month
											</p>
											<p class="support-txt2"
												style="display: none; padding-top: 0px;">
												Support Mindfulness Practice Program </br> 1 School for 1 Month
											</p>
											<p class="support-txt3"
												style="display: none; padding-top: 0px;">
												Support Mindfulness Practice Program </br> 1 Classroom for 1 Year
											</p>
											<p class="support-txt4"
												style="display: none; padding-top: 0px;">
												Support Mindfulness Practice Program </br> 1 School + Student
												Homes for 1 Month
											</p>
											<p class="support-txt5"
												style="display: none; padding-top: 0px;">
												Support Mindfulness Practice Program </br> 1 School for 1 Year
											</p>
											<p class="support-txt6"
												style="display: none; padding-top: 0px;">
												Support Mindfulness Practice Program </br> 1 School + Student
												Homes for 1 Year
											</p>
											<p class="support-txt7"
												style="display: none; padding-top: 0px;">
												Support Mindfulness Practice Program </br> 5 Schools for 1 Year
											</p>
											<p class="support-txt8"
												style="display: none; padding-top: 0px;">
												Support Mindfulness Practice Program </br> 10 Schools for 1 Year
											</p>

											<!-- <h4>Pay $ 450 to get school subscription for one year!</h4> -->
											<!-- <h4>If a school pays in full by August 12, they will get their first year for &#189; price, $300!</h4> -->
										</div>
									</div>
								</div>
								<div class="otherAmountWrapper">
									<%--  <div class="col-md-12">
						<input type="text" class="col-md-5 other-Amount" name="otherAmount" id="otherAmount" maxlength="10" placeholder="Other Amount" value="" autocomplete="off">
						<span class="radioChkpay" id="check3">  <input class="pull-left" type="radio" name="group1" value="OneTime" id="check-3" checked=""> <label class="chklbl" for="check-3"> &nbsp;One Time</label></span>
			            <span class="radioChkpay" id="check4"> <input class="pull-left" type="radio" name="group1" value="Month" id="check-4"> <label class="chklbl" for="check-4"> &nbsp;Monthly</label></span>
			            <span class="radioChkpay" id="check5">  <input class="pull-left" type="radio" name="group1" value="Year" id="check-5"> <label class="chklbl" for="check-5"> &nbsp;Annual</label></span>
					</div> --%>


									<div class="col-md-12 othAmount">
										<form:input type="hidden" id="amount" path="amount"
											value="${donorContribution.amount}" />
										<input type="hidden" id="selectedAmount"> <input
											type="text" class="col-md-5 other-Amount" name="otherAmount"
											id="otherAmount" onfocus="removeSelectedAmount();"
											onchange="setAnotherAmount();" maxlength="10"
											placeholder="Other Amount"
											value="${donorContribution.amount}" autocomplete="off">

										<span class="radioChkpay"><input type="radio"
											class="pull-left" name="group1" value="OneTime" id="check-3"
											checked=""> <label for="check-3" class="chklbl">One
												Time</label></span> <span class="radioChkpay" id="check4"> <input
											class="pull-left" type="radio" name="group1" value="Month"
											id="check-4"> <label for="check-4" class="chklbl">Monthly</label></span>
										<span class="radioChkpay" id="check5"> <input
											class="pull-left" type="radio" name="group1" value="Year"
											id="check-5"> <label for="check-5" class="chklbl">Annual</label></span>


									</div>
									<div class="contact-row">
										<!-- 	<div class=" payment_type">
		                  
             <div class="radio_payment ">
		            
		             <input type="radio" name="group1" value="Recurring" id="check-4" onchange="showPaymentType();"> <label for="check-4">Recurring</label>
		        </div> 
		        
		        
	                </div> -->
										<div class="sign_txt" style="display: none;"
											id="paymentTypeSelect">
											<form:select path="paymentType" class="select-dept">
												<option value="Day">Daily</option>
												<option value="Week">Weekly</option>
												<option value="Month">Monthly</option>
												<option value="Year">Yearly</option>
											</form:select>
										</div>

									</div>

									<%-- <div class="bg_share_new mrg_btm25">
        	<div class="make-card">
            	<p>We Support Following Payment Methods</p>
                	<ul>
                		<li><img src="<%=request.getContextPath()%>/NewStyles/images/paypal.png" alt="paypal"/></li>
                        <li><img src="<%=request.getContextPath()%>/NewStyles/images/visa-card.jpg" alt="visa card"/></li>
						<li><img src="<%=request.getContextPath()%>/NewStyles/images/master-card.jpg" alt="master card"/></li>
						<li><img src="<%=request.getContextPath()%>/NewStyles/images/discover-card.jpg" alt="discover card"/></li>
						 <li><img src="<%=request.getContextPath()%>/NewStyles/images/express-card.jpg" alt="express card"/></li>
						<li><img src="<%=request.getContextPath()%>/NewStyles/images/eCheck.png" alt="echeck"/></li> 
                    </ul>
            </div>
        </div> --%>

									<div class="newsletter col-md-9 p0">
										<p>Inner Explorer is a non-profit organization under
											Section 501(c)(3) of the Internal Revenue Code.</p>
										<div class="holder">
											<!-- <img src="<%=request.getContextPath()%>/NewStyles/images/donate-icon-new-pay.png" style="float:left; width:50px "/> -->
											<div class="container">
												<div class="row">

													<div class="col-md-2 col-sm-12">
														<p class="title pay450">WE ACCEPT</p>
													</div>
													<div class="col-md-10 imgpay">

														<img
															src="<%=request.getContextPath()%>/NewStyles/images/visa-card.jpg"
															alt="visa card"> <img
															src="<%=request.getContextPath()%>/NewStyles/images/master-card.jpg"
															alt="master card"> <img
															src="<%=request.getContextPath()%>/NewStyles/images/discover-card.jpg"
															alt="discover card"> <img
															src="<%=request.getContextPath()%>/NewStyles/images/express-card.jpg"
															alt="express card"> <img
															src="<%=request.getContextPath()%>/NewStyles/images/eCheck.png"
															alt="echeck"> <span class="paypal-via">VIA</span> <img
															src="<%=request.getContextPath()%>/NewStyles/images/paypal.png"
															alt="paypal" style="padding: 0; width: 92px">
													</div>

												</div>
											</div>
										</div>
									</div>
									<!-- <p class="employ_id_num">Inner Explorer is a 501(c)3 non profit organization, EIN 45-2395336</p>  -->
								</div>
								<div class="btns-outer mrg_btm25"
									style="float: left; text-align: left;">
									<div class="radio_payment radio_payment-new"
										style="display: none;">
										<input type="radio" name="iPledge" value="N" id="check-1"
											checked=""> <label for="check-1">Ready to Pay</label>
									</div>

								</div>
								<!-- <div class="btns-outer mrg_btm25">
			<input type="button" value="Pay Now" class="submit-btn fl"	id="demo_5" onclick="submitDonorForm(1);"/>
			<p class="cont-or"></p>
			<input type="button" value="Make a Pledge" class="submit-btn fl bgnone-bdrgrn"	id="cancelButton" onclick="submitDonorForm(2);" />
		</div> -->

								<div class="clear10new"></div>
								<div class="col-md-12 paybt">
									<input value="Pay Now" type="submit" class="donateBtn"
										onclick="submitDonorForm(1);" /> <input value="Make a Pledge"
										type="submit" class="donateBtn make-a-Pledge"
										onclick="submitDonorForm(2);" />
								</div>
								<input type="hidden" id="tempDonorId" name="tempDonorId"
									value="0">
							</form:form>
						</div>
					</div>

					<!-- dntSnd -->
					<!-- 	<div class="dntSnd">
				<div class="content_inner">


					
					<ul>
						<li>

							<h3>FLINT CRISIS</h3>
							<div class="dntSndIn">



								<h5>“There's a large-scale community mindfulness effort underway in Flint, MI to combat a health crisis: Flint area children may have suffered irreversible damage due lead-contaminated water…”</h5>
								<h6><a target="_blank" href="http://www.mindful.org/lead-crisis-flint-mindfulness-public-health/
">The Lead Crisis in Flint: Where Mindfulness and Public Health Meet</a></h6>
								<p>– mindful.org</p>
							</div>
						</li>
						<li>
							<h3>CHILD STRESS</h3>
							<div class="dntSndIn">



								<h5>“All children will experience stress, sometimes significant amounts of it, in their lives. Adults ordinarily fail to recognize the incidence and magnitude of stress in the lives of children…”</h5>
								<h6><a target="_blank" href="http://education.jhu.edu/PD/newhorizons/strategies/topics/Keeping%20Fit%20for%20Learning/stress.html
">The Powerful Impact of Stress</a></h6>
								<p>– John Hopkins School of Education</p>
							</div>
						</li>
						<li>

							<h3>TREATING TRAUMA IN SCHOOLS</h3>
							<div class="dntSndIn">



								<h5>“Research shows that children who experience trauma at an early age are more likely to act out in school. With caring teachers trained in trauma-informed care, these students can turn their grades... and their behaviors... ”</h5>
								<h6><a target="_blank" href="http://www.shreveporttimes.com/story/news/2016/10/23/treating-trauma-could-improve-disruptive-school-behavior-study-says/91693252/
">Treating trauma could improve disruptive school behavior, study says</a></h6>
								<p>- Shreveporttimes.com</p>
							</div>
						</li>
						<li>

							<h3>ADVERSE CHILDHOOD EXPERIENCES</h3>
							<div class="dntSndIn">



								<h5>“Neuroscience tells us that the brains of kids regularly facing significant trauma or toxic stress are wired for survival and likely to erupt at the smallest provocation.…”</h5>
								<h6><a target="_blank" href="http://www.theatlantic.com/education/archive/2016/07/teaching-traumatized-kids/490214/
">Teaching Traumatized Kids</a></h6>
								<p> – The Atlantic</p>
							</div>
						</li>
					</ul>
				</div>
			</div> -->

					<!-- dntthird -->
					<!-- <div class="dntthird">
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
							<p>School results show:</p>
							<ul>
								<li>10-30% improvement in grades (Reading, Math, Science, Social Studies)</li>
								<li>50% reduction in behavior problems including bullying and suspensions</li>
								<li>43% reduction in teacher’s stress</li>
								<li>Improved mental health, wellbeing, sleep quality, resilience and compassion</li>
							</ul>
						</div>
					</div>
				</div>
			</div> -->
					<div class="clear10new"></div>
					<div class="clear10new"></div>
					<div class="clear10new"></div>
					<div id="above_footer" class="dntfrthIn"
						style="text-align: center; color: #fff; font-size: 13px; border-radius: 0px; width: 100%">
						Funds collected will be considered part of Inner Explorer's
						unrestricted general fund, or may be used to support the general
						charitable mission and programs of Inner Explorer.</div>
				</div>
			</div>

		</div>
		<!--about_us ends-->

		<!--inner_header ends-->

	</div>
	<!--inner_wrapper ends-->


	<div id="principalDetailsPopUp" style="display: none"
		class="getstartForm_teacher margin-top-zero">
		<form action="principalDetails" id="principalDetailsForm"
			name="principalDetailsForm" method="post" class="register-principal">
			<h3 class="migChngPass">Enter Principal Details</h3>
			<ul id="principalDetails">

			</ul>
			<input type="hidden" id="emailCount" name="emailCount"> 
			<input type="hidden" id="donorEmail" name="donorEmail"> 
			<input type="button" value="SEND PROMO CODE" class="change_trackbtn_qus"
				onclick="submitEmailFrom();">
		</form>
	</div>
	<%@include file="footer.jsp"%>




	<script type="text/javascript">
$(document).ready(function() {  
	$.format = DateFormat.format;
	$("#amount").val(450);
	$("#donateForm").hide();
	$("above_footer").hide();
	$("#donateHereButton").show();
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
if(totalDonationAmount==""){
	$("#totalDonationRaised").text("$0 raised till "+clientDate);
}
else{
$("#totalDonationRaised").text("$"+parseInt(totalDonationAmount)+" raised till "+clientDate);
}
if(totalSchools==""){
	//$("#totalSchools").text;
}
else{
	
$("#totalSchools").text(Math.floor(parseInt(totalDonationAmount)/450));

}
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
} */

/* google.maps.event.addDomListener(window, 'load', getStudentAddressLatLong);  */

function donate(ele,value){
	
	$("#amount-error").hide();
	$('a[style*="background: #02a451"]').removeAttr("style");
	$(ele).attr("style","background: #02a451; color:#fff");
	
	var selectedAmount = value;
	//alert(selectedAmount);
	var amount = $("#amount").val();
	$("#amount").val(selectedAmount);
	$("#otherAmount").val("");
	
	if (selectedAmount == 10){
		 $(".support-txt1")[0].style.display="block";	
     	 $(".support-txt2")[0].style.display="none";	
     	 $(".support-txt3")[0].style.display="none";	
     	 $(".support-txt4")[0].style.display="none";	
     	 $(".support-txt5")[0].style.display="none";	
     	 $(".support-txt6")[0].style.display="none";	
     	 $(".support-txt7")[0].style.display="none";	
     	 $(".support-txt8")[0].style.display="none";	
     	 $(".pre-definetxt")[0].style.display="none";	
     	
	}else if (selectedAmount == 50){
		
		 $(".support-txt1")[0].style.display="none";	
		   $(".support-txt2")[0].style.display="block";	
		   $(".support-txt3")[0].style.display="none";	
		   $(".support-txt4")[0].style.display="none";	
		   $(".support-txt5")[0].style.display="none";	
		   $(".support-txt6")[0].style.display="none";	
		   $(".support-txt7")[0].style.display="none";	
		   $(".support-txt8")[0].style.display="none";	
		   $(".pre-definetxt")[0].style.display="none";	
	}else if (selectedAmount == 90){
		 $(".support-txt1")[0].style.display="none";	
		   $(".support-txt2")[0].style.display="none";	
		   $(".support-txt3")[0].style.display="block";	
		   $(".support-txt4")[0].style.display="none";	
		   $(".support-txt5")[0].style.display="none";	
		   $(".support-txt6")[0].style.display="none";	
		   $(".support-txt7")[0].style.display="none";	
		   $(".support-txt8")[0].style.display="none";	
		   $(".pre-definetxt")[0].style.display="none";	

	}else if (selectedAmount == 125){
		 $(".support-txt1")[0].style.display="none";	
		   $(".support-txt2")[0].style.display="none";	
		   $(".support-txt3")[0].style.display="none";	
		   $(".support-txt4")[0].style.display="block";	
		   $(".support-txt5")[0].style.display="none";	
		   $(".support-txt6")[0].style.display="none";	
		   $(".support-txt7")[0].style.display="none";	
		   $(".support-txt8")[0].style.display="none";	
		   $(".pre-definetxt")[0].style.display="none";	
	}
	else if (selectedAmount == 450){
		 $(".support-txt1")[0].style.display="none";	
		   $(".support-txt2")[0].style.display="none";	
		   $(".support-txt3")[0].style.display="none";	
		   $(".support-txt4")[0].style.display="none";	
		   $(".support-txt5")[0].style.display="block";	
		   $(".support-txt6")[0].style.display="none";	
		   $(".support-txt7")[0].style.display="none";	
		   $(".support-txt8")[0].style.display="none";	
		   $(".pre-definetxt")[0].style.display="none";	
	}
	else if (selectedAmount == 990){
		 $(".support-txt1")[0].style.display="none";	
		   $(".support-txt2")[0].style.display="none";	
		   $(".support-txt3")[0].style.display="none";	
		   $(".support-txt4")[0].style.display="none";	
		   $(".support-txt5")[0].style.display="none";	
		   $(".support-txt6")[0].style.display="block";	
		   $(".support-txt7")[0].style.display="none";	
		   $(".support-txt8")[0].style.display="none";	
		   $(".pre-definetxt")[0].style.display="none";	
	}else if (selectedAmount == 2250){
		 $(".support-txt1")[0].style.display="none";	
		   $(".support-txt2")[0].style.display="none";	
		   $(".support-txt3")[0].style.display="none";	
		   $(".support-txt4")[0].style.display="none";	
		   $(".support-txt5")[0].style.display="none";	
		   $(".support-txt6")[0].style.display="none";	
		   $(".support-txt7")[0].style.display="block";	
		   $(".support-txt8")[0].style.display="none";	
		   $(".pre-definetxt")[0].style.display="none";	
	}else if (selectedAmount == 4500){
		 $(".support-txt1")[0].style.display="none";	
		   $(".support-txt2")[0].style.display="none";	
		   $(".support-txt3")[0].style.display="none";	
		   $(".support-txt4")[0].style.display="none";	
		   $(".support-txt5")[0].style.display="none";	
		   $(".support-txt6")[0].style.display="none";	
		   $(".support-txt7")[0].style.display="none";	
		   $(".support-txt8")[0].style.display="block";	
		   $(".pre-definetxt")[0].style.display="none";	
	}
}

function removeSelectedAmount(){
	$("#amount").val($("#otherAmount").val());
	$('a[style*="background: #02a451;"]').removeAttr("style");
	
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

 function showDonateFrom(endDate){
	//alert(endDate);
	$("#donateForm").show();
	/* initializeClock('clockdiv', endDate); */
	$("above_footer").show();
	$("#donateHereButton").hide();
} 

function hideDonateFrom(){
	$("#donateForm").hide();
	$("#donateHereButton").hide();
} 

function submitDonorForm(paymentType){
	if(paymentType == 1){
	if($("#donationForm").valid()){
    var otherAmount=$("#amount").val();
	var otherAmount1= Number(otherAmount).toFixed(2);
	$("#otherAmount").val(otherAmount1);
	$("#amount").val(otherAmount1);
    $("#donationForm").submit();
		}
	}
	else{
	if($("#donationForm").valid()){
    $("#check-1").val("Y");
    var otherAmount=$("#amount").val();
	var otherAmount1= Number(otherAmount).toFixed(2);
	$("#otherAmount").val(otherAmount1);
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
					success : function(result) {

						if (result != 0) {

							$("#tempDonorId").val(result);

							$("#donationForm").submit();

						}

					}
				});
			}

		}
	</script>
	<script>




	function getTimeRemaining(endtime) {

	 var t = Date.parse(endtime) - Date.parse(new Date());

	 var seconds = Math.floor((t / 1000) % 60);

	 var minutes = Math.floor((t / 1000 / 60) % 60);

	 var hours = Math.floor((t / (1000 * 60 * 60)) % 24);

	 var days = Math.floor(t / (1000 * 60 * 60 * 24));

	  //var t = Date.parse(endtime) - Date.parse(new Date());

	 return {

	   'total': t,

	   'days': days,

	   'hours': hours,

	   'minutes': minutes,

	   'seconds': seconds

	 };

	}function initializeClock(id, endtime) {

	 var clock = document.getElementById(id);

	 var daysSpan = clock.querySelector('.days');

	 var hoursSpan = clock.querySelector('.hours');

	 var minutesSpan = clock.querySelector('.minutes');

	 var secondsSpan = clock.querySelector('.seconds');  function updateClock() {    var t = getTimeRemaining(endtime);    daysSpan.innerHTML = t.days;

	   hoursSpan.innerHTML = ('0' + t.hours).slice(-2);

	   minutesSpan.innerHTML = ('0' + t.minutes).slice(-2);

	   secondsSpan.innerHTML = ('0' + t.seconds).slice(-2);    if (t.total <= 0) {      clearInterval(timeinterval);

	   }

	 }  updateClock();

	 var timeinterval = setInterval(updateClock, 1000);}

	//var deadline = 24*60*60*1000; // hours*minutes*seconds*milliseconds

	/*var firstDate = new Date(2016,12,12);

	var secondDate = new Date(2016,12,30);var deadline = Math.round(Math.abs((firstDate.getTime() - secondDate.getTime())/(oneDay)));*/

	//var deadline = new Date(Date.parse(new Date()) + 30 * 24 * 60 * 60 * 1000);//var start = new Date(2016,12,10);

	//var end = new Date(2016,12,22);
	
	

	var deadline = new Date(new Date().getTime()+new Date('01/21/2017').getTime()-new Date().getTime());

	//var one_day=1000*60*60*24

	//alert(Math.ceil(new Date('12/12/2016').getTime()-new Date().getTime())/one_day);

	//new Date(new Date().getTime()+new Date(2016,12,22).getTime()-new Date(2016,12,10).getTime())

	/*var deadline = diff/(Date.parse(new Date()) + 30 * 24 * 60 * 60 * 1000);*/

	initializeClock('clockdiv', deadline);
	</script>


	<script type='text/javascript'>
		//<![CDATA[
		//$(window).load(function(){
		$(document).ready(function() {
			$('#donbt').click(function() {
				// Handler for .ready() called.
				$('html, body').animate({
					scrollTop : $('#donateForm').offset().top
				}, 'slow');
			});

		});//]]>
	</script>
	<script type='text/javascript'>
		//<![CDATA[
		//$(window).load(function(){
		$(document).ready(function() {
			$('#scrolbtncontribute').click(function() {
				// Handler for .ready() called.
				$('html, body').animate({
					scrollTop : $('#donateHereButton').offset().top
				}, 'slow');
			});

		});//]]>
	</script>
	
	<script>
		$('#donationForm').validate({
			errorElement : 'span', //default input error message container
			errorClass : 'help-block', // default input error message class
			focusInvalid : true, // do not focus the last invalid input
			ignore : "",
			rules : {

				email : {
					required : true,
					email : true
				},
				amount : {
				/* amountValid: true */
				},
				fName : {
					required : true,
					maxlength : 20
				},
				lName : {
					maxlength : 20
				},
				address1 : {
					required : true,
					maxlength : 100
				},
				city : {
					required : true,
					maxlength : 20
				},
				state : {
					required : true,
					maxlength : 20
				},
				/* zipCode:{
					required: true,
				maxlength : 20
				}, */
				country : {
					required : true
				},
				affiliationType : {
				/* required: true */
				},
				otherAmount : {
					amountValid : true,
					amountRegex : true,
					amountZero : true
				},
				phoneNo : {

				}

			},

			invalidHandler : function(event, validator) { //display error alert on form submit   
			},

			highlight : function(element) { // hightlight error inputs
				$(element).closest('.outer-field').addClass('has-error'); // set error class to the control group
				$(element).closest('.fullrow').addClass('has-error'); // set error class to the control group
			},

			success : function(label) {
				label.closest('.outer-field').removeClass('has-error');
				label.remove();
			},

			errorPlacement : function(error, element) {
				if (element.attr("name") == "tnc") { // insert checkbox errors after the container                  
					error.insertAfter($('#register_tnc_error'));
				} else if (element.closest('.input-icon').size() === 1) {
					error.insertAfter(element.closest('.input-icon'));
				} else {
					error.insertAfter(element);
				}
			},

			submitHandler : function(form) {
				form.submit();
			}
		});
	</script>

	<script>
		jssor_1_slider_init = function() {

			var jssor_1_SlideoTransitions = [ [ {
				b : -1,
				d : 1,
				o : -1
			}, {
				b : 0,
				d : 1000,
				o : 1
			} ], [ {
				b : 1900,
				d : 2000,
				x : -379,
				e : {
					x : 7
				}
			} ], [ {
				b : 1900,
				d : 2000,
				x : -379,
				e : {
					x : 7
				}
			} ], [ {
				b : -1,
				d : 1,
				o : -1,
				r : 288,
				sX : 9,
				sY : 9
			}, {
				b : 1000,
				d : 900,
				x : -1400,
				y : -660,
				o : 1,
				r : -288,
				sX : -9,
				sY : -9,
				e : {
					r : 6
				}
			}, {
				b : 1900,
				d : 1600,
				x : -200,
				o : -1,
				e : {
					x : 16
				}
			} ] ];

			var jssor_1_options = {
				$AutoPlay : true,
				$SlideDuration : 800,
				$SlideEasing : $Jease$.$OutQuint,
				$CaptionSliderOptions : {
					$Class : $JssorCaptionSlideo$,
					$Transitions : jssor_1_SlideoTransitions
				},
				$ArrowNavigatorOptions : {
					$Class : $JssorArrowNavigator$
				},
				$BulletNavigatorOptions : {
					$Class : $JssorBulletNavigator$
				}
			};

			var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

			//responsive code begin
			//you can remove responsive code if you don't want the slider scales while window resizing
			function ScaleSlider() {
				var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
				if (refSize) {
					refSize = Math.min(refSize, 1920);
					jssor_1_slider.$ScaleWidth(refSize);
				} else {
					window.setTimeout(ScaleSlider, 30);
				}
			}
			ScaleSlider();
			$Jssor$.$AddEvent(window, "load", ScaleSlider);
			$Jssor$.$AddEvent(window, "resize", ScaleSlider);
			$Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
			//responsive code end
		};
	</script>
	<script type="text/javascript">
		jssor_1_slider_init();
	</script>
</body>
</html>
