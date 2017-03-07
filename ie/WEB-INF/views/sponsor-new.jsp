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
<title>Be a Sponsor </title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/carousel.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/jquery.timepicker.css">
<style>

</style>

</head>

<body>
<div class="wrapper">
		<%@include file="header.jsp" %>
<section class="makeDonateSct">
			<div class="containerSmall">
        <!-- <div class="pracProgress_hdr">
                    <h2>Be a Sponsor</h2>
                    <div class="green_line_btm"></div>
                </div> -->
			</div>
			  <div class="videobtn ">
	                  <a href='<%=request.getContextPath()%>/contribute-now'  class="btn-new-contribut"><img src="<%=request.getContextPath()%>/NewStyles/images/gc.png" class="imgvc">&nbsp;GLOBAL CAMPAIGN</a>
	                 <a href='<%=request.getContextPath()%>/sponsorNew' class="btn-new-contribut btn-actv btnextrapadding"><img src="<%=request.getContextPath()%>/NewStyles/images/bs.png" class="imgvc">&nbsp; BE A SPONSOR</a>
	                 <a href='<%=request.getContextPath()%>/honour' class="btn-new-contribut"><img src="<%=request.getContextPath()%>/NewStyles/images/don-ne.png" class="imgvc">&nbsp; DONATE IN HONOR</a>
				</div>
		</section>
        <section class="get-started-new-sec">
        	<div class="container">
        	 <form:form name="sponsorForm" id="sponsorForm" modelAttribute="dtoSponsor" action="sponsorNewSave" method="POST">
            	<div class="sponsor-list-main">
                	<ul>
                    	<li>
                        	<div class="sponsor-list-bro" id="bronze" onclick="showTickMark('bronze');">
                            	<p>Bronze sponsors</p>
                                <h4>$2500</h4>
                                <img alt="" src="" id="checkBronze"/>
                            </div>
						
                        </li>
                        <li>
                        	<div class="sponsor-list-sil" id="silver" onclick="showTickMark('silver');">
                            	<p>Silver sponsors</p>
                                <h4>$5000</h4>
                                 <img alt="" src="" id="checkSilver"/>
                            </div>
                        </li>
                        <li>
                        	<div class="sponsor-list-gol" id="gold" onclick="showTickMark('gold');">
                            	<p>Gold sponsors</p>
                                <h4>$10,000</h4>
                                 <img alt="" src="" id="checkGold"/>
                            </div>
                        </li>
                        <li>
                        	<div class="sponsor-list-pla" id="platinum" onclick="showTickMark('platinum');">
                            	<p>Platinum sponsors</p>
                                <h4>$25,000</h4>
                                 <img alt="" src="" id="checkPlatinum"/>
                            </div>
                        </li>
                    </ul>
                </div>
                <div>
               <input type="hidden" name="sponsorShip" id="sponsorShip">
                </div>
                <div class="sponsor-improve">
                	<div class="improve-head">
                    	Your Support Improves Our Schools
                    </div>
                    <div class="improve-content">
                    	<p>Individual donors help students and classes. Sponsors support schools, school systems and states.</p>
                        <p>We’d be delighted to speak with you about the benefits of Inner Explorer’s programs and the results we’ve seen thus far. Please call us at 888-466-9732, email us at <a href="mailto:info@innerexplorer.org">info@innerexplorer.org</a>, or fill out the contact form below. Thank you for your interest!</p>
                    </div>
                    <div class="improve-form">
                    	<div class="getstartForm_teacher">
                            <ul>
                                <li>
                                    <div class="contact-row">
                                        <div class="outer-field-wrap">
                                            <div class="outer-field">
                                                <input type="text" placeholder="First Name" name="firstName">
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="contact-row">
                                        <div class="outer-field-wrap">
                                            <div class="outer-field">
                                                <input type="text" placeholder="Last Name" name="lastName">
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="contact-row">
                                        <div class="outer-field-wrap">
                                            <div class="outer-field">
                                                <input type="text" placeholder="Organization" name="organization">
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="contact-row">
                                        <div class="outer-field-wrap">
                                            <div class="outer-field">
                                                <input type="text" placeholder="Website" name="webSite">
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="contact-row">
                                        <div class="outer-field-wrap">
                                            <div class="outer-field">
                                                <input type="text" placeholder="Phone" name="phone">
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="contact-row">
                                        <div class="outer-field-wrap">
                                            <div class="outer-field">
                                                <input type="text" placeholder="Email Address" name="email">
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
						</div>
                    </div>
                </div>
                <div class="sponsor-improve">
                	<div class="improve-head">
                    	When is the best time to reach you?
                    </div>
                    <div class="improve-content">
                    	<p>We will give you a call to discuss your interest.</p>
                    </div>
                    <div class="day-field-wrap">
                    	<div class="day-field">
                           	<ul>
                               	<li><label><input type="checkbox" name="weekDays" value="Monday">Monday</label></li>
                               	<li><label><input type="checkbox" name="weekDays" value="Tuesday">Tuesday</label></li>
                               	<li><label><input type="checkbox" name="weekDays" value="Wednesday">Wednesday</label></li>  
                               	<li><label><input type="checkbox" name="weekDays" value="Thursday">Thursday</label></li>
                               	<li><label><input type="checkbox" name="weekDays" value="Friday">Friday</label></li>
                               	<li><label><input type="checkbox" name="weekDays" value="Saturday">Saturday</label></li>
                                <li><label><input type="checkbox" name="weekDays" value="Sunday">Sunday</label></li>
                            </ul>
                        </div>
                   </div>
                   <div class="improve-form">
                    	<div class="getstartForm_teacher">
                            <ul>
                                <li>
                                    <div class="contact-row">
                                        <div class="outer-field-wrap">
                                            <div class="outer-field">
                                                <input type="text" placeholder="Time" name="time" id="time">
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
						</div>
                    </div>
                    <div class="btns-outer">
						<input type="submit" value="SUBMIT" class="submit-btn fl">
					</div>
                </div>
                </form:form>
            </div>
        </section>
        <section class="sponsor-grey-main">
        	<div class="container">
            	<div class="sponsor-grey-item">
                	<ul>
                    	<li>
                        	<div class="sponsor-list-head">
                            	Platinum Sponsors
                            </div>
                            <div class="sponsor-list-element">
                            	<ul>
                            	<li><img src="<%=request.getContextPath()%>/NewStyles/images/kalliopeia-foundation.jpg"  alt=""/></li>
                                	<li><img src="<%=request.getContextPath()%>/NewStyles/images/1440foundation.jpg"  alt=""/></li>
                                    
                                    <li><img src="<%=request.getContextPath()%>/NewStyles/images/dbjfoundation.jpg"  alt=""/></li>
                                    <li><img src="<%=request.getContextPath()%>/NewStyles/images/sarlo-foundation.jpg"  alt=""/></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                        	<div class="sponsor-list-head">
                            	Gold Sponsors
                            </div>
                            <div class="sponsor-list-element">
                            	<ul>
                                	<li><img src="<%=request.getContextPath()%>/NewStyles/images/enterprise-strategy-group.jpg"  alt=""/></li>
                                    <li class="sponsor-tick">Deborah Sullivan</li>
                                </ul>
                            </div>
                        </li>
                        <li>
                        	<div class="sponsor-list-head">
                            	Silver Sponsors
                            </div>
                            <div class="sponsor-list-element">
                            	<ul>
                                	<li class="sponsor-tick width100">Bertha & Terence Reilly</li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
	</div>
	<div id="above_footer" class="dntfrthIn" style="text-align:center; color:#fff; font-size:13px; border-radius:0px;width:100%">
	Funds collected will be considered part of Inner Explorer's unrestricted general fund, or may be used to support the general charitable mission and programs of Inner Explorer.
	</div>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.timepicker.js" type="text/javascript"></script>
