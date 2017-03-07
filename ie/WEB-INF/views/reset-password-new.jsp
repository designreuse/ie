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
  </script>
</body>
</html>
