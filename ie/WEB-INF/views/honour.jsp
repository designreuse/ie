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
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="description" content="Your contributions will help bring Inner Explorer’s mindfulness programs to students in need in the U.S. and around the world. ">

<meta name="keywords" content="Donate Mindfulness in Memory/Honor of…">

<title>Donate In Honour</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/flexslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/donate-honor-style.css">

<style>
._wrapper .progress{overflow: inherit !important;}
</style>
<style type="text/css">

</style>
</head>

<body>
<div class="wrapper">
<%@include file="header.jsp" %>
    
    <!--inner_wrapper starts-->
   
            
                
                
                
 <div class="inner_wrapper"> 
        
        <!--about_us starts-->
        <div class="about_us">
                <!-- <div class="pracProgress_hdr">
                    <h2>In Honor/Memory of…</h2>
                    <div class="green_line_btm"></div>
                </div> -->
                <div class="videobtn ">
	                  <a href='<%=request.getContextPath()%>/contribute-now'  class="btn-new-contribut"><img src="<%=request.getContextPath()%>/NewStyles/images/gc.png" class="imgvc">&nbsp;GLOBAL CAMPAIGN</a>
	                 <a href='<%=request.getContextPath()%>/sponsorNew' class="btn-new-contribut btnextrapadding"><img src="<%=request.getContextPath()%>/NewStyles/images/bs.png" class="imgvc">&nbsp; BE A SPONSOR</a>
	                 <a href='<%=request.getContextPath()%>/honour' class="btn-new-contribut btn-actv"><img src="<%=request.getContextPath()%>/NewStyles/images/don-ne.png" class="imgvc">&nbsp; DONATE IN HONOR</a>
				</div>
           <%--      <section class="banner">
				      <div class="container">
				        <div class="row">
				          <div class="col-md-8 banner-data">
				            <h2 class="">Change the World. <span class=""> One Student at a Time.</span></h2>
				            <p>How do we move from distraction, destruction, and chaos to possibility?</p>

    <p>With kindness and compassion.  We are at a critical point in education where students are facing more stress and trauma than ever before.  As a result, children struggle to succeed in school, setting them on a negative cycle in life.  We need to show them positive possibilities.</p>

<p>Inner Explorer’s daily mindfulness practices reduce student stress, help strengthen self-regulation skills and improve academic performance.  Teachers in pre-K through 12th grade classrooms simply log on and press ‘play’.  While the implementation is simple, the results are dramatic.</p>

<p>Although stress does not discriminate and it shows up in students regardless of socioeconomic status, your contribution will help Inner Explorer reach the underserved.  By reaching every child in these communities, through kindness and compassion, we can break the cycle in one generation.</p>

