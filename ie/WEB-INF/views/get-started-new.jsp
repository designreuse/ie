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
<title>Get Started</title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/jquery-anyslider.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/NewStyles/css/bootstrap.min.css">
<style>
.p0{padding:0 !important}
.pr5{padding-right: 5px !important}
.extra-plan ul{background: #f0f0f0 none repeat scroll 0 0;}
.getstartForm_started-new .planouter {
 /*   background: #f0f0f0 none repeat scroll 0 0;*/
    border: 1px solid #cbcbcb;
    display: inline-block;
    margin:0;
    padding: 0px;
    vertical-align: top;
  
}
.launch-img-new {
    float: left;
    margin: 0;
    padding: 0;
    position: relative;
    width: 100%; background-color: #fff
}

.launch-img-new img {
    float: left;
    width: 100%;
}

.launch-text-cntr-new {
    min-height: auto;
    text-align: center !important;
}
.launch-text-new {
    color: #555555;
    float: left;
    font-size: 14px;
    line-height: 23px;
    margin: 0;
    min-height: 10px;
    padding: 6px;
    text-align: left;
    width: 100%;
}

.launch-btn-new {
    float: left;
    margin: 0;
    padding: 0;
    text-align: center;
    width: 100%;
}

.launch-btn-new a {
    background: #09a753 none repeat scroll 0 0;
    border-radius: 25px;
    color: #fff;
    display: block;
    font-size: 15px;
    margin: 0 auto;
    padding: 5px;
    width: 100px;
}
.price-new strong {
    color: #09a753 ;
    font-size: 28px;
    font-weight: 400;
    line-height: 40px; float: left; width: 100%
}
.plan-desc{ background-color: #fff;
    font-size: 13px;
    line-height: 26px;
    list-style: outside none none;
    margin-left: 0;
    padding: 0 10px; margin-bottom: 0; float: left; width: 100%; text-align: center;}
     .plan-desc li:first-child{line-height: 18px; padding: 10px 0}
  .plan-desc li{border-bottom: 1px solid #d8d8d8; line-height: 25px}
/*  .two-img img{width: 50%}*/
.two-img-outer p{position: absolute;left: 10px; top: 50%}
.two-img-outer-right p{position: absolute;right: 5px; top: 50%}
.two-img-outer-leftside p {
    left: 10px;
    position: absolute;
    top: 50%;
}
.two-img-outer-leftsideright p {
    right: 5px;
    position: absolute;
    top: 50%;
}
.mtnew{margin-top:30px}
.pCustom{padding:0 0 0 7px !important}
.lihover{font-weight: 600 !important; }
.planouter:hover .plan-desc{background-color: #f9f9f9 !important}
.planouter:hover li.lihover{font-weight: 600 !important; background-color: #f9f9f9}
.planouter:hover {box-shadow: -2px -3px 20px #d9d9d9}
.planouter:hover  .price{background-color: #02a451;
    font-size: 20px;
    padding: 3px 12px;
    color: #fff;
    border-radius: 3px;
    box-shadow: 0 0 10px #d9d9d9;opacity: 1 !important}
    .mtnew{margin-bottom:20px}
</style>

</head>

<body>
<div class="wrapper">
<%@include file="header.jsp" %>
  <section class="makeDonateSct">
			<div class="containerSmall">
        <div class="pracProgress_hdr">
                    <h2>Get Started</h2>
                    <div class="green_line_btm"></div>
                </div>
			</div>
		</section>
        <section class="get-started-new-sec">
        	<div class="container">
        	<div class="listing-section-tree"> 
        		<div class="listing-sec-66">
                	<a href="javascript:;" class="cntrbdr">School Edition</a>
        			<div class="tree-add-border-b"></div>
                    <div class="listing-section ptop40"> 
        				<ul class="">
        					<li class="tree-add width48">
                    			<a class="list-admn" href="<%=request.getContextPath()%>/signup-step1">&nbsp;</a>
                    			<p>As a School Administrator, I am interested in rolling-out Mindful Awareness Program in my school.</p>
            				</li>   
            				<li class="tree-add width48">            		
                                <a class="list-tch" href="<%=request.getContextPath()%>/teacher-signon">&nbsp;</a>
                                <p>As a Teacher, I am interested in starting Mindful Awareness Program for my class. </p>
                            </li>  
            			</ul>
        			</div>
                </div>
                <div class="listing-sec-33">
                	<a href="javascript:;" class="cntrbdr">Home Edition</a>
                        <div class="listing-section ptop40"> 
        	<ul class="">
        		 
            	<li class="tree-add width48" onmouseover="showToolTip();" onmouseout="hideToolTip();">
            		
                    <a class="list-parnt" href="<%=request.getContextPath()%>/home-edition-new">&nbsp;</a>
                    <!-- <p>As a Parent, I am interested in bringing Mindful Awareness Program to my kid’s class </p> -->
                     <p> As a Parent, I am interested in introducing a Mindful Awareness Program at Home for myself & family.</p>
                     <div class="pos-rel-ho">
                     <div style="display: none;" id="toolTiptext" class="get-start-hover">
                     <p>+ 36 Audio guided practice sessions</p>
                     <p>+ Ability to share program with friends & family</p>
                     <p>+ Unlimited access to Inner Explorer RADIO</p>
                     <p>+ Supplement Resources & Activities</p>
                     </div>
                     </div>
            	</li>  	
            </ul>
        </div>
                </div>
        			
        			<li>
        				
        			</li>
        		
        	</div>
            	<div class="get-started-plans-new">
            	<a href="https://www.youtube.com/watch?v=XXEc8ybDXRw" class="reg-adm-btn">HOW TO REGISTER AS AN ADMINISTRATOR</a>
            	<!-- <ul>
                	<li>
                    	<div class="plan-year-mnth">
                        	<a class="started-plan-mnth" href="javascript:;" onclick="showPrinciPalText('1');">
                            	<h2>$${principalSubAmtMntly}</h2>
                                <h4>month</h4>
                            </a>
                            <a class="started-plan-year" href="javascript:;" onclick="showPrinciPalText('2');">
                            	<h2>$${principalSubAmtYrly}</h2>
                                <h4>year</h4>
                            </a>
                        </div>
                        <div class="get-plan-des" id="priplan1">
                        	<p>Pay as you go Plan</p>
							<p>No hidden charges</p>
							<p>Option to 'pause' your subscription during summer</p>
							<p>Unlimited access to IE content</p>
							<p>Automatic updates</p>
                            <a class="green_btn_home learnclass" href="javascript:void(0);">READ MORE</a>
                        </div>
                        <div class="get-plan-des" style="display:none;" id="priplan2">
                        	<p>Pay as you go Plan</p>
							<p>No hidden charges</p>
							<p>Option to 'pause' your subscription during summer</p>
							<p>Unlimited access to IE content</p>
							<p>Automatic updates</p>
                            <a class="green_btn_home learnclass" href="javascript:void(0);">READ MORE</a>
                        </div>
                    </li>
                    <li>
                    	<div class="plan-year-mnth">
                        	<a class="started-plan-mnth" href="javascript:;" onclick="showTeacherText('1');">
                            	<h2>$${teacherSubMnthlyAmt}</h2>
                                <h4>month</h4>
                            </a>
                            <a class="started-plan-year" href="javascript:;" onclick="showTeacherText('2');">
                            	<h2>$${teacherSubYrlyAmt}</h2>
                                <h4>year</h4>
                            </a>
                        </div>
                        <div class="get-plan-des" id="teacplan1">
                        	<p>Pay as you go Plan</p>
							<p>No hidden charges</p>
							<p>Option to 'pause' your subscription during summer</p>
							<p>Unlimited access to IE content</p>
							<p>Automatic updates</p>
                            <a class="green_btn_home learnclass" href="javascript:void(0);">READ MORE</a>
                        </div>
                        <div class="get-plan-des" style="display:none;" id="teacplan2">
                        	<p>Pay as you go Plan</p>
							<p>No hidden charges</p>
							<p>Option to 'pause' your subscription during summer</p>
							<p>Unlimited access to IE content</p>
							<p>Automatic updates</p>
                            <a class="green_btn_home learnclass" href="javascript:void(0);">READ MORE</a>
                        </div>
                    </li>
                    <li>
                    	<div class="plan-year-mnth">
                        	<a class="started-plan-mnth" href="javascript:;" onclick="showParentText('1');">
                            	<h2>$${parentMonthlyAmount}</h2>
                                <h4>month</h4>
                            </a>
                            <a class="started-plan-year" href="javascript:;" onclick="showParentText('2');">
                            	<h2>$${parentYearlyAmount}</h2>
                                <h4>year</h4>
                            </a>
                        </div>
                        <div class="get-plan-des" id="parentplan1">
                        	<p>Practice mindfulness</p>
                            <p>Age based custom tracks</p>
                            <p>Complementary activities to enhance the experience</p>
                            <p>Ability to become Brand Ambassador for local school(s)</p>
                            <p>Access to IE Radio</p>
                            <p>Start a fund raising campaign</p>
                            <p>Share Inner Explorer Radio</p>
                            <p>Gift Home Edition subscription to friends & family</p>
                            <p>Ability to customize the account for your family</p>
                            <a class="green_btn_home learnclass" href="javascript:void(0);">READ MORE</a>
                        </div>
                        <div class="get-plan-des" style="display:none;" id="parentplan2">
                        	<p>Practice mindfulness</p>
                            <p>Age based custom tracks</p>
                            <p>Complementary activities to enhance the experience</p>
                            <p>Ability to become Brand Ambassador for local school(s)</p>
                            <p>Access to IE Radio</p>
                            <p>Start a fund raising campaign</p>
                            <p>Share Inner Explorer Radio</p>
                            <p>Gift Home Edition subscription to friends & family</p>
                            <p>Ability to customize the account for your family</p>
                            <a class="green_btn_home learnclass" href="javascript:void(0);">READ MORE</a>
                        </div>
                    </li>
                </ul> -->
               <div class="col-md-12 p0 mtnew">
                       <div class="col-md-8 p0">
                            <div class="col-md-6 plan-new-outer getstartForm_started-new p0">
                                   <div class="planouter" id="first-plan">
                                      <div class="launch-img-new">
                                          <div class="col-md-6 p0 two-img-outer">
                                           <p class="price"><strong>$50</strong>/month</p>
                                            <img src="<%=request.getContextPath()%>/NewStyles/images/zero.jpg" class=" img-responsive pr5">
                                          </div>
                                          <div class="col-md-6 p0 two-img-outer-right">
                                              <p class="price"><strong>$450</strong>/Year</p>
                                             <img src="<%=request.getContextPath()%>/NewStyles/images/launch-img-2.jpg" class=" img-responsive">
                                          </div>
                                      </div>
                                      <!-- <div class="launch-text-new launch-text-cntr-new text-center">
                                         Program for 3 months
                                      </div>
                                      <div class="price-new text-center">
                                          <strong>$10</strong>
                                      </div> -->
                                      <ul class="plan-desc">
                                          <li><b>Pre-Pay for a year and save Plan or 'Pay as you go' Plan</b></li>
                                          <li class="lihover">Unlimited access for all classrooms in school</li>
                                          <li class="lihover">Overview of classroom practice progress</li>
                                          <li class="lihover">Age based tracks</li>
                                          <li class="lihover">Online Training</li>
                                          <li>No hidden charges</li>
                                          <li>Automatic updates</li>                                          
                                          <li>Access to IE Radio</li>
                                          <li>Start a fund raising campaign</li>
                                      </ul>                             
                                  </div>
                            </div>
                            <div class="col-md-6 plan-new-outer getstartForm_started-new pCustom">
                                   <div class="planouter" id="first-plan">
                                      <div class="launch-img-new">
                                          <div class="col-md-6 p0 two-img-outer">
                                           <p class="price"><strong>$10</strong>/month</p>
                                            <img src="<%=request.getContextPath()%>/NewStyles/images/teacher1.jpg" class=" img-responsive pr5">
                                          </div>
                                          <div class="col-md-6 p0 two-img-outer-right">
                                              <p class="price"><strong>$90</strong>/Year</p>
                                             <img src="<%=request.getContextPath()%>/NewStyles/images/teacher2.jpg" class=" img-responsive">
                                          </div>
                                      </div>
                                      <!-- <div class="launch-text-new launch-text-cntr-new text-center">
                                         Program for 3 months
                                      </div>
                                      <div class="price-new text-center">
                                          <strong>$10</strong>
                                      </div> -->
                                       <ul class="plan-desc">
                                          <li><b>Pre-Pay for a year and save Plan or 'Pay as you go' Plan</b></li>
                                          <li class="lihover">Unlimited access for all classrooms in school</li>
                                          <li class="lihover">Overview of classroom practice progress</li>
                                          <li class="lihover">Age based tracks</li>
                                          <li class="lihover">Online Training</li>
                                          <li>No hidden charges</li>
                                          <li>Automatic updates</li>                                          
                                          <li>Access to IE Radio</li>
                                          <li>Start a fund raising campaign</li>
                                      </ul>                           
                                  </div>
                                  
                            </div>

                       </div> 
                       <div class="col-md-4  p0">
                            <div class="col-md-11 col-md-offset-1 plan-new-outer getstartForm_started-new p0">
                                   <div class="planouter" id="first-plan">
                                      <div class="launch-img-new">
                                          <div class="col-md-6 p0 two-img-outer">
                                           <p class="price"><strong>$10/</strong> 3 Months</p>
                                            <img src="<%=request.getContextPath()%>/NewStyles/images/monthly.jpg" class=" img-responsive pr5">
                                          </div>
                                          <div class="col-md-6 p0 two-img-outer-right">
                                              <p class="price"><strong>$30</strong>/Year</p>
                                             <img src="<%=request.getContextPath()%>/NewStyles/images/oneyear.jpg" class=" img-responsive">
                                          </div>
                                      </div>
                                      <!-- <div class="launch-text-new launch-text-cntr-new text-center">
                                         Program for 3 months
                                      </div>
                                      <div class="price-new text-center">
                                          <strong>$10</strong>
                                      </div> -->
                                      <ul class="plan-desc">
                                      <li><b>Pre-Pay for a year and save Plan or 'Pay as you go' Plan</b></li>
                                           <li>Practice mindfulness</li>
                                          <li>Age based custom tracks</li>
                                          <li>Complementary activities to enhance the experience</li>
                                          <li>Ability to become Brand Ambassador for local school(s)</li>
                                          <li>Access to IE Radio</li>
                                      </ul>
                                      <ul class="plan-desc p0">
                                       <li><b>Extra Features for Yearly Subscription</b></li>
                                          <li>Access to IE Radio</li>
                                          <li>Start a fund raising campaign</li>
                                          <li>Share Inner Explorer Radio</li>
                                          <li>Gift Home Edition subscription to friends & family</li>
                                          <li>Ability to customize the account for your family</li>
                                      </ul>                                                               
                                  </div>
                                  <div class="col-md-6 col-md-offset-6  extra-plan p0">

                                </div>
                            </div>
                            <!-- <div class="col-md-6 p0 plan-new-outer getstartForm_started-new">
                                   <div class="planouter" id="first-plan">
                                      <div class="launch-img-new">
                                          <img src="images/parent1.jpg">
                                      </div>
                                      <div class="launch-text-new launch-text-cntr-new text-center">
                                         Subscription Price for 3 months
                                      </div>
                                      <div class="price-new text-center">
                                          <strong>$10</strong>
                                      </div>
                                      <ul class="plan-desc">
                                           <li>Practice mindfulness</li>
                                          <li>Age based custom tracks</li>
                                          <li>Complementary activities to enhance the experience</li>
                                          <li>Ability to become Brand Ambassador for local school(s)</li>
                                          <li>Access to IE Radio</li>
                                      </ul>                           
                                  </div>
                            </div>
                            <div class="col-md-6 p0 plan-new-outer getstartForm_started-new">
                                   <div class="planouter" id="first-plan">
                                      <div class="launch-img-new">
                                          <img src="images/parent2.jpg">
                                      </div>
                                      <div class="launch-text-new launch-text-cntr-new text-center">
                                         Subscription Price for 1 Year
                                      </div>
                                      <div class="price-new text-center">
                                          <strong>$30</strong>
                                      </div>
                                      <ul class="plan-desc">
                                          <li>Practice mindfulness</li>
                                          <li>Age based custom tracks</li>
                                          <li>Complementary activities to enhance the experience</li>
                                          <li>Ability to become Brand Ambassador for local school(s)</li>
                                          <li>Access to IE Radio</li>
                                          <li>Start a fund raising campaign</li>
                                          <li>Share Inner Explorer Radio</li>
                                          <li>Gift Home Edition subscription to friends & family</li>
                                          <li>Ability to customize the account for your family</li>
                                      </ul>                           
                                  </div>
                            </div> -->
                            
                        </div>
                  </div>
           
            </div>
            </div>
        </section> 
  
</div>

<form action="signup" method="GET" id="subscriptionForm">
    <input type="hidden" name="planId" id="planId"/>
</form>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
<script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
		$("#header").sticky({ topSpacing: 0 });
		$("#login").click(function(e) {
	        $(".login_panel").toggle();
	        e.stopPropagation();
	    });
	});
</script>
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexisel.js"></script>
<script defer src="<%=request.getContextPath()%>/NewStyles/js/jquery.flexslider.js"></script>
<script type="text/javascript">
   $(function(){
	      SyntaxHighlighter.all();
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

	    function showToolTip(){
	    	$("#toolTiptext").show();
	    }
	    function hideToolTip(){
	    	$("#toolTiptext").hide();
	    }
	    
	    function showPrinciPalText(priText)
	    {
	    	var priText=priText;
	    	if(priText == "1"){
	    		$("#priplan1").show();
	    		$("#priplan2").hide();
	    	}
	    	else if(priText == "2"){
	    		$("#priplan1").hide();
	    		$("#priplan2").show();
	    	}
	    }
	    
	    function showTeacherText(teachText)
	    {
	    	var teachText=teachText;
	    	if(teachText == "1"){
	    		$("#teacplan1").show();
	    		$("#teacplan2").hide();
	    	}
	    	else if(teachText == "2"){
	    		$("#teacplan1").hide();
	    		$("#teacplan2").show();
	    	}
	    }
	    
	    function showParentText(parentText)
	    {
	    	var parentText=parentText;
	    	if(parentText == "1"){
	    		$("#parentplan1").show();
	    		$("#parentplan2").hide();
	    	}
	    	else if(parentText == "2"){
	    		$("#parentplan1").hide();
	    		$("#parentplan2").show();
	    	}
	    }
	    
	    
</script>
</body>
</html>


