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
<title>Reset Password </title>
<link rel="icon" href="<%=request.getContextPath()%>/NewStyles/images/favicon.ico" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/style.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/NewStyles/css/daisynav.css">
<link href="<%=request.getContextPath()%>/NewStyles/css/components.css" id="style_components" rel="stylesheet" type="text/css"/>
</head>
<body>
	<div class="wrapper">
	<%@include file="header.jsp" %> 
		<section class="tehDsh-step1 mtop-5">
			<div class="containerSmall">
      <div class="pracProgress_hdr">
     <h2>Reset Password</h2>
     <div class="green_line_btm"></div>
     </div>
				<div class="clr"></div>						
				<div class="Login-wrap">
					<div class="reset-inner">
					<form class="forget-form" action="<%=request.getContextPath()%>/reset-password" method="post">
					<input name="userId" type="hidden" value="${userId}">
						<div class="loginTop">
							<div class="loginTopLeft">
								<label>Enter Password</label>
							</div>
							<div class="loginTopRight">
								<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="password" placeholder="" name="password" id="password">
									</div>
								</div>
							</div>
							</div>
						</div>
						<div class="loginTop">
							<div class="loginTopLeft">
								<label>Re-Enter Password</label>
							</div>
							<div class="loginTopRight">
								<div class="contact-row">
								<div class="outer-field-wrap">
									<div class="outer-field">
										<input type="password" placeholder="" name="confirmpassword" id="confirmPassword">
									</div>
								</div>
							</div>
							</div>
						</div>
						<div class="loginTop mtop20">
							<div class="loginTopLeft">&nbsp;</div>
							<div class="loginTopRight">
								<input type="submit" class="submit-btn fl" value="SUBMIT">
							</div>
						</div>
						</form>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="faq-main-outer">
				<div class="text-left-ty mtop30">
                	<h4>Frequently Asked Questions</h4>
                    <!-- <p>We understand that mindful awareness education will be a new concept to many, including students, parents, teachers, and administration. We’re addressing some of the more frequently asked questions about mindful awareness, as well specific questions about how Inner Explorer works.</p> -->
                </div>
                <div class="text-left-ty-acc innerbdrnone">
                	<div class="accordion">
                    	<h1>What is mindful awareness?</h1>
                        <div>
                            Mindfulness (or Mindful Awareness) is about bringing an open awareness to each experience as it’s happening. Think of a task like brushing your teeth or washing dishes. Do you pay attention to the task, or are you lost in thought about some event from the past or a plan for the future? Being mindful is simply paying attention to the teeth brushing or dish washing while you’re doing it. Very few of us really pay attention to activity as it’s happening. When we do, an entirely new world opens up to us. Our direct experiences are all we have…this moment. The more we tune into this moment, the more fully we can live our lives. We learn to slow down the chattering mind and notice our senses, thoughts, and emotions without judging them as right or wrong. We then become familiar with the beauty, wisdom, passion, and compassion that exist inside of us all. It’s learning to appreciate the very foundation of who and what we are. This habit of <span><a href="javascript:;">connecting with each moment has many health and wellness benefits as well.</a></span> It has also been shown to improve focus and attention—very important skills for school-aged children.
                        </div>
                        <h1>What is Mindful-Based Social Emotional Learning (MBSEL)?</h1>
                        <div>
                            An <span><a href="javascript:;">MBSEL evidence-based curriculum</a></span> develops similar values to a traditional SEL curriculum, but the method is entirely different. An MBSEL program helps the children embody the lessons in a holistic and integrated way. By allowing the children to connect with their direct experiences, they learn to honor their own wisdom and their own voice. Values including compassion, kindness, self-control, enthusiasm, openness, and tolerance spring naturally from this process. MBSEL provides the foundation for “Readiness to Learn”.
                        </div>
                        <h1>What is Readiness to Learn?</h1>
                        <div>
                            Readiness to Learn has become a core focus for educators because research has shown it’s a precursor to school success. It’s defined as the ability to regulate emotions and behaviors and to inhibit impulsivity. Readiness is more predictive of academic achievement that IQ! Readiness is developed through Inner Explorer programs because students simultaneously experience a reduction in stress and an increase in attention. No matter what experiences students are exposed to outside of school, these programs allow them to create strong habits of mind and heart through consistent reflective practices. The result is that they improve their grades and test scores.
                        </div>
          			</div>
                </div>
				</div>
			</div>
		</section>
		
	</div>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.min.js" type="text/javascript"></script>
