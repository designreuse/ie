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
<title>Inner Explorer </title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
</head>

<body>
	<div class="wrapper">
		<header id="header">
        <div class="container ">
            <div class="logo">
					<a onclick="location.href='<%=request.getContextPath()%>/donor';" title=""><img src="<%=request.getContextPath()%>/NewStyles/images/logo.jpg" alt="Inner Explorer" title="Inner Explorer" /></a>
				</div>
            <div class="hdRight">
                <nav>
                  <ul id="demo-menu" class="menu-list">
                   <li><a href="#" class="font_strong dk_black" title="">Welcome Contributor</a></li>
    
                    </ul>
                </nav>
                <div class="startRight">
						<input type="button" value="Logout"onclick="location.href='<%=request.getContextPath()%>/j_spring_security_logout';" class="startBtn"/>
					</div>
            </div>
        </div>
    </header>
		<section class="slider-inner">
			<img src="<%=request.getContextPath()%>/NewStyles/images/browse-donation-header.jpg" alt="Slider" />
		</section>

		<section class="makeDonateSct mtop-5">
			<div class="containerSmall">
				<h2>Contribute to Inner Explorer</h2>
				<div class="bluetehDsh"></div>
				<p class="make-para">Feel free to use the info above to contact us. Or simply fill out the form below.</p>
				<div class="clr"></div>
				
				<div class="ContactForm mtop10">
					<ul>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="First Name" />
									</div>
								</div>
							</div>
						</li>
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Last Name" />
									</div>
								</div>
							</div>
						</li>
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Address" />
									</div>
								</div>
							</div>
						</li>
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Street Address" />
									</div>
								</div>
							</div>
						</li>
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Address Line 2" />
									</div>
								</div>
							</div>
						</li>
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="sign_txt">
										 <select class="select-dept">
											<option>Contributor Type</option>
										 </select>
									</div>
								</div>
							</div>
						</li>
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="State / Province / Region" />
									</div>
								</div>
							</div>
						</li>
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Postal / Zip Code" />
									</div>
								</div>
							</div>
						</li>
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="City" />
									</div>
								</div>
							</div>
						</li>
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="sign_txt">
										 <select class="select-dept">
											<option>Country</option>
										 </select>
									</div>
								</div>
							</div>
						</li>
            		<li>
							<div class="contact-row">
								
									<div class=" payment_type">
                  <label>Payment Type:</label>
                  <div class="radio_payment">
                  <span><input type="radio" name="radio"> Recurring</span>
                  <span><input type="radio" name="radio"> One Time</span>
                  </div>
                  </div>
                  
                  <div class="sign_txt">
										 <select class="select-dept">
											<option>Frequency</option>
										 </select>
									</div>
								
							</div>
						</li>
						
						<li>
							<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Email" />
									</div>
								</div>
							</div>
						</li>
						
					</ul>
				</div>
				<div class="clr"></div>
				<div class="contribute_now">
        <div class="contr_nw_col_1">
        <h4>Contribute Now</h4>
        <div class="dollar_selection">
        <ul>
        <li><a href="javascript:;">$2</a></li>
        <li><a href="javascript:;">$4</a></li>
         <li><a href="javascript:;">$10</a></li>
         <li><a href="javascript:;">$20</a></li>
         <li><a href="javascript:;">$40</a></li>
          <li><a href="javascript:;">$50</a></li>
        <li><a href="javascript:;">$80</a></li>
         <li><a href="javascript:;">$100</a></li>
         <li><a href="javascript:;">$150</a></li>
         <li><a href="javascript:;">$250</a></li>
        </ul>
        </div>
        
        <div class="other_amount">
        <div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="text" placeholder="Other Amount">
									</div>
								</div>
							</div>
        </div>
        </div>
        <div class="contr_nw_col_2">
        <div class="every_contry">
            <img src="<%=request.getContextPath()%>/NewStyles/images/every-contribution.jpg" alt=""/> </div>
        </div>
        </div>
				
<!-- 				<div class="make-checkbox">
					<p>May we add you to our email newsletter list? </p>
					<ul>
						<li><input type="checkbox" value="" name="donate"><label>Yes, I'd like to receive </label></li>
					</ul>
				
				</div> -->
				
				<div class="make-card">
					<p>Cards Accepted</p>
					<ul>
						<li><img src="<%=request.getContextPath()%>/NewStyles/images/visa-card.jpg" alt="visa card"/></li>
						<li><img src="<%=request.getContextPath()%>/NewStyles/images/master-card.jpg" alt="master card"/></li>
						<li><img src="<%=request.getContextPath()%>/NewStyles/images/express-card.jpg" alt="express card"/></li>
						<li><img src="<%=request.getContextPath()%>/NewStyles/images/discover-card.jpg" alt="discover card"/></li>
					</ul>
				</div>
        
        <div class="make-card">
					<p>Share on</p>
					<ul>
						 
						<li><a href="#"><img src="<%=request.getContextPath()%>/NewStyles/images/share-icon-2.jpg" alt=""></a></li>
						<li><a href="#"><img src="<%=request.getContextPath()%>/NewStyles/images/share-icon-5.jpg" alt=""></a></li>
            <li><a href="#"><img src="<%=request.getContextPath()%>/NewStyles/images/share-icon-4.jpg" alt=""></a></li>
						<li><a href="#"><img src="<%=request.getContextPath()%>/NewStyles/images/share-icon-3.jpg" alt=""></a></li>
						<li><a href="#"><img src="<%=request.getContextPath()%>/NewStyles/images/share-icon-1.jpg" alt=""></a></li>
					</ul>
				</div>
										
				<div class="btns-outer mtop30">
					<input type="submit" value="MAKE PAYMENT" class="submit-btn fl" />
				</div>
			</div>
		</section>
	</div>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
   <script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
   <%@include file="../footer.jsp" %>
   <script type="text/javascript">	
	jQuery(document).ready
	(function($){
		$.daisyNav();
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
	
</script>

</body>
</html>