<script type="text/javascript">	
jQuery(document).ready
	(function($){
		$.daisyNav();
		
		$("#login").click(function(e) {
	        $(".login_panel").toggle();
	        e.stopPropagation();
	    });
		
		$('#time').timepicker();
  
     
        $.validator.addMethod("nameRegex", function(value, element) {
            return this.optional(element) || /^[a-zA-Z]+$/i.test(value);
        }, "Field must contain letters only.");
        $.validator.addMethod("specialChar", function(value, element) {
            return this.optional(element) || /^[a-zA-Z0-9- ]+$/i.test(value);
        }, "Remove special characters.");

        
        $('#sponsorForm').validate({
            errorElement: 'span', //default input error message container
            errorClass: 'help-block', // default input error message class
            focusInvalid: false, // do not focus the last invalid input
            //ignore: "",
            rules: {
            	phone:{
            		required: true,
            		minlength : 10,
            		maxlength : 30
            		//digits	: true
            	},
                firstName: {
                    required: true,
                    //nameRegex:true,
                    maxlength : 20
                },
                lastName: {
                     required: true, 
                   // nameRegex:true,
                    maxlength : 20
                },
                email: {
                    required: true, 
                    email: true
                },
                organization: {
                    required: true, 
                    maxlength : 100
                },
                webSite: {
                    required: true, 
                    maxlength : 100
                },
                time: {
                    required: true 
                },
                weekDays: {
                    required: true 
                },
                sponsorShip: {
                	required: true 
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
    
    function showTickMark(sponsorType){
    	$("#sponsorShip").val(sponsorType);
    	if(sponsorType!=""){
    		$("#sponsorShip-error").hide();
    		if(sponsorType=="bronze"){    		
        		$("#checkBronze").prop('src', '<%=request.getContextPath()%>/NewStyles/images/tick-mark.png');
        		$("#checkSilver").prop('src', '');
        		$("#checkGold").prop('src', '');
        		$("#checkPlatinum").prop('src', '');
        	}
        	else if(sponsorType=="silver"){
        		$("#checkBronze").prop('src', '');
        		$("#checkSilver").prop('src', '<%=request.getContextPath()%>/NewStyles/images/tick-mark.png');
        		$("#checkGold").prop('src', '');
        		$("#checkPlatinum").prop('src', '');
        		
        	}
    		else if(sponsorType=="gold"){
    			$("#checkBronze").prop('src', '');
        		$("#checkSilver").prop('src', '');
        		$("#checkGold").prop('src', '<%=request.getContextPath()%>/NewStyles/images/tick-mark.png');
        		$("#checkPlatinum").prop('src', '');
        		
        	}
    		else if(sponsorType=="platinum"){
    			$("#checkBronze").prop('src', '');
        		$("#checkSilver").prop('src', '');
        		$("#checkGold").prop('src', '');
        		$("#checkPlatinum").prop('src', '<%=request.getContextPath()%>/NewStyles/images/tick-mark.png');
        		
        	}
    		
    	}
    }
</script>
   
</body>
</html>