<%@include file="footer.jsp" %>
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.daisynav.min.js"></script> 
<script src="<%=request.getContextPath()%>/NewStyles/js/jquery.validate.min.js" type="text/javascript"></script>
<script type="text/javascript">	
jQuery(document).ready
	(function($){
		$.daisyNav();
		$('.forget-form').validate({
	        errorElement: 'span', //default input error message container
	        errorClass: 'help-block', // default input error message class
	        focusInvalid: false, // do not focus the last invalid input
	        ignore: "",
	        rules: {
	        	 password: {
	                required: true,
	         		minlength : 6,
	         		maxlength : 20
	             },
	             confirmpassword: {
	                 equalTo: "#password"
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
<script type="text/javascript" src="<%=request.getContextPath()%>/NewStyles/js/jquery.sticky.js"></script>
  <script>
    $(window).load(function(){
      $("#header").sticky({ topSpacing: 0 });
    });
    
    
    /* function showDiv(showOption){
		if(showOption=='q1'){
			var classace=$("#faq1").attr('class');
			if(classace=='faq1-none'){
			$("#faq1").addClass('faq1-show');
			$("#faq1").removeClass('faq1-none');
			$("#faq2").addClass('faq2-none');
			$("#faq3").addClass('faq3-none');
			$("#faq2").removeClass('faq2-show');
			$("#faq3").addClass('faq3-show');
			
			}
			else
			{
			$("#faq1").addClass('faq1-none');
			$("#faq1").removeClass('faq1-show');
			$("#faq2").addClass('faq2-none');
			$("#faq3").addClass('faq3-none');
			$("#faq2").removeClass('faq2-show');
			$("#faq3").addClass('faq3-show');
			}
		}
		
		if(showOption=='q2'){
			var classace=$("#faq2").attr('class');
			if(classace=='faq2-none'){
			$("#faq2").addClass('faq2-show');
			$("#faq2").removeClass('faq2-none');
			$("#faq3").addClass('faq3-none');
			$("#faq1").addClass('faq1-none');
			$("#faq3").removeClass('faq3-show');
			$("#faq1").removeClass('faq1-show');
			}
			else
			{
			$("#faq2").addClass('faq2-none');
			$("#faq2").addClass('faq2-show');
			$("#faq3").addClass('faq3-none');
			$("#faq1").addClass('faq1-none');
			$("#faq3").removeClass('faq3-show');
			$("#faq1").removeClass('faq1-show');
			}
		}
		
		
		if(showOption=='q3'){
			var classace=$("#faq3").attr('class');
			if(classace=='faq3-none'){
			$("#faq3").addClass('faq3-show');
			$("#faq3").removeClass('faq3-none');
			$("#faq2").addClass('faq2-none');
			$("#faq1").addClass('faq1-none');
			$("#faq2").removeClass('faq2-show');
			$("#faq1").removeClass('faq1-show');
			}
			else
			{
			$("#faq3").addClass('faq3-none');
			$("#faq3").removeClass('faq3-show');
			$("#faq2").addClass('faq2-none');
			$("#faq1").addClass('faq1-none');
			$("#faq2").removeClass('faq2-show');
			$("#faq1").removeClass('faq1-show');
			}
		}
		
		
		
	} */
    
  </script>
  <script src="<%=request.getContextPath()%>/NewStyles/js/woco.accordion.min.js"></script> 
	<script>
	$(".accordion").accordion();
</script>
</body>
</html>