<p>It’s hard to imagine a donation in Honor or Memory of your loved ones that could make a bigger impact on students than this one.
#BreakTheCycle</p>
							
							</p>
				           <!--  <a href="#!" class="btn btn-lg btn-theme-colored mt-20">DONATE NOW</a> -->
				          </div>
				        </div>
				      </div>
               </section> --%>
               
    <script src="<%=request.getContextPath()%>/NewStyles/js/jssor1.slider-21.1.5.min.js" type="text/javascript"></script>  
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/slider.css">
  
    <div id="jssor_1" class="sliderlayer1 banner1">      
        <div data-u="slides" class="image-outer">            
            <div data-p="225.00" style="display: none;">
                <img data-u="image" src="<%=request.getContextPath()%>/NewStyles/images/honor-banner-nw.jpg"  />
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="carousel-caption captwo">
                                  <div class="col-md-12 col-sm-12">
                                     <div class="banner-data1">
                                    <h2 class="">CHANGE THE WORLD. <span class=""> ONE STUDENT AT A TIME.</span></h2>
                                   	 <button type="button" class="btn btn-success show_small_dvCon hidden-md hidden-sm hidden-lg" data-toggle="modal" data-target="#myModalSml">
                                    Read More</button>
                                   <div class="bigScreen hidden-xs">
                                   		<p>How do we move from distraction, destruction, and chaos to possibility?</p>

                                    	<p>With kindness and compassion. We are at a critical point in education where students are facing more stress and trauma than ever before. As a result, children struggle to succeed in school, setting them on a negative cycle in life. We need to show them positive possibilities.</p>

										<p>Inner Explorer’s daily mindfulness practices reduce student stress, help strengthen self-regulation skills and improve academic performance. Teachers in pre-K through 12th grade classrooms simply log on and press ‘play’. While the implementation is simple, the results are dramatic.</p>

										<p>Although stress does not discriminate and it shows up in students regardless of socioeconomic status, your contribution will help Inner Explorer reach the underserved. By reaching every child in these communities, through kindness and compassion, we can break the cycle in one generation.</p>

										<p>It’s hard to imagine a donation in Honor or Memory of your loved ones that could make a bigger impact on students than this one.</p>
										<p> #BreakTheCycle</p>
									</div>	
                                   <!--  <a href="#!" class="btn btn-lg btn-theme-colored mt-20">DONATE NOW</a> -->
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
												      <div class="modal-header modal-headerCustom">
												        
												      </div>
												      <div class="modal-body">
												        <div class="bigScreen">
					                                  	  	<p>How do we move from distraction, destruction, and chaos to possibility?</p>

                                    	<p>With kindness and compassion. We are at a critical point in education where students are facing more stress and trauma than ever before. As a result, children struggle to succeed in school, setting them on a negative cycle in life. We need to show them positive possibilities.</p>

										<p>Inner Explorer’s daily mindfulness practices reduce student stress, help strengthen self-regulation skills and improve academic performance. Teachers in pre-K through 12th grade classrooms simply log on and press ‘play’. While the implementation is simple, the results are dramatic.</p>

										<p>Although stress does not discriminate and it shows up in students regardless of socioeconomic status, your contribution will help Inner Explorer reach the underserved. By reaching every child in these communities, through kindness and compassion, we can break the cycle in one generation.</p>

										<p>It’s hard to imagine a donation in Honor or Memory of your loved ones that could make a bigger impact on students than this one.</p>
										<p> #BreakTheCycle</p>
														</div>
												      </div>
												      <div class="modal-footer">	
												      	 <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>											       
												      </div>
												    </div>
												
												  </div>
												</div>
									<!--end  -->   
    <!-- #endregion Jssor Slider End -->
	    </div>
			
    </div>    

            	<div class="get_program_school no_gaptp gnewcolor" id="donateForm">
                
                <div class="gps_wrapper">
                   
                    <div class="content_inner">
                   <div class="tar_container tar_container-bar">
     
                    
                    
                    </div> 
                </div>
                 </div>
<section class="donation-section">
	<div class="container">
		
		<form:form role="form" id="donationForm" action="addDonationAdminCamp" class="register-form" modelAttribute="dtoDonor" method="post"> 			
			 
			<div class="form-row">
				<div class="row">
					<div class="col-md-12 donrinfo-outr">
						<div class="heading-left">
							<h2 class="donr-info">In Honor/Memory of…</h2>
						</div>
					</div>	
					<div class="col-md-5 col-sm-6">
						<form:input type="text"  id="h_name" placeholder="Name" required="" path="honourName" value="${donorContribution.honourName}"></form:input>
					</div>
					<div class="col-md-7 col-sm-6">
						<form:input type="text" placeholder="Say Something more about him/her " name="Message" id="h_desc" path="honourDesc" value="${donorContribution.honourDesc}"></form:input>
					
					</div>
					<div class="col-md-12 donrinfo-outr">
					<div class="heading-left">
							<h2 class="donr-info">Your Information</h2>
						</div>
					</div>	
					 <form:input type="hidden" path="donorContributionId" value="${donorContribution.donorContributionId}"></form:input>
                    <form:input type="hidden" path="campaignId" value="${campaign.campaignId}"></form:input>
                    <form:input type="hidden" path="schoolId" value="${campaign.schoolId}"></form:input>
					<div class="col-md-4 col-sm-6">
						<form:input path="fName" id="fName" type="text" required="" placeholder="First Name" value="${donorContribution.firstName}"/>
					</div>
					<div class="col-md-4 col-sm-6">
						<form:input path="lName" id="lName" type="text" required=""  placeholder="Last Name" value="${donorContribution.lastName}"/>
					</div>
					<div class="col-md-4 col-sm-6">
						<form:input path="email" id="email" type="text" required="" placeholder="Email" value="${donorContribution.email}"/>
					</div>
					<div class="col-md-4 col-sm-6">
						
						<form:input type="text" placeholder="Phone" name="Phone"  id="phoneNo" path="phoneNo" value="${donorContribution.phoneNo}"></form:input>
					</div>
					<div class="col-md-4 col-sm-6">
						<input placeholder="How did you hear about us" type="text">
					</div>
					<div class="col-md-4">
						<form:input path="address1" id="address1" type="text" required=""  placeholder="Address" value="${donorContribution.address2}"/>
					</div>
					
				</div>
				<div class="row">
					<div class="clear30"></div>
					<div class="col-md-6">
					
						<ul class="priceUl">
							<li>
								<input name="amount" id="radio_1" type="radio" value="10" class="radio" onchange="onradiocheck();">
									<label for="radio_1" id="radio_1_span" >
										<span class="show">$10</span>
									</label>
							</li>
							<li>
								<input name="amount" id="radio_2" type="radio" value="50" class="radio" onchange="onradiocheck();">
										<label for="radio_2" id="radio_2_span">
											<span class="show">$50</span>
										</label>
							</li>
							<li>
								<input name="amount" id="radio_3" type="radio" value="90" class="radio" onchange="onradiocheck();">
								<label for="radio_3"  id="radio_3_span">
									<span class="show">$90</span>
								</label>
							</li>
							<li>
								<input name="amount" id="radio_4" type="radio" value="125" class="radio" onchange="onradiocheck();">
								<label for="radio_4"  id="radio_4_span">
									<span class="show">$125</span>
								</label>
							</li>
							<li>
								<input name="amount" id="radio_5" type="radio" value="450" class="radio"  checked="true" onchange="onradiocheck();">
								<label for="radio_5"  id="radio_5_span">
									<span class="show amount">$450</span>
								</label>
							</li>
							<li>
								<input name="amount" id="radio_6" type="radio" value="990" class="radio" onchange="onradiocheck();">
									<label for="radio_6"  id="radio_6_span">
										<span class="show">$990</span>
								</label>
							</li>
							<li>
								<input name="amount" id="radio_7" type="radio" value="2250" class="radio" onchange="onradiocheck();">
									<label for="radio_7"  id="radio_7_span">
										<span class="show">$2250</span>
								</label>
							</li>
							<li>
								<input name="amount" id="radio_8" type="radio" value="4500" class="radio" onchange="onradiocheck();">
									<label for="radio_8"  id="radio_8_span">
										<span class="show">$4500</span>
								</label>
							</li>
						</ul>
							<!-- <div class="paymnt-impaypal">
									<p>We Support Following Payment Methods</p>
			                		<img src="NewStyles/images/paypal.png" alt="paypal">
			                        <img src="NewStyles/images/visa-card.jpg" alt="visa card">
									<img src="NewStyles/images/master-card.jpg" alt="master card">
									<img src="NewStyles/images/discover-card.jpg" alt="discover card">
									<img src="NewStyles/images/express-card.jpg" alt="express card">
									<img src="NewStyles/images/eCheck.png" alt="echeck">
							</div> -->
					</div>
					<!-- <div class="col-md-6">
						<div class="dnt100dlrhover">
				        	<div class="dntimgsec">
				        		<img src="NewStyles/images/donate-icon-new.png" alt="">
				        	</div>
				        	<div class="dnttxtsec secalign" >
				        	<p class="pre-definetxt" style="padding-top: 0px;">Provide Mindfulness to 1 School for 1 Year</p>	
				        	<p class="support-txt1" style="display:none; padding-top: 0px;">Provide Mindfulness to 1 Classroom for 1 Month</p>
				        	<p class="support-txt2" style="display:none; padding-top: 0px;">Provide Mindfulness to 1 School for 1 Month</p>
				        	<p class="support-txt3" style="display:none; padding-top: 0px;">Provide Mindfulness to 1 Classroom for 1 Year</p>
				        	<p class="support-txt4" style="display:none; padding-top: 0px;">Provide Mindfulness to 1 PTO [School + All students' homes] for 1 Month</p>
				        	<p class="support-txt5" style="display:none; padding-top: 0px;">Provide Mindfulness to 1 School for 1 Year</p>
				        	<p class="support-txt6" style="display:none; padding-top: 0px;">Provide Mindfulness to 1 PTO [School + All students' homes] for 1 Year</p>
				        	<p class="support-txt7" style="display:none; padding-top: 0px;">Provide Mindfulness to 5 Schools for 1 Year</p>
				        	<p class="support-txt8" style="display:none; padding-top: 0px;">Provide Mindfulness to 10 Schools for 1 Year</p>
				        	
				        	</div>
				        </div>
					</div> -->
					<div class="dnt100dlr">
	        	<div class="dntimgsec">
	        		<img src="<%=request.getContextPath()%>/NewStyles/images/donate-icon-new.png" alt=""/>
	        	</div>
	        	<div class="dnttxtsec secalign" >
	        	 <p class="pre-definetxt" > Support Mindfulness Practice Program </br> 1 School for 1 Year</p>	
				 <p class="support-txt1" style="display:none; ">Support Mindfulness Practice Program </br> 1 Classroom for 1 Month</p>
				 <p class="support-txt2" style="display:none; ">Support Mindfulness Practice Program </br> 1 School for 1 Month</p>
				 <p class="support-txt3" style="display:none; ">Support Mindfulness Practice Program </br> 1 Classroom for 1 Year</p>
				 <p class="support-txt4" style="display:none; ">Support Mindfulness Practice Program </br> 1 School + Student Homes for 1 Month</p>
				 <p class="support-txt5" style="display:none; ">Support Mindfulness Practice Program </br> 1 School for 1 Year</p>
				 <p class="support-txt6" style="display:none; ">Support Mindfulness Practice Program </br> 1 School + Student Homes for 1 Year</p>
				 <p class="support-txt7" style="display:none; ">Support Mindfulness Practice Program </br> 5 Schools for 1 Year</p>
				 <p class="support-txt8" style="display:none; ">Support Mindfulness Practice Program </br> 10 Schools for 1 Year</p>
	        	 
	        	<!-- <h4>Pay $ 450 to get school subscription for one year!</h4> -->
	        		<!-- <h4>If a school pays in full by August 12, they will get their first year for &#189; price, $300!</h4> -->
	        	</div>
	        </div>
					
			 
				 <div class="clear30"></div>
					<div class="col-md-12">
					
					
					 <input type="text" class="col-md-5 other-Amount" name="otherAmount" id="otherAmount" maxlength="10" placeholder="Other Amount"  autocomplete="off" >
						
						<span class="radioChkpay" id="check3">  <input class="pull-left" type="radio" name="group1" value="OneTime" id="check-3" checked=""> <label class="chklbl" for="check-3"> &nbsp;One Time</label></span>
			            <span class="radioChkpay" id="check4"> <input class="pull-left" type="radio" name="group1" value="Month" id="check-4"> <label class="chklbl" for="check-4"> &nbsp;Monthly</label></span>
			            <span class="radioChkpay" id="check5">  <input class="pull-left" type="radio" name="group1" value="Year" id="check-5"> <label class="chklbl" for="check-5"> &nbsp;Annual</label></span>
					</div>
					
				
					

					<div class="newsletter col-md-8">
					<p>Inner Explorer is a non-profit organization under Section 501(c)(3) of the Internal Revenue Code.</p>
						<div class="holder">
							<!-- <img src="<%=request.getContextPath()%>/NewStyles/images/donate-icon-new-pay.png" style="float:left; width:50px "/> -->
							<div class="container">
								<div class="row">

									<div class="col-md-2 col-sm-12"><p class="title pay450">WE ACCEPT</p></div>
									<div class="col-md-10 imgpay">
										
				                        <img src="<%=request.getContextPath()%>/NewStyles/images/visa-card.jpg" alt="visa card">
										<img src="<%=request.getContextPath()%>/NewStyles/images/master-card.jpg" alt="master card">
										<img src="<%=request.getContextPath()%>/NewStyles/images/discover-card.jpg" alt="discover card">
										<img src="<%=request.getContextPath()%>/NewStyles/images/express-card.jpg" alt="express card">
										<img src="<%=request.getContextPath()%>/NewStyles/images/eCheck.png" alt="echeck">
                                        <span class="paypal-via">VIA</span>
                                        <img src="<%=request.getContextPath()%>/NewStyles/images/paypal.png" alt="paypal" style="padding:0; width:92px">
									</div>
									
								</div>
							</div>
						</div>
					</div>
					<div class="btns-outer mrg_btm25" style="float:left;text-align:left;">
				 <div class="radio_payment radio_payment-new" style="display: none;">
		             <input type="radio" name="iPledge" value="N" id="check-1" checked=""> <label for="check-1">Ready to Pay</label>
		        </div>
				
		</div>	
					<div class="clear30"></div>
					<div class="col-md-12">
					<input value="Pay Now" type="submit" class="donateBtn" onclick="submitDonorForm(1);">
					<input value="Make a Pledge" type="submit" class="donateBtn make-a-Pledge" onclick="submitDonorForm(2);">
					</div>
				</div>	
			</div>
		</form:form>
	
	</div>
	
</section>
            </div>
            <!-- dntSnd -->            
            
 <div id="above_footer" class="dntfrthIn" style="text-align:center; color:#fff; font-size:13px; border-radius:0px;width:100%">
 Funds collected will be considered part of Inner Explorer's unrestricted general fund, or may be used to support the general charitable mission and programs of Inner Explorer.
 </div>           
            
<%--             <div id="principalDetailsPopUp" style="display: none" class="getstartForm_teacher margin-top-zero">
		<form action="principalDetails" id="principalDetailsForm" name="principalDetailsForm" method="post" class="register-principal">
		<h3 class="migChngPass">Enter Principal Details</h3>
			<ul id="principalDetails">
               
              </ul>
              <input type="hidden" id="emailCount" name="emailCount">
               <input type="hidden" id="donorEmail" name="donorEmail">
              
			<input type="button" value="SEND PROMO CODE" class="change_trackbtn_qus" onclick="submitEmailFrom();">
		</form>
	</div> --%>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/dateFormat.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.formatCurrency.all.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=places"></script>
<script type="text/javascript">
 function onradiocheck()
		{
			if(($('#radio_1')[0].checked)==true)
			{
				
				  $("#radio_1")[0].checked=true;	
				  $("#radio_2")[0].checked=false;	
				  $("#radio_3")[0].checked=false;	
				  $("#radio_4")[0].checked=false;	
				  $("#radio_5")[0].checked=false;	
				  $("#radio_6")[0].checked=false;	
				  $("#radio_7")[0].checked=false;	
				  $("#radio_8")[0].checked=false;	
				  $("#radio_1_span .show").addClass("amount");
				  $("#radio_2_span .show").removeClass("amount");
				  $("#radio_3_span .show").removeClass("amount");
				  $("#radio_4_span .show").removeClass("amount");
				  $("#radio_5_span .show").removeClass("amount");
				  $("#radio_6_span .show").removeClass("amount");
				  $("#radio_7_span .show").removeClass("amount");
				  $("#radio_8_span .show").removeClass("amount");
				   $(".support-txt1")[0].style.display="block";	
     			   $(".support-txt2")[0].style.display="none";	
     			   $(".support-txt3")[0].style.display="none";	
     			   $(".support-txt4")[0].style.display="none";	
     			   $(".support-txt5")[0].style.display="none";	
     			   $(".support-txt6")[0].style.display="none";	
     			   $(".support-txt7")[0].style.display="none";	
     			   $(".support-txt8")[0].style.display="none";	
     			   $(".pre-definetxt")[0].style.display="none";	
 			   
			}
			else if(($('#radio_2')[0].checked)==true){
				  
				  $("#radio_1")[0].checked=false;	
				  $("#radio_2")[0].checked=true;	
				  $("#radio_3")[0].checked=false;	
				  $("#radio_4")[0].checked=false;	
				  $("#radio_5")[0].checked=false;	
				  $("#radio_6")[0].checked=false;	
				  $("#radio_7")[0].checked=false;	
				  $("#radio_8")[0].checked=false;		
				  $("#radio_1_span .show").removeClass("amount");
				  $("#radio_2_span .show").addClass("amount");
				  $("#radio_3_span .show").removeClass("amount");
				  $("#radio_4_span .show").removeClass("amount");
				  $("#radio_5_span .show").removeClass("amount");
				  $("#radio_6_span .show").removeClass("amount");
				  $("#radio_7_span .show").removeClass("amount");
				  $("#radio_8_span .show").removeClass("amount");

				   $(".support-txt1")[0].style.display="none";	
     			   $(".support-txt2")[0].style.display="block";	
     			   $(".support-txt3")[0].style.display="none";	
     			   $(".support-txt4")[0].style.display="none";	
     			   $(".support-txt5")[0].style.display="none";	
     			   $(".support-txt6")[0].style.display="none";	
     			   $(".support-txt7")[0].style.display="none";	
     			   $(".support-txt8")[0].style.display="none";	
     			   $(".pre-definetxt")[0].style.display="none";	
			}
			else if(($('#radio_3')[0].checked)==true){
				  
				  $("#radio_1")[0].checked=false;	
				  $("#radio_2")[0].checked=false;	
				  $("#radio_3")[0].checked=true;	
				  $("#radio_4")[0].checked=false;	
				  $("#radio_5")[0].checked=false;	
				  $("#radio_6")[0].checked=false;	
				  $("#radio_7")[0].checked=false;	
				  $("#radio_8")[0].checked=false; 	
				  $("#radio_1_span .show").removeClass("amount");
				  $("#radio_2_span .show").removeClass("amount");
				  $("#radio_3_span .show").addClass("amount");
				  $("#radio_4_span .show").removeClass("amount");
				  $("#radio_5_span .show").removeClass("amount");
				  $("#radio_6_span .show").removeClass("amount");
				  $("#radio_7_span .show").removeClass("amount");
				  $("#radio_8_span .show").removeClass("amount");
				   $(".support-txt1")[0].style.display="none";	
     			   $(".support-txt2")[0].style.display="none";	
     			   $(".support-txt3")[0].style.display="block";	
     			   $(".support-txt4")[0].style.display="none";	
     			   $(".support-txt5")[0].style.display="none";	
     			   $(".support-txt6")[0].style.display="none";	
     			   $(".support-txt7")[0].style.display="none";	
     			   $(".support-txt8")[0].style.display="none";	
     			   $(".pre-definetxt")[0].style.display="none";	
			}
			else if(($('#radio_4')[0].checked)==true){
				  $("#radio_1")[0].checked=false;	
				  $("#radio_2")[0].checked=false;	
				  $("#radio_3")[0].checked=false;	
				  $("#radio_4")[0].checked=true;	
				  $("#radio_5")[0].checked=false;	
				  $("#radio_6")[0].checked=false;	
				  $("#radio_7")[0].checked=false;	
				  $("#radio_8")[0].checked=false;
				  $("#radio_1_span .show").removeClass("amount");
				  $("#radio_2_span .show").removeClass("amount");
				  $("#radio_3_span .show").removeClass("amount");
				  $("#radio_4_span .show").addClass("amount");
				  $("#radio_5_span .show").removeClass("amount");
				  $("#radio_6_span .show").removeClass("amount");
				  $("#radio_7_span .show").removeClass("amount");
				  $("#radio_8_span .show").removeClass("amount");
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
			else if(($('#radio_5')[0].checked)==true){
				
				  $("#radio_1")[0].checked=false;	
				  $("#radio_2")[0].checked=false;	
				  $("#radio_3")[0].checked=false;	
				  $("#radio_4")[0].checked=false;	
				  $("#radio_5")[0].checked=true;	
				  $("#radio_6")[0].checked=false;	
				  $("#radio_7")[0].checked=false;	
				  $("#radio_8")[0].checked=false;	
				  $("#radio_1_span .show").removeClass("amount");
				  $("#radio_2_span .show").removeClass("amount");
				  $("#radio_3_span .show").removeClass("amount");
				  $("#radio_4_span .show").removeClass("amount");
				  $("#radio_5_span .show").addClass("amount");
				  $("#radio_6_span .show").removeClass("amount");
				  $("#radio_7_span .show").removeClass("amount");
				  $("#radio_8_span .show").removeClass("amount");
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
			else if(($('#radio_6')[0].checked)==true){
				
				  $("#radio_1")[0].checked=false;	
				  $("#radio_2")[0].checked=false;	
				  $("#radio_3")[0].checked=false;	
				  $("#radio_4")[0].checked=false;	
				  $("#radio_5")[0].checked=false;	
				  $("#radio_6")[0].checked=true;	
				  $("#radio_7")[0].checked=false;	
				  $("#radio_8")[0].checked=false;	
				  $("#radio_1_span .show").removeClass("amount");
				  $("#radio_2_span .show").removeClass("amount");
				  $("#radio_3_span .show").removeClass("amount");
				  $("#radio_4_span .show").removeClass("amount");
				  $("#radio_5_span .show").removeClass("amount");
				  $("#radio_6_span .show").addClass("amount");
				  $("#radio_7_span .show").removeClass("amount");
				  $("#radio_8_span .show").removeClass("amount");

				  $(".support-txt1")[0].style.display="none";	
     			   $(".support-txt2")[0].style.display="none";	
     			   $(".support-txt3")[0].style.display="none";	
     			   $(".support-txt4")[0].style.display="none";	
     			   $(".support-txt5")[0].style.display="none";	
     			   $(".support-txt6")[0].style.display="block";	
     			   $(".support-txt7")[0].style.display="none";	
     			   $(".support-txt8")[0].style.display="none";	
     			   $(".pre-definetxt")[0].style.display="none";
			}
			else if(($('#radio_7')[0].checked)==true){
				
				  $("#radio_1")[0].checked=false;	
				  $("#radio_2")[0].checked=false;	
				  $("#radio_3")[0].checked=false;	
				  $("#radio_4")[0].checked=false;	
				  $("#radio_5")[0].checked=false;	
				  $("#radio_6")[0].checked=false;	
				  $("#radio_7")[0].checked=true;	
				  $("#radio_8")[0].checked=false; 
				  $("#radio_1_span .show").removeClass("amount");
				  $("#radio_2_span .show").removeClass("amount");
				  $("#radio_3_span .show").removeClass("amount");
				  $("#radio_4_span .show").removeClass("amount");
				  $("#radio_5_span .show").removeClass("amount");
				  $("#radio_6_span .show").removeClass("amount");
				  $("#radio_7_span .show").addClass("amount");
				  $("#radio_8_span .show").removeClass("amount");
				  $(".support-txt1")[0].style.display="none";	
     			   $(".support-txt2")[0].style.display="none";	
     			   $(".support-txt3")[0].style.display="none";	
     			   $(".support-txt4")[0].style.display="none";	
     			   $(".support-txt5")[0].style.display="none";	
     			   $(".support-txt6")[0].style.display="none";	
     			   $(".support-txt7")[0].style.display="block";	
     			   $(".support-txt8")[0].style.display="none";	
     			   $(".pre-definetxt")[0].style.display="none";
			}
			else if(($('#radio_8')[0].checked)==true){
				  
				  $("#radio_1")[0].checked=false;	
				  $("#radio_2")[0].checked=false;	
				  $("#radio_3")[0].checked=false;	
				  $("#radio_4")[0].checked=false;	
				  $("#radio_5")[0].checked=false;	
				  $("#radio_6")[0].checked=false;	
				  $("#radio_7")[0].checked=false;	
				  $("#radio_8")[0].checked=true; 
				  $("#radio_1_span .show").removeClass("amount");
				  $("#radio_2_span .show").removeClass("amount");
				  $("#radio_3_span .show").removeClass("amount");
				  $("#radio_4_span .show").removeClass("amount");
				  $("#radio_5_span .show").removeClass("amount");
				  $("#radio_6_span .show").removeClass("amount");
				  $("#radio_7_span .show").removeClass("amount");
				  $("#radio_8_span .show").addClass("amount");
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
</script>

<script type="text/javascript">
$(document).ready(function() {  
	$.format = DateFormat.format;
	
	 
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


	$.validator.addMethod("nameRegex", function(value, element) {
        return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
    }, "Field must contain letters only.");
	
	
	/* $.validator.addMethod("amountZero", function(value, element) {
        return ($("#amount").val()!=0 || $("#amount").val()!=0.00);
    }, "Please enter amount greater than zero."); */
	
	
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
        	
        	phoneNo:{
        	     
        	 
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

google.maps.event.addDomListener(window, 'load', getStudentAddressLatLong);  */



function removeSelectedAmount(){
	$("#amount").val($("#otherAmount").val());
	$('a[style*="background: #02a451"]').removeAttr("style");
}
function setAnotherAmount() {
	
	var otherAmount = $("#amount").val();
	alert('otherAmount'+otherAmount);
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
 
function showDonateFrom(){
	$("#donateForm").show();
	$("#donateHereButton").hide();
}
 


function submitDonorForm(paymentType){
	if(paymentType == 1){
	if($("#donationForm").valid()){
		$("#otherAmount").val();
		$("#amount").val();
		
		
    $("#donationForm").submit();
		}
	}
	else{
	if($("#donationForm").valid()){
    $("#check-1").val("Y");
/*     var otherAmount=$("#amount1").val();
	var otherAmount1= Number(otherAmount).toFixed(2);
	$("#otherAmount").val(otherAmount1);
	$("#amount").val(otherAmount1) */;
	$("#otherAmount").val();
	$("#amount").val();
	
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
			
		      
                   $("#donationForm").submit();
           

		}	
			
	    }
		});
	}
	
}

</script>

<script>
$(document).ready(function(){
   $("#otherAmount").focus(function(){
          
                 $("#radio_1")[0].checked=false;    
                  $("#radio_2")[0].checked=false;    
                  $("#radio_3")[0].checked=false;    
                  $("#radio_4")[0].checked=false;    
                  $("#radio_5")[0].checked=false;    
                  $("#radio_6")[0].checked=false;    
                  $("#radio_7")[0].checked=false;    
                  $("#radio_8")[0].checked=false;    
        $('span').removeClass('amount');
   });
});
</script>
<script>
jssor_1_slider_init = function() {
    
    var jssor_1_SlideoTransitions = [
      [{b:-1,d:1,o:-1},{b:0,d:1000,o:1}],
      [{b:1900,d:2000,x:-379,e:{x:7}}],
      [{b:1900,d:2000,x:-379,e:{x:7}}],
      [{b:-1,d:1,o:-1,r:288,sX:9,sY:9},{b:1000,d:900,x:-1400,y:-660,o:1,r:-288,sX:-9,sY:-9,e:{r:6}},{b:1900,d:1600,x:-200,o:-1,e:{x:16}}]
    ];
    
    var jssor_1_options = {
      $AutoPlay: true,
      $SlideDuration: 800,
      $SlideEasing: $Jease$.$OutQuint,
      $CaptionSliderOptions: {
        $Class: $JssorCaptionSlideo$,
        $Transitions: jssor_1_SlideoTransitions
      },
      $ArrowNavigatorOptions: {
        $Class: $JssorArrowNavigator$
      },
      $BulletNavigatorOptions: {
        $Class: $JssorBulletNavigator$
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
        }
        else {
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
   <script type="text/javascript">jssor_1_slider_init();</script>
</body>
</html>
            